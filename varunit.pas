unit VarUnit;

{$mode ObjFPC}{$H+}

interface

uses
  Classes, SysUtils, TEntityUnit, TGunUnit, TItemUnit, TEnemyUnit;

var gun : TGun;
    player : TEntity;
    active : boolean;
    i : byte;
    cooldown : integer;

var
  MposX,MposY,MsizeX,MsizeY : integer;

implementation

end.

