unit inputUnit;

{$mode ObjFPC}{$H+}

interface

uses
  Classes, SysUtils, TEntityUnit, VarUnit, crt, TGunUnit, TBulletUnit;

var
  bullets : array[1..20] of TBullet;

procedure inputPlayer(ent : TEntity);
procedure bypassmap(ent : TEntity);
procedure pickupguninfloor(gun : TGun);

implementation

procedure inputPlayer(ent : TEntity);
 begin
   case readkey of
      'w':begin
           ent.py := ent.y;
           ent.px := ent.x;
           dec(ent.y);
          end;
      'a':begin
           ent.py := ent.y;
           ent.px := ent.x;
           dec(ent.x);
          end;
      's':begin
           ent.py := ent.y;
           ent.px := ent.x;
           inc(ent.y);
          end;
      'd':begin
           ent.py := ent.y;
           ent.px := ent.x;
           inc(ent.x);
          end;
      'f':active := false;
      't':begin
            if (gun.holding = true) and (gun.ammo > 0) and (cooldown <= 0) then
               begin
                 i := 1;
                 while bullets[i].exists <> false do
                  begin
                   inc(i);
                  end;
                 bullets[i].seepointingto(player);
                 bullets[i].whatweaponfrom(gun);
                 bullets[i].exists := true;
                 cooldown:= gun.cooldown;
                 dec(gun.ammo);
               end;
          end;
      end;
 end;

procedure bypassmap(ent : TEntity);
 begin
   if ent.x > MsizeX then
         begin
           ent.pointing := 'e';
           ent.x := 1;
         end;
      if ent.x < 1 then
         begin
           ent.pointing := 'w';
           ent.x := MsizeX;
         end;
      if ent.Y > MsizeY then
         begin
           ent.pointing := 's';
           ent.y := 1;
         end;
      if ent.y < 1 then
         begin
           ent.pointing := 'n';
           ent.y := MsizeY;
         end;
 end;

procedure pickupguninfloor(gun : TGun);
 begin
  gun.ammo := gun.maxammo;
  gun.infloor := false;
  gun.holding := true;
  gotoXY(1,3);
  write('agarraste un/a ',gun.name);
  gun.x := MsizeX+1;
  gun.y := MsizeY+1;
  readkey;
  clrscr;
 end;


end.

