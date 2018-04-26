#
#
#
{ instance, eclipse }:

with eclipse;
with dropin;

let
in
rec {

  scala-total = instance {
    icon = "eclipse-3";
    name = "scala-total";
    super = product.scala-main-473a;
    dropins = [
    
    ];
    execArgs = [
#        "-debug"
#        "-consoleLog"
    ];
    javaArgs = [
#        "-Xms6g"
#        "-Xmx6g"
    ];
  };
  
}
