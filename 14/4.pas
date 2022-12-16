var
  intext: file of integer;
  a,sum:integer;
begin
  Assign(intext, 'E:\pascal\pascal labs\14\text4.txt');
  Rewrite(intext);
  for var i:=1 to 20 do
  begin
    a:=random(1,100);
    write(intext,a);
  end;
  
  
  reset(intext);
  while not eof(intext) do
  begin
    read(intext,a);
    if a mod 2 = 0 then
      sum:=sum+a;
  end;
  
  writeln('Сумма всех чётных чисел из файла = ',sum);
  
  
  close(intext);
end.