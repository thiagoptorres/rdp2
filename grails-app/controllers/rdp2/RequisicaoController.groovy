package rdp2

import static org.springframework.http.HttpStatus.*
import grails.transaction.Transactional

@Transactional(readOnly = true)
class RequisicaoController {

    static allowedMethods = [save: "POST", update: "PUT", delete: "DELETE"]

    // ----------------------------------------------------------

    def exportService
    def grailsApplication


    def list(Integer max) {
        params.max = Math.min(max ?: 10, 100)

        if(!params.max) params.max = 10
        if(params?.format && params.format != "html")
        {
            response.contentType = grailsApplication.config.grails.mime.types[params.format]
            response.setHeader("Content-disposition", "attachment; filename=requisicao.${params.extension}")
            exportService.export(params.format, response.outputStream,Requisicao.list(), [:], [:])
        }
        [requisicaoInstanceList: Requisicao.list(params), requisicaoInstanceTotal: Requisicao.count()]
    }

    def list2 = {

          if(!params.max) params.max = 10

		      if( params?.format && params.format != "html" )
          {
              response.contentType = grailsApplication.config.grails.mime.types[params.format]
			        response.setHeader("Content-disposition", "attachment; filename=requisicao.${params.extension}")

            //  List fields = ["nome", "cargo"]
			      //  Map labels = ["nome": "Nome", "cargo": "Cargo"]

              // Formatter closure
			    //    def upperCase = { domain, value->
          //      return value.toUpperCase()
			    //    }

			  //      Map formatters = [nome: upperCase]
			  //      Map parameters = [cargo: "Cool books", "column.widths": [0.2, 0.3, 0.5]]

			        //exportService.export(params.format, response.outputStream, Requisicao.list(params), fields, labels, formatters, parameters)
              exportService.export(params.format, response.outputStream,Requisicao.list(params), [:], [:])
		        }

            [ requisicaoInstanceList: Requisicao.list( params ) ]
    }

    // ----------------------------------------------------------



    def index(Integer max) {
        params.max = Math.min(max ?: 10, 100)
        respond Requisicao.list(params), model:[requisicaoInstanceCount: Requisicao.count()]
    }

    def pdf() {
      def requisicaoInstance = Requisicao.get(params.id)
      render( filename:"File ${requisicaoInstance.id}.pdf",
            view:"/requisicao/_requisicao_pdf.gsp",
            model:[requisicaoInstance:requisicaoInstance],
            //header:"/pdf/someHeader",
            //footer:"/pdf/someFooter",
            marginLeft:20,
            marginTop:35,
            marginBottom:20,
            marginRight:20,
            headerSpacing:10)
    }

    def show(Requisicao requisicaoInstance) {
        respond requisicaoInstance
    }

    def create() {
        respond new Requisicao(params)
    }

    @Transactional
    def save(Requisicao requisicaoInstance) {
        if (requisicaoInstance == null) {
            notFound()
            return
        }

        if (requisicaoInstance.hasErrors()) {
            respond requisicaoInstance.errors, view:'create'
            return
        }

        requisicaoInstance.save flush:true

        request.withFormat {
            form multipartForm {
                flash.message = message(code: 'default.created.message', args: [message(code: 'requisicao.label', default: 'Requisicao'), requisicaoInstance.id])
                redirect requisicaoInstance
            }
            '*' { respond requisicaoInstance, [status: CREATED] }
        }
    }

    def edit(Requisicao requisicaoInstance) {
        respond requisicaoInstance
    }

    @Transactional
    def update(Requisicao requisicaoInstance) {
        if (requisicaoInstance == null) {
            notFound()
            return
        }

        if (requisicaoInstance.hasErrors()) {
            respond requisicaoInstance.errors, view:'edit'
            return
        }

        requisicaoInstance.save flush:true

        request.withFormat {
            form multipartForm {
                flash.message = message(code: 'default.updated.message', args: [message(code: 'Requisicao.label', default: 'Requisicao'), requisicaoInstance.id])
                redirect requisicaoInstance
            }
            '*'{ respond requisicaoInstance, [status: OK] }
        }
    }

    @Transactional
    def delete(Requisicao requisicaoInstance) {

        if (requisicaoInstance == null) {
            notFound()
            return
        }

        requisicaoInstance.delete flush:true

        request.withFormat {
            form multipartForm {
                flash.message = message(code: 'default.deleted.message', args: [message(code: 'Requisicao.label', default: 'Requisicao'), requisicaoInstance.id])
                redirect action:"index", method:"GET"
            }
            '*'{ render status: NO_CONTENT }
        }
    }

    protected void notFound() {
        request.withFormat {
            form multipartForm {
                flash.message = message(code: 'default.not.found.message', args: [message(code: 'requisicao.label', default: 'Requisicao'), params.id])
                redirect action: "index", method: "GET"
            }
            '*'{ render status: NOT_FOUND }
        }
    }
}
