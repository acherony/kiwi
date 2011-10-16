package dom.kiwi.insertion

class Inserat implements Serializable{

    String name
    String title
    String description

    Category category
    Address HomeAddress
    Address DeliveryAddress

    static hasMany = [
            adresy:Address,
            category:Category
    ]

    static constraints = {
    }

    String toString(){
        name
    }
}
