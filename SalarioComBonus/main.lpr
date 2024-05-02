program main;
var
nomeFuncionario, strSalario: String;
salario, salarioFixo, valorVendasMensais: Double;
const
percentualComissao: Double = 0.15;
begin
Read(nomeFuncionario);
Read(salarioFixo);
Read(valorVendasMensais);
salario := salarioFixo + valorVendasMensais * percentualComissao;
Str(salario:0:2, strSalario);
WriteLn('TOTAL = R$ ' + strSalario);
end.