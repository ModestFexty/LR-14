var
  intext, outtext: file of Char;
  a, C: Char;
  i, r: integer;

begin
  Assign(intext, 'E:\pascal\pascal labs\14\text1.txt');
  ReWrite(intext);
  write('Какие символы записываем в исходный файл?');
  for i := 1 to 10 do
  begin
    read(a);
    write(intext, a);
  end;
  
  Reset(intext);
  Assign(outtext, 'E:\pascal\pascal labs\14\text1.1.txt');
  ReWrite(outtext);
  
  Read(intext, C);
  i := 0;
  while not eof(intext) do
  begin
    i := i + 1;
    read(intext, C);
    if C = ' ' then
      r := i;
  end;
  
  Reset(intext);
  i := 0;
  while not eof(intext) do
  begin
    i := i + 1;
    Read(intext, C);
    if i <= r then
      Write(outtext, C);
  end;
  Close(outtext);
  Close(intext);
  erase(intext);
  rename(outtext,'E:\pascal\pascal labs\14\text1.txt');
end.