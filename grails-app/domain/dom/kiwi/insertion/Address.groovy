package dom.kiwi.insertion

class Address implements Serializable{

    String street
    String city

    //static hasMany = [inserats: Inserat]
    static belongsTo = [Inserat]

    static constraints = {
    }

    String toString(){
        city
    }
}
