# **Задание 26**
Часть 1:

![alt text](part1.png)

``` Delphi
program laba2part1;
uses
  System.SysUtils;
var x,f,s: real;
  k: integer;
begin
  x:=0.6;
  f:=0;
    while x<(1.125) do
    begin
     s:=0;
        for k := 1 to 15 do
        begin
           s:=s+(Cos(sqrt(k*x)/exp(ln(sqr(k)-1/3)*(1/3))));
           if k>=10 then
            begin
            f:=s+(k*exp(x))+(exp(ln(k)*(x/2)));
            writeln('n=',k:2,'     x=', x:4:2, '     f=', f:6:2);
            end;
        end;
      x:=x+0.25;
    end;
  readln
end.

```



Часть 2:

![alt text](part2.png)

``` Delphi
Program laba2part2;
uses
  System.SysUtils;
   var x,y,Step,a:real;
   n: integer;
begin
  x:=0.5;
  Step:=0.05;
  while x<0.81 do
  begin
    a:= 256;
    y:=512;
    n:=1;
   while a>0.99 do
    begin
      y:= a+ ((exp(ln(x)*n)+a*2)/y) ;
      a:=a/2;
      n:=n+1;
    end;
    x:=x+step;
    y:=(exp(ln(x)*n)+a*2)/y;
    writeln('x= ',x:4:2, '   y= ',y:10:6);
  end;
  readln;
 end.

```
