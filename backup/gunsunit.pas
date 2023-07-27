unit gunsUnit;

{$mode ObjFPC}{$H+}

interface
uses
  Classes, SysUtils, TGunUnit,TEnemyUnit,TEntityUnit,TItemUnit;

procedure seeGunTypeOf(gun : TGun);
function pointingtoof(ent : TEntity) : char;

implementation

procedure seeGunTypeOf(gun : TGun);
 begin
   case gun.name of
   'sniper':    begin
                 gun.setsimbol('%');
                 gun.setdamage(3);
                 gun.setmaxammo(10);
                 gun.setcooldown(2);

                end;
   'rifle':     begin
                 gun.setsimbol('/');
                 gun.setdamage(2);
                 gun.setmaxammo(20);
                 gun.setcooldown(1);

                end;
   'pistola':    begin
                 gun.setsimbol('L');
                 gun.setdamage(1);
                 gun.setmaxammo(60);
                 gun.setcooldown(1);

                end;
  end;
 end;

function pointingtoof(ent : TEntity) : char;
 begin
   with ent do
     begin
       if px = x then
        begin
          if py > y then pointingtoof := 'n'
          else pointingtoof := 's';
        end else
         begin
          if px > x then pointingtoof := 'w'
          else pointingtoof := 'e';
         end;
     end;
 end;

end.

