
<%@ page import="rdp2.Requisicao" %>
<!DOCTYPE html>
<html>
	<head>
		<meta name="layout" content="main">
		<g:set var="entityName" value="${message(code: 'requisicao.label', default: 'Requisicao')}" />
		<title><g:message code="default.list.label" args="[entityName]" /></title>
		<r:require module="export"/>
		<export:resource />
	</head>
	<body>
		<a href="#list-requisicao" class="skip" tabindex="-1"><g:message code="default.link.skip.label" default="Skip to content&hellip;"/></a>
		<div class="nav" role="navigation">
			<ul>
				<li><a class="home" href="${createLink(uri: '/')}"><g:message code="default.home.label"/></a></li>
				<li><g:link class="create" action="create"><g:message code="default.new.label" args="[entityName]" /></g:link></li>
			</ul>
		</div>
		<div id="list-requisicao" class="content scaffold-list" role="main">
			<h1><g:message code="default.list.label" args="[entityName]" /></h1>
			<g:if test="${flash.message}">
				<div class="message" role="status">${flash.message}</div>
			</g:if>
			<table>
			<thead>
					<tr>

						<g:sortableColumn property="matricula" title="${message(code: 'requisicao.matricula.label', default: 'Matricula')}" />

						<g:sortableColumn property="beneficiario" title="${message(code: 'requisicao.beneficiario.label', default: 'Beneficiario')}" />

						<g:sortableColumn property="nome" title="${message(code: 'requisicao.nome.label', default: 'Nome')}" />

						<g:sortableColumn property="cargo" title="${message(code: 'requisicao.cargo.label', default: 'Cargo')}" />

						<g:sortableColumn property="funcao" title="${message(code: 'requisicao.funcao.label', default: 'Funcao')}" />

						<g:sortableColumn property="cpf" title="${message(code: 'requisicao.cpf.label', default: 'Cpf')}" />

					</tr>
				</thead>
				<tbody>
				<g:each in="${requisicaoInstanceList}" status="i" var="requisicaoInstance">
					<tr class="${(i % 2) == 0 ? 'even' : 'odd'}">

						<td><g:link action="show" id="${requisicaoInstance.id}">${fieldValue(bean: requisicaoInstance, field: "matricula")}</g:link></td>

						<td>${fieldValue(bean: requisicaoInstance, field: "beneficiario")}</td>

						<td>${fieldValue(bean: requisicaoInstance, field: "nome")}</td>

						<td>${fieldValue(bean: requisicaoInstance, field: "cargo")}</td>

						<td>${fieldValue(bean: requisicaoInstance, field: "funcao")}</td>

						<td>${fieldValue(bean: requisicaoInstance, field: "cpf")}</td>

					</tr>
				</g:each>
				</tbody>
			</table>
			<div class="pagination">
				<g:paginate total="${requisicaoInstanceCount ?: 0}" />
			</div>
			<export:formats />
		</div>
	</body>
</html>
