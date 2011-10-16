package dom.kiwi.insertion

import org.springframework.webflow.engine.Flow
import org.omg.PortableInterceptor.SUCCESSFUL
import org.springframework.webflow.conversation.Conversation
import grails.plugins.springsecurity.Secured

class InseratController {

    static allowedMethods = [save: "POST", update: "POST", delete: "POST"]

    def index = {
        redirect(action: "list", params: params)
    }

     @Secured(["hasRole('ROLE_ADMIN_USER')"])
    //@Secured(['ROLE_ADMIN_USER'])
    //@Secured(['IS_AUTHENTICATED_FULLY'])
    //@Secured(["authentication.name == 'test'"])

    def list = {
        params.max = Math.min(params.max ? params.int('max') : 10, 100)
        [inseratInstanceList: Inserat.list(params), inseratInstanceTotal: Inserat.count()]
    }

    def create = {
        def inseratInstance = new Inserat()
        inseratInstance.properties = params
        return [inseratInstance: inseratInstance]
    }

    def save = {
        def inseratInstance = new Inserat(params)
        if (inseratInstance.save(flush: true)) {
            flash.message = "${message(code: 'default.created.message', args: [message(code: 'inserat.label', default: 'Inserat'), inseratInstance.id])}"
            redirect(action: "show", id: inseratInstance.id)
        }
        else {
            render(view: "create", model: [inseratInstance: inseratInstance])
        }
    }

    def show = {
        def inseratInstance = Inserat.get(params.id)
        if (!inseratInstance) {
            flash.message = "${message(code: 'default.not.found.message', args: [message(code: 'inserat.label', default: 'Inserat'), params.id])}"
            redirect(action: "list")
        }
        else {
            [inseratInstance: inseratInstance]
        }
    }

    def edit = {
        def inseratInstance = Inserat.get(params.id)
        if (!inseratInstance) {
            flash.message = "${message(code: 'default.not.found.message', args: [message(code: 'inserat.label', default: 'Inserat'), params.id])}"
            redirect(action: "list")
        }
        else {
            return [inseratInstance: inseratInstance]
        }
    }

    def update = {
        def inseratInstance = Inserat.get(params.id)
        if (inseratInstance) {
            if (params.version) {
                def version = params.version.toLong()
                if (inseratInstance.version > version) {

                    inseratInstance.errors.rejectValue("version", "default.optimistic.locking.failure", [message(code: 'inserat.label', default: 'Inserat')] as Object[], "Another user has updated this Inserat while you were editing")
                    render(view: "edit", model: [inseratInstance: inseratInstance])
                    return
                }
            }
            inseratInstance.properties = params
            if (!inseratInstance.hasErrors() && inseratInstance.save(flush: true)) {
                flash.message = "${message(code: 'default.updated.message', args: [message(code: 'inserat.label', default: 'Inserat'), inseratInstance.id])}"
                redirect(action: "show", id: inseratInstance.id)
            }
            else {
                render(view: "edit", model: [inseratInstance: inseratInstance])
            }
        }
        else {
            flash.message = "${message(code: 'default.not.found.message', args: [message(code: 'inserat.label', default: 'Inserat'), params.id])}"
            redirect(action: "list")
        }
    }

    def delete = {
        def inseratInstance = Inserat.get(params.id)
        if (inseratInstance) {
            try {
                inseratInstance.delete(flush: true)
                flash.message = "${message(code: 'default.deleted.message', args: [message(code: 'inserat.label', default: 'Inserat'), params.id])}"
                redirect(action: "list")
            }
            catch (org.springframework.dao.DataIntegrityViolationException e) {
                flash.message = "${message(code: 'default.not.deleted.message', args: [message(code: 'inserat.label', default: 'Inserat'), params.id])}"
                redirect(action: "show", id: params.id)
            }
        }
        else {
            flash.message = "${message(code: 'default.not.found.message', args: [message(code: 'inserat.label', default: 'Inserat'), params.id])}"
            redirect(action: "list")
        }
    }

    def postFlow = {

        onStart {
            flow.i = new Inserat()
            flow.i.properties = params
            [catList:Category.list()]
        }

        step1 {
            on("next") {
                flow.i.properties=params
                flash.message = "object not serialized problem" //TODO: object not serialized in case line above stands alone.
            }.to "step2"

            on("step2"){
            }.to "step2"
            on("step3").to "step3"
            on("step4").to "step4"
        }

        step2 {
            on("back"){
                flow.i.properties = params
                flash.message = "${message(code: 'default.created.message', args: [message(code: 'inserat.label', default: 'Inserat'), flow.i.id])}"
            }.to "step1"
            on("next"){
                flow.i.properties = params
                if (flow.i.save(flush: true)) {
                    flash.message = "${message(code: 'default.created.message', args: [message(code: 'inserat.label', default: 'Inserat'), flow.i.id])}"
                    redirect(action: "show", id: flow.i.id)//TODO: will be roll back in the next milestone. Back Button Problem.
                }
                else {
                    render(view: "post")
                }
            }.to "step3"

            on("step1"){
            }.to "step1"

            on("step3").to "step3"
            on("step4").to "step4"
        }

        step3 {
            on("back").to "step2"
            on("next").to "step4"

            on("step1").to "step1"
            on("step2").to "step2"
            on("step3").to "step3"
            on("step4").to "step4"
        }

        step4 {
             on("back").to "step3"
             on("save").to "step4"

             on("step1").to "step1"
             on("step2").to "step2"
             on("step3").to "step3"
             on("step4").to "step4"
        }

    }
}
