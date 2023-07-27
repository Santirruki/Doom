unit TItemUnit;

{$mode ObjFPC}{$H+}

interface
uses Classes;

type TItem = class
	simbol : char;
	name : string;
    X, Y : integer;
    holding : boolean;
    infloor : boolean;
	
	procedure setSimbol(sim : char);
	procedure setName(nm : string);
end;

implementation

procedure TItem.setSimbol(sim : char);
 begin
	simbol := sim;
 end;
	
procedure TItem.setName(nm : string);
 begin
	name := nm;
 end;

end.
