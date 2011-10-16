package dom.kiwi

import org.apache.commons.lang.builder.HashCodeBuilder

class BenutzerRole implements Serializable {

	Benutzer benutzer
	Role role

	boolean equals(other) {
		if (!(other instanceof BenutzerRole)) {
			return false
		}

		other.benutzer?.id == benutzer?.id &&
			other.role?.id == role?.id
	}

	int hashCode() {
		def builder = new HashCodeBuilder()
		if (benutzer) builder.append(benutzer.id)
		if (role) builder.append(role.id)
		builder.toHashCode()
	}

	static BenutzerRole get(long benutzerId, long roleId) {
		find 'from BenutzerRole where benutzer.id=:benutzerId and role.id=:roleId',
			[benutzerId: benutzerId, roleId: roleId]
	}

	static BenutzerRole create(Benutzer benutzer, Role role, boolean flush = false) {
		new BenutzerRole(benutzer: benutzer, role: role).save(flush: flush, insert: true)
	}

	static boolean remove(Benutzer benutzer, Role role, boolean flush = false) {
		BenutzerRole instance = BenutzerRole.findByBenutzerAndRole(benutzer, role)
		if (!instance) {
			return false
		}

		instance.delete(flush: flush)
		true
	}

	static void removeAll(Benutzer benutzer) {
		executeUpdate 'DELETE FROM BenutzerRole WHERE benutzer=:benutzer', [benutzer: benutzer]
	}

	static void removeAll(Role role) {
		executeUpdate 'DELETE FROM BenutzerRole WHERE role=:role', [role: role]
	}

	static mapping = {
		id composite: ['role', 'benutzer']
		version false
	}
}
