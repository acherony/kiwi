import dom.kiwi.Benutzer
import dom.kiwi.Role
import dom.kiwi.BenutzerRole

//class BootStrap {
//
//    def init = { servletContext ->
//    }
//    def destroy = {
//    }
//}

class BootStrap {

    def springSecurityService

    def init = { servletContext ->

        //Roles
        def userRole = Role.findByAuthority('ROLE_BASIC_USER') ?: new Role(authority: 'ROLE_BASIC_USER').save(failOnError: true)
        def adminRole = Role.findByAuthority('ROLE_ADMIN_USER') ?: new Role(authority: 'ROLE_ADMIN_USER').save(failOnError: true)

        //AdminUserAccount
        def adminUser = Benutzer.findByUsername('admin') ?: new Benutzer(
                        username: 'admin',
                        //password: springSecurityService.encodePassword('admin'),
                        password: 'admin',
                        enabled: true).save(failOnError: true)

        if (!adminUser.authorities.contains(adminRole)) {

                    BenutzerRole.create adminUser, adminRole
        }

    }
    def destroy = {
    }
}