Program main;
Uses
sysutils;

Type
  TPeca = record
    numeroPeca: Integer;
    quantidade: Integer;
    valorPeca: Double;
  End;

Var 
  entradaPedido, strValorTotalPedido: String;
  pedido1: TPeca;
  pedido2: TPeca;
  valorTotalPedido: Double;

Procedure extrairDadosPedido(var dadosPedido: String; Var pedido: TPeca);
Var 
  arrayDadosPedido: array[0..2] Of String;
  stringIndefinida: String = '';
  dadoPedido: String = '';
  separador: String = ' ';
  j: Integer = 0;
  i : Integer = 0;
Begin
  dadosPedido := StringReplace(dadosPedido, '.', ',', [rfReplaceAll]);

  For i := 1 To Length(dadosPedido) Do
  Begin

    If dadosPedido[i] <> separador Then
      dadoPedido := dadoPedido + dadosPedido[i];

    If i = Length(dadosPedido) Then
      arrayDadosPedido[j] := dadoPedido;

    If dadosPedido[i] = separador Then
    begin
      arrayDadosPedido[j] := dadoPedido;
      dadoPedido := stringIndefinida;
      j := j + 1;
    End;
  End;
  
  dadosPedido := stringIndefinida;
  pedido.numeroPeca := StrToInt(arrayDadosPedido[0]);
  pedido.quantidade := StrToInt(arrayDadosPedido[1]);
  pedido.valorPeca := StrToFloat(arrayDadosPedido[2]);
End;

Begin
ReadLn(entradaPedido);
extrairDadosPedido(entradaPedido, pedido1);

ReadLn(entradaPedido);
extrairDadosPedido(entradaPedido, pedido2);

valorTotalPedido := (pedido1.quantidade * pedido1.valorPeca) + (pedido2.quantidade * pedido2.valorPeca);
Str(valorTotalPedido:0:2, strValorTotalPedido);

WriteLn('VALOR A PAGAR: R$ ' + strValorTotalPedido);
End.
