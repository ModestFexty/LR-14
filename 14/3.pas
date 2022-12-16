var
  intext, out1text,out2text: file of integer;
  a:integer;
begin
  Assign(intext, 'E:\pascal\pascal labs\14\text3.txt');
  Assign(out1text, 'E:\pascal\pascal labs\14\text3.1.txt');
  Assign(out2text, 'E:\pascal\pascal labs\14\text3.2.txt');
  Rewrite(intext);
  for var i:=1 to 20 do
  begin
    a:=random(1,100);
    write(intext,a);
  end;
  
  
  rewrite(out1text);
  rewrite(out2text);
  reset(intext);
  while not eof(intext) do
  begin
    read(intext,a);
    if a mod 2 = 1 then
      write(out1text,a)
    else
      write(out2text,a);
  end;
  
  
  reset(out1text);
  writeln('Нечетные числа из первого файла');
  while not eof(out1text) do
  begin
    read(out1text,a);
    write(a,' ');
  end;
  
  
  reset(out2text);
  writeln;
  writeln('Четные числа из второго файла');
  while not eof(out2text) do
  begin
    read(out2text,a);
    write(a,' ');
  end;
  
  close(intext);
  close(out1text);
  close(out2text);
end.