<%@ page import="rdp2.Trecho" %>



<div class="fieldcontain ${hasErrors(bean: trechoInstance, field: 'requisicao', 'error')} required">
	<label for="requisicao">
		<g:message code="trecho.requisicao.label" default="Requisicao" />
		<span class="required-indicator">*</span>
	</label>
	<g:select id="requisicao" name="requisicao.id" from="${rdp2.Requisicao.list()}" optionKey="id" required="" value="${trechoInstance?.requisicao?.id}" class="many-to-one"/>

</div>

<div class="fieldcontain ${hasErrors(bean: trechoInstance, field: 'tipo', 'error')} required">
	<label for="tipo">
		<g:message code="trecho.tipo.label" default="Tipo" />
		<span class="required-indicator">*</span>
	</label>
	<g:select name="tipo" from="${trechoInstance.constraints.tipo.inList}" required="" value="${trechoInstance?.tipo}" valueMessagePrefix="trecho.tipo"/>

</div>

<div class="fieldcontain ${hasErrors(bean: trechoInstance, field: 'origem', 'error')} required">
	<label for="origem">
		<g:message code="trecho.origem.label" default="Origem" />
		<span class="required-indicator">*</span>
	</label>
	<g:textField name="origem" maxlength="20" required="" value="${trechoInstance?.origem}"/>

</div>

<div class="fieldcontain ${hasErrors(bean: trechoInstance, field: 'destino', 'error')} required">
	<label for="destino">
		<g:message code="trecho.destino.label" default="Destino" />
		<span class="required-indicator">*</span>
	</label>
	<g:textField name="destino" maxlength="20" required="" value="${trechoInstance?.destino}"/>

</div>

<div class="fieldcontain ${hasErrors(bean: trechoInstance, field: 'data', 'error')} required">
	<label for="data">
		<g:message code="trecho.data.label" default="Data" />
		<span class="required-indicator">*</span>
	</label>
	<g:datePicker name="data" precision="day"  value="${trechoInstance?.data}"  />

</div>

<div class="fieldcontain ${hasErrors(bean: trechoInstance, field: 'turno', 'error')} required">
	<label for="turno">
		<g:message code="trecho.turno.label" default="Turno" />
		<span class="required-indicator">*</span>
	</label>
	<g:select name="turno" from="${trechoInstance.constraints.turno.inList}" required="" value="${trechoInstance?.turno}" valueMessagePrefix="trecho.turno"/>

</div>

