Program main;
Uses 
  sysutils;

Type 
  TIntegerArray = array Of Integer;

Procedure calcular(valor: Integer; Var quantidades: TIntegerArray; tipoCedulas: Array Of Integer);
Begin
  SetLength( quantidades, Length( quantidades ) + 1 );
  quantidades[ High( quantidades ) ] := Round( valor / tipoCedulas[ High( quantidades ) ] );

  If tipoCedulas[ High(quantidades) ] <= 1 Then
    exit;

  calcular( valor Mod tipoCedulas[ High( quantidades ) ], quantidades, tipoCedulas );
End;

Var 
  arrayTipoCedulas: array Of Integer;
  arrayQuantidadeCedulas: TIntegerArray;
  valorEntrada: Int64;
  i: Integer;

Begin
  Read( valorEntrada );

  If ( valorEntrada < 0 ) And ( valorEntrada < 1000000 ) Then
    exit;

  arrayTipoCedulas := [100, 50, 20, 10, 5, 2, 1];
  calcular( valorEntrada, arrayQuantidadeCedulas, arrayTipoCedulas );

  For i := Low( arrayTipoCedulas ) To High( arrayTipoCedulas ) Do
    WriteLn( arrayQuantidadeCedulas[i], ' nota (s) de R$ ', arrayTipoCedulas[i] );

End.