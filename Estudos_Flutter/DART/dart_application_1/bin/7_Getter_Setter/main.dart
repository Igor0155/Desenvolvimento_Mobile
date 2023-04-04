import 'Viagem.dart';
import 'transporte.dart';

void main() {
  Viagem viagemMaio = Viagem(locomocao: Transporte.aviao);

  print(viagemMaio.consultarLocaisVisitados);

  viagemMaio.visitar('Grecia');

  viagemMaio.alterarLocaisVisitados = 10;

  print(viagemMaio.consultarLocaisVisitados);
}
