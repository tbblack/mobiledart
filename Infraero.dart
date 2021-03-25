import 'Voo.dart';
import 'Companhia.dart';
import 'Aeroporto.dart';

class Infraero {
// cadastro de aeroportos
  void CadastroDeAeroportos(List<Aeroporto> listaAeroporto, aeroporto) {
    if (listaAeroporto.contains(aeroporto)) {
      return;
    } else {
      listaAeroporto.add(aeroporto);
      aeroporto.toString();
    }
  }

// cadastro de voos
  void CadastroDeVoos(List<Aeroporto> listaAeroporto, List<Voo> listaVoo, voo) {
    if (listaVoo.contains(voo)) {
      return;
    } else {
      listaVoo.add(voo);
      listaAeroporto.forEach((element) {
        if (element.cidade == voo.destino) {
          element.insereVooChegada(voo);
        }
        if (element.cidade == voo.origem) {
          element.insereVooSaida(voo);
        }
      });
      voo.toString();
    }
  }

// cadastro de companhias
  void CadastroDeCompanhias(List<Companhia> listaCompanhia, companhia) {
    if (listaCompanhia.contains(companhia)) {
      return;
    } else {
      listaCompanhia.add(companhia);
      companhia.toString();
    }
  }

// listar aeroportos
  void ListarAeroportos(List<Aeroporto> listaAeroporto) {
    listaAeroporto.forEach((element) {
      element.toString();
    });
  }

// listar voos por aeroporto
  void ListarVoosPorAeroporto(Aeroporto aeroporto) {
    List<Voo> listaVoos = [];
    listaVoos.add(aeroporto.voosAeroportoChegada);
    listaVoos.add(aeroporto.voosAeroportoSaida);
    listaVoos.forEach((element) {
      element.toString();
    });
  }

// listar voos por aeroporto e por companhia
  void ListarVooPorAeroportoCompanhia(
      Aeroporto aeroporto, Companhia companhia) {
    List<Voo> listaVoos = [];
    listaVoos.add(aeroporto.voosAeroportoChegada);
    listaVoos.add(aeroporto.voosAeroportoSaida);
    listaVoos.forEach((element) {
      if (element.companhia!.nome == companhia.nome) {
        element.toString();
      }
    });
  }

// listar voo de chegada por aeorporto
  void ListarVooPorAeroportoChegada(Aeroporto aeroporto) {
    aeroporto.voosAeroportoChegada.forEach((element) {
      element.toString();
    });
  }

// listar voo de saida por aeroporto
  void ListarVooPorAeroportoSaida(Aeroporto aeroporto) {
    aeroporto.voosAeroportoSaida.forEach((element) {
      element.toString();
    });
  }

// listar voo de saida por companhia e aeroporto
  void ListarVooPorAeroportoCompanhiaSaida(
      Aeroporto aeroporto, Companhia companhia) {
    aeroporto.voosAeroportoSaida.forEach((element) {
      if (element.companhia!.nome == companhia.nome) {
        element.toString();
      }
    });
  }

// listar voo de chegada  por companhia e aeorporto
  void ListarVooPorAeroportoCompanhiaChegada(
      Aeroporto aeroporto, Companhia companhia) {
    aeroporto.voosAeroportoChegada.forEach((element) {
      if (element.companhia!.nome == companhia.nome) {
        element.toString();
      }
    });
  }

// buscar voo por numero
  void VooPorNumero(List<Voo> listaVoo, numero) {
    listaVoo.forEach((element) {
      if (element.getNumero == numero) {
        element.toString();
      }
    });
  }
}
