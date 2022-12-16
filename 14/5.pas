var
  S: String;
  F_in: file of Real;
  a2, a1, a, max: Real;
  i: integer;
  b: real;

begin
  Assign(F_in, 'E:\pascal\pascal labs\14\text5.txt');
  rewrite(F_in);
  writeln('Введите вещественные числа');
  for i := 1 to 10 do
  begin
    b := random(1, 100);
    write(b, ' ');
    write(F_in, b);
  end;
  close(F_in);
  Reset(F_in); 
  Read(F_in, a);
  Read(F_in, a1);
  Read(F_in, a2);
  writeln;
  write('Результат = ');
  
  for i:=1 to 7 do
  begin
    if a1 > a then
      if a1 > a2 then
        max := a1;
    a:=a1;
    a1:=a2;
    read(F_in,a2);
  end;
  
  write(max);
  Close(F_in);
end.