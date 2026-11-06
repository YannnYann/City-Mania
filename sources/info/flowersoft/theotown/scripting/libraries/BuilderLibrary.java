package info.flowersoft.theotown.scripting.libraries;

import info.flowersoft.theotown.city.City;
import info.flowersoft.theotown.city.Tiles;
import info.flowersoft.theotown.city.modifier.CityModifier;
import info.flowersoft.theotown.city.modifier.RoadBuilder;
import info.flowersoft.theotown.city.modifier.TerrainBuilder;
import info.flowersoft.theotown.city.modifier.ZoneBuilder;
import info.flowersoft.theotown.city.objects.Building;
import info.flowersoft.theotown.city.objects.BusStop;
import info.flowersoft.theotown.city.objects.Ground;
import info.flowersoft.theotown.city.objects.Pipe;
import info.flowersoft.theotown.city.objects.Road;
import info.flowersoft.theotown.city.objects.Tree;
import info.flowersoft.theotown.city.objects.Wire;
import info.flowersoft.theotown.components.DefaultBudget;
import info.flowersoft.theotown.components.DefaultDate;
import info.flowersoft.theotown.draft.BuildingDraft;
import info.flowersoft.theotown.draft.BusStopDraft;
import info.flowersoft.theotown.draft.Draft;
import info.flowersoft.theotown.draft.FenceDraft;
import info.flowersoft.theotown.draft.GroundDraft;
import info.flowersoft.theotown.draft.PipeDraft;
import info.flowersoft.theotown.draft.RoadDecorationDraft;
import info.flowersoft.theotown.draft.RoadDraft;
import info.flowersoft.theotown.draft.TreeDraft;
import info.flowersoft.theotown.draft.UpgradeDraft;
import info.flowersoft.theotown.draft.WireDraft;
import info.flowersoft.theotown.draft.ZoneDraft;
import info.flowersoft.theotown.resources.Drafts;
import info.flowersoft.theotown.resources.Resources;
import info.flowersoft.theotown.resources.Settings;
import info.flowersoft.theotown.scripting.ManagedLibrary;
import info.flowersoft.theotown.scripting.ScriptingEnvironment;
import info.flowersoft.theotown.scripting.SimpleLuaLibrary;
import vm2.Globals;
import vm2.LuaValue;
import vm2.Varargs;
import vm2.lib.ThreeArgFunction;
import vm2.lib.TwoArgFunction;
import vm2.lib.VarArgFunction;
import vm2.lib.jse.CoerceJavaToLua;
import vm2.lib.jse.CoerceLuaToJava;

/* JADX INFO: loaded from: classes4.dex */
public class BuilderLibrary extends ManagedLibrary implements SimpleLuaLibrary.LibraryInjector {
    public final DefaultBudget budget;
    public final City city;
    public final CityModifier modifier;
    public final TerrainBuilder terrainBuilder;
    public final Tiles tiles;
    public final ZoneBuilder zoneBuilder;

    public BuilderLibrary(City city) {
        super("libs/Builder.lua");
        this.city = city;
        this.tiles = city.getTiles();
        CityModifier cityModifier = new CityModifier(city, true);
        this.modifier = cityModifier;
        this.zoneBuilder = new ZoneBuilder(city);
        this.budget = (DefaultBudget) city.getComponent(0);
        this.terrainBuilder = new TerrainBuilder(cityModifier);
    }

    @Override // info.flowersoft.theotown.scripting.SimpleLuaLibrary.LibraryInjector
    public void inject(LuaValue luaValue, LuaValue luaValue2, Globals globals) {
        luaValue.method("init", CoerceJavaToLua.coerce(this.city), CoerceJavaToLua.coerce(this.modifier));
        luaValue.set("isBuildingBuildable", new VarArgFunction() { // from class: info.flowersoft.theotown.scripting.libraries.BuilderLibrary.1
            @Override // vm2.lib.VarArgFunction, vm2.lib.LibFunction, vm2.LuaValue
            public Varargs invoke(Varargs varargs) {
                return LuaValue.valueOf(BuilderLibrary.this.modifier.isBuildable((BuildingDraft) BuilderLibrary.this.resolveDraft(varargs.arg1(), BuildingDraft.class), varargs.arg(2).checkint(), varargs.arg(3).checkint(), varargs.arg(4).optboolean(true) ^ true, varargs.arg(5).optboolean(true) ^ true, varargs.arg(6).optint(0)) == null);
            }
        });
        luaValue.set("getBuildingPrice", new ThreeArgFunction() { // from class: info.flowersoft.theotown.scripting.libraries.BuilderLibrary.2
            @Override // vm2.lib.ThreeArgFunction, vm2.lib.LibFunction, vm2.LuaValue
            public LuaValue call(LuaValue luaValue3, LuaValue luaValue4, LuaValue luaValue5) {
                if (((BuildingDraft) BuilderLibrary.this.resolveDraft(luaValue3, BuildingDraft.class)) != null) {
                    return LuaValue.valueOf(BuilderLibrary.this.budget.getPrice(r1, 1));
                }
                return LuaValue.NIL;
            }
        });
        luaValue.set("buildBuilding", new VarArgFunction() { // from class: info.flowersoft.theotown.scripting.libraries.BuilderLibrary.3
            @Override // vm2.lib.VarArgFunction, vm2.lib.LibFunction, vm2.LuaValue
            public Varargs invoke(Varargs varargs) {
                ZoneDraft zoneDraft;
                BuildingDraft buildingDraft = (BuildingDraft) BuilderLibrary.this.resolveDraft(varargs.arg(1), BuildingDraft.class);
                int iCheckint = varargs.arg(2).checkint();
                int iCheckint2 = varargs.arg(3).checkint();
                int iCheckint3 = varargs.narg() >= 4 ? varargs.arg(4).checkint() : -1;
                if (buildingDraft != null && (buildingDraft.isSquare() || iCheckint3 >= 0)) {
                    if (BuilderLibrary.this.modifier.isBuildable(buildingDraft, iCheckint, iCheckint2, false, true, iCheckint3) == null && (!buildingDraft.isFinal() || ScriptingEnvironment.getInstance().isPrivileged())) {
                        if (buildingDraft.buildZone && (zoneDraft = buildingDraft.zone) != null && zoneDraft.placeable) {
                            BuilderLibrary.this.zoneBuilder.setArea(iCheckint, iCheckint2, (buildingDraft.getWidth(iCheckint3) + iCheckint) - 1, (buildingDraft.getHeight(iCheckint3) + iCheckint2) - 1);
                            BuilderLibrary.this.zoneBuilder.setZone(buildingDraft.zone);
                            if (BuilderLibrary.this.zoneBuilder.isBuildable()) {
                                BuilderLibrary.this.zoneBuilder.build();
                            }
                        }
                        BuilderLibrary.this.modifier.build(buildingDraft, iCheckint, iCheckint2, iCheckint3, ScriptingEnvironment.getInstance().getSender());
                        return LuaValue.valueOf(true);
                    }
                    return LuaValue.valueOf(false);
                }
                return LuaValue.FALSE;
            }
        });
        luaValue.set("finishBuilding", new TwoArgFunction() { // from class: info.flowersoft.theotown.scripting.libraries.BuilderLibrary.4
            @Override // vm2.lib.TwoArgFunction, vm2.lib.LibFunction, vm2.LuaValue
            public LuaValue call(LuaValue luaValue3, LuaValue luaValue4) {
                Building building;
                BuilderLibrary.this.assertPrivileged("finishBuilding");
                int iCheckint = luaValue3.checkint();
                int iCheckint2 = luaValue4.checkint();
                if (BuilderLibrary.this.city.isValid(iCheckint, iCheckint2) && (building = BuilderLibrary.this.tiles.getBuilding(iCheckint, iCheckint2)) != null) {
                    new CityModifier(BuilderLibrary.this.city, true).finishBuilding(building, ScriptingEnvironment.getInstance().getSender());
                }
                return LuaValue.NIL;
            }
        });
        luaValue.set("getBuildingUpgradePrice", new ThreeArgFunction() { // from class: info.flowersoft.theotown.scripting.libraries.BuilderLibrary.5
            @Override // vm2.lib.ThreeArgFunction, vm2.lib.LibFunction, vm2.LuaValue
            public LuaValue call(LuaValue luaValue3, LuaValue luaValue4, LuaValue luaValue5) {
                UpgradeDraft upgradeDraft = (UpgradeDraft) BuilderLibrary.this.resolveDraft(luaValue3, UpgradeDraft.class);
                Building building = BuilderLibrary.this.tiles.getBuilding(luaValue4.checkint(), luaValue5.checkint());
                if (upgradeDraft != null && building != null && !building.hasUpgrade(upgradeDraft) && !building.hasPendingUpgrade(upgradeDraft) && building.getDraft().hasUpgrades() && building.getDraft().upgrades.contains(upgradeDraft)) {
                    return LuaValue.valueOf(upgradeDraft.price);
                }
                return LuaValue.NIL;
            }
        });
        luaValue.set("buildBuildingUpgrade", new ThreeArgFunction() { // from class: info.flowersoft.theotown.scripting.libraries.BuilderLibrary.6
            @Override // vm2.lib.ThreeArgFunction, vm2.lib.LibFunction, vm2.LuaValue
            public LuaValue call(LuaValue luaValue3, LuaValue luaValue4, LuaValue luaValue5) {
                UpgradeDraft upgradeDraft = (UpgradeDraft) BuilderLibrary.this.resolveDraft(luaValue3, UpgradeDraft.class);
                Building building = BuilderLibrary.this.tiles.getBuilding(luaValue4.checkint(), luaValue5.checkint());
                if (building != null && upgradeDraft != null && !building.hasUpgrade(upgradeDraft) && !building.hasPendingUpgrade(upgradeDraft) && building.getDraft().hasUpgrades() && building.getDraft().upgrades.contains(upgradeDraft)) {
                    building.appendUpgrade(upgradeDraft, ((DefaultDate) BuilderLibrary.this.city.getComponent(1)).getAbsoluteDay());
                    return LuaValue.TRUE;
                }
                return LuaValue.FALSE;
            }
        });
        luaValue.set("removeBuildingUpgrade", new ThreeArgFunction() { // from class: info.flowersoft.theotown.scripting.libraries.BuilderLibrary.7
            @Override // vm2.lib.ThreeArgFunction, vm2.lib.LibFunction, vm2.LuaValue
            public LuaValue call(LuaValue luaValue3, LuaValue luaValue4, LuaValue luaValue5) {
                UpgradeDraft upgradeDraft = (UpgradeDraft) BuilderLibrary.this.resolveDraft(luaValue3, UpgradeDraft.class);
                Building building = BuilderLibrary.this.tiles.getBuilding(luaValue4.checkint(), luaValue5.checkint());
                if (building != null && building.hasUpgrade(upgradeDraft) && upgradeDraft != null) {
                    building.removeUpgrade(upgradeDraft);
                    return LuaValue.TRUE;
                }
                return LuaValue.FALSE;
            }
        });
        luaValue.set("isRoadBuildable", new VarArgFunction() { // from class: info.flowersoft.theotown.scripting.libraries.BuilderLibrary.8
            @Override // vm2.lib.VarArgFunction, vm2.lib.LibFunction, vm2.LuaValue
            public Varargs invoke(Varargs varargs) {
                RoadBuilder roadBuilderPrepareRoadBuilder = BuilderLibrary.this.prepareRoadBuilder(varargs);
                boolean zIsBuildable = roadBuilderPrepareRoadBuilder.isBuildable();
                roadBuilderPrepareRoadBuilder.setDraft(null, ScriptingEnvironment.getInstance().getSender());
                return LuaValue.valueOf(zIsBuildable);
            }
        });
        luaValue.set("getRoadPrice", new VarArgFunction() { // from class: info.flowersoft.theotown.scripting.libraries.BuilderLibrary.9
            @Override // vm2.lib.VarArgFunction, vm2.lib.LibFunction, vm2.LuaValue
            public Varargs invoke(Varargs varargs) {
                if (BuilderLibrary.this.prepareRoadBuilder(varargs).isBuildable()) {
                    return LuaValue.valueOf(r3.getPrice());
                }
                return LuaValue.NIL;
            }
        });
        luaValue.set("buildRoad", new VarArgFunction() { // from class: info.flowersoft.theotown.scripting.libraries.BuilderLibrary.10
            @Override // vm2.lib.VarArgFunction, vm2.lib.LibFunction, vm2.LuaValue
            public Varargs invoke(Varargs varargs) {
                RoadBuilder roadBuilderPrepareRoadBuilder = BuilderLibrary.this.prepareRoadBuilder(varargs);
                boolean zIsBuildable = roadBuilderPrepareRoadBuilder.isBuildable();
                if (zIsBuildable) {
                    roadBuilderPrepareRoadBuilder.build();
                }
                roadBuilderPrepareRoadBuilder.setDraft(null, ScriptingEnvironment.getInstance().getSender());
                return LuaValue.valueOf(zIsBuildable);
            }
        });
        luaValue.set("isPipeBuildable", new VarArgFunction() { // from class: info.flowersoft.theotown.scripting.libraries.BuilderLibrary.11
            @Override // vm2.lib.VarArgFunction, vm2.lib.LibFunction, vm2.LuaValue
            public Varargs invoke(Varargs varargs) {
                PipeDraft pipeDraft = (PipeDraft) BuilderLibrary.this.resolveDraft(varargs.arg1(), PipeDraft.class);
                if (pipeDraft != null) {
                    int iCheckint = varargs.checkint(2);
                    int iCheckint2 = varargs.checkint(3);
                    return LuaValue.valueOf(BuilderLibrary.this.modifier.isBuildable(pipeDraft, iCheckint, iCheckint2, varargs.optint(4, iCheckint), varargs.optint(5, iCheckint2)));
                }
                return LuaValue.FALSE;
            }
        });
        luaValue.set("getPipePrice", new VarArgFunction() { // from class: info.flowersoft.theotown.scripting.libraries.BuilderLibrary.12
            @Override // vm2.lib.VarArgFunction, vm2.lib.LibFunction, vm2.LuaValue
            public Varargs invoke(Varargs varargs) {
                PipeDraft pipeDraft = (PipeDraft) BuilderLibrary.this.resolveDraft(varargs.arg1(), PipeDraft.class);
                if (pipeDraft != null) {
                    int iCheckint = varargs.checkint(2);
                    int iCheckint2 = varargs.checkint(3);
                    if (BuilderLibrary.this.modifier.isBuildable(pipeDraft, iCheckint, iCheckint2, varargs.optint(4, iCheckint), varargs.optint(5, iCheckint2))) {
                        return LuaValue.valueOf(BuilderLibrary.this.modifier.getPrice(pipeDraft, iCheckint, iCheckint2, r5, r6));
                    }
                }
                return LuaValue.NIL;
            }
        });
        luaValue.set("buildPipe", new VarArgFunction() { // from class: info.flowersoft.theotown.scripting.libraries.BuilderLibrary.13
            @Override // vm2.lib.VarArgFunction, vm2.lib.LibFunction, vm2.LuaValue
            public Varargs invoke(Varargs varargs) {
                PipeDraft pipeDraft = (PipeDraft) BuilderLibrary.this.resolveDraft(varargs.arg1(), PipeDraft.class);
                if (pipeDraft != null) {
                    int iCheckint = varargs.checkint(2);
                    int iCheckint2 = varargs.checkint(3);
                    int iOptint = varargs.optint(4, iCheckint);
                    int iOptint2 = varargs.optint(5, iCheckint2);
                    if (BuilderLibrary.this.modifier.isBuildable(pipeDraft, iCheckint, iCheckint2, iOptint, iOptint2)) {
                        BuilderLibrary.this.modifier.build(pipeDraft, iCheckint, iCheckint2, iOptint, iOptint2);
                        return LuaValue.TRUE;
                    }
                }
                return LuaValue.FALSE;
            }
        });
        luaValue.set("removePipe", new TwoArgFunction() { // from class: info.flowersoft.theotown.scripting.libraries.BuilderLibrary.14
            @Override // vm2.lib.TwoArgFunction, vm2.lib.LibFunction, vm2.LuaValue
            public LuaValue call(LuaValue luaValue3, LuaValue luaValue4) {
                Pipe pipe;
                int iCheckint = luaValue3.checkint();
                int iCheckint2 = luaValue4.checkint();
                if (BuilderLibrary.this.modifier.isValid(iCheckint, iCheckint2) && (pipe = BuilderLibrary.this.tiles.getPipe(iCheckint, iCheckint2)) != null) {
                    BuilderLibrary.this.modifier.remove(pipe, iCheckint, iCheckint2);
                    return LuaValue.TRUE;
                }
                return LuaValue.FALSE;
            }
        });
        luaValue.set("isWireBuildable", new VarArgFunction() { // from class: info.flowersoft.theotown.scripting.libraries.BuilderLibrary.15
            @Override // vm2.lib.VarArgFunction, vm2.lib.LibFunction, vm2.LuaValue
            public Varargs invoke(Varargs varargs) {
                WireDraft wireDraft = (WireDraft) BuilderLibrary.this.resolveDraft(varargs.arg1(), WireDraft.class);
                if (wireDraft != null) {
                    int iCheckint = varargs.checkint(2);
                    int iCheckint2 = varargs.checkint(3);
                    return LuaValue.valueOf(BuilderLibrary.this.modifier.isBuildable(wireDraft, iCheckint, iCheckint2, varargs.optint(4, iCheckint), varargs.optint(5, iCheckint2)));
                }
                return LuaValue.FALSE;
            }
        });
        luaValue.set("getWirePrice", new VarArgFunction() { // from class: info.flowersoft.theotown.scripting.libraries.BuilderLibrary.16
            @Override // vm2.lib.VarArgFunction, vm2.lib.LibFunction, vm2.LuaValue
            public Varargs invoke(Varargs varargs) {
                WireDraft wireDraft = (WireDraft) BuilderLibrary.this.resolveDraft(varargs.arg1(), WireDraft.class);
                if (wireDraft != null) {
                    int iCheckint = varargs.checkint(2);
                    int iCheckint2 = varargs.checkint(3);
                    if (BuilderLibrary.this.modifier.isBuildable(wireDraft, iCheckint, iCheckint2, varargs.optint(4, iCheckint), varargs.optint(5, iCheckint2))) {
                        return LuaValue.valueOf(BuilderLibrary.this.modifier.getPrice(wireDraft, iCheckint, iCheckint2, r5, r6));
                    }
                }
                return LuaValue.NIL;
            }
        });
        luaValue.set("buildWire", new VarArgFunction() { // from class: info.flowersoft.theotown.scripting.libraries.BuilderLibrary.17
            @Override // vm2.lib.VarArgFunction, vm2.lib.LibFunction, vm2.LuaValue
            public Varargs invoke(Varargs varargs) {
                WireDraft wireDraft = (WireDraft) BuilderLibrary.this.resolveDraft(varargs.arg1(), WireDraft.class);
                if (wireDraft != null) {
                    int iCheckint = varargs.checkint(2);
                    int iCheckint2 = varargs.checkint(3);
                    int iOptint = varargs.optint(4, iCheckint);
                    int iOptint2 = varargs.optint(5, iCheckint2);
                    if (BuilderLibrary.this.modifier.isBuildable(wireDraft, iCheckint, iCheckint2, iOptint, iOptint2)) {
                        BuilderLibrary.this.modifier.build(wireDraft, iCheckint, iCheckint2, iOptint, iOptint2);
                        return LuaValue.TRUE;
                    }
                }
                return LuaValue.FALSE;
            }
        });
        luaValue.set("removeWire", new ThreeArgFunction() { // from class: info.flowersoft.theotown.scripting.libraries.BuilderLibrary.18
            @Override // vm2.lib.ThreeArgFunction, vm2.lib.LibFunction, vm2.LuaValue
            public LuaValue call(LuaValue luaValue3, LuaValue luaValue4, LuaValue luaValue5) {
                int iCheckint = luaValue3.checkint();
                int iCheckint2 = luaValue4.checkint();
                if (BuilderLibrary.this.modifier.isValid(iCheckint, iCheckint2)) {
                    if (luaValue5.isnil()) {
                        for (int i = 1; i >= -1; i--) {
                            Wire wire = BuilderLibrary.this.tiles.getWire(iCheckint, iCheckint2, i);
                            if (wire != null) {
                                BuilderLibrary.this.modifier.remove(wire, iCheckint, iCheckint2);
                                return LuaValue.TRUE;
                            }
                        }
                    } else {
                        Wire wire2 = BuilderLibrary.this.tiles.getWire(iCheckint, iCheckint2, luaValue5.checkint());
                        if (wire2 != null) {
                            BuilderLibrary.this.modifier.remove(wire2, iCheckint, iCheckint2);
                            return LuaValue.TRUE;
                        }
                    }
                }
                return LuaValue.FALSE;
            }
        });
        luaValue.set("isTreeBuildable", new VarArgFunction() { // from class: info.flowersoft.theotown.scripting.libraries.BuilderLibrary.19
            @Override // vm2.lib.VarArgFunction, vm2.lib.LibFunction, vm2.LuaValue
            public Varargs invoke(Varargs varargs) {
                return LuaValue.valueOf(BuilderLibrary.this.modifier.isBuildable((TreeDraft) BuilderLibrary.this.resolveDraft(varargs.arg(1), TreeDraft.class), varargs.checkint(2), varargs.checkint(3)));
            }
        });
        luaValue.set("getTreePrice", new VarArgFunction() { // from class: info.flowersoft.theotown.scripting.libraries.BuilderLibrary.20
            @Override // vm2.lib.VarArgFunction, vm2.lib.LibFunction, vm2.LuaValue
            public Varargs invoke(Varargs varargs) {
                if (((TreeDraft) BuilderLibrary.this.resolveDraft(varargs.arg(1), TreeDraft.class)) != null) {
                    return LuaValue.valueOf(BuilderLibrary.this.budget.getPrice(r3));
                }
                return LuaValue.NIL;
            }
        });
        luaValue.set("buildTree", new VarArgFunction() { // from class: info.flowersoft.theotown.scripting.libraries.BuilderLibrary.21
            @Override // vm2.lib.VarArgFunction, vm2.LuaValue
            public Varargs onInvoke(Varargs varargs) {
                TreeDraft treeDraft = (TreeDraft) BuilderLibrary.this.resolveDraft(varargs.arg(1), TreeDraft.class);
                int iCheckint = varargs.checkint(2);
                int iCheckint2 = varargs.checkint(3);
                int iOptint = varargs.optint(4, -1);
                if (BuilderLibrary.this.modifier.isBuildable(treeDraft, iCheckint, iCheckint2)) {
                    Tree treeBuild = BuilderLibrary.this.modifier.build(treeDraft, iCheckint, iCheckint2);
                    if (iOptint >= 0) {
                        treeBuild.setFrame(iOptint);
                    }
                    return LuaValue.valueOf(true);
                }
                return LuaValue.valueOf(false);
            }
        });
        luaValue.set("isRoadDecoBuildable", new VarArgFunction() { // from class: info.flowersoft.theotown.scripting.libraries.BuilderLibrary.22
            @Override // vm2.lib.VarArgFunction, vm2.lib.LibFunction, vm2.LuaValue
            public Varargs invoke(Varargs varargs) {
                RoadDecorationDraft roadDecorationDraft = (RoadDecorationDraft) BuilderLibrary.this.resolveDraft(varargs.arg(1), RoadDecorationDraft.class);
                int iCheckint = varargs.checkint(2);
                int iCheckint2 = varargs.checkint(3);
                int iOptint = varargs.optint(4, 0);
                if (BuilderLibrary.this.city.isValid(iCheckint, iCheckint2)) {
                    Road road = BuilderLibrary.this.tiles.getRoad(iCheckint, iCheckint2, iOptint);
                    return LuaValue.valueOf(road != null && BuilderLibrary.this.modifier.isRoadDecorationBuildable(roadDecorationDraft, road));
                }
                return LuaValue.valueOf(false);
            }
        });
        luaValue.set("getRoadDecoPrice", new VarArgFunction() { // from class: info.flowersoft.theotown.scripting.libraries.BuilderLibrary.23
            @Override // vm2.lib.VarArgFunction, vm2.lib.LibFunction, vm2.LuaValue
            public Varargs invoke(Varargs varargs) {
                RoadDecorationDraft roadDecorationDraft = (RoadDecorationDraft) BuilderLibrary.this.resolveDraft(varargs.arg(1), RoadDecorationDraft.class);
                if (roadDecorationDraft != null) {
                    return LuaValue.valueOf(roadDecorationDraft.price);
                }
                return LuaValue.NIL;
            }
        });
        luaValue.set("buildRoadDeco", new VarArgFunction() { // from class: info.flowersoft.theotown.scripting.libraries.BuilderLibrary.24
            @Override // vm2.lib.VarArgFunction, vm2.lib.LibFunction, vm2.LuaValue
            public Varargs invoke(Varargs varargs) {
                Road road;
                RoadDecorationDraft roadDecorationDraft = (RoadDecorationDraft) BuilderLibrary.this.resolveDraft(varargs.arg(1), RoadDecorationDraft.class);
                int iCheckint = varargs.checkint(2);
                int iCheckint2 = varargs.checkint(3);
                int iOptint = varargs.optint(4, 0);
                int iOptint2 = varargs.optint(5, 0) - 1;
                if (BuilderLibrary.this.city.isValid(iCheckint, iCheckint2) && (road = BuilderLibrary.this.tiles.getRoad(iCheckint, iCheckint2, iOptint)) != null) {
                    if (roadDecorationDraft != null) {
                        if (BuilderLibrary.this.modifier.isRoadDecorationBuildable(roadDecorationDraft, road)) {
                            BuilderLibrary.this.modifier.buildRoadDecoration(roadDecorationDraft, road, iOptint2, ScriptingEnvironment.getInstance().getSender(), Settings.multiRoadDecorationSupport);
                            return LuaValue.valueOf(true);
                        }
                    } else {
                        BuilderLibrary.this.modifier.removeAllRoadDecorations(iCheckint, iCheckint2, road.level, ScriptingEnvironment.getInstance().getSender());
                        return LuaValue.valueOf(true);
                    }
                }
                return LuaValue.valueOf(false);
            }
        });
        luaValue.set("removeRoadDeco", new VarArgFunction() { // from class: info.flowersoft.theotown.scripting.libraries.BuilderLibrary.25
            @Override // vm2.lib.VarArgFunction, vm2.lib.LibFunction, vm2.LuaValue
            public Varargs invoke(Varargs varargs) {
                Road road;
                int iCheckint = varargs.checkint(1);
                int iCheckint2 = varargs.checkint(2);
                int iOptint = varargs.optint(3, 0);
                int iOptint2 = varargs.optint(4, 0) - 1;
                if (BuilderLibrary.this.city.isValid(iCheckint, iCheckint2) && (road = BuilderLibrary.this.tiles.getRoad(iCheckint, iCheckint2, iOptint)) != null && road.countDecorations() > 0) {
                    if (iOptint2 == -1) {
                        BuilderLibrary.this.modifier.removeAllRoadDecorations(iCheckint, iCheckint2, road.level, ScriptingEnvironment.getInstance().getSender());
                    } else if (iOptint2 >= 0 && iOptint2 < road.countDecorations()) {
                        BuilderLibrary.this.modifier.removeRoadDecoration(iCheckint, iCheckint2, road.level, iOptint2, ScriptingEnvironment.getInstance().getSender());
                    }
                    return LuaValue.TRUE;
                }
                return LuaValue.FALSE;
            }
        });
        luaValue.set("isGroundBuildable", new ThreeArgFunction() { // from class: info.flowersoft.theotown.scripting.libraries.BuilderLibrary.26
            @Override // vm2.lib.ThreeArgFunction, vm2.lib.LibFunction, vm2.LuaValue
            public LuaValue call(LuaValue luaValue3, LuaValue luaValue4, LuaValue luaValue5) {
                GroundDraft groundDraft = (GroundDraft) BuilderLibrary.this.resolveDraft(luaValue3, GroundDraft.class);
                int iCheckint = luaValue4.checkint();
                int iCheckint2 = luaValue5.checkint();
                if (!BuilderLibrary.this.city.isValid(iCheckint, iCheckint2)) {
                    return LuaValue.FALSE;
                }
                boolean zCheckboolean = groundDraft != null ? groundDraft.isWater : luaValue3.checkboolean();
                Ground ground = BuilderLibrary.this.tiles.getGround(iCheckint, iCheckint2);
                if (groundDraft == null || groundDraft.level == 0) {
                    return LuaValue.valueOf(BuilderLibrary.this.modifier.isTerrainBuildable(zCheckboolean, iCheckint, iCheckint2) || ground.isWater() == zCheckboolean);
                }
                return LuaValue.valueOf(ground.isWater() == groundDraft.isWater);
            }
        });
        luaValue.set("getGroundPrice", new ThreeArgFunction() { // from class: info.flowersoft.theotown.scripting.libraries.BuilderLibrary.27
            @Override // vm2.lib.ThreeArgFunction, vm2.lib.LibFunction, vm2.LuaValue
            public LuaValue call(LuaValue luaValue3, LuaValue luaValue4, LuaValue luaValue5) {
                GroundDraft groundDraft = (GroundDraft) BuilderLibrary.this.resolveDraft(luaValue3, GroundDraft.class);
                int iCheckint = luaValue4.checkint();
                int iCheckint2 = luaValue5.checkint();
                if (!BuilderLibrary.this.city.isValid(iCheckint, iCheckint2)) {
                    return LuaValue.valueOf(0);
                }
                boolean zCheckboolean = groundDraft != null ? groundDraft.isWater : luaValue3.checkboolean();
                Ground ground = BuilderLibrary.this.tiles.getGround(iCheckint, iCheckint2);
                if (!BuilderLibrary.this.modifier.isTerrainBuildable(zCheckboolean, iCheckint, iCheckint2) && ground.isWater() != zCheckboolean) {
                    return LuaValue.NIL;
                }
                if (groundDraft != null && groundDraft.isWater == ground.isWater()) {
                    return LuaValue.valueOf(BuilderLibrary.this.budget.getPriceForTerrain(groundDraft.isWater));
                }
                return LuaValue.valueOf(0);
            }
        });
        luaValue.set("removeGround", new ThreeArgFunction() { // from class: info.flowersoft.theotown.scripting.libraries.BuilderLibrary.28
            @Override // vm2.lib.ThreeArgFunction, vm2.lib.LibFunction, vm2.LuaValue
            public LuaValue call(LuaValue luaValue3, LuaValue luaValue4, LuaValue luaValue5) {
                int iCheckint = luaValue3.checkint();
                int iCheckint2 = luaValue4.checkint();
                if (!BuilderLibrary.this.city.isValid(iCheckint, iCheckint2)) {
                    return LuaValue.FALSE;
                }
                if (luaValue5.optint(1) == 1 && BuilderLibrary.this.tiles.getGroundDraft2(iCheckint, iCheckint2) != null) {
                    BuilderLibrary.this.tiles.setGroundDraft2(iCheckint, iCheckint2, null);
                    BuilderLibrary.this.tiles.setGroundFrame2(iCheckint, iCheckint2, 0);
                    return LuaValue.TRUE;
                }
                return LuaValue.FALSE;
            }
        });
        luaValue.set("buildGround", new ThreeArgFunction() { // from class: info.flowersoft.theotown.scripting.libraries.BuilderLibrary.29
            @Override // vm2.lib.ThreeArgFunction, vm2.lib.LibFunction, vm2.LuaValue
            public LuaValue call(LuaValue luaValue3, LuaValue luaValue4, LuaValue luaValue5) {
                GroundDraft groundDraft = (GroundDraft) BuilderLibrary.this.resolveDraft(luaValue3, GroundDraft.class);
                int iCheckint = luaValue4.checkint();
                int iCheckint2 = luaValue5.checkint();
                if (!BuilderLibrary.this.city.isValid(iCheckint, iCheckint2)) {
                    return LuaValue.FALSE;
                }
                boolean zCheckboolean = groundDraft != null ? groundDraft.isWater : luaValue3.checkboolean();
                int i = groundDraft != null ? groundDraft.level : 0;
                Ground ground = BuilderLibrary.this.tiles.getGround(iCheckint, iCheckint2);
                if (i == 0) {
                    if (BuilderLibrary.this.modifier.isTerrainBuildable(zCheckboolean, iCheckint, iCheckint2) || ground.isWater() == zCheckboolean) {
                        BuilderLibrary.this.modifier.buildTerrain(zCheckboolean, iCheckint, iCheckint2, ScriptingEnvironment.getInstance().getSender());
                    } else {
                        return LuaValue.valueOf(false);
                    }
                } else if (ground.isWater() == zCheckboolean) {
                    BuilderLibrary.this.tiles.setGroundDraft2(iCheckint, iCheckint2, groundDraft);
                } else {
                    return LuaValue.FALSE;
                }
                if (i == 0 && groundDraft != null && groundDraft.isWater == ground.isWater()) {
                    ground.setDraft(groundDraft);
                    ground.setFrame(Resources.RND.nextInt(groundDraft.frames.length));
                }
                return LuaValue.TRUE;
            }
        });
        luaValue.set("remove", new TwoArgFunction() { // from class: info.flowersoft.theotown.scripting.libraries.BuilderLibrary.30
            @Override // vm2.lib.TwoArgFunction, vm2.lib.LibFunction, vm2.LuaValue
            public LuaValue call(LuaValue luaValue3, LuaValue luaValue4) {
                BuilderLibrary.this.modifier.remove(luaValue3.checkint(), luaValue4.checkint(), ScriptingEnvironment.getInstance().getSender());
                return LuaValue.NIL;
            }
        });
        luaValue.set("buildZone", new ThreeArgFunction() { // from class: info.flowersoft.theotown.scripting.libraries.BuilderLibrary.31
            @Override // vm2.lib.ThreeArgFunction, vm2.lib.LibFunction, vm2.LuaValue
            public LuaValue call(LuaValue luaValue3, LuaValue luaValue4, LuaValue luaValue5) {
                BuilderLibrary.this.modifier.markZone((ZoneDraft) BuilderLibrary.this.resolveDraft(luaValue3, ZoneDraft.class), luaValue4.checkint(), luaValue5.checkint());
                return LuaValue.NIL;
            }
        });
        luaValue.set("getZonePrice", new ThreeArgFunction() { // from class: info.flowersoft.theotown.scripting.libraries.BuilderLibrary.32
            @Override // vm2.lib.ThreeArgFunction, vm2.lib.LibFunction, vm2.LuaValue
            public LuaValue call(LuaValue luaValue3, LuaValue luaValue4, LuaValue luaValue5) {
                return LuaValue.valueOf(BuilderLibrary.this.modifier.getPrice((ZoneDraft) BuilderLibrary.this.resolveDraft(luaValue3, ZoneDraft.class), 1));
            }
        });
        luaValue.set("isFenceBuildable", new VarArgFunction() { // from class: info.flowersoft.theotown.scripting.libraries.BuilderLibrary.33
            @Override // vm2.lib.VarArgFunction, vm2.lib.LibFunction, vm2.LuaValue
            public Varargs invoke(Varargs varargs) {
                FenceDraft fenceDraft = (FenceDraft) BuilderLibrary.this.resolveDraft(varargs.arg(1), FenceDraft.class);
                int iCheckint = varargs.arg(2).checkint();
                int iCheckint2 = varargs.arg(3).checkint();
                int iCheckint3 = varargs.arg(4).checkint();
                if (fenceDraft != null && iCheckint3 >= 0 && iCheckint3 < 4 && BuilderLibrary.this.modifier.canBuildFence(fenceDraft, iCheckint, iCheckint2, iCheckint3)) {
                    return LuaValue.TRUE;
                }
                return LuaValue.FALSE;
            }
        });
        luaValue.set("buildFence", new VarArgFunction() { // from class: info.flowersoft.theotown.scripting.libraries.BuilderLibrary.34
            @Override // vm2.lib.VarArgFunction, vm2.lib.LibFunction, vm2.LuaValue
            public Varargs invoke(Varargs varargs) {
                FenceDraft fenceDraft = (FenceDraft) BuilderLibrary.this.resolveDraft(varargs.arg(1), FenceDraft.class);
                int iCheckint = varargs.arg(2).checkint();
                int iCheckint2 = varargs.arg(3).checkint();
                int iCheckint3 = varargs.arg(4).checkint();
                if (fenceDraft != null && iCheckint3 >= 0 && iCheckint3 < 4 && BuilderLibrary.this.modifier.canBuildFence(fenceDraft, iCheckint, iCheckint2, iCheckint3)) {
                    BuilderLibrary.this.modifier.buildFence(fenceDraft, iCheckint, iCheckint2, iCheckint3);
                    return LuaValue.TRUE;
                }
                return LuaValue.FALSE;
            }
        });
        luaValue.set("buildFenceAround", new VarArgFunction() { // from class: info.flowersoft.theotown.scripting.libraries.BuilderLibrary.35
            @Override // vm2.lib.VarArgFunction, vm2.lib.LibFunction, vm2.LuaValue
            public Varargs invoke(Varargs varargs) {
                FenceDraft fenceDraft = (FenceDraft) BuilderLibrary.this.resolveDraft(varargs.arg(1), FenceDraft.class);
                int iCheckint = varargs.arg(2).checkint();
                int iCheckint2 = varargs.arg(3).checkint();
                int iCheckint3 = varargs.arg(4).checkint();
                int iCheckint4 = varargs.arg(5).checkint();
                if (fenceDraft != null && iCheckint3 > 0 && iCheckint4 > 0) {
                    BuilderLibrary.this.modifier.buildFenceAround(fenceDraft, iCheckint, iCheckint2, iCheckint3, iCheckint4);
                    return LuaValue.TRUE;
                }
                return LuaValue.FALSE;
            }
        });
        luaValue.set("removeFence", new VarArgFunction() { // from class: info.flowersoft.theotown.scripting.libraries.BuilderLibrary.36
            @Override // vm2.lib.VarArgFunction, vm2.lib.LibFunction, vm2.LuaValue
            public Varargs invoke(Varargs varargs) {
                int iCheckint = varargs.arg(1).checkint();
                int iCheckint2 = varargs.arg(2).checkint();
                int iOptint = varargs.arg(3).optint(-1);
                if (iOptint >= 0 || !BuilderLibrary.this.modifier.hasFence(iCheckint, iCheckint2)) {
                    if (iOptint >= 0 && iOptint < 4 && BuilderLibrary.this.modifier.getFence(iCheckint, iCheckint2, iOptint) != null) {
                        BuilderLibrary.this.modifier.removeFence(iCheckint, iCheckint2, iOptint);
                        return LuaValue.TRUE;
                    }
                    return LuaValue.FALSE;
                }
                BuilderLibrary.this.modifier.removeFences(iCheckint, iCheckint2);
                return LuaValue.TRUE;
            }
        });
        luaValue.set("removeFenceWithin", new VarArgFunction() { // from class: info.flowersoft.theotown.scripting.libraries.BuilderLibrary.37
            @Override // vm2.lib.VarArgFunction, vm2.lib.LibFunction, vm2.LuaValue
            public Varargs invoke(Varargs varargs) {
                int iCheckint = varargs.arg(1).checkint();
                int iCheckint2 = varargs.arg(2).checkint();
                int iCheckint3 = varargs.arg(3).checkint();
                int iCheckint4 = varargs.arg(4).checkint();
                if (iCheckint3 > 0 && iCheckint4 > 0 && BuilderLibrary.this.modifier.containsFenceWithin(iCheckint, iCheckint2, iCheckint3, iCheckint4)) {
                    BuilderLibrary.this.modifier.removeFenceWithin(iCheckint, iCheckint2, iCheckint3, iCheckint4);
                    return LuaValue.TRUE;
                }
                return LuaValue.FALSE;
            }
        });
        luaValue.set("setTerrainHeight", new VarArgFunction() { // from class: info.flowersoft.theotown.scripting.libraries.BuilderLibrary.38
            @Override // vm2.lib.VarArgFunction, vm2.lib.LibFunction, vm2.LuaValue
            public Varargs invoke(Varargs varargs) {
                int iCheckint = varargs.arg(1).checkint();
                int iCheckint2 = varargs.arg(2).checkint();
                byte bCheckint = (byte) varargs.arg(3).checkint();
                varargs.arg(4).optboolean(false);
                if (arg(4).isnil() || arg(4).isboolean()) {
                    BuilderLibrary.this.modifier.setTerrainHeight(iCheckint, iCheckint2, bCheckint, ScriptingEnvironment.getInstance().getSender());
                } else {
                    BuilderLibrary.this.modifier.setTerrainHeight(iCheckint, iCheckint2, bCheckint, arg(4).checkint(), arg(5).checkint());
                }
                return LuaValue.NIL;
            }
        });
        luaValue.set("getTerrainHeightPrice", new ThreeArgFunction() { // from class: info.flowersoft.theotown.scripting.libraries.BuilderLibrary.39
            @Override // vm2.lib.ThreeArgFunction, vm2.lib.LibFunction, vm2.LuaValue
            public LuaValue call(LuaValue luaValue3, LuaValue luaValue4, LuaValue luaValue5) {
                int iCheckint = luaValue3.checkint();
                int iCheckint2 = luaValue4.checkint();
                int iCheckint3 = luaValue5.checkint();
                BuilderLibrary.this.terrainBuilder.clear();
                BuilderLibrary.this.terrainBuilder.addTarget(iCheckint, iCheckint2, iCheckint3);
                BuilderLibrary.this.terrainBuilder.calculate();
                long movedEarth = BuilderLibrary.this.terrainBuilder.getMovedEarth() * 100;
                BuilderLibrary.this.terrainBuilder.clear();
                return LuaValue.valueOf(movedEarth);
            }
        });
        luaValue.set("isTerrainHeightBuildable", new ThreeArgFunction() { // from class: info.flowersoft.theotown.scripting.libraries.BuilderLibrary.40
            @Override // vm2.lib.ThreeArgFunction, vm2.lib.LibFunction, vm2.LuaValue
            public LuaValue call(LuaValue luaValue3, LuaValue luaValue4, LuaValue luaValue5) {
                int iCheckint = luaValue3.checkint();
                int iCheckint2 = luaValue4.checkint();
                int iCheckint3 = luaValue5.checkint();
                BuilderLibrary.this.terrainBuilder.clear();
                BuilderLibrary.this.terrainBuilder.addTarget(iCheckint, iCheckint2, iCheckint3);
                BuilderLibrary.this.terrainBuilder.calculate();
                boolean zIsBuildable = BuilderLibrary.this.terrainBuilder.isBuildable();
                BuilderLibrary.this.terrainBuilder.clear();
                return LuaValue.valueOf(zIsBuildable);
            }
        });
        luaValue.set("isBusStopBuildable", new VarArgFunction() { // from class: info.flowersoft.theotown.scripting.libraries.BuilderLibrary.41
            @Override // vm2.lib.VarArgFunction, vm2.lib.LibFunction, vm2.LuaValue
            public Varargs invoke(Varargs varargs) {
                return LuaValue.valueOf(BuilderLibrary.this.modifier.isBuildable((BusStopDraft) BuilderLibrary.this.resolveDraft(varargs.arg(1), BusStopDraft.class), varargs.checkint(2), varargs.checkint(3), varargs.optint(4, 0)));
            }
        });
        luaValue.set("getBusStopPrice", new VarArgFunction() { // from class: info.flowersoft.theotown.scripting.libraries.BuilderLibrary.42
            @Override // vm2.lib.VarArgFunction, vm2.lib.LibFunction, vm2.LuaValue
            public Varargs invoke(Varargs varargs) {
                if (((BusStopDraft) BuilderLibrary.this.resolveDraft(varargs.arg(1), BusStopDraft.class)) != null) {
                    return LuaValue.valueOf(BuilderLibrary.this.budget.getPrice(r3));
                }
                return LuaValue.NIL;
            }
        });
        luaValue.set("buildBusStop", new VarArgFunction() { // from class: info.flowersoft.theotown.scripting.libraries.BuilderLibrary.43
            @Override // vm2.lib.VarArgFunction, vm2.lib.LibFunction, vm2.LuaValue
            public Varargs invoke(Varargs varargs) {
                BusStopDraft busStopDraft = (BusStopDraft) BuilderLibrary.this.resolveDraft(varargs.arg(1), BusStopDraft.class);
                int iCheckint = varargs.checkint(2);
                int iCheckint2 = varargs.checkint(3);
                int iOptint = varargs.optint(4, 0);
                if (busStopDraft != null && BuilderLibrary.this.modifier.isBuildable(busStopDraft, iCheckint, iCheckint2, iOptint)) {
                    BuilderLibrary.this.modifier.build(busStopDraft, iCheckint, iCheckint2, iOptint);
                    return LuaValue.TRUE;
                }
                return LuaValue.FALSE;
            }
        });
        luaValue.set("removeBusStop", new VarArgFunction() { // from class: info.flowersoft.theotown.scripting.libraries.BuilderLibrary.44
            @Override // vm2.lib.VarArgFunction, vm2.lib.LibFunction, vm2.LuaValue
            public Varargs invoke(Varargs varargs) {
                Road road;
                BusStop busStop;
                int iCheckint = varargs.checkint(1);
                int iCheckint2 = varargs.checkint(2);
                int iOptint = varargs.optint(3, 0);
                if (BuilderLibrary.this.city.isValid(iCheckint, iCheckint2) && (road = BuilderLibrary.this.tiles.getRoad(iCheckint, iCheckint2, iOptint)) != null && (busStop = road.getBusStop()) != null) {
                    road.setBusStop(null);
                    BuilderLibrary.this.modifier.remove(busStop, iCheckint, iCheckint2);
                    return LuaValue.TRUE;
                }
                return LuaValue.FALSE;
            }
        });
    }

    public final RoadBuilder prepareRoadBuilder(Varargs varargs) {
        RoadDraft roadDraft = (RoadDraft) resolveDraft(varargs.arg(1), RoadDraft.class);
        int iCheckint = varargs.checkint(2);
        int iCheckint2 = varargs.checkint(3);
        int iCheckint3 = varargs.checkint(4);
        int iCheckint4 = varargs.checkint(5);
        int iOptint = varargs.optint(6, 0);
        int iOptint2 = varargs.optint(7, 0);
        boolean zOptboolean = varargs.optboolean(8, false);
        RoadBuilder roadBuilder = this.modifier.getRoadBuilder();
        roadBuilder.setDraft(roadDraft, ScriptingEnvironment.getInstance().getSender());
        roadBuilder.setLine(iCheckint, iCheckint2, iCheckint3, iCheckint4);
        roadBuilder.setRelativeLevelStartTarget(iOptint, iOptint2, false);
        if (zOptboolean) {
            roadBuilder.setInnerLevels(1, iOptint + 1);
        }
        return roadBuilder;
    }

    /* JADX INFO: Access modifiers changed from: private */
    public <T extends Draft> T resolveDraft(LuaValue luaValue, Class<T> cls) {
        if (luaValue.istable()) {
            return (T) CoerceLuaToJava.coerce(luaValue.get(SimpleLuaLibrary.origKey), cls);
        }
        if (luaValue.isstring()) {
            return (T) Drafts.get(luaValue.checkjstring(), cls);
        }
        if (luaValue.isuserdata(cls)) {
            return (T) CoerceLuaToJava.coerce(luaValue, cls);
        }
        return null;
    }
}
