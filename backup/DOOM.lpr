program DOOM;

uses TGunUnit, TEntityUnit, Crt, Classes, TItemUnit, TEnemyUnit, Render, TBulletUnit,
  gunsUnit, inputUnit, VarUnit;

var
  enemy : TEnemy;
  hahaha : boolean;

begin
 //enemy
  enemy := TEnemy.create;
  enemy.x := 10;
  enemy.y := 10;
  enemy.health := 3;
  enemy.setsimbol('#');

 //bullets
  for i := 1 to 20 do
   begin
     bullets[i] := TBullet.create;
   end;


//gun
  gun := TGun.create;
  gun.infloor := true;
  gun.holding := false;
  gun.x := 5;
  gun.y := 7;
  gun.setname('pistola');
  seeGunTypeOf(gun);

 //player
  player := TEntity.create;
  player.setSimbol('#');
  player.x := 2;
  player.y := 1;
  active := true;

 //map
  MposX := 5;
  MposY := 5;
  MsizeX := 10;
  MsizeY := 10;
  cooldown := 1;

  while active = true do
    begin
      dec(cooldown);

      if enemy.health <= 0 then
       begin
        enemy.X := 0;
        enemy.y := 0;
       end;

      for i := 1 to 20 do
       begin
         if bullets[i].exists = true then
          begin
            bullets[i].move;
            bullets[i].ifentgetshot(enemy);
          end;
       end;

      if (gun.x = player.x) and (gun.y = player.y) then
       begin
         pickupguninfloor(gun);
       end;

      player.pointing := pointingtoof(Player);

      renderMap;
      rendergunstatus(gun);
      renderplayer(player);
      if enemy.health > 0 then
       begin
        renderentity(enemy);
       end;
      renderItem(gun);
      for i := 1 to 20 do
       begin
         if bullets[i].exists = true then
          begin
            renderBullet(Bullets[i]);
          end;
       end;
      inputplayer(player);
      bypassmap(player);
      gotoXY(1,10);
    end;
end.
