
<%@ page import="rdp2.Requisicao" %>
<!DOCTYPE html>
<html>
	<head>
		<meta name="layout" content="main">
		<g:set var="entityName" value="${message(code: 'requisicao.label', default: 'Requisicao')}" />
		<title><g:message code="default.show.label" args="[entityName]" /></title>
    <r:require module="export"/>
		<export:resource />
	</head>
	<body>

		<a href="#show-requisicao" class="skip" tabindex="-1"><g:message code="default.link.skip.label" default="Skip to content&hellip;"/></a>
		<div class="nav" role="navigation">
			<ul>
				<li><a class="home" href="${createLink(uri: '/')}"><g:message code="default.home.label"/></a></li>
				<li><g:link class="list" action="index"><g:message code="default.list.label" args="[entityName]" /></g:link></li>
				<li><g:link class="create" action="create"><g:message code="default.new.label" args="[entityName]" /></g:link></li>
			</ul>
		</div>

		<export:formats formats="['pdf']" action="list" />

		<div id="show-requisicao" class="content scaffold-show" role="main">
			<h1><g:message code="default.show.label" args="[entityName]" /></h1>
			<g:if test="${flash.message}">
			<div class="message" role="status">${flash.message}</div>
			</g:if>
			<ol class="property-list requisicao">

				<g:if test="${requisicaoInstance?.matricula}">
				<li class="fieldcontain">
					<span id="matricula-label" class="property-label"><g:message code="requisicao.matricula.label" default="Matricula" /></span>

						<span class="property-value" aria-labelledby="matricula-label"><g:fieldValue bean="${requisicaoInstance}" field="matricula"/></span>

				</li>
				</g:if>

				<g:if test="${requisicaoInstance?.beneficiario}">
				<li class="fieldcontain">
					<span id="beneficiario-label" class="property-label"><g:message code="requisicao.beneficiario.label" default="Beneficiario" /></span>

						<span class="property-value" aria-labelledby="beneficiario-label"><g:fieldValue bean="${requisicaoInstance}" field="beneficiario"/></span>

				</li>
				</g:if>

				<g:if test="${requisicaoInstance?.nome}">
				<li class="fieldcontain">
					<span id="nome-label" class="property-label"><g:message code="requisicao.nome.label" default="Nome" /></span>

						<span class="property-value" aria-labelledby="nome-label"><g:fieldValue bean="${requisicaoInstance}" field="nome"/></span>

				</li>
				</g:if>

				<g:if test="${requisicaoInstance?.cargo}">
				<li class="fieldcontain">
					<span id="cargo-label" class="property-label"><g:message code="requisicao.cargo.label" default="Cargo" /></span>

						<span class="property-value" aria-labelledby="cargo-label"><g:fieldValue bean="${requisicaoInstance}" field="cargo"/></span>

				</li>
				</g:if>

				<g:if test="${requisicaoInstance?.funcao}">
				<li class="fieldcontain">
					<span id="funcao-label" class="property-label"><g:message code="requisicao.funcao.label" default="Funcao" /></span>

						<span class="property-value" aria-labelledby="funcao-label"><g:fieldValue bean="${requisicaoInstance}" field="funcao"/></span>

				</li>
				</g:if>

				<g:if test="${requisicaoInstance?.cpf}">
				<li class="fieldcontain">
					<span id="cpf-label" class="property-label"><g:message code="requisicao.cpf.label" default="Cpf" /></span>

						<span class="property-value" aria-labelledby="cpf-label"><g:fieldValue bean="${requisicaoInstance}" field="cpf"/></span>

				</li>
				</g:if>

				<g:if test="${requisicaoInstance?.rg}">
				<li class="fieldcontain">
					<span id="rg-label" class="property-label"><g:message code="requisicao.rg.label" default="Rg" /></span>

						<span class="property-value" aria-labelledby="rg-label"><g:fieldValue bean="${requisicaoInstance}" field="rg"/></span>

				</li>
				</g:if>

				<g:if test="${requisicaoInstance?.email}">
				<li class="fieldcontain">
					<span id="email-label" class="property-label"><g:message code="requisicao.email.label" default="Email" /></span>

						<span class="property-value" aria-labelledby="email-label"><g:fieldValue bean="${requisicaoInstance}" field="email"/></span>

				</li>
				</g:if>

				<g:if test="${requisicaoInstance?.tel_fixo}">
				<li class="fieldcontain">
					<span id="tel_fixo-label" class="property-label"><g:message code="requisicao.tel_fixo.label" default="Telfixo" /></span>

						<span class="property-value" aria-labelledby="tel_fixo-label"><g:fieldValue bean="${requisicaoInstance}" field="tel_fixo"/></span>

				</li>
				</g:if>

				<g:if test="${requisicaoInstance?.tel_celular}">
				<li class="fieldcontain">
					<span id="tel_celular-label" class="property-label"><g:message code="requisicao.tel_celular.label" default="Telcelular" /></span>

						<span class="property-value" aria-labelledby="tel_celular-label"><g:fieldValue bean="${requisicaoInstance}" field="tel_celular"/></span>

				</li>
				</g:if>

				<g:if test="${requisicaoInstance?.banco_nome}">
				<li class="fieldcontain">
					<span id="banco_nome-label" class="property-label"><g:message code="requisicao.banco_nome.label" default="Banconome" /></span>

						<span class="property-value" aria-labelledby="banco_nome-label"><g:fieldValue bean="${requisicaoInstance}" field="banco_nome"/></span>

				</li>
				</g:if>

				<g:if test="${requisicaoInstance?.banco_numero}">
				<li class="fieldcontain">
					<span id="banco_numero-label" class="property-label"><g:message code="requisicao.banco_numero.label" default="Banconumero" /></span>

						<span class="property-value" aria-labelledby="banco_numero-label"><g:fieldValue bean="${requisicaoInstance}" field="banco_numero"/></span>

				</li>
				</g:if>

				<g:if test="${requisicaoInstance?.banco_agencia}">
				<li class="fieldcontain">
					<span id="banco_agencia-label" class="property-label"><g:message code="requisicao.banco_agencia.label" default="Bancoagencia" /></span>

						<span class="property-value" aria-labelledby="banco_agencia-label"><g:fieldValue bean="${requisicaoInstance}" field="banco_agencia"/></span>

				</li>
				</g:if>

				<g:if test="${requisicaoInstance?.banco_conta}">
				<li class="fieldcontain">
					<span id="banco_conta-label" class="property-label"><g:message code="requisicao.banco_conta.label" default="Bancoconta" /></span>

						<span class="property-value" aria-labelledby="banco_conta-label"><g:fieldValue bean="${requisicaoInstance}" field="banco_conta"/></span>

				</li>
				</g:if>

				<g:if test="${requisicaoInstance?.viagem_objetivo}">
				<li class="fieldcontain">
					<span id="viagem_objetivo-label" class="property-label"><g:message code="requisicao.viagem_objetivo.label" default="Viagemobjetivo" /></span>

						<span class="property-value" aria-labelledby="viagem_objetivo-label"><g:fieldValue bean="${requisicaoInstance}" field="viagem_objetivo"/></span>

				</li>
				</g:if>

				<g:if test="${requisicaoInstance?.afastamento_data_inicio}">
				<li class="fieldcontain">
					<span id="afastamento_data_inicio-label" class="property-label"><g:message code="requisicao.afastamento_data_inicio.label" default="Afastamentodatainicio" /></span>

						<span class="property-value" aria-labelledby="afastamento_data_inicio-label"><g:formatDate date="${requisicaoInstance?.afastamento_data_inicio}" /></span>

				</li>
				</g:if>

				<g:if test="${requisicaoInstance?.afastamento_data_termino}">
				<li class="fieldcontain">
					<span id="afastamento_data_termino-label" class="property-label"><g:message code="requisicao.afastamento_data_termino.label" default="Afastamentodatatermino" /></span>

						<span class="property-value" aria-labelledby="afastamento_data_termino-label"><g:formatDate date="${requisicaoInstance?.afastamento_data_termino}" /></span>

				</li>
				</g:if>

				<g:if test="${requisicaoInstance?.trabalho_data_inicio}">
				<li class="fieldcontain">
					<span id="trabalho_data_inicio-label" class="property-label"><g:message code="requisicao.trabalho_data_inicio.label" default="Trabalhodatainicio" /></span>

						<span class="property-value" aria-labelledby="trabalho_data_inicio-label"><g:formatDate date="${requisicaoInstance?.trabalho_data_inicio}" /></span>

				</li>
				</g:if>

				<g:if test="${requisicaoInstance?.trabalho_hora_inicio}">
				<li class="fieldcontain">
					<span id="trabalho_hora_inicio-label" class="property-label"><g:message code="requisicao.trabalho_hora_inicio.label" default="Trabalhohorainicio" /></span>

						<span class="property-value" aria-labelledby="trabalho_hora_inicio-label"><g:fieldValue bean="${requisicaoInstance}" field="trabalho_hora_inicio"/></span>

				</li>
				</g:if>

				<g:if test="${requisicaoInstance?.trabalho_data_termino}">
				<li class="fieldcontain">
					<span id="trabalho_data_termino-label" class="property-label"><g:message code="requisicao.trabalho_data_termino.label" default="Trabalhodatatermino" /></span>

						<span class="property-value" aria-labelledby="trabalho_data_termino-label"><g:formatDate date="${requisicaoInstance?.trabalho_data_termino}" /></span>

				</li>
				</g:if>

				<g:if test="${requisicaoInstance?.trabalho_hora_termino}">
				<li class="fieldcontain">
					<span id="trabalho_hora_termino-label" class="property-label"><g:message code="requisicao.trabalho_hora_termino.label" default="Trabalhohoratermino" /></span>

						<span class="property-value" aria-labelledby="trabalho_hora_termino-label"><g:fieldValue bean="${requisicaoInstance}" field="trabalho_hora_termino"/></span>

				</li>
				</g:if>

				<g:if test="${requisicaoInstance?.deslocamento_tipo}">
				<li class="fieldcontain">
					<span id="deslocamento_tipo-label" class="property-label"><g:message code="requisicao.deslocamento_tipo.label" default="Deslocamentotipo" /></span>

						<span class="property-value" aria-labelledby="deslocamento_tipo-label"><g:fieldValue bean="${requisicaoInstance}" field="deslocamento_tipo"/></span>

				</li>
				</g:if>

				<g:if test="${requisicaoInstance?.custeio_tipo}">
				<li class="fieldcontain">
					<span id="custeio_tipo-label" class="property-label"><g:message code="requisicao.custeio_tipo.label" default="Custeiotipo" /></span>

						<span class="property-value" aria-labelledby="custeio_tipo-label"><g:fieldValue bean="${requisicaoInstance}" field="custeio_tipo"/></span>

				</li>
				</g:if>

				<g:if test="${requisicaoInstance?.justificativa}">
				<li class="fieldcontain">
					<span id="justificativa-label" class="property-label"><g:message code="requisicao.justificativa.label" default="Justificativa" /></span>

						<span class="property-value" aria-labelledby="justificativa-label"><g:fieldValue bean="${requisicaoInstance}" field="justificativa"/></span>

				</li>
				</g:if>

				<g:if test="${requisicaoInstance?.status}">
				<li class="fieldcontain">
					<span id="status-label" class="property-label"><g:message code="requisicao.status.label" default="Status" /></span>

						<span class="property-value" aria-labelledby="status-label"><g:fieldValue bean="${requisicaoInstance}" field="status"/></span>

				</li>
				</g:if>

				<g:if test="${requisicaoInstance?.trechos}">
				<li class="fieldcontain">
					<span id="trechos-label" class="property-label"><g:message code="requisicao.trechos.label" default="Trechos" /></span>

						<g:each in="${requisicaoInstance.trechos}" var="t">
						<span class="property-value" aria-labelledby="trechos-label"><g:link controller="trecho" action="show" id="${t.id}">${t?.encodeAsHTML()}</g:link></span>
						</g:each>

				</li>
				</g:if>

			</ol>
			<g:form url="[resource:requisicaoInstance, action:'delete']" method="DELETE">
				<fieldset class="buttons">
					<g:link class="edit" action="edit" resource="${requisicaoInstance}"><g:message code="default.button.edit.label" default="Edit" /></g:link>
					<g:actionSubmit class="delete" action="delete" value="${message(code: 'default.button.delete.label', default: 'Delete')}" onclick="return confirm('${message(code: 'default.button.delete.confirm.message', default: 'Are you sure?')}');" />

				</fieldset>

			</g:form>
			<g:link action="pdf" id="${requisicaoInstance?.id}">Download questionnaire</g:link>
			<g:link action="list" id="${requisicaoInstance?.id}">Listar</g:link>

		</div>
	</body>
</html>
