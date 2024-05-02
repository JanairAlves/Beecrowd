program main;
uses
sysutils;

var
numeroFuncionario, horasTrabalhadas : Integer;
valorHoraTrabalhada, salario: Double;
strSalario: String;

begin
Read(numeroFuncionario);
Read(horasTrabalhadas);
Read(valorHoraTrabalhada);
salario := horasTrabalhadas * valorHoraTrabalhada;
Str(salario:0:2, strSalario);

// WriteLn('NUMBER = ' + IntToStr(numeroFuncionario));
// WriteLn('SALARY = U$ ' + strSalario);

// WriteLn('NUMBER = ' + IntToStr(numeroFuncionario) + #10 + 'SALARY = U$ ' + strSalario);

WriteLn('NUMBER = ' + IntToStr(numeroFuncionario) + Chr(10) + 'SALARY = U$ ' + strSalario);
end.