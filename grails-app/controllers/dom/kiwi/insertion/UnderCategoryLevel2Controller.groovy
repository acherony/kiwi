package dom.kiwi.insertion

class UnderCategoryLevel2Controller {

    static allowedMethods = [save: "POST", update: "POST", delete: "POST"]

    def index = {
        redirect(action: "list", params: params)
    }

    def list = {
        params.max = Math.min(params.max ? params.int('max') : 10, 100)
        [underCategoryLevel2InstanceList: UnderCategoryLevel2.list(params), underCategoryLevel2InstanceTotal: UnderCategoryLevel2.count()]
    }

    def create = {
        def underCategoryLevel2Instance = new UnderCategoryLevel2()
        underCategoryLevel2Instance.properties = params
        return [underCategoryLevel2Instance: underCategoryLevel2Instance]
    }

    def save = {
        def underCategoryLevel2Instance = new UnderCategoryLevel2(params)
        if (underCategoryLevel2Instance.save(flush: true)) {
            flash.message = "${message(code: 'default.created.message', args: [message(code: 'underCategoryLevel2.label', default: 'UnderCategoryLevel2'), underCategoryLevel2Instance.id])}"
            redirect(action: "show", id: underCategoryLevel2Instance.id)
        }
        else {
            render(view: "create", model: [underCategoryLevel2Instance: underCategoryLevel2Instance])
        }
    }

    def show = {
        def underCategoryLevel2Instance = UnderCategoryLevel2.get(params.id)
        if (!underCategoryLevel2Instance) {
            flash.message = "${message(code: 'default.not.found.message', args: [message(code: 'underCategoryLevel2.label', default: 'UnderCategoryLevel2'), params.id])}"
            redirect(action: "list")
        }
        else {
            [underCategoryLevel2Instance: underCategoryLevel2Instance]
        }
    }

    def edit = {
        def underCategoryLevel2Instance = UnderCategoryLevel2.get(params.id)
        if (!underCategoryLevel2Instance) {
            flash.message = "${message(code: 'default.not.found.message', args: [message(code: 'underCategoryLevel2.label', default: 'UnderCategoryLevel2'), params.id])}"
            redirect(action: "list")
        }
        else {
            return [underCategoryLevel2Instance: underCategoryLevel2Instance]
        }
    }

    def update = {
        def underCategoryLevel2Instance = UnderCategoryLevel2.get(params.id)
        if (underCategoryLevel2Instance) {
            if (params.version) {
                def version = params.version.toLong()
                if (underCategoryLevel2Instance.version > version) {

                    underCategoryLevel2Instance.errors.rejectValue("version", "default.optimistic.locking.failure", [message(code: 'underCategoryLevel2.label', default: 'UnderCategoryLevel2')] as Object[], "Another user has updated this UnderCategoryLevel2 while you were editing")
                    render(view: "edit", model: [underCategoryLevel2Instance: underCategoryLevel2Instance])
                    return
                }
            }
            underCategoryLevel2Instance.properties = params
            if (!underCategoryLevel2Instance.hasErrors() && underCategoryLevel2Instance.save(flush: true)) {
                flash.message = "${message(code: 'default.updated.message', args: [message(code: 'underCategoryLevel2.label', default: 'UnderCategoryLevel2'), underCategoryLevel2Instance.id])}"
                redirect(action: "show", id: underCategoryLevel2Instance.id)
            }
            else {
                render(view: "edit", model: [underCategoryLevel2Instance: underCategoryLevel2Instance])
            }
        }
        else {
            flash.message = "${message(code: 'default.not.found.message', args: [message(code: 'underCategoryLevel2.label', default: 'UnderCategoryLevel2'), params.id])}"
            redirect(action: "list")
        }
    }

    def delete = {
        def underCategoryLevel2Instance = UnderCategoryLevel2.get(params.id)
        if (underCategoryLevel2Instance) {
            try {
                underCategoryLevel2Instance.delete(flush: true)
                flash.message = "${message(code: 'default.deleted.message', args: [message(code: 'underCategoryLevel2.label', default: 'UnderCategoryLevel2'), params.id])}"
                redirect(action: "list")
            }
            catch (org.springframework.dao.DataIntegrityViolationException e) {
                flash.message = "${message(code: 'default.not.deleted.message', args: [message(code: 'underCategoryLevel2.label', default: 'UnderCategoryLevel2'), params.id])}"
                redirect(action: "show", id: params.id)
            }
        }
        else {
            flash.message = "${message(code: 'default.not.found.message', args: [message(code: 'underCategoryLevel2.label', default: 'UnderCategoryLevel2'), params.id])}"
            redirect(action: "list")
        }
    }
}
