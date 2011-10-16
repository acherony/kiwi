package dom.kiwi.insertion

class UnderCategoryLevel2 implements Serializable{

    String name
    String description

    static belongsTo = [underCategoryLevel1 : UnderCategoryLevel1]

    static constraints = {
        name(blank: false)
    }

    String toString(){
        name
    }
}
