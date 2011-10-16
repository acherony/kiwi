package dom.kiwi.insertion

class Category implements Serializable{

    String name
    String description

    static hasMany = [underCategoriesLevel1: UnderCategoryLevel1]

    static constraints = {
        name(blank: false)
    }

    String toString(){
        name
    }
}
