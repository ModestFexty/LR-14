var
  intext, outtext: file of real;
  max,min,a:real;
  intexmin,intexmax,intex:integer;
begin
  Writeln('Вещественые числа из исходного файла');
  Assign(intext, 'E:\pascal\pascal labs\14\text6.txt');
  Assign(outtext, 'E:\pascal\pascal labs\14\text6.1.txt');
  rewrite(intext);
  for var i := 1 to 10 do
  begin
    a := random(1, 100);
    write(a, ' ');
    write(intext, a);
  end;
  
  max:=0;
  min:=100;
  reset(intext);
  while not eof(intext) do
  begin
    intex:=intex+1;
    read(intext,a);
    if a>max then
      begin
      max:=a;
      intexmax:=intex;
      end;
    if a<min then
      begin
      min:=a;
      intexmin:=intex;
      end;
  end;
  
  intex:=0;
  reset(intext);
  rewrite(outtext);
  while not eof(intext) do
  begin
    intex:=intex+1;
    read(intext,a);
    if intex=intexmax then
    begin
      write(outtext,min);
      continue;
    end;
    if intex=intexmin then
    begin
      write(outtext,max);
      continue;
    end;
    write(outtext,a);
  end;
  
  writeln;
  Writeln('Полученый результат');
  reset(outtext);
  while not eof(outtext) do
  begin
    read(outtext,a);
    write(a,' ');
  end;
  
  close(intext);
  close(outtext);
  erase(intext);
  rename(outtext,'E:\pascal\pascal labs\14\text6.txt');
end.