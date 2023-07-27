unit TEnemyUnit;

{$mode ObjFPC}{$H+}

interface
uses Classes, TEntityUnit;

type TEnemy = class(TEntity)
	Health : integer;
	Damage : integer;
	
	procedure setDamage(dmg : integer);
	procedure setHealth(hth : integer);
end;

implementation

procedure TEnemy.setDamage(dmg : integer);
 begin
	Damage := dmg;
 end;

procedure TEnemy.setHealth(hth : integer);
 begin
	health := hth;
 end;
 
end.
