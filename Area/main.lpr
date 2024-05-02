Program main;
uses
  sysutils;

// c² = a²+b²
Function triangulo(A, C: Double): Double;
Begin
  triangulo := ( A * C ) / 2;
End;

// A = πr²
Function circulo(C: Double): Double;
const pi: Double = 3.14159;
Begin  
  circulo := pi * ( C * C );
End;

// A = (b1+b2)*h
//        2 
Function trapezio(A, B, C: Double): Double;
Begin
  trapezio := ( ( A + B ) * C ) / 2;
End;

// A = L²
Function quadrado(B: Double): Double;
Begin
  quadrado := B * B;
End;

// A = comprimento * largura
Function retangulo(A, B: Double): Double;
Begin
  retangulo := A * B;
End;

Function formatarDoubleToString(valor: Double): String;
begin
  Str(valor:0:3, formatarDoubleToString);
end;

Procedure extrairDados(dados: String; var A, B, C: Double);
var
  separador: String = ' ';
  valorExtraido: String = '';
  stringIndefinida: String = '';
  arrayDadosPedido: array[0..2] of String;
  j: Integer = 0;
  i : Integer = 0;
Begin
  dados := StringReplace(dados, '.', ',', [rfReplaceAll]);

  For i := 1 To Length(dados) Do
  Begin
    If dados[i] <> separador Then
      valorExtraido := valorExtraido + dados[i];

    If i = Length(dados) Then
      arrayDadosPedido[j] := valorExtraido;

    If dados[i] = separador Then
    Begin
      arrayDadosPedido[j] := valorExtraido;
      valorExtraido := stringIndefinida;
      j := j + 1;
    End;
  End;

  A := StrToFloat(arrayDadosPedido[0]);
  B := StrToFloat(arrayDadosPedido[1]);
  C := StrToFloat(arrayDadosPedido[2]);
End;

Var 
  A, B, C: Double;
  dadosEntrada: String;

begin
ReadLn(dadosEntrada);
extrairDados(dadosEntrada, A, B, C);

WriteLn('TRIANGULO: ', formatarDoubleToString(triangulo(A, C)));
WriteLn('CIRCULO: ', formatarDoubleToString(circulo(C))); 
WriteLn('TRAPEZIO: ', formatarDoubleToString(trapezio(A, B, C)));
WriteLn('QUADRADO: ', formatarDoubleToString(quadrado(B)));
WriteLn('RETANGULO: ', formatarDoubleToString(retangulo(A, B)));

End.