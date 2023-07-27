unit TGunUnit;

{$mode ObjFPC}{$H+}

interface
uses Classes, TItemUnit;

type TGun = class(TItem)
	Damage : integer;
	MaxAmmo : integer;
	Ammo : integer;
	Cooldown : integer;
	
	procedure setDamage(dmg : integer);
	procedure setMaxAmmo(mx : integer);
	procedure setCooldown(cldwn : integer);
end;

implementation

procedure TGun.setDamage(dmg : integer);
 begin
	Damage := dmg;
 end;
 
procedure TGun.setMaxAmmo(mx : integer);
 begin
	MaxAmmo := mx;
 end;
 
procedure TGun.setCooldown(cldwn : integer);
 begin
	Cooldown := cldwn;
 end;
end.
