package rdp2



import static org.springframework.http.HttpStatus.*
import grails.transaction.Transactional

@Transactional(readOnly = true)
class TrechoController {

    static allowedMethods = [save: "POST", update: "PUT", delete: "DELETE"]

    def index(Integer max) {
        params.max = Math.min(max ?: 10, 100)
        respond Trecho.list(params), model:[trechoInstanceCount: Trecho.count()]
    }

    def show(Trecho trechoInstance) {
        respond trechoInstance
    }

    def create() {
        respond new Trecho(params)
    }

    @Transactional
    def save(Trecho trechoInstance) {
        if (trechoInstance == null) {
            notFound()
            return
        }

        if (trechoInstance.hasErrors()) {
            respond trechoInstance.errors, view:'create'
            return
        }

        trechoInstance.save flush:true

        request.withFormat {
            form multipartForm {
                flash.message = message(code: 'default.created.message', args: [message(code: 'trecho.label', default: 'Trecho'), trechoInstance.id])
                redirect trechoInstance
            }
            '*' { respond trechoInstance, [status: CREATED] }
        }
    }

    def edit(Trecho trechoInstance) {
        respond trechoInstance
    }

    @Transactional
    def update(Trecho trechoInstance) {
        if (trechoInstance == null) {
            notFound()
            return
        }

        if (trechoInstance.hasErrors()) {
            respond trechoInstance.errors, view:'edit'
            return
        }

        trechoInstance.save flush:true

        request.withFormat {
            form multipartForm {
                flash.message = message(code: 'default.updated.message', args: [message(code: 'Trecho.label', default: 'Trecho'), trechoInstance.id])
                redirect trechoInstance
            }
            '*'{ respond trechoInstance, [status: OK] }
        }
    }

    @Transactional
    def delete(Trecho trechoInstance) {

        if (trechoInstance == null) {
            notFound()
            return
        }

        trechoInstance.delete flush:true

        request.withFormat {
            form multipartForm {
                flash.message = message(code: 'default.deleted.message', args: [message(code: 'Trecho.label', default: 'Trecho'), trechoInstance.id])
                redirect action:"index", method:"GET"
            }
            '*'{ render status: NO_CONTENT }
        }
    }

    protected void notFound() {
        request.withFormat {
            form multipartForm {
                flash.message = message(code: 'default.not.found.message', args: [message(code: 'trecho.label', default: 'Trecho'), params.id])
                redirect action: "index", method: "GET"
            }
            '*'{ render status: NOT_FOUND }
        }
    }
}
