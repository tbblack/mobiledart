import 'Voo.dart';

class Aeroporto {
  //ATRIBUTOS DA CLASSE
  String _nome;
  String _codigo;
  String _cidade;
  String _estado;
  String _pais;
  List<Voo> _listaVoosChegada = [];
  List<Voo> _listaVoosSaida = [];

  //CONSTRUTOR DA CLASSE
  Aeroporto(this._nome, this._codigo, this._cidade, this._estado, this._pais);

  //GETTERS
  String get nome => this._nome;
  String get codigo => _codigo;
  String get cidade => _cidade;
  String get estado => _estado;
  String get pais => _pais;
  List<Voo> get voosChegada => _listaVoosChegada;
  List<Voo> get voosSaida => _listaVoosSaida;

  //SETTERS
  set nome(String nome) => _nome = nome;
  set codigo(String codigo) => _codigo = codigo;
  set cidade(String cidade) => _cidade = cidade;
  set estado(String estado) => _estado = estado;
  set pais(String pais) => _pais = pais;

  //METODO INSERE UM VOO NA LISTA CHEGADA
  void insereVooChegada(Voo voo) => _listaVoosChegada.add(voo);

  //METODO INSERE UM VOO NA LISTA SAIDA
  void insereVooSaida(Voo voo) => _listaVoosSaida.add(voo);

  //METODO BUSCA O VETOR DE VOOS DE UMA DETERMINADA COMPANHIA CHEGADA
  get voosAeroportoChegada => _listaVoosChegada;

  //METODO BUSCA O VETOR DE VOOS DE UMA DETERMINADA COMPANHIA SAIDA
  get voosAeroportoSaida => _listaVoosSaida;

  //METODO BUSCA O VETOR DE VOOS DE UMA DETERMINADA COMPANHIA CHEGADA
  List<Voo> getVoosCompanhiaChegada(String companhia) {
    List<Voo> listaVoos = [];
    for (var voo in _listaVoosChegada) {
      if (voo.companhia!.nome == companhia) {
        listaVoos.add(voo);
      }
    }
    return listaVoos;
  }

  //METODO BUSCA O VETOR DE VOOS DE UMA DETERMINADA COMPANHIA SAIDA
  List<Voo> getVoosCompanhiaSaida(String companhia) {
    List<Voo> listaVoos = [];
    for (var voo in _listaVoosSaida) {
      if (voo.companhia!.nome == companhia) {
        listaVoos.add(voo);
      }
    }
    return listaVoos;
  }

  // //METODO BUSCA O VETOR DE VOOS DE UMA DETERMINADA DESTINO

  // List<Voo> getVoosDestino(String destino) {
  //   List<Voo> listaVoos = [];
  //   for (var voo in _vetVoos) {
  //     if (voo.destino == destino) {
  //       listaVoos.add(voo);
  //     }
  //   }
  //   return listaVoos;
  // }

  String toString() {
    return "$nome - $codigo - $cidade - $estado - $pais";
  }
}
