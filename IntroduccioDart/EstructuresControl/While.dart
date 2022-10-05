demoWhile(var alumnes) {
  bool trobat = false;
  var i = 0;

  // Bucle while comprovant la condició des del principi
  while (!trobat) {
    if (alumnes[i] == 'Pep') {
      trobat = true;
      print('Hem trobat en Pep!');
    } else {
      print('L\'alumne ${alumnes[i]} no és en Pep, seguim cercant.');
    }
    i++;
  }
}

demoDoWhile(var alumnes) {
  // Bucle do-While, en que realitzam una acció abans de fer la comprovació
  print('-------------DoWhile-------------');
  // Inicialitzam variables

  int i = 0;
  bool trobat = false;
  do {
    if (alumnes[i] == 'Pep') {
      trobat = true;
      print('Hem trobat en Pep!');
    } else {
      print('L\'alumne ${alumnes[i]} no és en Pep, seguim cercant.');
    }
    i++;
  } while (!trobat);
}

void main() {
  //Cream les variables necessaries per a gestionar el bucle, condició, index, dataset,...
  var alumnes = ['Joana', 'Miquel', 'Pep', 'Maria'];

  demoWhile(alumnes);
  demoDoWhile(alumnes);
}
