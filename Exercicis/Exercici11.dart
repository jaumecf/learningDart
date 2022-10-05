// h:1, m: 49, s: 11 => '01:49:11'
// Es podria fer concatenant un string però també podem emprar StringBuffer

// CONDICIONALS
String hhmmss_antic(int h, int m, int s) {
  var buf = StringBuffer();

  if (h < 10) {
    buf.write(0);
  }
  buf.write(h);
  if (m < 10) {
    buf.write(0);
  }
  buf.write(m);
  if (s < 10) {
    buf.write(0);
  }
  buf.write(s);
  return buf.toString();
}

String hhmmss(int h, int m, int s) {
  var buf = StringBuffer();

  wr(d) {
    if (d < 10) buf.write(0);
    buf.write(d);
  }

  wr(h);
  buf.write(':');
  wr(m);
  buf.write(':');
  wr(s);

  return buf.toString();
}

// podem millorar la funcio utilitzant paràmetres nombrat
// ajuden a clarificar la funció, a documentar-la i també ens permet afegir valors per defecte

String hhmmss_nombrats({int h = 0, int m = 0, int s = 0}) {
  var buf = StringBuffer();

  wr(d) {
    if (d < 10) buf.write(0);
    buf.write(d);
  }

  wr(h);
  buf.write(':');
  wr(m);
  buf.write(':');
  wr(s);

  return buf.toString();
}

void main() {
  print(hhmmss(1, 49, 11));
}
