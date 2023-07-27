unit TEntityUnit;

{$mode ObjFPC}{$H+}

interface
uses Classes;

type TEntity = class
	simbol : char;
	name : string;
	X, Y : integer;
    Px, Py : integer;
	
	procedure setSimbol(sim : char);
	procedure setName(nm : string);
	procedure setXYpos(a,b : integer);
end;

implementation

procedure TEntity.setXYpos(a,b : integer);
 begin
	X := a;
	Y := b;
 end;

procedure TEntity.setSimbol(sim : char);
 begin
	simbol := sim;
 end;
	
procedure TEntity.setName(nm : string);
 begin
	name := nm;
 end;

end.
