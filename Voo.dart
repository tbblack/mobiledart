import 'Companhia.dart';

class Voo {
  //ATRIBUTOS DA CLASSE
  String data;
  String horario;
  int _numero;
  String destino;
  String origem;
  String portaoEmbarque;
  Companhia? companhia = null;

  //CONSTRUTOR VERSAO OTIMIZADA
  Voo(this.data, this.horario, this._numero, this.destino, this.origem,
      this.portaoEmbarque);

  String getData() {
    return data;
  }

  String toStringCompanhia() {
    return companhia!.toString();
  }

  String toString() {
    return "$data - $horario - $numero - $destino - $origem - $portaoEmbarque - $companhia.nome";
  }

  //Metodos de alteracao (SETTERS)
  set setData(String data) => this.data = data;
  set setHorario(String horario) => this.horario = horario;
  set setDestino(String destino) => this.destino = destino;
  set setOrigem(String origem) => this.origem = origem;
  set setPortaoEmbarque(String portaoEmbarque) =>
      this.portaoEmbarque = portaoEmbarque;
  set setCompanhia(Companhia? companhia) => this.companhia = companhia;

  //SET VERSAO OTIMIZADA
  set numero(int numero) {
    if (numero > 0) {
      _numero = numero;
    }
  }

  int get numero {
    print("GET CHAMADO");
    return _numero;
  }

  //SET VERSAO CONVENCIONAL
  void setNumeroVoo(int numero) {
    if (numero > 0) {
      this._numero = _numero;
    }
  }

  //Métodos de acesso (GETTERS)
  String get getHorario => horario;

  // String getHorario() {
  //   return horario;
  // }

  String get getDestino => destino;
  String get getOrigem => origem;
  // String getDestino() {
  //   return destino;
  // }

  int get getNumero => _numero;

  String getPortaoEmbarque() {
    return portaoEmbarque;
  }

  Companhia? getCompanhia() {
    return companhia;
  }

  String getNomeCompanhia() {
    return (companhia != null) ? companhia!.nome : "";
  }

  int getCodigoCompanhia() {
    return (companhia != null) ? companhia!.codigo : 0;
  }
}
