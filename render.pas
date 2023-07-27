unit Render;

{$mode ObjFPC}{$H+}

interface
uses
  Crt, Classes, TGunUnit, TEntityUnit, TItemUnit, TEnemyUnit, VarUnit, TBulletUnit;



procedure RenderMap;
procedure RenderEntity(ent : TEntity);
procedure RenderItem(itm : TItem);
procedure Rendergunstatus(gun : TGun);
procedure RenderPlayer(ent : TEntity);
procedure renderBullet(bul : TBullet);

implementation

procedure RenderMap;
 var i, j, l : integer;
 begin
   gotoXY(1,1);
   write('\={DOOM}=/');
   gotoXY(MposX,MposY);
   write(' ');
   for i := 1 to MsizeY do
      begin
        for j := 1 to MsizeX do
           begin
             write(' _');
           end;
        writeln;
        for l := 1 to MposX do
           begin
             write(' ');
           end;
      end;
 end;

procedure RenderEntity(ent : TEntity);
 begin
   gotoXY((ent.x*2)+MposX,ent.y+MposY-1);
   textColor(red);
   write(ent.simbol);
   textColor(white);
 end;

procedure RenderItem(itm : TItem);
 begin
   if itm.infloor = true then
    begin
     gotoXY((itm.x*2)+MposX,itm.y+MposY-1);
     textColor(blue);
     write(itm.simbol);
     textColor(white);
    end;
 end;

procedure RenderGunStatus(gun : TGun);
 begin
   gotoXY(1,2);
  if gun.holding = true then
   begin
      write('=:Tu ',gun.name,' tiene ',gun.ammo,' balas');
   end else
   begin
      write('=:No tienes un arma');
   end;
 end;

procedure RenderPlayer(ent : TEntity);
 begin
   gotoXY((ent.x*2)+MposX,ent.y+MposY-1);
   textColor(green);
   case ent.pointing of
   'n':write('^');
   's':write('V');
   'e':write('>');
   'w':write('<');
   end;
   textColor(white);
 end;

procedure RenderBullet(bul : TBullet);
 begin
  gotoXY((bul.x*2)+MposX, bul.y+MposY-1);
  write('o');
 end;

end.

