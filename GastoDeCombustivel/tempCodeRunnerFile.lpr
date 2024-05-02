program main;
const
  carroFaz12KmL: Integer = 12;

var
  tempoGastoNaViagemHoras: Integer;
  velocidadeMediaKmH: Integer;
  combustivelGastoNaViagem: Double;

begin

ReadLn(tempoGastoNaViagemHoras, velocidadeMediaKmH);

combustivelGastoNaViagem := (tempoGastoNaViagemHoras * velocidadeMediaKmH) / carroFaz12KmL;

WriteLn(FormatFloat('0.000', combustivelGastoNaViagem));
end.