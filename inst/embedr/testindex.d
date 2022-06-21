import embedr.r;
import std.stdio;

void main() {
  MatrixIndex mi;
  mi.rows = 10;
  mi.cols = 3;
  foreach(ind; mi) {
    writeln(ind);
  }
  
  TransposeIndex ti;
  ti.rows = 10;
  ti.cols = 3;
  foreach(ind; ti) {
    writeln(ind);
  }
  
  DiagonalIndex di;
  di.rows = 10;
  di.cols = 10;
  foreach(ind; di) {
    writeln(ind);
  }
  
  di.rows = 4;
  foreach(ind; di) {
    writeln(ind);
  }

  di.rows = 10;
  di.cols = 4;
  foreach(ind; di) {
    writeln(ind);
  }
  
  BelowDiagonalIndex bdi;
  bdi.rows = 10;
  bdi.cols = 10;
  foreach(ind; bdi) {
    writeln(ind);
  }
  
  AboveDiagonalIndex adi;
  adi.rows = 10;
  adi.cols = 10;
  foreach(ind; adi) {
    writeln(ind);
  }
}
