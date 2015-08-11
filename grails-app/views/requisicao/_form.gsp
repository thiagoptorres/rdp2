<%@ page import="rdp2.Requisicao" %>



<div class="fieldcontain ${hasErrors(bean: requisicaoInstance, field: 'matricula', 'error')} required">
	<label for="matricula">
		<g:message code="requisicao.matricula.label" default="Matricula" />
		<span class="required-indicator">*</span>
	</label>
	<g:textField name="matricula" maxlength="7" required="" value="${requisicaoInstance?.matricula}"/>

</div>

<div class="fieldcontain ${hasErrors(bean: requisicaoInstance, field: 'beneficiario', 'error')} required">
	<label for="beneficiario">
		<g:message code="requisicao.beneficiario.label" default="Beneficiario" />
		<span class="required-indicator">*</span>
	</label>
	<g:select name="beneficiario" from="${requisicaoInstance.constraints.beneficiario.inList}" required="" value="${requisicaoInstance?.beneficiario}" valueMessagePrefix="requisicao.beneficiario"/>

</div>

<div class="fieldcontain ${hasErrors(bean: requisicaoInstance, field: 'nome', 'error')} required">
	<label for="nome">
		<g:message code="requisicao.nome.label" default="Nome" />
		<span class="required-indicator">*</span>
	</label>
	<g:textField name="nome" maxlength="50" required="" value="${requisicaoInstance?.nome}"/>

</div>

<div class="fieldcontain ${hasErrors(bean: requisicaoInstance, field: 'cargo', 'error')} required">
	<label for="cargo">
		<g:message code="requisicao.cargo.label" default="Cargo" />
		<span class="required-indicator">*</span>
	</label>
	<g:textField name="cargo" maxlength="50" required="" value="${requisicaoInstance?.cargo}"/>

</div>

<div class="fieldcontain ${hasErrors(bean: requisicaoInstance, field: 'funcao', 'error')} required">
	<label for="funcao">
		<g:message code="requisicao.funcao.label" default="Funcao" />
		<span class="required-indicator">*</span>
	</label>
	<g:textField name="funcao" maxlength="50" required="" value="${requisicaoInstance?.funcao}"/>

</div>

<div class="fieldcontain ${hasErrors(bean: requisicaoInstance, field: 'cpf', 'error')} required">
	<label for="cpf">
		<g:message code="requisicao.cpf.label" default="Cpf" />
		<span class="required-indicator">*</span>
	</label>
	<g:textField name="cpf" maxlength="11" required="" value="${requisicaoInstance?.cpf}"/>

</div>

<div class="fieldcontain ${hasErrors(bean: requisicaoInstance, field: 'rg', 'error')} required">
	<label for="rg">
		<g:message code="requisicao.rg.label" default="Rg" />
		<span class="required-indicator">*</span>
	</label>
	<g:textField name="rg" maxlength="11" required="" value="${requisicaoInstance?.rg}"/>

</div>

<div class="fieldcontain ${hasErrors(bean: requisicaoInstance, field: 'email', 'error')} required">
	<label for="email">
		<g:message code="requisicao.email.label" default="Email" />
		<span class="required-indicator">*</span>
	</label>
	<g:field type="email" name="email" required="" value="${requisicaoInstance?.email}"/>

</div>

<div class="fieldcontain ${hasErrors(bean: requisicaoInstance, field: 'tel_fixo', 'error')} required">
	<label for="tel_fixo">
		<g:message code="requisicao.tel_fixo.label" default="Telfixo" />
		<span class="required-indicator">*</span>
	</label>
	<g:textField name="tel_fixo" maxlength="10" required="" value="${requisicaoInstance?.tel_fixo}"/>

</div>

<div class="fieldcontain ${hasErrors(bean: requisicaoInstance, field: 'tel_celular', 'error')} required">
	<label for="tel_celular">
		<g:message code="requisicao.tel_celular.label" default="Telcelular" />
		<span class="required-indicator">*</span>
	</label>
	<g:textField name="tel_celular" maxlength="10" required="" value="${requisicaoInstance?.tel_celular}"/>

</div>

<div class="fieldcontain ${hasErrors(bean: requisicaoInstance, field: 'banco_nome', 'error')} required">
	<label for="banco_nome">
		<g:message code="requisicao.banco_nome.label" default="Banconome" />
		<span class="required-indicator">*</span>
	</label>
	<g:textField name="banco_nome" maxlength="50" required="" value="${requisicaoInstance?.banco_nome}"/>

</div>

<div class="fieldcontain ${hasErrors(bean: requisicaoInstance, field: 'banco_numero', 'error')} required">
	<label for="banco_numero">
		<g:message code="requisicao.banco_numero.label" default="Banconumero" />
		<span class="required-indicator">*</span>
	</label>
	<g:textField name="banco_numero" maxlength="3" required="" value="${requisicaoInstance?.banco_numero}"/>

</div>

<div class="fieldcontain ${hasErrors(bean: requisicaoInstance, field: 'banco_agencia', 'error')} required">
	<label for="banco_agencia">
		<g:message code="requisicao.banco_agencia.label" default="Bancoagencia" />
		<span class="required-indicator">*</span>
	</label>
	<g:textField name="banco_agencia" maxlength="10" required="" value="${requisicaoInstance?.banco_agencia}"/>

</div>

<div class="fieldcontain ${hasErrors(bean: requisicaoInstance, field: 'banco_conta', 'error')} required">
	<label for="banco_conta">
		<g:message code="requisicao.banco_conta.label" default="Bancoconta" />
		<span class="required-indicator">*</span>
	</label>
	<g:textField name="banco_conta" maxlength="10" required="" value="${requisicaoInstance?.banco_conta}"/>

</div>

<div class="fieldcontain ${hasErrors(bean: requisicaoInstance, field: 'viagem_objetivo', 'error')} required">
	<label for="viagem_objetivo">
		<g:message code="requisicao.viagem_objetivo.label" default="Viagemobjetivo" />
		<span class="required-indicator">*</span>
	</label>
	<g:textField name="viagem_objetivo" required="" value="${requisicaoInstance?.viagem_objetivo}"/>

</div>

<div class="fieldcontain ${hasErrors(bean: requisicaoInstance, field: 'afastamento_data_inicio', 'error')} required">
	<label for="afastamento_data_inicio">
		<g:message code="requisicao.afastamento_data_inicio.label" default="Afastamentodatainicio" />
		<span class="required-indicator">*</span>
	</label>
	<g:datePicker name="afastamento_data_inicio" precision="day"  value="${requisicaoInstance?.afastamento_data_inicio}"  />

</div>

<div class="fieldcontain ${hasErrors(bean: requisicaoInstance, field: 'afastamento_data_termino', 'error')} required">
	<label for="afastamento_data_termino">
		<g:message code="requisicao.afastamento_data_termino.label" default="Afastamentodatatermino" />
		<span class="required-indicator">*</span>
	</label>
	<g:datePicker name="afastamento_data_termino" precision="day"  value="${requisicaoInstance?.afastamento_data_termino}"  />

</div>

<div class="fieldcontain ${hasErrors(bean: requisicaoInstance, field: 'trabalho_data_inicio', 'error')} required">
	<label for="trabalho_data_inicio">
		<g:message code="requisicao.trabalho_data_inicio.label" default="Trabalhodatainicio" />
		<span class="required-indicator">*</span>
	</label>
	<g:datePicker name="trabalho_data_inicio" precision="day"  value="${requisicaoInstance?.trabalho_data_inicio}"  />

</div>

<div class="fieldcontain ${hasErrors(bean: requisicaoInstance, field: 'trabalho_hora_inicio', 'error')} required">
	<label for="trabalho_hora_inicio">
		<g:message code="requisicao.trabalho_hora_inicio.label" default="Trabalhohorainicio" />
		<span class="required-indicator">*</span>
	</label>
	<g:textField name="trabalho_hora_inicio" required="" value="${requisicaoInstance?.trabalho_hora_inicio}"/>

</div>

<div class="fieldcontain ${hasErrors(bean: requisicaoInstance, field: 'trabalho_data_termino', 'error')} required">
	<label for="trabalho_data_termino">
		<g:message code="requisicao.trabalho_data_termino.label" default="Trabalhodatatermino" />
		<span class="required-indicator">*</span>
	</label>
	<g:datePicker name="trabalho_data_termino" precision="day"  value="${requisicaoInstance?.trabalho_data_termino}"  />

</div>

<div class="fieldcontain ${hasErrors(bean: requisicaoInstance, field: 'trabalho_hora_termino', 'error')} required">
	<label for="trabalho_hora_termino">
		<g:message code="requisicao.trabalho_hora_termino.label" default="Trabalhohoratermino" />
		<span class="required-indicator">*</span>
	</label>
	<g:textField name="trabalho_hora_termino" required="" value="${requisicaoInstance?.trabalho_hora_termino}"/>

</div>

<div class="fieldcontain ${hasErrors(bean: requisicaoInstance, field: 'deslocamento_tipo', 'error')} required">
	<label for="deslocamento_tipo">
		<g:message code="requisicao.deslocamento_tipo.label" default="Deslocamentotipo" />
		<span class="required-indicator">*</span>
	</label>
	<g:select name="deslocamento_tipo" from="${requisicaoInstance.constraints.deslocamento_tipo.inList}" required="" value="${requisicaoInstance?.deslocamento_tipo}" valueMessagePrefix="requisicao.deslocamento_tipo"/>

</div>

<div class="fieldcontain ${hasErrors(bean: requisicaoInstance, field: 'custeio_tipo', 'error')} required">
	<label for="custeio_tipo">
		<g:message code="requisicao.custeio_tipo.label" default="Custeiotipo" />
		<span class="required-indicator">*</span>
	</label>
	<g:select name="custeio_tipo" from="${requisicaoInstance.constraints.custeio_tipo.inList}" required="" value="${requisicaoInstance?.custeio_tipo}" valueMessagePrefix="requisicao.custeio_tipo"/>

</div>

<div class="fieldcontain ${hasErrors(bean: requisicaoInstance, field: 'justificativa', 'error')} ">
	<label for="justificativa">
		<g:message code="requisicao.justificativa.label" default="Justificativa" />
		
	</label>
	<g:textArea name="justificativa" cols="40" rows="5" maxlength="1000" value="${requisicaoInstance?.justificativa}"/>

</div>

<div class="fieldcontain ${hasErrors(bean: requisicaoInstance, field: 'status', 'error')} required">
	<label for="status">
		<g:message code="requisicao.status.label" default="Status" />
		<span class="required-indicator">*</span>
	</label>
	<g:select name="status" from="${requisicaoInstance.constraints.status.inList}" required="" value="${requisicaoInstance?.status}" valueMessagePrefix="requisicao.status"/>

</div>

<div class="fieldcontain ${hasErrors(bean: requisicaoInstance, field: 'trechos', 'error')} ">
	<label for="trechos">
		<g:message code="requisicao.trechos.label" default="Trechos" />
		
	</label>
	
<ul class="one-to-many">
<g:each in="${requisicaoInstance?.trechos?}" var="t">
    <li><g:link controller="trecho" action="show" id="${t.id}">${t?.encodeAsHTML()}</g:link></li>
</g:each>
<li class="add">
<g:link controller="trecho" action="create" params="['requisicao.id': requisicaoInstance?.id]">${message(code: 'default.add.label', args: [message(code: 'trecho.label', default: 'Trecho')])}</g:link>
</li>
</ul>


</div>

