package dom.kiwi.insertion

class UnderCategoryLevel1 implements Serializable{

    String name
    String description

    static belongsTo = [category : Category ]
    static hasMany = [underCategoriesLevel2 : UnderCategoryLevel2]

    static constraints = {
        name(blank: false)
    }

    String toString(){
        name
    }
}
