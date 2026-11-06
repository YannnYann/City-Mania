package info.flowersoft.theotown.scripting.libraries;

import com.unity3d.services.UnityAdsConstants;
import info.flowersoft.theotown.city.City;
import info.flowersoft.theotown.city.Direction;
import info.flowersoft.theotown.city.Tiles;
import info.flowersoft.theotown.city.modifier.CityModifier;
import info.flowersoft.theotown.city.objects.Building;
import info.flowersoft.theotown.city.objects.BusStop;
import info.flowersoft.theotown.city.objects.EmptyBuildingCause;
import info.flowersoft.theotown.city.objects.Ground;
import info.flowersoft.theotown.city.objects.Pipe;
import info.flowersoft.theotown.city.objects.Road;
import info.flowersoft.theotown.city.objects.Tree;
import info.flowersoft.theotown.city.objects.Wire;
import info.flowersoft.theotown.components.DefaultCatastrophe;
import info.flowersoft.theotown.components.DefaultDate;
import info.flowersoft.theotown.components.DefaultInfluence;
import info.flowersoft.theotown.components.disaster.FireDisaster;
import info.flowersoft.theotown.draft.AnimationDraft;
import info.flowersoft.theotown.draft.FenceDraft;
import info.flowersoft.theotown.draft.GroundDraft;
import info.flowersoft.theotown.draft.RoadDecorationDraft;
import info.flowersoft.theotown.draft.UpgradeDraft;
import info.flowersoft.theotown.draft.ZoneDraft;
import info.flowersoft.theotown.resources.Drafts;
import info.flowersoft.theotown.scripting.ManagedLibrary;
import info.flowersoft.theotown.scripting.SimpleLuaLibrary;
import io.blueflower.stapel2d.drawing.Color;
import vm2.Globals;
import vm2.LuaValue;
import vm2.Varargs;
import vm2.lib.ThreeArgFunction;
import vm2.lib.TwoArgFunction;
import vm2.lib.VarArgFunction;
import vm2.lib.jse.CoerceJavaToLua;

/* JADX INFO: loaded from: classes4.dex */
public class TileLibrary extends ManagedLibrary implements SimpleLuaLibrary.LibraryInjector {
    public final City city;
    public final DefaultDate date;
    public final DefaultInfluence influence;
    public final CityModifier m;
    public final Tiles tiles;

    public TileLibrary(City city) {
        super("libs/Tile.lua");
        this.city = city;
        this.tiles = city.getTiles();
        this.m = new CityModifier(city, false);
        this.influence = (DefaultInfluence) city.getComponent(2);
        this.date = (DefaultDate) city.getComponent(1);
    }

    @Override // info.flowersoft.theotown.scripting.SimpleLuaLibrary.LibraryInjector
    public void inject(LuaValue luaValue, LuaValue luaValue2, Globals globals) {
        luaValue.method("_init", CoerceJavaToLua.coerce(this.city));
        luaValue.set("isValid", new TwoArgFunction() { // from class: info.flowersoft.theotown.scripting.libraries.TileLibrary.1
            @Override // vm2.lib.TwoArgFunction, vm2.lib.LibFunction, vm2.LuaValue
            public LuaValue call(LuaValue luaValue3, LuaValue luaValue4) {
                return LuaValue.valueOf(TileLibrary.this.city.isValid(luaValue3.checkint(), luaValue4.checkint()));
            }
        });
        luaValue.set("isWater", new TwoArgFunction() { // from class: info.flowersoft.theotown.scripting.libraries.TileLibrary.2
            @Override // vm2.lib.TwoArgFunction, vm2.lib.LibFunction, vm2.LuaValue
            public LuaValue call(LuaValue luaValue3, LuaValue luaValue4) {
                int iCheckint = luaValue3.checkint();
                int iCheckint2 = luaValue4.checkint();
                return LuaValue.valueOf(TileLibrary.this.city.isValid(iCheckint, iCheckint2) && TileLibrary.this.tiles.isGroundWater(iCheckint, iCheckint2));
            }
        });
        luaValue.set("isLand", new TwoArgFunction() { // from class: info.flowersoft.theotown.scripting.libraries.TileLibrary.3
            @Override // vm2.lib.TwoArgFunction, vm2.lib.LibFunction, vm2.LuaValue
            public LuaValue call(LuaValue luaValue3, LuaValue luaValue4) {
                int iCheckint = luaValue3.checkint();
                int iCheckint2 = luaValue4.checkint();
                return LuaValue.valueOf(TileLibrary.this.city.isValid(iCheckint, iCheckint2) && !TileLibrary.this.tiles.isGroundWater(iCheckint, iCheckint2));
            }
        });
        luaValue.set("isCoast", new TwoArgFunction() { // from class: info.flowersoft.theotown.scripting.libraries.TileLibrary.4
            @Override // vm2.lib.TwoArgFunction, vm2.lib.LibFunction, vm2.LuaValue
            public LuaValue call(LuaValue luaValue3, LuaValue luaValue4) {
                int iCheckint = luaValue3.checkint();
                int iCheckint2 = luaValue4.checkint();
                return LuaValue.valueOf(TileLibrary.this.city.isValid(iCheckint, iCheckint2) && TileLibrary.this.tiles.getGround(iCheckint, iCheckint2).isBorder());
            }
        });
        luaValue.set("isTree", new TwoArgFunction() { // from class: info.flowersoft.theotown.scripting.libraries.TileLibrary.5
            @Override // vm2.lib.TwoArgFunction, vm2.lib.LibFunction, vm2.LuaValue
            public LuaValue call(LuaValue luaValue3, LuaValue luaValue4) {
                int iCheckint = luaValue3.checkint();
                int iCheckint2 = luaValue4.checkint();
                return LuaValue.valueOf(TileLibrary.this.city.isValid(iCheckint, iCheckint2) && TileLibrary.this.tiles.getTree(iCheckint, iCheckint2) != null);
            }
        });
        luaValue.set("getTreeDraft", new TwoArgFunction() { // from class: info.flowersoft.theotown.scripting.libraries.TileLibrary.6
            @Override // vm2.lib.TwoArgFunction, vm2.lib.LibFunction, vm2.LuaValue
            public LuaValue call(LuaValue luaValue3, LuaValue luaValue4) {
                int iCheckint = luaValue3.checkint();
                int iCheckint2 = luaValue4.checkint();
                if (TileLibrary.this.city.isValid(iCheckint, iCheckint2)) {
                    Tree tree = TileLibrary.this.tiles.getTree(iCheckint, iCheckint2);
                    return tree != null ? tree.getDraft().luaRepr : LuaValue.NIL;
                }
                return LuaValue.NIL;
            }
        });
        luaValue.set("getTreeFrame", new TwoArgFunction() { // from class: info.flowersoft.theotown.scripting.libraries.TileLibrary.7
            @Override // vm2.lib.TwoArgFunction, vm2.lib.LibFunction, vm2.LuaValue
            public LuaValue call(LuaValue luaValue3, LuaValue luaValue4) {
                int iCheckint = luaValue3.checkint();
                int iCheckint2 = luaValue4.checkint();
                if (TileLibrary.this.city.isValid(iCheckint, iCheckint2)) {
                    Tree tree = TileLibrary.this.tiles.getTree(iCheckint, iCheckint2);
                    return tree != null ? LuaValue.valueOf(tree.getFrame()) : LuaValue.NIL;
                }
                return LuaValue.NIL;
            }
        });
        final GroundDraft groundDraft = (GroundDraft) Drafts.get("$water00", GroundDraft.class);
        luaValue.set("getGroundDraft", new ThreeArgFunction() { // from class: info.flowersoft.theotown.scripting.libraries.TileLibrary.8
            @Override // vm2.lib.ThreeArgFunction, vm2.lib.LibFunction, vm2.LuaValue
            public LuaValue call(LuaValue luaValue3, LuaValue luaValue4, LuaValue luaValue5) {
                int iCheckint = luaValue3.checkint();
                int iCheckint2 = luaValue4.checkint();
                int iOptint = luaValue5.optint(0);
                if (TileLibrary.this.city.isValid(iCheckint, iCheckint2)) {
                    Ground ground = TileLibrary.this.tiles.getGround(iCheckint, iCheckint2);
                    if (iOptint == -1) {
                        GroundDraft draft = ground.getDraft();
                        if (!draft.isWater) {
                            draft = null;
                        }
                        if (ground.isBorder() && draft == null) {
                            int i = 1;
                            while (true) {
                                if (i > 8) {
                                    break;
                                }
                                int iDifferenceX = Direction.differenceX(i) + iCheckint;
                                int iDifferenceY = Direction.differenceY(i) + iCheckint2;
                                if (TileLibrary.this.city.isValid(iDifferenceX, iDifferenceY)) {
                                    Ground ground2 = TileLibrary.this.tiles.getGround(iDifferenceX, iDifferenceY);
                                    if (ground2.isWater()) {
                                        draft = ground2.getDraft();
                                        break;
                                    }
                                }
                                i <<= 1;
                            }
                        }
                        if (draft == null) {
                            draft = groundDraft;
                        }
                        return draft.luaRepr;
                    }
                    if (iOptint != 0) {
                        GroundDraft groundDraft2 = TileLibrary.this.tiles.getGroundDraft2(iCheckint, iCheckint2);
                        if (groundDraft2 != null) {
                            return groundDraft2.luaRepr;
                        }
                    } else {
                        return ground.getDraft().luaRepr;
                    }
                }
                return LuaValue.NIL;
            }
        });
        luaValue.set("getGroundHeight", new TwoArgFunction() { // from class: info.flowersoft.theotown.scripting.libraries.TileLibrary.9
            @Override // vm2.lib.TwoArgFunction, vm2.lib.LibFunction, vm2.LuaValue
            public LuaValue call(LuaValue luaValue3, LuaValue luaValue4) {
                int iCheckint = luaValue3.checkint();
                int iCheckint2 = luaValue4.checkint();
                if (TileLibrary.this.city.isValid(iCheckint, iCheckint2)) {
                    return LuaValue.valueOf((int) TileLibrary.this.tiles.getGround(iCheckint, iCheckint2).height);
                }
                return LuaValue.NIL;
            }
        });
        luaValue.set("setGroundHeight", new ThreeArgFunction() { // from class: info.flowersoft.theotown.scripting.libraries.TileLibrary.10
            @Override // vm2.lib.ThreeArgFunction, vm2.lib.LibFunction, vm2.LuaValue
            public LuaValue call(LuaValue luaValue3, LuaValue luaValue4, LuaValue luaValue5) {
                int iCheckint = luaValue3.checkint();
                int iCheckint2 = luaValue4.checkint();
                int iCheckint3 = luaValue5.checkint();
                if (TileLibrary.this.city.isValid(iCheckint, iCheckint2)) {
                    TileLibrary.this.tiles.getGround(iCheckint, iCheckint2).height = (short) iCheckint3;
                }
                return LuaValue.NIL;
            }
        });
        luaValue.set("getTerrainHeight", new TwoArgFunction() { // from class: info.flowersoft.theotown.scripting.libraries.TileLibrary.11
            @Override // vm2.lib.TwoArgFunction, vm2.lib.LibFunction, vm2.LuaValue
            public LuaValue call(LuaValue luaValue3, LuaValue luaValue4) {
                if (TileLibrary.this.city.isValid(luaValue3.checkint(), luaValue4.checkint())) {
                    return LuaValue.valueOf(TileLibrary.this.tiles.getTerrainAvgHeight(r2, r3));
                }
                return LuaValue.NIL;
            }
        });
        luaValue.set("getCornerTerrainHeight", new TwoArgFunction() { // from class: info.flowersoft.theotown.scripting.libraries.TileLibrary.12
            @Override // vm2.lib.TwoArgFunction, vm2.lib.LibFunction, vm2.LuaValue
            public LuaValue call(LuaValue luaValue3, LuaValue luaValue4) {
                int i;
                int iCheckint = luaValue3.checkint();
                int iCheckint2 = luaValue4.checkint();
                int i2 = 1;
                if (iCheckint == TileLibrary.this.city.getWidth()) {
                    iCheckint--;
                    i = 1;
                } else {
                    i = 0;
                }
                if (iCheckint2 == TileLibrary.this.city.getHeight()) {
                    iCheckint2--;
                } else {
                    i2 = 0;
                }
                if (TileLibrary.this.city.isValid(iCheckint, iCheckint2)) {
                    Ground ground = TileLibrary.this.tiles.getGround(iCheckint, iCheckint2);
                    return LuaValue.valueOf(ground.getBaseTerrainHeight() + ground.getTerrainHeight(i, i2));
                }
                return LuaValue.NIL;
            }
        });
        luaValue.set("isSlope", new TwoArgFunction() { // from class: info.flowersoft.theotown.scripting.libraries.TileLibrary.13
            @Override // vm2.lib.TwoArgFunction, vm2.lib.LibFunction, vm2.LuaValue
            public LuaValue call(LuaValue luaValue3, LuaValue luaValue4) {
                if (TileLibrary.this.city.isValid(luaValue3.checkint(), luaValue4.checkint())) {
                    return LuaValue.valueOf(!TileLibrary.this.tiles.getGround(r2, r3).isFlat());
                }
                return LuaValue.NIL;
            }
        });
        luaValue.set("isFlat", new TwoArgFunction() { // from class: info.flowersoft.theotown.scripting.libraries.TileLibrary.14
            @Override // vm2.lib.TwoArgFunction, vm2.lib.LibFunction, vm2.LuaValue
            public LuaValue call(LuaValue luaValue3, LuaValue luaValue4) {
                int iCheckint = luaValue3.checkint();
                int iCheckint2 = luaValue4.checkint();
                if (TileLibrary.this.city.isValid(iCheckint, iCheckint2)) {
                    return LuaValue.valueOf(TileLibrary.this.tiles.getGround(iCheckint, iCheckint2).isFlat());
                }
                return LuaValue.NIL;
            }
        });
        luaValue.set("getInfluence", new ThreeArgFunction() { // from class: info.flowersoft.theotown.scripting.libraries.TileLibrary.15
            @Override // vm2.lib.ThreeArgFunction, vm2.lib.LibFunction, vm2.LuaValue
            public LuaValue call(LuaValue luaValue3, LuaValue luaValue4, LuaValue luaValue5) {
                int iCheckint = luaValue3.checkint();
                return !TileLibrary.this.city.isValid(luaValue4.checkint(), luaValue5.checkint()) ? LuaValue.NIL : LuaValue.valueOf(TileLibrary.this.influence.getInfluence(r3, r4, iCheckint));
            }
        });
        luaValue.set("isBuilding", new TwoArgFunction() { // from class: info.flowersoft.theotown.scripting.libraries.TileLibrary.16
            @Override // vm2.lib.TwoArgFunction, vm2.lib.LibFunction, vm2.LuaValue
            public LuaValue call(LuaValue luaValue3, LuaValue luaValue4) {
                int iCheckint = luaValue3.checkint();
                int iCheckint2 = luaValue4.checkint();
                if (TileLibrary.this.city.isValid(iCheckint, iCheckint2)) {
                    return LuaValue.valueOf(TileLibrary.this.tiles.getBuilding(iCheckint, iCheckint2) != null);
                }
                return LuaValue.FALSE;
            }
        });
        luaValue.set("isBuildingWorking", new TwoArgFunction() { // from class: info.flowersoft.theotown.scripting.libraries.TileLibrary.17
            @Override // vm2.lib.TwoArgFunction, vm2.lib.LibFunction, vm2.LuaValue
            public LuaValue call(LuaValue luaValue3, LuaValue luaValue4) {
                int iCheckint = luaValue3.checkint();
                int iCheckint2 = luaValue4.checkint();
                if (TileLibrary.this.city.isValid(iCheckint, iCheckint2)) {
                    Building building = TileLibrary.this.tiles.getBuilding(iCheckint, iCheckint2);
                    return LuaValue.valueOf(building != null && building.isWorking());
                }
                return LuaValue.NIL;
            }
        });
        luaValue.set("isBuildingInConstruction", new TwoArgFunction() { // from class: info.flowersoft.theotown.scripting.libraries.TileLibrary.18
            @Override // vm2.lib.TwoArgFunction, vm2.lib.LibFunction, vm2.LuaValue
            public LuaValue call(LuaValue luaValue3, LuaValue luaValue4) {
                int iCheckint = luaValue3.checkint();
                int iCheckint2 = luaValue4.checkint();
                if (TileLibrary.this.city.isValid(iCheckint, iCheckint2)) {
                    Building building = TileLibrary.this.tiles.getBuilding(iCheckint, iCheckint2);
                    return LuaValue.valueOf(building != null && building.inConstruction());
                }
                return LuaValue.NIL;
            }
        });
        luaValue.set("isBuildingUpgradeInConstruction", new TwoArgFunction() { // from class: info.flowersoft.theotown.scripting.libraries.TileLibrary.19
            @Override // vm2.lib.TwoArgFunction, vm2.lib.LibFunction, vm2.LuaValue
            public LuaValue call(LuaValue luaValue3, LuaValue luaValue4) {
                int iCheckint = luaValue3.checkint();
                int iCheckint2 = luaValue4.checkint();
                if (TileLibrary.this.city.isValid(iCheckint, iCheckint2)) {
                    Building building = TileLibrary.this.tiles.getBuilding(iCheckint, iCheckint2);
                    return LuaValue.valueOf(building != null && building.hasPendingUpgrades());
                }
                return LuaValue.NIL;
            }
        });
        luaValue.set("hasBuildingNeededRoad", new TwoArgFunction() { // from class: info.flowersoft.theotown.scripting.libraries.TileLibrary.20
            @Override // vm2.lib.TwoArgFunction, vm2.lib.LibFunction, vm2.LuaValue
            public LuaValue call(LuaValue luaValue3, LuaValue luaValue4) {
                int iCheckint = luaValue3.checkint();
                int iCheckint2 = luaValue4.checkint();
                if (TileLibrary.this.city.isValid(iCheckint, iCheckint2)) {
                    Building building = TileLibrary.this.tiles.getBuilding(iCheckint, iCheckint2);
                    return LuaValue.valueOf(building != null && building.hasNeededRoad());
                }
                return LuaValue.NIL;
            }
        });
        luaValue.set("hasBuildingRoad", new TwoArgFunction() { // from class: info.flowersoft.theotown.scripting.libraries.TileLibrary.21
            @Override // vm2.lib.TwoArgFunction, vm2.lib.LibFunction, vm2.LuaValue
            public LuaValue call(LuaValue luaValue3, LuaValue luaValue4) {
                int iCheckint = luaValue3.checkint();
                int iCheckint2 = luaValue4.checkint();
                if (TileLibrary.this.city.isValid(iCheckint, iCheckint2)) {
                    Building building = TileLibrary.this.tiles.getBuilding(iCheckint, iCheckint2);
                    return LuaValue.valueOf(building != null && building.hasRoad());
                }
                return LuaValue.NIL;
            }
        });
        luaValue.set("isBuildingBurning", new TwoArgFunction() { // from class: info.flowersoft.theotown.scripting.libraries.TileLibrary.22
            @Override // vm2.lib.TwoArgFunction, vm2.lib.LibFunction, vm2.LuaValue
            public LuaValue call(LuaValue luaValue3, LuaValue luaValue4) {
                int iCheckint = luaValue3.checkint();
                int iCheckint2 = luaValue4.checkint();
                if (TileLibrary.this.city.isValid(iCheckint, iCheckint2)) {
                    Building building = TileLibrary.this.tiles.getBuilding(iCheckint, iCheckint2);
                    return LuaValue.valueOf(building != null && building.isBurning());
                }
                return LuaValue.NIL;
            }
        });
        luaValue.set("isBuildingIll", new TwoArgFunction() { // from class: info.flowersoft.theotown.scripting.libraries.TileLibrary.23
            @Override // vm2.lib.TwoArgFunction, vm2.lib.LibFunction, vm2.LuaValue
            public LuaValue call(LuaValue luaValue3, LuaValue luaValue4) {
                int iCheckint = luaValue3.checkint();
                int iCheckint2 = luaValue4.checkint();
                if (TileLibrary.this.city.isValid(iCheckint, iCheckint2)) {
                    Building building = TileLibrary.this.tiles.getBuilding(iCheckint, iCheckint2);
                    return LuaValue.valueOf(building != null && building.isIll());
                }
                return LuaValue.NIL;
            }
        });
        luaValue.set("isBuildingFullOfWaste", new TwoArgFunction() { // from class: info.flowersoft.theotown.scripting.libraries.TileLibrary.24
            @Override // vm2.lib.TwoArgFunction, vm2.lib.LibFunction, vm2.LuaValue
            public LuaValue call(LuaValue luaValue3, LuaValue luaValue4) {
                int iCheckint = luaValue3.checkint();
                int iCheckint2 = luaValue4.checkint();
                if (TileLibrary.this.city.isValid(iCheckint, iCheckint2)) {
                    Building building = TileLibrary.this.tiles.getBuilding(iCheckint, iCheckint2);
                    return LuaValue.valueOf(building != null && building.isFullOfWaste());
                }
                return LuaValue.NIL;
            }
        });
        luaValue.set("isBuildingFullOfDeadPeople", new TwoArgFunction() { // from class: info.flowersoft.theotown.scripting.libraries.TileLibrary.25
            @Override // vm2.lib.TwoArgFunction, vm2.lib.LibFunction, vm2.LuaValue
            public LuaValue call(LuaValue luaValue3, LuaValue luaValue4) {
                int iCheckint = luaValue3.checkint();
                int iCheckint2 = luaValue4.checkint();
                if (TileLibrary.this.city.isValid(iCheckint, iCheckint2)) {
                    Building building = TileLibrary.this.tiles.getBuilding(iCheckint, iCheckint2);
                    return LuaValue.valueOf(building != null && building.isFullOfDeadPeople());
                }
                return LuaValue.NIL;
            }
        });
        luaValue.set("isBuildingEmpty", new TwoArgFunction() { // from class: info.flowersoft.theotown.scripting.libraries.TileLibrary.26
            @Override // vm2.lib.TwoArgFunction, vm2.lib.LibFunction, vm2.LuaValue
            public LuaValue call(LuaValue luaValue3, LuaValue luaValue4) {
                int iCheckint = luaValue3.checkint();
                int iCheckint2 = luaValue4.checkint();
                if (TileLibrary.this.city.isValid(iCheckint, iCheckint2)) {
                    Building building = TileLibrary.this.tiles.getBuilding(iCheckint, iCheckint2);
                    return LuaValue.valueOf(building != null && building.isEmpty());
                }
                return LuaValue.NIL;
            }
        });
        luaValue.set("hasBuildingUpgrade", new ThreeArgFunction() { // from class: info.flowersoft.theotown.scripting.libraries.TileLibrary.27
            @Override // vm2.lib.ThreeArgFunction, vm2.lib.LibFunction, vm2.LuaValue
            public LuaValue call(LuaValue luaValue3, LuaValue luaValue4, LuaValue luaValue5) {
                UpgradeDraft upgradeDraft = (UpgradeDraft) DraftLibrary.resolveDraft(luaValue3, UpgradeDraft.class);
                int iCheckint = luaValue4.checkint();
                int iCheckint2 = luaValue5.checkint();
                if (!TileLibrary.this.city.isValid(iCheckint, iCheckint2)) {
                    return LuaValue.NIL;
                }
                Building building = TileLibrary.this.tiles.getBuilding(iCheckint, iCheckint2);
                if (building == null) {
                    return LuaValue.NIL;
                }
                return LuaValue.valueOf(upgradeDraft != null && building.hasUpgrade(upgradeDraft));
            }
        });
        luaValue.set("hasBuildingPendingUpgrade", new ThreeArgFunction() { // from class: info.flowersoft.theotown.scripting.libraries.TileLibrary.28
            @Override // vm2.lib.ThreeArgFunction, vm2.lib.LibFunction, vm2.LuaValue
            public LuaValue call(LuaValue luaValue3, LuaValue luaValue4, LuaValue luaValue5) {
                UpgradeDraft upgradeDraft = (UpgradeDraft) DraftLibrary.resolveDraft(luaValue3, UpgradeDraft.class);
                int iCheckint = luaValue4.checkint();
                int iCheckint2 = luaValue5.checkint();
                if (!TileLibrary.this.city.isValid(iCheckint, iCheckint2)) {
                    return LuaValue.NIL;
                }
                Building building = TileLibrary.this.tiles.getBuilding(iCheckint, iCheckint2);
                if (building == null) {
                    return LuaValue.NIL;
                }
                return LuaValue.valueOf(upgradeDraft != null && building.hasPendingUpgrade(upgradeDraft));
            }
        });
        luaValue.set("extinguishBurningBuilding", new TwoArgFunction() { // from class: info.flowersoft.theotown.scripting.libraries.TileLibrary.29
            @Override // vm2.lib.TwoArgFunction, vm2.lib.LibFunction, vm2.LuaValue
            public LuaValue call(LuaValue luaValue3, LuaValue luaValue4) {
                int iCheckint = luaValue3.checkint();
                int iCheckint2 = luaValue4.checkint();
                if (!TileLibrary.this.city.isValid(iCheckint, iCheckint2)) {
                    return LuaValue.NIL;
                }
                Building building = TileLibrary.this.tiles.getBuilding(iCheckint, iCheckint2);
                if (building != null && building.isBurning()) {
                    ((FireDisaster) ((DefaultCatastrophe) TileLibrary.this.city.getComponent(6)).getDisaster(FireDisaster.class)).removeFire(building);
                    return LuaValue.valueOf(true);
                }
                return LuaValue.valueOf(false);
            }
        });
        luaValue.set("pauseBuildingAnimation", new ThreeArgFunction() { // from class: info.flowersoft.theotown.scripting.libraries.TileLibrary.30
            @Override // vm2.lib.ThreeArgFunction, vm2.lib.LibFunction, vm2.LuaValue
            public LuaValue call(LuaValue luaValue3, LuaValue luaValue4, LuaValue luaValue5) {
                Building building;
                int iCheckint = luaValue3.checkint();
                int iCheckint2 = luaValue4.checkint();
                int iOptint = luaValue5.optint(1) - 1;
                int animationTime = TileLibrary.this.date.getAnimationTime();
                if (TileLibrary.this.city.isValid(iCheckint, iCheckint2) && (building = TileLibrary.this.tiles.getBuilding(iCheckint, iCheckint2)) != null) {
                    building.setAnimationFrameSpeed(iOptint, UnityAdsConstants.SafeGuards.InitRequestRetryPolicy.MIN_JITTER_PCT, animationTime);
                    return LuaValue.valueOf(building.activeAnimationSpotFrame(animationTime, iOptint) + 1);
                }
                return LuaValue.NIL;
            }
        });
        luaValue.set("resumeBuildingAnimation", new VarArgFunction() { // from class: info.flowersoft.theotown.scripting.libraries.TileLibrary.31
            @Override // vm2.lib.VarArgFunction, vm2.lib.LibFunction, vm2.LuaValue
            public LuaValue invoke(Varargs varargs) {
                Building building;
                int iCheckint = varargs.arg(1).checkint();
                int iCheckint2 = varargs.arg(2).checkint();
                int iOptint = varargs.arg(3).optint(1) - 1;
                float fOptdouble = (float) varargs.arg(4).optdouble(1.0d);
                int animationTime = TileLibrary.this.date.getAnimationTime();
                if (TileLibrary.this.city.isValid(iCheckint, iCheckint2) && (building = TileLibrary.this.tiles.getBuilding(iCheckint, iCheckint2)) != null) {
                    building.setAnimationFrameSpeed(iOptint, fOptdouble, animationTime);
                    return LuaValue.valueOf(building.activeAnimationSpotFrame(animationTime, iOptint) + 1);
                }
                return LuaValue.NIL;
            }
        });
        luaValue.set("spawnBuildingPedestrian", new ThreeArgFunction() { // from class: info.flowersoft.theotown.scripting.libraries.TileLibrary.32
            @Override // vm2.lib.ThreeArgFunction, vm2.lib.LibFunction, vm2.LuaValue
            public LuaValue call(LuaValue luaValue3, LuaValue luaValue4, LuaValue luaValue5) {
                Building building;
                int iCheckint = luaValue3.checkint();
                int iCheckint2 = luaValue4.checkint();
                int iOptint = luaValue5.optint(1);
                if (TileLibrary.this.city.isValid(iCheckint, iCheckint2) && (building = TileLibrary.this.tiles.getBuilding(iCheckint, iCheckint2)) != null) {
                    building.setPendingPedestrians(building.getPendingPedestrians() + iOptint);
                    return LuaValue.valueOf(true);
                }
                return LuaValue.NIL;
            }
        });
        luaValue.set("getBuildingFrame", new TwoArgFunction() { // from class: info.flowersoft.theotown.scripting.libraries.TileLibrary.33
            @Override // vm2.lib.TwoArgFunction, vm2.lib.LibFunction, vm2.LuaValue
            public LuaValue call(LuaValue luaValue3, LuaValue luaValue4) {
                Building building;
                int iCheckint = luaValue3.checkint();
                int iCheckint2 = luaValue4.checkint();
                if (TileLibrary.this.city.isValid(iCheckint, iCheckint2) && (building = TileLibrary.this.tiles.getBuilding(iCheckint, iCheckint2)) != null) {
                    return LuaValue.valueOf(building.getFrame());
                }
                return LuaValue.NIL;
            }
        });
        luaValue.set("setBuildingFrame", new ThreeArgFunction() { // from class: info.flowersoft.theotown.scripting.libraries.TileLibrary.34
            @Override // vm2.lib.ThreeArgFunction, vm2.lib.LibFunction, vm2.LuaValue
            public LuaValue call(LuaValue luaValue3, LuaValue luaValue4, LuaValue luaValue5) {
                Building building;
                int iCheckint = luaValue3.checkint();
                int iCheckint2 = luaValue4.checkint();
                int iCheckint3 = luaValue5.checkint();
                if (TileLibrary.this.city.isValid(iCheckint, iCheckint2) && (building = TileLibrary.this.tiles.getBuilding(iCheckint, iCheckint2)) != null) {
                    building.setFrame(iCheckint3);
                }
                return LuaValue.NIL;
            }
        });
        luaValue.set("getBuildingName", new TwoArgFunction() { // from class: info.flowersoft.theotown.scripting.libraries.TileLibrary.35
            @Override // vm2.lib.TwoArgFunction, vm2.lib.LibFunction, vm2.LuaValue
            public LuaValue call(LuaValue luaValue3, LuaValue luaValue4) {
                Building building;
                int iCheckint = luaValue3.checkint();
                int iCheckint2 = luaValue4.checkint();
                if (TileLibrary.this.city.isValid(iCheckint, iCheckint2) && (building = TileLibrary.this.tiles.getBuilding(iCheckint, iCheckint2)) != null) {
                    return LuaValue.valueOf(building.getName());
                }
                return LuaValue.NIL;
            }
        });
        luaValue.set("setBuildingName", new ThreeArgFunction() { // from class: info.flowersoft.theotown.scripting.libraries.TileLibrary.36
            @Override // vm2.lib.ThreeArgFunction, vm2.lib.LibFunction, vm2.LuaValue
            public LuaValue call(LuaValue luaValue3, LuaValue luaValue4, LuaValue luaValue5) {
                Building building;
                int iCheckint = luaValue3.checkint();
                int iCheckint2 = luaValue4.checkint();
                String strOptjstring = luaValue5.optjstring(null);
                if (TileLibrary.this.city.isValid(iCheckint, iCheckint2) && (building = TileLibrary.this.tiles.getBuilding(iCheckint, iCheckint2)) != null) {
                    building.setName(strOptjstring);
                }
                return LuaValue.NIL;
            }
        });
        luaValue.set("getBuildingPerformance", new TwoArgFunction() { // from class: info.flowersoft.theotown.scripting.libraries.TileLibrary.37
            @Override // vm2.lib.TwoArgFunction, vm2.lib.LibFunction, vm2.LuaValue
            public LuaValue call(LuaValue luaValue3, LuaValue luaValue4) {
                Building building;
                int iCheckint = luaValue3.checkint();
                int iCheckint2 = luaValue4.checkint();
                if (TileLibrary.this.city.isValid(iCheckint, iCheckint2) && (building = TileLibrary.this.tiles.getBuilding(iCheckint, iCheckint2)) != null) {
                    return LuaValue.valueOf(building.getPerformance());
                }
                return LuaValue.NIL;
            }
        });
        luaValue.set("setBuildingPerformance", new ThreeArgFunction() { // from class: info.flowersoft.theotown.scripting.libraries.TileLibrary.38
            @Override // vm2.lib.ThreeArgFunction, vm2.lib.LibFunction, vm2.LuaValue
            public LuaValue call(LuaValue luaValue3, LuaValue luaValue4, LuaValue luaValue5) {
                Building building;
                int iCheckint = luaValue3.checkint();
                int iCheckint2 = luaValue4.checkint();
                float fCheckdouble = (float) luaValue5.checkdouble();
                if (TileLibrary.this.city.isValid(iCheckint, iCheckint2) && (building = TileLibrary.this.tiles.getBuilding(iCheckint, iCheckint2)) != null) {
                    TileLibrary.this.m.setBuildingPerformance(building, fCheckdouble);
                }
                return LuaValue.NIL;
            }
        });
        luaValue.set("getBuildingDraft", new TwoArgFunction() { // from class: info.flowersoft.theotown.scripting.libraries.TileLibrary.39
            @Override // vm2.lib.TwoArgFunction, vm2.lib.LibFunction, vm2.LuaValue
            public LuaValue call(LuaValue luaValue3, LuaValue luaValue4) {
                Building building;
                int iCheckint = luaValue3.checkint();
                int iCheckint2 = luaValue4.checkint();
                if (TileLibrary.this.city.isValid(iCheckint, iCheckint2) && (building = TileLibrary.this.tiles.getBuilding(iCheckint, iCheckint2)) != null) {
                    return building.getDraft().luaRepr;
                }
                return LuaValue.NIL;
            }
        });
        luaValue.set("getBuildingXY", new VarArgFunction() { // from class: info.flowersoft.theotown.scripting.libraries.TileLibrary.40
            @Override // vm2.lib.VarArgFunction, vm2.lib.LibFunction, vm2.LuaValue
            public Varargs invoke(Varargs varargs) {
                Building building;
                int iCheckint = varargs.arg(1).checkint();
                int iCheckint2 = varargs.arg(2).checkint();
                if (TileLibrary.this.city.isValid(iCheckint, iCheckint2) && (building = TileLibrary.this.tiles.getBuilding(iCheckint, iCheckint2)) != null) {
                    return LuaValue.varargsOf(LuaValue.valueOf(building.getX()), LuaValue.valueOf(building.getY()));
                }
                return LuaValue.FALSE;
            }
        });
        luaValue.set("getBuildingDrawXY", new VarArgFunction() { // from class: info.flowersoft.theotown.scripting.libraries.TileLibrary.41
            @Override // vm2.lib.VarArgFunction, vm2.lib.LibFunction, vm2.LuaValue
            public Varargs invoke(Varargs varargs) {
                Building building;
                int iCheckint = varargs.arg(1).checkint();
                int iCheckint2 = varargs.arg(2).checkint();
                if (TileLibrary.this.city.isValid(iCheckint, iCheckint2) && (building = TileLibrary.this.tiles.getBuilding(iCheckint, iCheckint2)) != null) {
                    int rotation = TileLibrary.this.city.getRotation();
                    return LuaValue.varargsOf(LuaValue.valueOf(building.getPivotX(rotation)), LuaValue.valueOf(building.getPivotY(rotation)));
                }
                return LuaValue.FALSE;
            }
        });
        luaValue.set("isBuildingUntouchable", new TwoArgFunction() { // from class: info.flowersoft.theotown.scripting.libraries.TileLibrary.42
            @Override // vm2.lib.TwoArgFunction, vm2.lib.LibFunction, vm2.LuaValue
            public LuaValue call(LuaValue luaValue3, LuaValue luaValue4) {
                Building building;
                int iCheckint = luaValue3.checkint();
                int iCheckint2 = luaValue4.checkint();
                if (TileLibrary.this.city.isValid(iCheckint, iCheckint2) && (building = TileLibrary.this.tiles.getBuilding(iCheckint, iCheckint2)) != null) {
                    return LuaValue.valueOf(building.isUntouchable());
                }
                return LuaValue.NIL;
            }
        });
        luaValue.set("setBuildingUntouchable", new ThreeArgFunction() { // from class: info.flowersoft.theotown.scripting.libraries.TileLibrary.43
            @Override // vm2.lib.ThreeArgFunction, vm2.lib.LibFunction, vm2.LuaValue
            public LuaValue call(LuaValue luaValue3, LuaValue luaValue4, LuaValue luaValue5) {
                Building building;
                int iCheckint = luaValue3.checkint();
                int iCheckint2 = luaValue4.checkint();
                boolean zCheckboolean = luaValue5.checkboolean();
                if (TileLibrary.this.city.isValid(iCheckint, iCheckint2) && (building = TileLibrary.this.tiles.getBuilding(iCheckint, iCheckint2)) != null) {
                    building.setUntouchable(zCheckboolean);
                }
                return LuaValue.NIL;
            }
        });
        luaValue.set("getBuildingStorage", new TwoArgFunction() { // from class: info.flowersoft.theotown.scripting.libraries.TileLibrary.44
            @Override // vm2.lib.TwoArgFunction, vm2.lib.LibFunction, vm2.LuaValue
            public LuaValue call(LuaValue luaValue3, LuaValue luaValue4) {
                Building building;
                int iCheckint = luaValue3.checkint();
                int iCheckint2 = luaValue4.checkint();
                if (TileLibrary.this.city.isValid(iCheckint, iCheckint2) && (building = TileLibrary.this.tiles.getBuilding(iCheckint, iCheckint2)) != null) {
                    return building.getLuaStorageProxy();
                }
                return LuaValue.NIL;
            }
        });
        luaValue.set("getBuildingDaysBuilt", new TwoArgFunction() { // from class: info.flowersoft.theotown.scripting.libraries.TileLibrary.45
            @Override // vm2.lib.TwoArgFunction, vm2.lib.LibFunction, vm2.LuaValue
            public LuaValue call(LuaValue luaValue3, LuaValue luaValue4) {
                Building building;
                int iCheckint = luaValue3.checkint();
                int iCheckint2 = luaValue4.checkint();
                if (TileLibrary.this.city.isValid(iCheckint, iCheckint2) && (building = TileLibrary.this.tiles.getBuilding(iCheckint, iCheckint2)) != null) {
                    return LuaValue.valueOf(building.getDaysBuilt(((DefaultDate) TileLibrary.this.city.getComponent(1)).getAbsoluteDay()));
                }
                return LuaValue.NIL;
            }
        });
        luaValue.set("setBuildingAnimationFrame", new VarArgFunction() { // from class: info.flowersoft.theotown.scripting.libraries.TileLibrary.46
            @Override // vm2.lib.VarArgFunction, vm2.lib.LibFunction, vm2.LuaValue
            public Varargs invoke(Varargs varargs) {
                Building building;
                int iCheckint = varargs.arg(1).checkint();
                int iCheckint2 = varargs.arg(2).checkint();
                int iCheckint3 = varargs.arg(3).checkint() - 1;
                int iOptint = varargs.arg(4).optint(1) - 1;
                int animationTime = TileLibrary.this.date.getAnimationTime();
                if (TileLibrary.this.city.isValid(iCheckint, iCheckint2) && (building = TileLibrary.this.tiles.getBuilding(iCheckint, iCheckint2)) != null) {
                    building.setAnimationFrameOffset(iOptint, iCheckint3, animationTime);
                    return LuaValue.valueOf(true);
                }
                return LuaValue.NIL;
            }
        });
        luaValue.set("getBuildingAnimationFrame", new ThreeArgFunction() { // from class: info.flowersoft.theotown.scripting.libraries.TileLibrary.47
            @Override // vm2.lib.ThreeArgFunction, vm2.lib.LibFunction, vm2.LuaValue
            public LuaValue call(LuaValue luaValue3, LuaValue luaValue4, LuaValue luaValue5) {
                Building building;
                int iCheckint = luaValue3.checkint();
                int iCheckint2 = luaValue4.checkint();
                int iOptint = luaValue5.optint(1) - 1;
                int animationTime = TileLibrary.this.date.getAnimationTime();
                if (TileLibrary.this.city.isValid(iCheckint, iCheckint2) && (building = TileLibrary.this.tiles.getBuilding(iCheckint, iCheckint2)) != null) {
                    return LuaValue.valueOf(building.activeAnimationSpotFrame(animationTime, iOptint));
                }
                return LuaValue.NIL;
            }
        });
        luaValue.set("isBuildingAnimationPaused", new ThreeArgFunction() { // from class: info.flowersoft.theotown.scripting.libraries.TileLibrary.48
            @Override // vm2.lib.ThreeArgFunction, vm2.lib.LibFunction, vm2.LuaValue
            public LuaValue call(LuaValue luaValue3, LuaValue luaValue4, LuaValue luaValue5) {
                Building building;
                int iCheckint = luaValue3.checkint();
                int iCheckint2 = luaValue4.checkint();
                int iOptint = luaValue5.optint(1) - 1;
                if (!TileLibrary.this.city.isValid(iCheckint, iCheckint2) || (building = TileLibrary.this.tiles.getBuilding(iCheckint, iCheckint2)) == null) {
                    return LuaValue.NIL;
                }
                return LuaValue.valueOf(building.getAnimationFrameSpeed(iOptint) == UnityAdsConstants.SafeGuards.InitRequestRetryPolicy.MIN_JITTER_PCT);
            }
        });
        luaValue.set("setBuildingAnimationColor", new VarArgFunction() { // from class: info.flowersoft.theotown.scripting.libraries.TileLibrary.49
            @Override // vm2.lib.VarArgFunction, vm2.lib.LibFunction, vm2.LuaValue
            public Varargs invoke(Varargs varargs) {
                Building building;
                int iCheckint = varargs.arg1().checkint();
                int iCheckint2 = varargs.arg(2).checkint();
                int iCheckint3 = varargs.arg(3).checkint();
                int iCheckint4 = varargs.arg(4).checkint();
                int iCheckint5 = varargs.arg(5).checkint();
                int iOptint = varargs.arg(6).optint(255);
                int iOptint2 = varargs.arg(7).optint(1) - 1;
                if (TileLibrary.this.city.isValid(iCheckint, iCheckint2) && (building = TileLibrary.this.tiles.getBuilding(iCheckint, iCheckint2)) != null) {
                    building.setAnimationFrameColor(iOptint2, new Color(iCheckint3, iCheckint4, iCheckint5, iOptint));
                    return LuaValue.TRUE;
                }
                return LuaValue.NIL;
            }
        });
        luaValue.set("getBuildingAnimationColor", new VarArgFunction() { // from class: info.flowersoft.theotown.scripting.libraries.TileLibrary.50
            @Override // vm2.lib.VarArgFunction, vm2.lib.LibFunction, vm2.LuaValue
            public Varargs invoke(Varargs varargs) {
                Building building;
                int iCheckint = varargs.arg1().checkint();
                int iCheckint2 = varargs.arg(2).checkint();
                int iOptint = varargs.arg(3).optint(1) - 1;
                if (TileLibrary.this.city.isValid(iCheckint, iCheckint2) && (building = TileLibrary.this.tiles.getBuilding(iCheckint, iCheckint2)) != null) {
                    return TileLibrary.this.colorToLua(building.getAnimationFrameColor(iOptint));
                }
                return LuaValue.NIL;
            }
        });
        luaValue.set("abandonBuilding", new TwoArgFunction() { // from class: info.flowersoft.theotown.scripting.libraries.TileLibrary.51
            @Override // vm2.lib.TwoArgFunction, vm2.lib.LibFunction, vm2.LuaValue
            public LuaValue call(LuaValue luaValue3, LuaValue luaValue4) {
                Building building;
                int iCheckint = luaValue3.checkint();
                int iCheckint2 = luaValue4.checkint();
                if (TileLibrary.this.city.isValid(iCheckint, iCheckint2) && (building = TileLibrary.this.tiles.getBuilding(iCheckint, iCheckint2)) != null) {
                    building.setEmpty(true, EmptyBuildingCause.getUnknown());
                }
                return LuaValue.NIL;
            }
        });
        luaValue.set("isRoad", new ThreeArgFunction() { // from class: info.flowersoft.theotown.scripting.libraries.TileLibrary.52
            @Override // vm2.lib.ThreeArgFunction, vm2.lib.LibFunction, vm2.LuaValue
            public LuaValue call(LuaValue luaValue3, LuaValue luaValue4, LuaValue luaValue5) {
                int iCheckint = luaValue3.checkint();
                int iCheckint2 = luaValue4.checkint();
                int iOptint = luaValue5.optint(0);
                if (TileLibrary.this.city.isValid(iCheckint, iCheckint2)) {
                    return LuaValue.valueOf(TileLibrary.this.tiles.getRoad(iCheckint, iCheckint2, iOptint) != null);
                }
                return LuaValue.FALSE;
            }
        });
        luaValue.set("hasRoad", new TwoArgFunction() { // from class: info.flowersoft.theotown.scripting.libraries.TileLibrary.53
            @Override // vm2.lib.TwoArgFunction, vm2.lib.LibFunction, vm2.LuaValue
            public LuaValue call(LuaValue luaValue3, LuaValue luaValue4) {
                int iCheckint = luaValue3.checkint();
                int iCheckint2 = luaValue4.checkint();
                if (TileLibrary.this.city.isValid(iCheckint, iCheckint2)) {
                    return LuaValue.valueOf(TileLibrary.this.tiles.hasRoad(iCheckint, iCheckint2));
                }
                return LuaValue.FALSE;
            }
        });
        luaValue.set("getRoadFrame", new ThreeArgFunction() { // from class: info.flowersoft.theotown.scripting.libraries.TileLibrary.54
            @Override // vm2.lib.ThreeArgFunction, vm2.lib.LibFunction, vm2.LuaValue
            public LuaValue call(LuaValue luaValue3, LuaValue luaValue4, LuaValue luaValue5) {
                Road road;
                int iCheckint = luaValue3.checkint();
                int iCheckint2 = luaValue4.checkint();
                int iOptint = luaValue5.optint(0);
                if (TileLibrary.this.city.isValid(iCheckint, iCheckint2) && (road = TileLibrary.this.tiles.getRoad(iCheckint, iCheckint2, iOptint)) != null) {
                    return LuaValue.valueOf(road.getFrame());
                }
                return LuaValue.NIL;
            }
        });
        luaValue.set("getRoadDraft", new ThreeArgFunction() { // from class: info.flowersoft.theotown.scripting.libraries.TileLibrary.55
            @Override // vm2.lib.ThreeArgFunction, vm2.lib.LibFunction, vm2.LuaValue
            public LuaValue call(LuaValue luaValue3, LuaValue luaValue4, LuaValue luaValue5) {
                Road road;
                int iCheckint = luaValue3.checkint();
                int iCheckint2 = luaValue4.checkint();
                int iOptint = luaValue5.optint(0);
                if (TileLibrary.this.city.isValid(iCheckint, iCheckint2) && (road = TileLibrary.this.tiles.getRoad(iCheckint, iCheckint2, iOptint)) != null) {
                    return road.draft.luaRepr;
                }
                return LuaValue.NIL;
            }
        });
        luaValue.set("getRoadStorage", new ThreeArgFunction() { // from class: info.flowersoft.theotown.scripting.libraries.TileLibrary.56
            @Override // vm2.lib.ThreeArgFunction, vm2.lib.LibFunction, vm2.LuaValue
            public LuaValue call(LuaValue luaValue3, LuaValue luaValue4, LuaValue luaValue5) {
                Road road;
                int iCheckint = luaValue3.checkint();
                int iCheckint2 = luaValue4.checkint();
                int iOptint = luaValue5.optint(0);
                if (TileLibrary.this.city.isValid(iCheckint, iCheckint2) && (road = TileLibrary.this.tiles.getRoad(iCheckint, iCheckint2, iOptint)) != null) {
                    return road.getLuaStorageProxy();
                }
                return LuaValue.NIL;
            }
        });
        luaValue.set("getRoadTraffic", new ThreeArgFunction() { // from class: info.flowersoft.theotown.scripting.libraries.TileLibrary.57
            @Override // vm2.lib.ThreeArgFunction, vm2.lib.LibFunction, vm2.LuaValue
            public LuaValue call(LuaValue luaValue3, LuaValue luaValue4, LuaValue luaValue5) {
                Road road;
                int iCheckint = luaValue3.checkint();
                int iCheckint2 = luaValue4.checkint();
                int iOptint = luaValue5.optint(0);
                if (TileLibrary.this.city.isValid(iCheckint, iCheckint2) && (road = TileLibrary.this.tiles.getRoad(iCheckint, iCheckint2, iOptint)) != null) {
                    return LuaValue.valueOf(road.trafficAmount);
                }
                return LuaValue.ZERO;
            }
        });
        luaValue.set("getRoadCarCount", new ThreeArgFunction() { // from class: info.flowersoft.theotown.scripting.libraries.TileLibrary.58
            @Override // vm2.lib.ThreeArgFunction, vm2.lib.LibFunction, vm2.LuaValue
            public LuaValue call(LuaValue luaValue3, LuaValue luaValue4, LuaValue luaValue5) {
                Road road;
                int iCheckint = luaValue3.checkint();
                int iCheckint2 = luaValue4.checkint();
                int iOptint = luaValue5.optint(0);
                if (TileLibrary.this.city.isValid(iCheckint, iCheckint2) && (road = TileLibrary.this.tiles.getRoad(iCheckint, iCheckint2, iOptint)) != null) {
                    return LuaValue.valueOf(road.carCounter);
                }
                return LuaValue.ZERO;
            }
        });
        luaValue.set("getRoadChargeableCarCount", new ThreeArgFunction() { // from class: info.flowersoft.theotown.scripting.libraries.TileLibrary.59
            @Override // vm2.lib.ThreeArgFunction, vm2.lib.LibFunction, vm2.LuaValue
            public LuaValue call(LuaValue luaValue3, LuaValue luaValue4, LuaValue luaValue5) {
                Road road;
                int iCheckint = luaValue3.checkint();
                int iCheckint2 = luaValue4.checkint();
                int iOptint = luaValue5.optint(0);
                if (TileLibrary.this.city.isValid(iCheckint, iCheckint2) && (road = TileLibrary.this.tiles.getRoad(iCheckint, iCheckint2, iOptint)) != null) {
                    return LuaValue.valueOf(road.chargeableCarCounter);
                }
                return LuaValue.ZERO;
            }
        });
        luaValue.set("isRoadDeco", new ThreeArgFunction() { // from class: info.flowersoft.theotown.scripting.libraries.TileLibrary.60
            @Override // vm2.lib.ThreeArgFunction, vm2.lib.LibFunction, vm2.LuaValue
            public LuaValue call(LuaValue luaValue3, LuaValue luaValue4, LuaValue luaValue5) {
                Road road;
                int iCheckint = luaValue3.checkint();
                int iCheckint2 = luaValue4.checkint();
                int iOptint = luaValue5.optint(0);
                if (!TileLibrary.this.city.isValid(iCheckint, iCheckint2) || (road = TileLibrary.this.tiles.getRoad(iCheckint, iCheckint2, iOptint)) == null) {
                    return LuaValue.NIL;
                }
                return LuaValue.valueOf(road.countDecorations() > 0);
            }
        });
        luaValue.set("getRoadDeco", new VarArgFunction() { // from class: info.flowersoft.theotown.scripting.libraries.TileLibrary.61
            @Override // vm2.lib.VarArgFunction, vm2.lib.LibFunction, vm2.LuaValue
            public LuaValue invoke(Varargs varargs) {
                Road road;
                RoadDecorationDraft decoration;
                int iCheckint = varargs.checkint(1);
                int iCheckint2 = varargs.checkint(2);
                int iOptint = varargs.optint(3, 0);
                int iOptint2 = varargs.optint(4, 1);
                if (TileLibrary.this.city.isValid(iCheckint, iCheckint2) && (road = TileLibrary.this.tiles.getRoad(iCheckint, iCheckint2, iOptint)) != null && (decoration = road.getDecoration(iOptint2 - 1)) != null) {
                    return decoration.luaRepr;
                }
                return LuaValue.ZERO;
            }
        });
        luaValue.set("countRoadDecos", new ThreeArgFunction() { // from class: info.flowersoft.theotown.scripting.libraries.TileLibrary.62
            @Override // vm2.lib.ThreeArgFunction, vm2.lib.LibFunction, vm2.LuaValue
            public LuaValue call(LuaValue luaValue3, LuaValue luaValue4, LuaValue luaValue5) {
                Road road;
                int iCheckint = luaValue3.checkint();
                int iCheckint2 = luaValue4.checkint();
                int iOptint = luaValue5.optint(0);
                if (TileLibrary.this.city.isValid(iCheckint, iCheckint2) && (road = TileLibrary.this.tiles.getRoad(iCheckint, iCheckint2, iOptint)) != null) {
                    return LuaValue.valueOf(road.countDecorations());
                }
                return LuaValue.NIL;
            }
        });
        luaValue.set("hasRoadOccupation", new ThreeArgFunction() { // from class: info.flowersoft.theotown.scripting.libraries.TileLibrary.63
            @Override // vm2.lib.ThreeArgFunction, vm2.lib.LibFunction, vm2.LuaValue
            public LuaValue call(LuaValue luaValue3, LuaValue luaValue4, LuaValue luaValue5) {
                Road road;
                int iCheckint = luaValue3.checkint();
                int iCheckint2 = luaValue4.checkint();
                int iOptint = luaValue5.optint(0);
                if (!TileLibrary.this.city.isValid(iCheckint, iCheckint2) || (road = TileLibrary.this.tiles.getRoad(iCheckint, iCheckint2, iOptint)) == null) {
                    return LuaValue.NIL;
                }
                return LuaValue.valueOf(road.getOccupation() != null);
            }
        });
        luaValue.set("hasFence", new ThreeArgFunction() { // from class: info.flowersoft.theotown.scripting.libraries.TileLibrary.64
            @Override // vm2.lib.ThreeArgFunction, vm2.lib.LibFunction, vm2.LuaValue
            public LuaValue call(LuaValue luaValue3, LuaValue luaValue4, LuaValue luaValue5) {
                int iCheckint = luaValue3.checkint();
                int iCheckint2 = luaValue4.checkint();
                int iOptint = luaValue5.optint(-1);
                if (TileLibrary.this.city.isValid(iCheckint, iCheckint2)) {
                    return LuaValue.valueOf(TileLibrary.this.tiles.hasFence(iCheckint, iCheckint2) && (iOptint < 0 || TileLibrary.this.tiles.getFence(iCheckint, iCheckint2, iOptint) != null));
                }
                return LuaValue.FALSE;
            }
        });
        luaValue.set("hasFenceWithin", new VarArgFunction() { // from class: info.flowersoft.theotown.scripting.libraries.TileLibrary.65
            @Override // vm2.lib.VarArgFunction, vm2.lib.LibFunction, vm2.LuaValue
            public Varargs invoke(Varargs varargs) {
                return LuaValue.valueOf(TileLibrary.this.m.containsFenceWithin(varargs.arg(1).checkint(), varargs.arg(2).checkint(), varargs.arg(3).checkint(), varargs.arg(4).checkint()));
            }
        });
        luaValue.set("getFenceDraft", new ThreeArgFunction() { // from class: info.flowersoft.theotown.scripting.libraries.TileLibrary.66
            @Override // vm2.lib.ThreeArgFunction, vm2.lib.LibFunction, vm2.LuaValue
            public LuaValue call(LuaValue luaValue3, LuaValue luaValue4, LuaValue luaValue5) {
                FenceDraft fence;
                int iCheckint = luaValue3.checkint();
                int iCheckint2 = luaValue4.checkint();
                int iCheckint3 = luaValue5.checkint();
                if (iCheckint3 >= 0 && iCheckint3 <= 3 && (fence = TileLibrary.this.m.getFence(iCheckint, iCheckint2, iCheckint3)) != null) {
                    return fence.luaRepr;
                }
                return LuaValue.NIL;
            }
        });
        luaValue.set("isBusStop", new ThreeArgFunction() { // from class: info.flowersoft.theotown.scripting.libraries.TileLibrary.67
            @Override // vm2.lib.ThreeArgFunction, vm2.lib.LibFunction, vm2.LuaValue
            public LuaValue call(LuaValue luaValue3, LuaValue luaValue4, LuaValue luaValue5) {
                Road road;
                int iCheckint = luaValue3.checkint();
                int iCheckint2 = luaValue4.checkint();
                int iOptint = luaValue5.optint(0);
                if (!TileLibrary.this.city.isValid(iCheckint, iCheckint2) || (road = TileLibrary.this.tiles.getRoad(iCheckint, iCheckint2, iOptint)) == null) {
                    return LuaValue.NIL;
                }
                return LuaValue.valueOf(road.getBusStop() != null);
            }
        });
        luaValue.set("getBusStop", new ThreeArgFunction() { // from class: info.flowersoft.theotown.scripting.libraries.TileLibrary.68
            @Override // vm2.lib.ThreeArgFunction, vm2.lib.LibFunction, vm2.LuaValue
            public LuaValue call(LuaValue luaValue3, LuaValue luaValue4, LuaValue luaValue5) {
                Road road;
                BusStop busStop;
                int iCheckint = luaValue3.checkint();
                int iCheckint2 = luaValue4.checkint();
                int iOptint = luaValue5.optint(0);
                if (TileLibrary.this.city.isValid(iCheckint, iCheckint2) && (road = TileLibrary.this.tiles.getRoad(iCheckint, iCheckint2, iOptint)) != null && (busStop = road.getBusStop()) != null) {
                    return busStop.getDraft().luaRepr;
                }
                return LuaValue.NIL;
            }
        });
        luaValue.set("getRoadAlign", new ThreeArgFunction() { // from class: info.flowersoft.theotown.scripting.libraries.TileLibrary.69
            @Override // vm2.lib.ThreeArgFunction, vm2.lib.LibFunction, vm2.LuaValue
            public LuaValue call(LuaValue luaValue3, LuaValue luaValue4, LuaValue luaValue5) {
                Road road;
                int iCheckint = luaValue3.checkint();
                int iCheckint2 = luaValue4.checkint();
                int iOptint = luaValue5.optint(0);
                if (TileLibrary.this.city.isValid(iCheckint, iCheckint2) && (road = TileLibrary.this.tiles.getRoad(iCheckint, iCheckint2, iOptint)) != null) {
                    return LuaValue.valueOf(road.getAlign());
                }
                return LuaValue.NIL;
            }
        });
        luaValue.set("setRoadAlignment", new VarArgFunction() { // from class: info.flowersoft.theotown.scripting.libraries.TileLibrary.70
            @Override // vm2.lib.VarArgFunction, vm2.lib.LibFunction, vm2.LuaValue
            public Varargs invoke(Varargs varargs) {
                Road road;
                int iCheckint = varargs.checkint(1);
                int iCheckint2 = varargs.checkint(2);
                int iOptint = varargs.optint(3, 0);
                int iCheckint3 = varargs.checkint(4);
                if (TileLibrary.this.city.isValid(iCheckint, iCheckint2) && (road = TileLibrary.this.tiles.getRoad(iCheckint, iCheckint2, iOptint)) != null) {
                    road.alignTo(iCheckint3);
                }
                return LuaValue.NIL;
            }
        });
        luaValue.set("setRoadOneWayAlignment", new VarArgFunction() { // from class: info.flowersoft.theotown.scripting.libraries.TileLibrary.71
            @Override // vm2.lib.VarArgFunction, vm2.lib.LibFunction, vm2.LuaValue
            public Varargs invoke(Varargs varargs) {
                Road road;
                int iCheckint = varargs.checkint(1);
                int iCheckint2 = varargs.checkint(2);
                int iOptint = varargs.optint(3, 0);
                int iCheckint3 = varargs.checkint(4);
                if (TileLibrary.this.city.isValid(iCheckint, iCheckint2) && (road = TileLibrary.this.tiles.getRoad(iCheckint, iCheckint2, iOptint)) != null) {
                    road.alignToRaw(iCheckint3);
                }
                return LuaValue.NIL;
            }
        });
        luaValue.set("getRoadDirection", new ThreeArgFunction() { // from class: info.flowersoft.theotown.scripting.libraries.TileLibrary.72
            @Override // vm2.lib.ThreeArgFunction, vm2.lib.LibFunction, vm2.LuaValue
            public LuaValue call(LuaValue luaValue3, LuaValue luaValue4, LuaValue luaValue5) {
                Road road;
                int iCheckint = luaValue3.checkint();
                int iCheckint2 = luaValue4.checkint();
                int iOptint = luaValue5.optint(0);
                if (TileLibrary.this.city.isValid(iCheckint, iCheckint2) && (road = TileLibrary.this.tiles.getRoad(iCheckint, iCheckint2, iOptint)) != null) {
                    return LuaValue.valueOf(road.getOnewayDir());
                }
                return LuaValue.NIL;
            }
        });
        luaValue.set("isRoadPile", new ThreeArgFunction() { // from class: info.flowersoft.theotown.scripting.libraries.TileLibrary.73
            @Override // vm2.lib.ThreeArgFunction, vm2.lib.LibFunction, vm2.LuaValue
            public LuaValue call(LuaValue luaValue3, LuaValue luaValue4, LuaValue luaValue5) {
                Road road;
                int iCheckint = luaValue3.checkint();
                int iCheckint2 = luaValue4.checkint();
                int iOptint = luaValue5.optint(0);
                if (TileLibrary.this.city.isValid(iCheckint, iCheckint2) && (road = TileLibrary.this.tiles.getRoad(iCheckint, iCheckint2, iOptint)) != null) {
                    return LuaValue.valueOf(road.isPile());
                }
                return LuaValue.NIL;
            }
        });
        luaValue.set("setRoadPile", new VarArgFunction() { // from class: info.flowersoft.theotown.scripting.libraries.TileLibrary.74
            @Override // vm2.lib.VarArgFunction, vm2.lib.LibFunction, vm2.LuaValue
            public LuaValue invoke(Varargs varargs) {
                Road road;
                int iCheckint = varargs.checkint(1);
                int iCheckint2 = varargs.checkint(2);
                int iOptint = varargs.optint(3, 0);
                boolean zCheckboolean = varargs.checkboolean(4);
                if (TileLibrary.this.city.isValid(iCheckint, iCheckint2) && (road = TileLibrary.this.tiles.getRoad(iCheckint, iCheckint2, iOptint)) != null) {
                    road.setPile(zCheckboolean);
                }
                return LuaValue.NIL;
            }
        });
        luaValue.set("getRoadAbsoluteLevel", new ThreeArgFunction() { // from class: info.flowersoft.theotown.scripting.libraries.TileLibrary.75
            @Override // vm2.lib.ThreeArgFunction, vm2.lib.LibFunction, vm2.LuaValue
            public LuaValue call(LuaValue luaValue3, LuaValue luaValue4, LuaValue luaValue5) {
                Road road;
                int iCheckint = luaValue3.checkint();
                int iCheckint2 = luaValue4.checkint();
                int iOptint = luaValue5.optint(0);
                if (TileLibrary.this.city.isValid(iCheckint, iCheckint2) && (road = TileLibrary.this.tiles.getRoad(iCheckint, iCheckint2, iOptint)) != null) {
                    return LuaValue.valueOf(road.absLevel);
                }
                return LuaValue.NIL;
            }
        });
        luaValue.set("isRoadSlope", new ThreeArgFunction() { // from class: info.flowersoft.theotown.scripting.libraries.TileLibrary.76
            @Override // vm2.lib.ThreeArgFunction, vm2.lib.LibFunction, vm2.LuaValue
            public LuaValue call(LuaValue luaValue3, LuaValue luaValue4, LuaValue luaValue5) {
                Road road;
                int iCheckint = luaValue3.checkint();
                int iCheckint2 = luaValue4.checkint();
                int iOptint = luaValue5.optint(0);
                if (!TileLibrary.this.city.isValid(iCheckint, iCheckint2) || (road = TileLibrary.this.tiles.getRoad(iCheckint, iCheckint2, iOptint)) == null) {
                    return LuaValue.NIL;
                }
                return LuaValue.valueOf(road.dLevel > 0);
            }
        });
        luaValue.set("getRoadSlopeDirection", new ThreeArgFunction() { // from class: info.flowersoft.theotown.scripting.libraries.TileLibrary.77
            @Override // vm2.lib.ThreeArgFunction, vm2.lib.LibFunction, vm2.LuaValue
            public LuaValue call(LuaValue luaValue3, LuaValue luaValue4, LuaValue luaValue5) {
                Road road;
                int iCheckint = luaValue3.checkint();
                int iCheckint2 = luaValue4.checkint();
                int iOptint = luaValue5.optint(0);
                if (TileLibrary.this.city.isValid(iCheckint, iCheckint2) && (road = TileLibrary.this.tiles.getRoad(iCheckint, iCheckint2, iOptint)) != null) {
                    return LuaValue.valueOf(road.dLevel);
                }
                return LuaValue.NIL;
            }
        });
        luaValue.set("countRoadBridgeType", new ThreeArgFunction() { // from class: info.flowersoft.theotown.scripting.libraries.TileLibrary.78
            @Override // vm2.lib.ThreeArgFunction, vm2.lib.LibFunction, vm2.LuaValue
            public LuaValue call(LuaValue luaValue3, LuaValue luaValue4, LuaValue luaValue5) {
                Road road;
                int iCheckint = luaValue3.checkint();
                int iCheckint2 = luaValue4.checkint();
                int iOptint = luaValue5.optint(0);
                if (TileLibrary.this.city.isValid(iCheckint, iCheckint2) && (road = TileLibrary.this.tiles.getRoad(iCheckint, iCheckint2, iOptint)) != null) {
                    return LuaValue.valueOf(road.draft.countBridges());
                }
                return LuaValue.NIL;
            }
        });
        luaValue.set("getRoadBridgeType", new ThreeArgFunction() { // from class: info.flowersoft.theotown.scripting.libraries.TileLibrary.79
            @Override // vm2.lib.ThreeArgFunction, vm2.lib.LibFunction, vm2.LuaValue
            public LuaValue call(LuaValue luaValue3, LuaValue luaValue4, LuaValue luaValue5) {
                Road road;
                int iCheckint = luaValue3.checkint();
                int iCheckint2 = luaValue4.checkint();
                int iOptint = luaValue5.optint(0);
                if (TileLibrary.this.city.isValid(iCheckint, iCheckint2) && (road = TileLibrary.this.tiles.getRoad(iCheckint, iCheckint2, iOptint)) != null) {
                    return LuaValue.valueOf(road.bridgeType);
                }
                return LuaValue.NIL;
            }
        });
        luaValue.set("setRoadBridgeType", new VarArgFunction() { // from class: info.flowersoft.theotown.scripting.libraries.TileLibrary.80
            @Override // vm2.lib.VarArgFunction, vm2.lib.LibFunction, vm2.LuaValue
            public Varargs invoke(Varargs varargs) {
                Road road;
                int iCheckint = varargs.checkint(1);
                int iCheckint2 = varargs.checkint(2);
                int iOptint = varargs.optint(3, 0);
                int iOptint2 = varargs.optint(4, 0);
                if (TileLibrary.this.city.isValid(iCheckint, iCheckint2) && (road = TileLibrary.this.tiles.getRoad(iCheckint, iCheckint2, iOptint)) != null) {
                    road.bridgeType = iOptint2;
                }
                return LuaValue.NIL;
            }
        });
        luaValue.set("getRoadOccupation", new ThreeArgFunction() { // from class: info.flowersoft.theotown.scripting.libraries.TileLibrary.81
            @Override // vm2.lib.ThreeArgFunction, vm2.lib.LibFunction, vm2.LuaValue
            public LuaValue call(LuaValue luaValue3, LuaValue luaValue4, LuaValue luaValue5) {
                int iCheckint = luaValue3.checkint();
                int iCheckint2 = luaValue4.checkint();
                int iOptint = luaValue5.optint(0);
                if (!TileLibrary.this.city.isValid(iCheckint, iCheckint2)) {
                    return LuaValue.NIL;
                }
                Road road = TileLibrary.this.tiles.getRoad(iCheckint, iCheckint2, iOptint);
                if (road == null) {
                    return LuaValue.NIL;
                }
                AnimationDraft occupation = road.getOccupation();
                return occupation != null ? occupation.luaRepr : LuaValue.NIL;
            }
        });
        luaValue.set("setRoadOccupation", new VarArgFunction() { // from class: info.flowersoft.theotown.scripting.libraries.TileLibrary.82
            @Override // vm2.lib.VarArgFunction, vm2.lib.LibFunction, vm2.LuaValue
            public Varargs invoke(Varargs varargs) {
                AnimationDraft animationDraft = (AnimationDraft) DraftLibrary.resolveDraft(varargs.arg(1), AnimationDraft.class);
                int iCheckint = varargs.arg(2).checkint();
                int iCheckint2 = varargs.arg(3).checkint();
                int iOptint = varargs.arg(4).optint(0);
                if (!TileLibrary.this.city.isValid(iCheckint, iCheckint2)) {
                    return LuaValue.NIL;
                }
                Road road = TileLibrary.this.tiles.getRoad(iCheckint, iCheckint2, iOptint);
                if (road == null) {
                    return LuaValue.NIL;
                }
                road.setOccupation(animationDraft);
                return LuaValue.NIL;
            }
        });
        luaValue.set("isPipe", new TwoArgFunction() { // from class: info.flowersoft.theotown.scripting.libraries.TileLibrary.83
            @Override // vm2.lib.TwoArgFunction, vm2.lib.LibFunction, vm2.LuaValue
            public LuaValue call(LuaValue luaValue3, LuaValue luaValue4) {
                int iCheckint = luaValue3.checkint();
                int iCheckint2 = luaValue4.checkint();
                if (TileLibrary.this.city.isValid(iCheckint, iCheckint2)) {
                    return LuaValue.valueOf(TileLibrary.this.tiles.getPipe(iCheckint, iCheckint2) != null);
                }
                return LuaValue.NIL;
            }
        });
        luaValue.set("getPipeDraft", new TwoArgFunction() { // from class: info.flowersoft.theotown.scripting.libraries.TileLibrary.84
            @Override // vm2.lib.TwoArgFunction, vm2.lib.LibFunction, vm2.LuaValue
            public LuaValue call(LuaValue luaValue3, LuaValue luaValue4) {
                Pipe pipe;
                int iCheckint = luaValue3.checkint();
                int iCheckint2 = luaValue4.checkint();
                if (TileLibrary.this.city.isValid(iCheckint, iCheckint2) && (pipe = TileLibrary.this.tiles.getPipe(iCheckint, iCheckint2)) != null) {
                    return pipe.getDraft().luaRepr;
                }
                return LuaValue.NIL;
            }
        });
        luaValue.set("getPipeFrame", new TwoArgFunction() { // from class: info.flowersoft.theotown.scripting.libraries.TileLibrary.85
            @Override // vm2.lib.TwoArgFunction, vm2.lib.LibFunction, vm2.LuaValue
            public LuaValue call(LuaValue luaValue3, LuaValue luaValue4) {
                Pipe pipe;
                int iCheckint = luaValue3.checkint();
                int iCheckint2 = luaValue4.checkint();
                if (TileLibrary.this.city.isValid(iCheckint, iCheckint2) && (pipe = TileLibrary.this.tiles.getPipe(iCheckint, iCheckint2)) != null) {
                    return LuaValue.valueOf(pipe.getFrame());
                }
                return LuaValue.NIL;
            }
        });
        luaValue.set("hasWire", new TwoArgFunction() { // from class: info.flowersoft.theotown.scripting.libraries.TileLibrary.86
            @Override // vm2.lib.TwoArgFunction, vm2.lib.LibFunction, vm2.LuaValue
            public LuaValue call(LuaValue luaValue3, LuaValue luaValue4) {
                int iCheckint = luaValue3.checkint();
                int iCheckint2 = luaValue4.checkint();
                if (TileLibrary.this.city.isValid(iCheckint, iCheckint2)) {
                    return LuaValue.valueOf(TileLibrary.this.tiles.hasWire(iCheckint, iCheckint2));
                }
                return LuaValue.NIL;
            }
        });
        luaValue.set("isWire", new ThreeArgFunction() { // from class: info.flowersoft.theotown.scripting.libraries.TileLibrary.87
            @Override // vm2.lib.ThreeArgFunction, vm2.lib.LibFunction, vm2.LuaValue
            public LuaValue call(LuaValue luaValue3, LuaValue luaValue4, LuaValue luaValue5) {
                int iCheckint = luaValue3.checkint();
                int iCheckint2 = luaValue4.checkint();
                int iOptint = luaValue5.optint(0);
                if (TileLibrary.this.city.isValid(iCheckint, iCheckint2)) {
                    return LuaValue.valueOf(TileLibrary.this.tiles.getWire(iCheckint, iCheckint2, iOptint) != null);
                }
                return LuaValue.NIL;
            }
        });
        luaValue.set("getWireDraft", new ThreeArgFunction() { // from class: info.flowersoft.theotown.scripting.libraries.TileLibrary.88
            @Override // vm2.lib.ThreeArgFunction, vm2.lib.LibFunction, vm2.LuaValue
            public LuaValue call(LuaValue luaValue3, LuaValue luaValue4, LuaValue luaValue5) {
                Wire wire;
                int iCheckint = luaValue3.checkint();
                int iCheckint2 = luaValue4.checkint();
                int iOptint = luaValue5.optint(0);
                if (TileLibrary.this.city.isValid(iCheckint, iCheckint2) && (wire = TileLibrary.this.tiles.getWire(iCheckint, iCheckint2, iOptint)) != null) {
                    return wire.getDraft().luaRepr;
                }
                return LuaValue.NIL;
            }
        });
        luaValue.set("getWireFrame", new ThreeArgFunction() { // from class: info.flowersoft.theotown.scripting.libraries.TileLibrary.89
            @Override // vm2.lib.ThreeArgFunction, vm2.lib.LibFunction, vm2.LuaValue
            public LuaValue call(LuaValue luaValue3, LuaValue luaValue4, LuaValue luaValue5) {
                Wire wire;
                int iCheckint = luaValue3.checkint();
                int iCheckint2 = luaValue4.checkint();
                int iOptint = luaValue5.optint(0);
                if (TileLibrary.this.city.isValid(iCheckint, iCheckint2) && (wire = TileLibrary.this.tiles.getWire(iCheckint, iCheckint2, iOptint)) != null) {
                    return LuaValue.valueOf(wire.getFrame());
                }
                return LuaValue.NIL;
            }
        });
        luaValue.set("getZoneDraft", new TwoArgFunction() { // from class: info.flowersoft.theotown.scripting.libraries.TileLibrary.90
            @Override // vm2.lib.TwoArgFunction, vm2.lib.LibFunction, vm2.LuaValue
            public LuaValue call(LuaValue luaValue3, LuaValue luaValue4) {
                ZoneDraft zone;
                int iCheckint = luaValue3.checkint();
                int iCheckint2 = luaValue4.checkint();
                if (TileLibrary.this.city.isValid(iCheckint, iCheckint2) && (zone = TileLibrary.this.tiles.getZone(iCheckint, iCheckint2)) != null) {
                    return zone.luaRepr;
                }
                return LuaValue.NIL;
            }
        });
        luaValue.set("isWirePole", new ThreeArgFunction() { // from class: info.flowersoft.theotown.scripting.libraries.TileLibrary.91
            @Override // vm2.lib.ThreeArgFunction, vm2.lib.LibFunction, vm2.LuaValue
            public LuaValue call(LuaValue luaValue3, LuaValue luaValue4, LuaValue luaValue5) {
                Wire wire;
                int iCheckint = luaValue3.checkint();
                int iCheckint2 = luaValue4.checkint();
                int iOptint = luaValue5.optint(0);
                if (TileLibrary.this.city.isValid(iCheckint, iCheckint2) && (wire = TileLibrary.this.tiles.getWire(iCheckint, iCheckint2, iOptint)) != null) {
                    return LuaValue.valueOf(wire.isPunch());
                }
                return LuaValue.NIL;
            }
        });
        luaValue.set("setWirePole", new VarArgFunction() { // from class: info.flowersoft.theotown.scripting.libraries.TileLibrary.92
            @Override // vm2.lib.VarArgFunction, vm2.lib.LibFunction, vm2.LuaValue
            public Varargs invoke(Varargs varargs) {
                Wire wire;
                int iCheckint = varargs.checkint(1);
                int iCheckint2 = varargs.checkint(2);
                int iOptint = varargs.optint(3, 0);
                boolean zCheckboolean = varargs.checkboolean(4);
                if (TileLibrary.this.city.isValid(iCheckint, iCheckint2) && (wire = TileLibrary.this.tiles.getWire(iCheckint, iCheckint2, iOptint)) != null) {
                    wire.setPunch(zCheckboolean);
                }
                return LuaValue.NIL;
            }
        });
        luaValue.set("setBuildingIcon", new ThreeArgFunction() { // from class: info.flowersoft.theotown.scripting.libraries.TileLibrary.93
            @Override // vm2.lib.ThreeArgFunction, vm2.lib.LibFunction, vm2.LuaValue
            public LuaValue call(LuaValue luaValue3, LuaValue luaValue4, LuaValue luaValue5) {
                Building building;
                int iCheckint = luaValue3.checkint();
                int iCheckint2 = luaValue4.checkint();
                if (TileLibrary.this.city.isValid(iCheckint, iCheckint2) && (building = TileLibrary.this.tiles.getBuilding(iCheckint, iCheckint2)) != null) {
                    building.setCustomBuildingIcon((AnimationDraft) DraftLibrary.resolveDraft(luaValue5, AnimationDraft.class));
                    return LuaValue.TRUE;
                }
                return LuaValue.FALSE;
            }
        });
        luaValue.set("getBuildingIcon", new TwoArgFunction() { // from class: info.flowersoft.theotown.scripting.libraries.TileLibrary.94
            @Override // vm2.lib.TwoArgFunction, vm2.lib.LibFunction, vm2.LuaValue
            public LuaValue call(LuaValue luaValue3, LuaValue luaValue4) {
                Building building;
                AnimationDraft customBuildingIcon;
                int iCheckint = luaValue3.checkint();
                int iCheckint2 = luaValue4.checkint();
                if (TileLibrary.this.city.isValid(iCheckint, iCheckint2) && (building = TileLibrary.this.tiles.getBuilding(iCheckint, iCheckint2)) != null && (customBuildingIcon = building.getCustomBuildingIcon()) != null) {
                    return customBuildingIcon.luaRepr;
                }
                return LuaValue.NIL;
            }
        });
        luaValue.set("setRoadAnimationFrame", new VarArgFunction() { // from class: info.flowersoft.theotown.scripting.libraries.TileLibrary.95
            @Override // vm2.lib.VarArgFunction, vm2.lib.LibFunction, vm2.LuaValue
            public Varargs invoke(Varargs varargs) {
                Road road;
                int iCheckint = varargs.arg(1).checkint();
                int iCheckint2 = varargs.arg(2).checkint();
                int iOptint = varargs.arg(3).optint(0);
                int iCheckint3 = varargs.arg(4).checkint() - 1;
                int iOptint2 = varargs.arg(5).optint(1) - 1;
                int animationTime = TileLibrary.this.date.getAnimationTime();
                if (TileLibrary.this.city.isValid(iCheckint, iCheckint2) && (road = TileLibrary.this.tiles.getRoad(iCheckint, iCheckint2, iOptint)) != null) {
                    road.setAnimationFrameOffset(iOptint2, iCheckint3, animationTime);
                    return LuaValue.valueOf(true);
                }
                return LuaValue.NIL;
            }
        });
        luaValue.set("getRoadAnimationFrame", new VarArgFunction() { // from class: info.flowersoft.theotown.scripting.libraries.TileLibrary.96
            @Override // vm2.lib.VarArgFunction, vm2.lib.LibFunction, vm2.LuaValue
            public Varargs invoke(Varargs varargs) {
                Road road;
                int iCheckint = varargs.arg1().checkint();
                int iCheckint2 = varargs.arg(2).checkint();
                int iOptint = varargs.arg(3).optint(0);
                int iOptint2 = varargs.arg(4).optint(1) - 1;
                int animationTime = TileLibrary.this.date.getAnimationTime();
                if (TileLibrary.this.city.isValid(iCheckint, iCheckint2) && (road = TileLibrary.this.tiles.getRoad(iCheckint, iCheckint2, iOptint)) != null) {
                    return LuaValue.valueOf(road.activeAnimationSpotFrame(animationTime, iOptint2));
                }
                return LuaValue.NIL;
            }
        });
        luaValue.set("isRoadAnimationPaused", new VarArgFunction() { // from class: info.flowersoft.theotown.scripting.libraries.TileLibrary.97
            @Override // vm2.lib.VarArgFunction, vm2.lib.LibFunction, vm2.LuaValue
            public Varargs invoke(Varargs varargs) {
                Road road;
                int iCheckint = varargs.arg1().checkint();
                int iCheckint2 = varargs.arg(2).checkint();
                int iOptint = varargs.arg(3).optint(0);
                int iOptint2 = varargs.arg(4).optint(1) - 1;
                if (!TileLibrary.this.city.isValid(iCheckint, iCheckint2) || (road = TileLibrary.this.tiles.getRoad(iCheckint, iCheckint2, iOptint)) == null) {
                    return LuaValue.NIL;
                }
                return LuaValue.valueOf(road.getAnimationFrameSpeed(iOptint2) == UnityAdsConstants.SafeGuards.InitRequestRetryPolicy.MIN_JITTER_PCT);
            }
        });
        luaValue.set("setRoadAnimationColor", new VarArgFunction() { // from class: info.flowersoft.theotown.scripting.libraries.TileLibrary.98
            @Override // vm2.lib.VarArgFunction, vm2.lib.LibFunction, vm2.LuaValue
            public Varargs invoke(Varargs varargs) {
                Road road;
                int iCheckint = varargs.arg1().checkint();
                int iCheckint2 = varargs.arg(2).checkint();
                int iOptint = varargs.arg(3).optint(0);
                int iCheckint3 = varargs.arg(4).checkint();
                int iCheckint4 = varargs.arg(5).checkint();
                int iCheckint5 = varargs.arg(6).checkint();
                int iOptint2 = varargs.arg(7).optint(255);
                int iOptint3 = varargs.arg(8).optint(1) - 1;
                if (TileLibrary.this.city.isValid(iCheckint, iCheckint2) && (road = TileLibrary.this.tiles.getRoad(iCheckint, iCheckint2, iOptint)) != null) {
                    road.setAnimationFrameColor(iOptint3, new Color(iCheckint3, iCheckint4, iCheckint5, iOptint2));
                    return LuaValue.TRUE;
                }
                return LuaValue.NIL;
            }
        });
        luaValue.set("getRoadAnimationColor", new VarArgFunction() { // from class: info.flowersoft.theotown.scripting.libraries.TileLibrary.99
            @Override // vm2.lib.VarArgFunction, vm2.lib.LibFunction, vm2.LuaValue
            public Varargs invoke(Varargs varargs) {
                Road road;
                int iCheckint = varargs.arg1().checkint();
                int iCheckint2 = varargs.arg(2).checkint();
                int iOptint = varargs.arg(3).optint(0);
                int iOptint2 = varargs.arg(4).optint(1) - 1;
                if (TileLibrary.this.city.isValid(iCheckint, iCheckint2) && (road = TileLibrary.this.tiles.getRoad(iCheckint, iCheckint2, iOptint)) != null) {
                    return TileLibrary.this.colorToLua(road.getAnimationFrameColor(iOptint2));
                }
                return LuaValue.NIL;
            }
        });
        luaValue.set("pauseRoadAnimation", new VarArgFunction() { // from class: info.flowersoft.theotown.scripting.libraries.TileLibrary.100
            @Override // vm2.lib.VarArgFunction, vm2.lib.LibFunction, vm2.LuaValue
            public Varargs invoke(Varargs varargs) {
                Road road;
                int iCheckint = varargs.arg1().checkint();
                int iCheckint2 = varargs.arg(2).checkint();
                int iOptint = varargs.arg(3).optint(0);
                int iOptint2 = varargs.arg(4).optint(1) - 1;
                int animationTime = TileLibrary.this.date.getAnimationTime();
                if (TileLibrary.this.city.isValid(iCheckint, iCheckint2) && (road = TileLibrary.this.tiles.getRoad(iCheckint, iCheckint2, iOptint)) != null) {
                    road.setAnimationFrameSpeed(iOptint2, UnityAdsConstants.SafeGuards.InitRequestRetryPolicy.MIN_JITTER_PCT, animationTime);
                    return LuaValue.valueOf(road.activeAnimationSpotFrame(animationTime, iOptint2) + 1);
                }
                return LuaValue.NIL;
            }
        });
        luaValue.set("resumeRoadAnimation", new VarArgFunction() { // from class: info.flowersoft.theotown.scripting.libraries.TileLibrary.101
            @Override // vm2.lib.VarArgFunction, vm2.lib.LibFunction, vm2.LuaValue
            public LuaValue invoke(Varargs varargs) {
                Road road;
                int iCheckint = varargs.arg1().checkint();
                int iCheckint2 = varargs.arg(2).checkint();
                int iOptint = varargs.arg(3).optint(0);
                int iOptint2 = varargs.arg(4).optint(1) - 1;
                float fOptdouble = (float) varargs.arg(5).optdouble(1.0d);
                int animationTime = TileLibrary.this.date.getAnimationTime();
                if (TileLibrary.this.city.isValid(iCheckint, iCheckint2) && (road = TileLibrary.this.tiles.getRoad(iCheckint, iCheckint2, iOptint)) != null) {
                    road.setAnimationFrameSpeed(iOptint2, fOptdouble, animationTime);
                    return LuaValue.valueOf(road.activeAnimationSpotFrame(animationTime, iOptint2) + 1);
                }
                return LuaValue.NIL;
            }
        });
        luaValue.set("setRoadAnimationFrameFG", new VarArgFunction() { // from class: info.flowersoft.theotown.scripting.libraries.TileLibrary.102
            @Override // vm2.lib.VarArgFunction, vm2.lib.LibFunction, vm2.LuaValue
            public Varargs invoke(Varargs varargs) {
                Road road;
                int iCheckint = varargs.arg(1).checkint();
                int iCheckint2 = varargs.arg(2).checkint();
                int iOptint = varargs.arg(3).optint(0);
                int iCheckint3 = varargs.arg(4).checkint() - 1;
                int iOptint2 = varargs.arg(5).optint(1) - 1;
                int animationTime = TileLibrary.this.date.getAnimationTime();
                if (TileLibrary.this.city.isValid(iCheckint, iCheckint2) && (road = TileLibrary.this.tiles.getRoad(iCheckint, iCheckint2, iOptint)) != null) {
                    road.setAnimationFrameOffsetFG(iOptint2, iCheckint3, animationTime);
                    return LuaValue.valueOf(true);
                }
                return LuaValue.NIL;
            }
        });
        luaValue.set("getRoadAnimationFrameFG", new VarArgFunction() { // from class: info.flowersoft.theotown.scripting.libraries.TileLibrary.103
            @Override // vm2.lib.VarArgFunction, vm2.lib.LibFunction, vm2.LuaValue
            public Varargs invoke(Varargs varargs) {
                Road road;
                int iCheckint = varargs.arg1().checkint();
                int iCheckint2 = varargs.arg(2).checkint();
                int iOptint = varargs.arg(3).optint(0);
                int iOptint2 = varargs.arg(4).optint(1) - 1;
                int animationTime = TileLibrary.this.date.getAnimationTime();
                if (TileLibrary.this.city.isValid(iCheckint, iCheckint2) && (road = TileLibrary.this.tiles.getRoad(iCheckint, iCheckint2, iOptint)) != null) {
                    return LuaValue.valueOf(road.activeAnimationSpotFrameFG(animationTime, iOptint2));
                }
                return LuaValue.NIL;
            }
        });
        luaValue.set("isRoadAnimationPausedFG", new VarArgFunction() { // from class: info.flowersoft.theotown.scripting.libraries.TileLibrary.104
            @Override // vm2.lib.VarArgFunction, vm2.lib.LibFunction, vm2.LuaValue
            public Varargs invoke(Varargs varargs) {
                Road road;
                int iCheckint = varargs.arg1().checkint();
                int iCheckint2 = varargs.arg(2).checkint();
                int iOptint = varargs.arg(3).optint(0);
                int iOptint2 = varargs.arg(4).optint(1) - 1;
                if (!TileLibrary.this.city.isValid(iCheckint, iCheckint2) || (road = TileLibrary.this.tiles.getRoad(iCheckint, iCheckint2, iOptint)) == null) {
                    return LuaValue.NIL;
                }
                return LuaValue.valueOf(road.getAnimationFrameSpeedFG(iOptint2) == UnityAdsConstants.SafeGuards.InitRequestRetryPolicy.MIN_JITTER_PCT);
            }
        });
        luaValue.set("setRoadAnimationColorFG", new VarArgFunction() { // from class: info.flowersoft.theotown.scripting.libraries.TileLibrary.105
            @Override // vm2.lib.VarArgFunction, vm2.lib.LibFunction, vm2.LuaValue
            public Varargs invoke(Varargs varargs) {
                Road road;
                int iCheckint = varargs.arg1().checkint();
                int iCheckint2 = varargs.arg(2).checkint();
                int iOptint = varargs.arg(3).optint(0);
                int iCheckint3 = varargs.arg(4).checkint();
                int iCheckint4 = varargs.arg(5).checkint();
                int iCheckint5 = varargs.arg(6).checkint();
                int iOptint2 = varargs.arg(7).optint(255);
                int iOptint3 = varargs.arg(8).optint(1) - 1;
                if (TileLibrary.this.city.isValid(iCheckint, iCheckint2) && (road = TileLibrary.this.tiles.getRoad(iCheckint, iCheckint2, iOptint)) != null) {
                    road.setAnimationFrameColorFG(iOptint3, new Color(iCheckint3, iCheckint4, iCheckint5, iOptint2));
                    return LuaValue.TRUE;
                }
                return LuaValue.NIL;
            }
        });
        luaValue.set("getRoadAnimationColorFG", new VarArgFunction() { // from class: info.flowersoft.theotown.scripting.libraries.TileLibrary.106
            @Override // vm2.lib.VarArgFunction, vm2.lib.LibFunction, vm2.LuaValue
            public Varargs invoke(Varargs varargs) {
                Road road;
                int iCheckint = varargs.arg1().checkint();
                int iCheckint2 = varargs.arg(2).checkint();
                int iOptint = varargs.arg(3).optint(0);
                int iOptint2 = varargs.arg(4).optint(1) - 1;
                if (TileLibrary.this.city.isValid(iCheckint, iCheckint2) && (road = TileLibrary.this.tiles.getRoad(iCheckint, iCheckint2, iOptint)) != null) {
                    return TileLibrary.this.colorToLua(road.getAnimationFrameColorFG(iOptint2));
                }
                return LuaValue.NIL;
            }
        });
        luaValue.set("pauseRoadAnimationFG", new VarArgFunction() { // from class: info.flowersoft.theotown.scripting.libraries.TileLibrary.107
            @Override // vm2.lib.VarArgFunction, vm2.lib.LibFunction, vm2.LuaValue
            public Varargs invoke(Varargs varargs) {
                Road road;
                int iCheckint = varargs.arg1().checkint();
                int iCheckint2 = varargs.arg(2).checkint();
                int iOptint = varargs.arg(3).optint(0);
                int iOptint2 = varargs.arg(4).optint(1) - 1;
                int animationTime = TileLibrary.this.date.getAnimationTime();
                if (TileLibrary.this.city.isValid(iCheckint, iCheckint2) && (road = TileLibrary.this.tiles.getRoad(iCheckint, iCheckint2, iOptint)) != null) {
                    road.setAnimationFrameSpeedFG(iOptint2, UnityAdsConstants.SafeGuards.InitRequestRetryPolicy.MIN_JITTER_PCT, animationTime);
                    return LuaValue.valueOf(road.activeAnimationSpotFrameFG(animationTime, iOptint2) + 1);
                }
                return LuaValue.NIL;
            }
        });
        luaValue.set("resumeRoadAnimationFG", new VarArgFunction() { // from class: info.flowersoft.theotown.scripting.libraries.TileLibrary.108
            @Override // vm2.lib.VarArgFunction, vm2.lib.LibFunction, vm2.LuaValue
            public LuaValue invoke(Varargs varargs) {
                Road road;
                int iCheckint = varargs.arg1().checkint();
                int iCheckint2 = varargs.arg(2).checkint();
                int iOptint = varargs.arg(3).optint(0);
                int iOptint2 = varargs.arg(4).optint(1) - 1;
                float fOptdouble = (float) varargs.arg(5).optdouble(1.0d);
                int animationTime = TileLibrary.this.date.getAnimationTime();
                if (TileLibrary.this.city.isValid(iCheckint, iCheckint2) && (road = TileLibrary.this.tiles.getRoad(iCheckint, iCheckint2, iOptint)) != null) {
                    road.setAnimationFrameSpeedFG(iOptint2, fOptdouble, animationTime);
                    return LuaValue.valueOf(road.activeAnimationSpotFrameFG(animationTime, iOptint2) + 1);
                }
                return LuaValue.NIL;
            }
        });
    }

    public final Varargs colorToLua(Color color) {
        return LuaValue.varargsOf(new LuaValue[]{LuaValue.valueOf(color.getRed()), LuaValue.valueOf(color.getGreen()), LuaValue.valueOf(color.getBlue()), LuaValue.valueOf(color.getAlpha())});
    }
}
