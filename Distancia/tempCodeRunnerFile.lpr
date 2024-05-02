program main;
const
  kmHCarroX: Integer = 60;
  kmHCarroY: Integer = 90;
  carroYEm60MinutosDistancia: Integer = 60;
  carroY30KmDistancia: Integer = 30;

var 
  distancia, diferencaKmHEntreOsCarros, seAfasta1KmACada2Minutos: Integer;

begin

diferencaKmHEntreOsCarros := kmHCarroY - kmHCarroX;
seAfasta1KmACada2Minutos := trunc(carroYEm60MinutosDistancia / diferencaKmHEntreOsCarros);

ReadLn(distancia);
WriteLn(distancia * seAfasta1KmACada2Minutos, ' minutos');

end.