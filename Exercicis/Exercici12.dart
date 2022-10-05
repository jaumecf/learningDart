bool es_primer(int n) {
  for (int d = 2; d * d <= n; d++) {
    if (n % d == 0) return false;
  }
  return n > 1;
}

// Mostra primers fins arribar a N
void mostra_primers(int max) {
  for (int i = 0; i < max; i++) {
    if (es_primer(i)) print(i);
  }
}

// WHILE
// Mostra els primers n primers
List<int> llista_n_primers(int n) {
  List<int> primers = [];
  int i = 2;
  while (primers.length < n) {
    if (es_primer(i)) primers.add(i);
    i++;
  }
  return primers;
}

//TODO: For per a llistes
void mostraLlistaPrimers(int n) {
  for (var primer in llista_n_primers(n)) {
    print(primer);
  }
}

// Exercici: retorna llista de primers amb una diferencia de 2
List<List<int>> parelles_primers(int n) {
  var primers = llista_n_primers(n);
  List<List<int>> parelles = [];
  for (int i = 1; i < primers.length; i++) {
    if (primers[i] - primers[i - 1] == 2) {
      parelles.add([primers[i - 1], primers[i]]);
    }
  }
  return parelles;
}

void mostraLlistaParelles(n) {
  for (var p in parelles_primers(n)) {
    print('${p[0]} - ${p[1]}');
  }
}

void main() {
  //print(es_primer(6));
  //mostra_primers(100);
  //print(llista_n_primers(10));
  mostraLlistaParelles(1000000);
}


/*
Dart Native (codi màquina JIT i AOT)
Durant el desenvolupament, un cicle de desenvolupador ràpid és fonamental 
per a la iteració. El Dart VM ofereix un compilador just-in-time (JIT) amb 
recompilació incremental (permet la recàrrega en calent), col·leccions de 
mètriques en directe (que alimenta DevTools) i un ric suport de depuració.

Quan les aplicacions estan a punt per implementar-se en producció, 
tant si publiqueu a una botiga d'aplicacions com si us desplegueu a un
 backend de producció, el compilador Dart AOT permet la compilació anticipada 
 al codi de màquina ARM o x64 natiu. La vostra aplicació compilada per AOT 
 s'inicia amb un temps d'inici coherent i curt.

El codi compilat per AOT s'executa dins d'un temps d'execució Dart eficient 
que fa complir el sistema de tipus Dart de so i gestiona la memòria mitjançant
 una assignació ràpida d'objectes i un col·lector d'escombraries generacional.
*/