package rdp2

class Requisicao {
  String beneficiario
  String matricula
  String nome
  String cargo
  String funcao
  String cpf
  String rg
  String email
  String tel_fixo
  String tel_celular
  String banco_nome
  String banco_numero
  String banco_agencia
  String banco_conta
  String viagem_objetivo
  Date afastamento_data_inicio
  Date afastamento_data_termino
  Date  trabalho_data_inicio
  String trabalho_hora_inicio
  Date trabalho_data_termino
  String trabalho_hora_termino
  String deslocamento_tipo
  String custeio_tipo
  String justificativa
  String status

  static hasMany = [ trechos : Trecho ]

  static mapping = {
    table "requisicao"
    id column: 'id';
  }

  static constraints = {
    matricula size: 5..7, blank: false
    beneficiario inList: ["SERVIDOR", "CONVIDADO", "COLABORADOR EVENTUAL","OUTROS"]
    nome size: 5..50, blank: false
    cargo size: 5..50, blank: false
    funcao size: 5..50, blank: false
    cpf size: 5..11, blank: false, unique: true
    rg size: 5..11, blank: false
    email email: true, blank: false, column: 'eMail'
    tel_fixo size: 9..10, blank: false
    tel_celular size: 9..10, blank: false
    banco_nome size: 5..50, blank: false
    banco_numero size: 3..3, blank: false
    banco_agencia size: 4..10, blank: false
    banco_conta  size: 4..10, blank: false
    viagem_objetivo blank: false
    afastamento_data_inicio blank: false, date: true
    afastamento_data_termino blank: false, date: true
    trabalho_data_inicio blank: false, date: true
    trabalho_hora_inicio blank: false
    trabalho_data_termino blank: false, date: true
    trabalho_hora_termino blank: false
    deslocamento_tipo inList: ["AEREO", "AEREO E TERRESTRE", "TERRESTRE"]
    custeio_tipo inList: ["DIÁRIAS E PASSAGENS", "SOMENTE DIÁRIAS", "SOMENTE PASSAGENS"]
    justificativa nullable: true, maxSize: 1000
    status inList: ["PENDENTE", "DEFERIDO", "INDEFERIDO"]
  }

  String toString() {
    return id
  }

}
