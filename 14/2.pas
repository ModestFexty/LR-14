var 
  s: string;
  intext,outtext: text;
  max, str, kol, maxs: integer;
begin
  Assign(intext, 'E:\pascal\pascal labs\14\text2.txt');
  Assign(outtext, 'E:\pascal\pascal labs\14\text2.1.txt');
  rewrite(intext);
  for var i:=1 to 5 do
  begin
    readln(s);
    writeln(intext,s);
  end;
  close(intext);
  
  reset(intext);
  while not eof(intext) do
  begin
      readln(intext,s);
    if max<length(s) then
    begin
      max:=length(s);
    end;
  end;
  
  str:=0;
  reset(intext);
  rewrite(outtext);
  while not eof(intext) do
  begin
      readln(intext,s);
    if max=length(s) then
    begin
      for var i:=length(s) downto 1 do
      begin
        write(outtext,s[i]);
      end;
      writeln(outtext);
    end;
  end;
  
  close(intext);
  close(outtext);
  erase(intext);
  rename(outtext,'E:\pascal\pascal labs\14\text2.txt');
end.