unit TBulletUnit;

{$mode ObjFPC}{$H+}

interface

uses
  Classes, SysUtils, TEntityUnit, TEnemyUnit, TGunUnit, VarUnit;

var BOOLEANBULLET : boolean;

type TBullet = class(TEntity)

  power : byte;
  direction : char;
  exists : boolean;

  procedure move;
  procedure seepointingto(ent : TEntity);
  procedure ifentgetshot(ent : TEnemy);
  procedure whatweaponfrom(gun : TGun);
  constructor create;
end;

implementation

procedure TBullet.move;
 begin
  case direction of
  'n':begin
       y := y - 1;
      end;
  's':begin
       y := y + 1;
      end;
  'e':begin
       x := x + 1;
      end;
  'w':begin
       x := x - 1;
      end;
  end;
 end;

procedure TBullet.seepointingto(ent : TEntity);
 begin
   direction := ent.pointing;
   x := ent.x;
   y := ent.y;
   end;
 end;

procedure TBullet.ifentgetshot(ent : TEnemy);
 begin
   if (ent.x = x) and (ent.y = y) then
    begin
      ent.health := ent.health - power;
      exists := false;
    end else
     begin
       if x > MsizeX then exists := false;

       if x < 1 then exists := false;

       if Y > MsizeY then exists := false;

       if y < 1 then exists := false;
     end;
 end;

procedure TBullet.whatweaponfrom(gun : TGun);
 begin
   power := gun.damage;
 end;

constructor TBullet.create;
 begin
   exists := false;
   power := 0;
   simbol := ' ';
   x := 0;
   y := 0;
 end;

end.

