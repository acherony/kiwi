package dom.kiwi.insertion

class UnderCategoryLevel1Controller {

    static allowedMethods = [save: "POST", update: "POST", delete: "POST"]

    def index = {
        redirect(action: "list", params: params)
    }

    def list = {
        params.max = Math.min(params.max ? params.int('max') : 10, 100)
        [underCategoryLevel1InstanceList: UnderCategoryLevel1.list(params), underCategoryLevel1InstanceTotal: UnderCategoryLevel1.count()]
    }

    def create = {
        def underCategoryLevel1Instance = new UnderCategoryLevel1()
        underCategoryLevel1Instance.properties = params
        return [underCategoryLevel1Instance: underCategoryLevel1Instance]
    }

    def save = {
        def underCategoryLevel1Instance = new UnderCategoryLevel1(params)
        if (underCategoryLevel1Instance.save(flush: true)) {
            flash.message = "${message(code: 'default.created.message', args: [message(code: 'underCategoryLevel1.label', default: 'UnderCategoryLevel1'), underCategoryLevel1Instance.id])}"
            redirect(action: "show", id: underCategoryLevel1Instance.id)
        }
        else {
            render(view: "create", model: [underCategoryLevel1Instance: underCategoryLevel1Instance])
        }
    }

    def show = {
        def underCategoryLevel1Instance = UnderCategoryLevel1.get(params.id)
        if (!underCategoryLevel1Instance) {
            flash.message = "${message(code: 'default.not.found.message', args: [message(code: 'underCategoryLevel1.label', default: 'UnderCategoryLevel1'), params.id])}"
            redirect(action: "list")
        }
        else {
            [underCategoryLevel1Instance: underCategoryLevel1Instance]
        }
    }

    def edit = {
        def underCategoryLevel1Instance = UnderCategoryLevel1.get(params.id)
        if (!underCategoryLevel1Instance) {
            flash.message = "${message(code: 'default.not.found.message', args: [message(code: 'underCategoryLevel1.label', default: 'UnderCategoryLevel1'), params.id])}"
            redirect(action: "list")
        }
        else {
            return [underCategoryLevel1Instance: underCategoryLevel1Instance]
        }
    }

    def update = {
        def underCategoryLevel1Instance = UnderCategoryLevel1.get(params.id)
        if (underCategoryLevel1Instance) {
            if (params.version) {
                def version = params.version.toLong()
                if (underCategoryLevel1Instance.version > version) {

                    underCategoryLevel1Instance.errors.rejectValue("version", "default.optimistic.locking.failure", [message(code: 'underCategoryLevel1.label', default: 'UnderCategoryLevel1')] as Object[], "Another user has updated this UnderCategoryLevel1 while you were editing")
                    render(view: "edit", model: [underCategoryLevel1Instance: underCategoryLevel1Instance])
                    return
                }
            }
            underCategoryLevel1Instance.properties = params
            if (!underCategoryLevel1Instance.hasErrors() && underCategoryLevel1Instance.save(flush: true)) {
                flash.message = "${message(code: 'default.updated.message', args: [message(code: 'underCategoryLevel1.label', default: 'UnderCategoryLevel1'), underCategoryLevel1Instance.id])}"
                redirect(action: "show", id: underCategoryLevel1Instance.id)
            }
            else {
                render(view: "edit", model: [underCategoryLevel1Instance: underCategoryLevel1Instance])
            }
        }
        else {
            flash.message = "${message(code: 'default.not.found.message', args: [message(code: 'underCategoryLevel1.label', default: 'UnderCategoryLevel1'), params.id])}"
            redirect(action: "list")
        }
    }

    def delete = {
        def underCategoryLevel1Instance = UnderCategoryLevel1.get(params.id)
        if (underCategoryLevel1Instance) {
            try {
                underCategoryLevel1Instance.delete(flush: true)
                flash.message = "${message(code: 'default.deleted.message', args: [message(code: 'underCategoryLevel1.label', default: 'UnderCategoryLevel1'), params.id])}"
                redirect(action: "list")
            }
            catch (org.springframework.dao.DataIntegrityViolationException e) {
                flash.message = "${message(code: 'default.not.deleted.message', args: [message(code: 'underCategoryLevel1.label', default: 'UnderCategoryLevel1'), params.id])}"
                redirect(action: "show", id: params.id)
            }
        }
        else {
            flash.message = "${message(code: 'default.not.found.message', args: [message(code: 'underCategoryLevel1.label', default: 'UnderCategoryLevel1'), params.id])}"
            redirect(action: "list")
        }
    }
}
