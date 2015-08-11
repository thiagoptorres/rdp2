
<%@ page import="rdp2.Trecho" %>
<!DOCTYPE html>
<html>
	<head>
		<meta name="layout" content="main">
		<g:set var="entityName" value="${message(code: 'trecho.label', default: 'Trecho')}" />
		<title><g:message code="default.list.label" args="[entityName]" /></title>
	</head>
	<body>
		<a href="#list-trecho" class="skip" tabindex="-1"><g:message code="default.link.skip.label" default="Skip to content&hellip;"/></a>
		<div class="nav" role="navigation">
			<ul>
				<li><a class="home" href="${createLink(uri: '/')}"><g:message code="default.home.label"/></a></li>
				<li><g:link class="create" action="create"><g:message code="default.new.label" args="[entityName]" /></g:link></li>
			</ul>
		</div>
		<div id="list-trecho" class="content scaffold-list" role="main">
			<h1><g:message code="default.list.label" args="[entityName]" /></h1>
			<g:if test="${flash.message}">
				<div class="message" role="status">${flash.message}</div>
			</g:if>
			<table>
			<thead>
					<tr>
					
						<th><g:message code="trecho.requisicao.label" default="Requisicao" /></th>
					
						<g:sortableColumn property="tipo" title="${message(code: 'trecho.tipo.label', default: 'Tipo')}" />
					
						<g:sortableColumn property="origem" title="${message(code: 'trecho.origem.label', default: 'Origem')}" />
					
						<g:sortableColumn property="destino" title="${message(code: 'trecho.destino.label', default: 'Destino')}" />
					
						<g:sortableColumn property="data" title="${message(code: 'trecho.data.label', default: 'Data')}" />
					
						<g:sortableColumn property="turno" title="${message(code: 'trecho.turno.label', default: 'Turno')}" />
					
					</tr>
				</thead>
				<tbody>
				<g:each in="${trechoInstanceList}" status="i" var="trechoInstance">
					<tr class="${(i % 2) == 0 ? 'even' : 'odd'}">
					
						<td><g:link action="show" id="${trechoInstance.id}">${fieldValue(bean: trechoInstance, field: "requisicao")}</g:link></td>
					
						<td>${fieldValue(bean: trechoInstance, field: "tipo")}</td>
					
						<td>${fieldValue(bean: trechoInstance, field: "origem")}</td>
					
						<td>${fieldValue(bean: trechoInstance, field: "destino")}</td>
					
						<td><g:formatDate date="${trechoInstance.data}" /></td>
					
						<td>${fieldValue(bean: trechoInstance, field: "turno")}</td>
					
					</tr>
				</g:each>
				</tbody>
			</table>
			<div class="pagination">
				<g:paginate total="${trechoInstanceCount ?: 0}" />
			</div>
		</div>
	</body>
</html>
