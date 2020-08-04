Program laba2part2;
{$R *.res}

uses
  System.SysUtils;

var
  x, y, Step, a: real;
  n: integer;

begin
  x := 0.5;
  Step := 0.05;
  while x < 0.81 do

  begin
    a := 256;
    y := 512;
    n := 1;
    while a > 0.99 do

    begin

      y := a + ((exp(ln(x) * n) + a * 2) / y);
      a := a / 2;
      n := n + 1;
    end;

    y := (exp(ln(x) * n) + a * 2) / y;
    writeln('x= ', x:4:2, '   y= ', y:10:6);
    x := x + Step;

  end;
  readln;

end.
