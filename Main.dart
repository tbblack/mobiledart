import 'Voo.dart';
import 'Companhia.dart';
import 'Aeroporto.dart';
import 'Infraero.dart';

void main() {
  List<Aeroporto> listaAeroporto = [];
  List<Voo> listaVoo = [];
  List<Companhia> listaCompanhia = [];

  Infraero infraero = Infraero();

  //INSTANCIA OBJETOS DE COMPANHIA
  infraero.CadastroDeCompanhias(listaCompanhia, Companhia("TAM", 6));
  infraero.CadastroDeCompanhias(listaCompanhia, Companhia("GOL", 2));
  infraero.CadastroDeCompanhias(listaCompanhia, Companhia("AZUL", 8));

  infraero.CadastroDeAeroportos(listaAeroporto,
      Aeroporto("Lisyas Rodrigues", "PMW", "PALMAS", "TO", "BRASIL"));
  //CRIA VOOS\
  infraero.CadastroDeVoos(
      listaAeroporto,
      listaVoo,
      Voo("10/10/2021", "10:10", 4020, "RIO DE JANEIRO", "BRASILIA", "32B",
          Companhia("TAM", 6)));

  // Voo palmasPOA = Voo("10/10/2021", "10:10", 4020, "SAO PAULO", "32B");
  // palmasPOA.companhia = GOL;

  // Voo palmasGYN = Voo("10/10/2021", "10:10", 4020, "GOIANIA", "32B");
  // palmasGYN.companhia = GOL;

  // Voo palmasSP = Voo("10/10/2021", "10:10", 4020, "SAO PAULO", "32B");
  // palmasSP.companhia = TAM;

  //INSTANCIA AEROPORTO E INSERE OS VOOS

  // aeroPalmas.insereVoo(palmasRJ);
  // aeroPalmas.insereVoo(palmasPOA);
  // aeroPalmas.insereVoo(palmasGYN);
  // aeroPalmas.insereVoo(palmasSP);

  // print(aeroPalmas.getVoosDestino("SAO PAULO"));
}
