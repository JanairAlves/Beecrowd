Program main;
Uses
sysutils;

Type
  TStringArray = array of String;

Function extrairDados(conteudo: String; separador: String): TStringArray;
Var 
  stringIndefinida: String = '';
  i: Integer = 0;
Begin
  SetLength(extrairDados, Length(extrairDados) + 1);
  For i := 1 To Length(conteudo) Do
  Begin
    If (conteudo[i] <> separador) And (conteudo[i] <> stringIndefinida) Then
      extrairDados[High(extrairDados)] := extrairDados[High(extrairDados)] + conteudo[i];
    
    If conteudo[i] = separador Then
      SetLength(extrairDados, Length(extrairDados) + 1);
  End;
End;

Var
  entrada: String;
  separador: String = ' ';
  arrayExtracao: TStringArray;
  arrayEntrada: array of Integer;
  i: Integer;
  
  Function heOMaior(A, B: Integer): Integer;
  Begin
    heOMaior := trunc( ( A + B + Abs(A - B) ) / 2);
  End;

Begin
ReadLn(entrada);
arrayExtracao := extrairDados(entrada, separador);

For i := Low(arrayExtracao) to High(arrayExtracao) do
Begin
  SetLength(arrayEntrada, Length(arrayEntrada) + 1);
  arrayEntrada[i] := StrToInt(arrayExtracao[i]);
End;

WriteLn(heOMaior( heOMaior( arrayEntrada[0], arrayEntrada[1] ), arrayEntrada[2] ), ' eh o maior' );
End.