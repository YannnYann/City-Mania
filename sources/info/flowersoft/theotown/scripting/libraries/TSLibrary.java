package info.flowersoft.theotown.scripting.libraries;

import com.badlogic.gdx.Gdx;
import com.ironsource.C3522b4;
import com.ironsource.C3670j8;
import info.flowersoft.theotown.city.City;
import info.flowersoft.theotown.city.objects.Building;
import info.flowersoft.theotown.city.objects.BusStop;
import info.flowersoft.theotown.city.objects.Road;
import info.flowersoft.theotown.components.DefaultTSComponent;
import info.flowersoft.theotown.components.transportationsystem.TSStation;
import info.flowersoft.theotown.components.transportationsystem.TSSystem;
import info.flowersoft.theotown.components.transportationsystem.TSSystemConfig;
import info.flowersoft.theotown.components.transportationsystem.TSSystemDraft;
import info.flowersoft.theotown.draft.BuildingDraft;
import info.flowersoft.theotown.draft.BusStopDraft;
import info.flowersoft.theotown.draft.CarDraft;
import info.flowersoft.theotown.draft.Draft;
import info.flowersoft.theotown.draft.RoadDraft;
import info.flowersoft.theotown.resources.Drafts;
import info.flowersoft.theotown.scripting.ManagedLibrary;
import info.flowersoft.theotown.scripting.Script;
import info.flowersoft.theotown.scripting.ScriptMethod;
import info.flowersoft.theotown.scripting.ScriptingEnvironment;
import info.flowersoft.theotown.scripting.SimpleLuaLibrary;
import info.flowersoft.theotown.scripting.libraries.TSLibrary;
import info.flowersoft.theotown.stages.CityInfoStage;
import info.flowersoft.theotown.stages.TSMapStage;
import info.flowersoft.theotown.stages.cityinfo.TSCityInfo;
import info.flowersoft.theotown.tools.TSRouteTool;
import info.flowersoft.theotown.util.Hashing;
import info.flowersoft.theotown.util.PackedInt2;
import info.flowersoft.theotown.util.SortedList;
import info.flowersoft.theotown.util.TileSet;
import io.blueflower.stapel2d.drawing.Color;
import io.blueflower.stapel2d.drawing.Colors;
import io.blueflower.stapel2d.gamestack.Stage;
import io.blueflower.stapel2d.gamestack.Stapel2DGameContext;
import io.blueflower.stapel2d.util.IntList;
import io.blueflower.stapel2d.util.Setter;
import java.util.ArrayList;
import java.util.Collections;
import java.util.Comparator;
import java.util.Iterator;
import java.util.List;
import vm2.Globals;
import vm2.LuaFunction;
import vm2.LuaTable;
import vm2.LuaValue;
import vm2.Varargs;
import vm2.lib.OneArgFunction;
import vm2.lib.ThreeArgFunction;
import vm2.lib.VarArgFunction;
import vm2.lib.ZeroArgFunction;
import vm2.lib.jse.CoerceJavaToLua;
import vm2.lib.jse.CoerceLuaToJava;
import vm2.lib.jse.JavaClass;

/* JADX INFO: loaded from: classes4.dex */
public class TSLibrary extends ManagedLibrary implements SimpleLuaLibrary.LibraryInjector {
    public City city;
    public DefaultTSComponent component;
    public Stapel2DGameContext context;
    public boolean finalized;
    public Setter<Stage> stageVisitor;

    public interface StationFunctionImpl {
        Varargs call(TSStation tSStation, Varargs varargs);
    }

    public interface TSFunctionImpl {
        Varargs call(TSSystem tSSystem, Varargs varargs);
    }

    public TSLibrary() {
        super("libs/TransportationSystem.lua");
    }

    public void enterCity(City city, Stapel2DGameContext stapel2DGameContext, Setter<Stage> setter) {
        this.finalized = true;
        this.city = city;
        this.context = stapel2DGameContext;
        this.stageVisitor = setter;
        this.component = (DefaultTSComponent) city.getComponent(22);
        int i = 0;
        while (true) {
            List<TSSystemDraft> list = Drafts.TS_DRAFTS;
            if (i < list.size()) {
                list.get(i).onEnterCity();
                i++;
            } else {
                this.component.prepareTSSystems();
                return;
            }
        }
    }

    public void leaveCity() {
        int i = 0;
        while (true) {
            List<TSSystemDraft> list = Drafts.TS_DRAFTS;
            if (i < list.size()) {
                list.get(i).onLeaveCity();
                i++;
            } else {
                this.component = null;
                this.city = null;
                this.context = null;
                this.stageVisitor = null;
                return;
            }
        }
    }

    public DefaultTSComponent getCityComponent() {
        return this.component;
    }

    /* JADX INFO: renamed from: info.flowersoft.theotown.scripting.libraries.TSLibrary$1, reason: invalid class name */
    public class AnonymousClass1 extends OneArgFunction {
        public final /* synthetic */ LuaValue val$lib;

        public AnonymousClass1(LuaValue luaValue) {
            this.val$lib = luaValue;
        }

        @Override // vm2.lib.OneArgFunction, vm2.lib.LibFunction, vm2.LuaValue
        public LuaValue call(LuaValue luaValue) {
            if (TSLibrary.this.finalized) {
                throw new IllegalStateException("Too late to create ts");
            }
            String strCheckjstring = luaValue.get(C3670j8.x).checkjstring();
            LuaTable luaTableChecktable = luaValue.get("impl").checktable();
            Script currentScript = ScriptingEnvironment.getInstance().getCurrentScript();
            LuaTable luaTableOpttable = luaValue.get("stationBuildings").opttable(LuaValue.tableOf());
            LuaTable luaTableOpttable2 = luaValue.get("spawnBuildings").opttable(null);
            LuaTable luaTableOpttable3 = luaValue.get("depotBuildings").opttable(LuaValue.tableOf());
            LuaTable luaTableOpttable4 = luaValue.get("busStops").opttable(LuaValue.tableOf());
            LuaTable luaTableOpttable5 = luaValue.get("roads").opttable(LuaValue.tableOf());
            LuaTable luaTableChecktable2 = luaValue.get("script").checktable();
            ScriptMethod scriptMethodResolve = ScriptMethod.resolve(luaValue, "onEnterCity");
            ScriptMethod scriptMethodResolve2 = ScriptMethod.resolve(luaValue, "onLeaveCity");
            ScriptMethod scriptMethodResolve3 = ScriptMethod.resolve(luaValue, "onAddStation");
            ScriptMethod scriptMethodResolve4 = ScriptMethod.resolve(luaValue, "onRemoveStation");
            if (luaTableOpttable2 == null) {
                throw new IllegalStateException("Transportation system " + strCheckjstring + " lacks spawnBuildings table");
            }
            if (Drafts.TS_DRAFTS_BY_ID.containsKey(strCheckjstring)) {
                throw new IllegalStateException("Duplicate transportation system id " + strCheckjstring);
            }
            if (currentScript == null) {
                throw new IllegalStateException("Could not determine owner script of ts " + strCheckjstring);
            }
            if (currentScript.getScript() != luaTableChecktable2) {
                throw new IllegalStateException("Sus " + strCheckjstring);
            }
            Draft draft = currentScript.getDraft();
            draft.setFinal();
            CarDraft carDraft = (CarDraft) DraftLibrary.resolveDraftOpt(luaValue.get("roadFlagSrc"), CarDraft.class);
            List listResolveDraftListOpt = DraftLibrary.resolveDraftListOpt(luaValue.get("vehicles").checktable(), CarDraft.class);
            if (carDraft == null) {
                throw new IllegalStateException("Could not construct ts " + strCheckjstring + " due to invalid vehicle flag source");
            }
            if (listResolveDraftListOpt.isEmpty()) {
                throw new IllegalStateException("Could not construct ts " + strCheckjstring + " due to no cars provided");
            }
            if (!listResolveDraftListOpt.contains(carDraft)) {
                throw new IllegalStateException("Could not construct ts " + strCheckjstring + " due to flag source " + carDraft.id + " not being part of provided cars which is sus");
            }
            long j = carDraft.flags;
            if (j == 0) {
                throw new IllegalStateException("Could not construct ts " + strCheckjstring + " with effectively empty road flags");
            }
            int i = 0;
            while (i < listResolveDraftListOpt.size()) {
                long j2 = j;
                ((CarDraft) listResolveDraftListOpt.get(i)).flags |= j2;
                i++;
                j = j2;
            }
            TSSystemDraft tSSystemDraft = new TSSystemDraft(TSLibrary.this, strCheckjstring, luaTableChecktable, j, DraftLibrary.resolveDraftListOpt(luaTableOpttable, BuildingDraft.class), DraftLibrary.resolveDraftListOpt(luaTableOpttable2, BuildingDraft.class), DraftLibrary.resolveDraftListOpt(luaTableOpttable3, BuildingDraft.class), DraftLibrary.resolveDraftListOpt(luaTableOpttable4, BusStopDraft.class), DraftLibrary.resolveDraftListOpt(luaTableOpttable5, RoadDraft.class), currentScript, scriptMethodResolve, scriptMethodResolve2, scriptMethodResolve3, scriptMethodResolve4);
            if (tSSystemDraft.getSpawnBuildings().isEmpty() && tSSystemDraft.getBusStops().isEmpty()) {
                throw new IllegalStateException("TS " + strCheckjstring + " has no spawn buildings or bus stops");
            }
            LuaTable luaTableOpttable6 = luaValue.get("config").opttable(null);
            TSSystemConfig config = tSSystemDraft.getConfig();
            if (luaTableOpttable6 != null) {
                config.waiterDecay = (float) luaTableOpttable6.get("waiterDecay").optdouble(config.waiterDecay);
                config.reacherDecay = (float) luaTableOpttable6.get("reacherDecay").optdouble(config.reacherDecay);
                config.stationSearchRadius = luaTableOpttable6.get("stationSearchRadius").optint(config.stationSearchRadius);
                config.stationRadius = luaTableOpttable6.get("stationRadius").optint(config.stationRadius);
                config.stationMaxTiles = luaTableOpttable6.get("stationMaxTiles").optint(config.stationMaxTiles);
                config.passengerFactor = (float) luaTableOpttable6.get("passengerFactor").optdouble(config.passengerFactor);
                config.freightFactor = (float) luaTableOpttable6.get("freightFactor").optdouble(config.freightFactor);
                config.supportNeighborConnections = luaTableOpttable6.get("supportNeighborConnections").optboolean(config.supportNeighborConnections);
                String strOptjstring = luaTableOpttable6.get(C3522b4.i.S).optjstring("");
                if (strOptjstring != null && !strOptjstring.isEmpty()) {
                    config.color = Color.fromHexRGB(strOptjstring);
                }
            }
            if (config.color == null) {
                config.color = Color.fromRGB(Hashing.hash(strCheckjstring.hashCode()), new Color());
            }
            Iterator<BuildingDraft> it = tSSystemDraft.getSpawnBuildings().iterator();
            while (it.hasNext()) {
                it.next().carSpawners = null;
            }
            if (draft.getMetaTag("budget item") != null) {
                for (BuildingDraft buildingDraft : tSSystemDraft.getSpawnBuildings()) {
                    if (buildingDraft.budgetItem == null) {
                        buildingDraft.budgetItem = draft;
                    }
                }
                for (BuildingDraft buildingDraft2 : tSSystemDraft.getStationBuildings()) {
                    if (buildingDraft2.budgetItem == null) {
                        buildingDraft2.budgetItem = draft;
                    }
                }
                for (BuildingDraft buildingDraft3 : tSSystemDraft.getDepotBuildings()) {
                    if (buildingDraft3.budgetItem == null) {
                        buildingDraft3.budgetItem = draft;
                    }
                }
                for (RoadDraft roadDraft : tSSystemDraft.getRoads()) {
                    if (roadDraft.budgetItem == null) {
                        roadDraft.budgetItem = draft;
                    }
                }
            }
            Iterator<BuildingDraft> it2 = tSSystemDraft.getSpawnBuildings().iterator();
            while (it2.hasNext()) {
                it2.next().conductive = true;
            }
            Iterator<BuildingDraft> it3 = tSSystemDraft.getStationBuildings().iterator();
            while (it3.hasNext()) {
                it3.next().conductive = true;
            }
            Iterator<BuildingDraft> it4 = tSSystemDraft.getDepotBuildings().iterator();
            while (it4.hasNext()) {
                it4.next().conductive = true;
            }
            if (draft.ordinal == Integer.MIN_VALUE) {
                List<TSSystemDraft> list = Drafts.TS_DRAFTS;
                if (list.isEmpty()) {
                    draft.ordinal = 0;
                } else {
                    draft.ordinal = list.get(list.size() - 1).getOwnerDraft().ordinal + 1;
                }
            }
            tSSystemDraft.setLuaRepr(this.val$lib.method("_new", CoerceJavaToLua.coerce(tSSystemDraft)));
            List<TSSystemDraft> list2 = Drafts.TS_DRAFTS;
            list2.add(tSSystemDraft);
            Collections.sort(list2, new Comparator() { // from class: info.flowersoft.theotown.scripting.libraries.TSLibrary$1$$ExternalSyntheticLambda0
                @Override // java.util.Comparator
                public final int compare(Object obj, Object obj2) {
                    return TSLibrary.AnonymousClass1.$r8$lambda$qfjJ093DMg_IXvthVeEoieOrzi4((TSSystemDraft) obj, (TSSystemDraft) obj2);
                }
            });
            Drafts.TS_DRAFTS_BY_ID.put(strCheckjstring, tSSystemDraft);
            return tSSystemDraft.getLuaRepr();
        }

        public static /* synthetic */ int $r8$lambda$qfjJ093DMg_IXvthVeEoieOrzi4(TSSystemDraft tSSystemDraft, TSSystemDraft tSSystemDraft2) {
            return (int) Math.signum(tSSystemDraft.getOwnerDraft().ordinal - tSSystemDraft2.getOwnerDraft().ordinal);
        }
    }

    @Override // info.flowersoft.theotown.scripting.SimpleLuaLibrary.LibraryInjector
    public void inject(LuaValue luaValue, LuaValue luaValue2, Globals globals) {
        luaValue.set("createRaw", new AnonymousClass1(luaValue));
        luaValue.set("get", new OneArgFunction() { // from class: info.flowersoft.theotown.scripting.libraries.TSLibrary.2
            @Override // vm2.lib.OneArgFunction, vm2.lib.LibFunction, vm2.LuaValue
            public LuaValue call(LuaValue luaValue3) {
                ScriptingEnvironment.getInstance().assertPrivileged("TS.get");
                TSSystemDraft tSSystemDraft = Drafts.TS_DRAFTS_BY_ID.get(luaValue3.checkjstring());
                return tSSystemDraft != null ? tSSystemDraft.getLuaRepr() : LuaValue.NIL;
            }
        });
        luaValue.set("getAll", new ZeroArgFunction() { // from class: info.flowersoft.theotown.scripting.libraries.TSLibrary.3
            @Override // vm2.lib.ZeroArgFunction, vm2.lib.LibFunction, vm2.LuaValue
            public LuaValue call() {
                ScriptingEnvironment.getInstance().assertPrivileged("TS.getAll");
                ArrayList arrayList = new ArrayList();
                int i = 0;
                while (true) {
                    List<TSSystemDraft> list = Drafts.TS_DRAFTS;
                    if (i < list.size()) {
                        arrayList.add(list.get(i).getLuaRepr());
                        i++;
                    } else {
                        return ((ArrayLibrary) ScriptingEnvironment.getInstance().getLibrary(ArrayLibrary.class)).createArray(arrayList);
                    }
                }
            }
        });
        luaValue.set("getStorage", new OneArgFunction() { // from class: info.flowersoft.theotown.scripting.libraries.TSLibrary.4
            @Override // vm2.lib.OneArgFunction, vm2.lib.LibFunction, vm2.LuaValue
            public LuaValue call(LuaValue luaValue3) {
                TSSystemDraft tSSystemDraftResolveTSModel = TSLibrary.this.resolveTSModel(luaValue3);
                if (TSLibrary.this.component != null) {
                    return TSLibrary.this.component.getSystemObjectById(tSSystemDraftResolveTSModel.getId()).getStorage();
                }
                return LuaValue.NIL;
            }
        });
        luaValue.set("getDepotXYLs", systemFunction(new TSFunctionImpl() { // from class: info.flowersoft.theotown.scripting.libraries.TSLibrary$$ExternalSyntheticLambda0
            @Override // info.flowersoft.theotown.scripting.libraries.TSLibrary.TSFunctionImpl
            public final Varargs call(TSSystem tSSystem, Varargs varargs) {
                return TSLibrary.$r8$lambda$7GM3N2axS22kRV7yDRNaZLu73jI(this.f$0, tSSystem, varargs);
            }
        }));
        luaValue.set("isDepotBuilding", systemFunction(new TSFunctionImpl() { // from class: info.flowersoft.theotown.scripting.libraries.TSLibrary$$ExternalSyntheticLambda11
            @Override // info.flowersoft.theotown.scripting.libraries.TSLibrary.TSFunctionImpl
            public final Varargs call(TSSystem tSSystem, Varargs varargs) {
                return TSLibrary.m2200$r8$lambda$vvU43Rvl_DKvNRjID71a21k77U(this.f$0, tSSystem, varargs);
            }
        }));
        luaValue.set("editRoute", systemFunction(new TSFunctionImpl() { // from class: info.flowersoft.theotown.scripting.libraries.TSLibrary$$ExternalSyntheticLambda14
            @Override // info.flowersoft.theotown.scripting.libraries.TSLibrary.TSFunctionImpl
            public final Varargs call(TSSystem tSSystem, Varargs varargs) {
                return TSLibrary.$r8$lambda$JMQUDE1LauHSpX0m61DfBZJUCFM(this.f$0, tSSystem, varargs);
            }
        }));
        luaValue.set("setStationWarning", stationFunction(new StationFunctionImpl() { // from class: info.flowersoft.theotown.scripting.libraries.TSLibrary$$ExternalSyntheticLambda15
            @Override // info.flowersoft.theotown.scripting.libraries.TSLibrary.StationFunctionImpl
            public final Varargs call(TSStation tSStation, Varargs varargs) {
                return TSLibrary.$r8$lambda$DJDUA_X1OdO89HeOemzY31pxT2E(tSStation, varargs);
            }
        }));
        luaValue.set("getStationWarning", stationFunction(new StationFunctionImpl() { // from class: info.flowersoft.theotown.scripting.libraries.TSLibrary$$ExternalSyntheticLambda16
            @Override // info.flowersoft.theotown.scripting.libraries.TSLibrary.StationFunctionImpl
            public final Varargs call(TSStation tSStation, Varargs varargs) {
                return TSLibrary.$r8$lambda$LSVN1XnxEwzXotunnVbZpRBYLV8(tSStation, varargs);
            }
        }));
        luaValue.set("getStationIds", new OneArgFunction() { // from class: info.flowersoft.theotown.scripting.libraries.TSLibrary.5
            @Override // vm2.lib.OneArgFunction, vm2.lib.LibFunction, vm2.LuaValue
            public LuaValue call(LuaValue luaValue3) {
                TSSystemDraft tSSystemDraftResolveTSModel = TSLibrary.this.resolveTSModel(luaValue3);
                if (TSLibrary.this.component != null) {
                    return ArrayLibrary.createRawTable(TSLibrary.this.component.getSystemObjectById(tSSystemDraftResolveTSModel.getId()).getStationIds(null));
                }
                return LuaValue.NIL;
            }
        });
        luaValue.set("stationContainsTile", stationFunction(new StationFunctionImpl() { // from class: info.flowersoft.theotown.scripting.libraries.TSLibrary$$ExternalSyntheticLambda17
            @Override // info.flowersoft.theotown.scripting.libraries.TSLibrary.StationFunctionImpl
            public final Varargs call(TSStation tSStation, Varargs varargs) {
                return LuaValue.valueOf(tSStation.getTiles().contains(varargs.checkint(1), varargs.checkint(2)));
            }
        }));
        luaValue.set("getStationTiles", stationFunction(new StationFunctionImpl() { // from class: info.flowersoft.theotown.scripting.libraries.TSLibrary$$ExternalSyntheticLambda18
            @Override // info.flowersoft.theotown.scripting.libraries.TSLibrary.StationFunctionImpl
            public final Varargs call(TSStation tSStation, Varargs varargs) {
                return TSLibrary.$r8$lambda$oFfx7Bw9DaCyI862U2Fxde4baEc(tSStation, varargs);
            }
        }));
        luaValue.set("getStationBounds", stationFunction(new StationFunctionImpl() { // from class: info.flowersoft.theotown.scripting.libraries.TSLibrary$$ExternalSyntheticLambda19
            @Override // info.flowersoft.theotown.scripting.libraries.TSLibrary.StationFunctionImpl
            public final Varargs call(TSStation tSStation, Varargs varargs) {
                return TSLibrary.$r8$lambda$_x8rlAZtkm0z78PrU_MZxyHbKuE(tSStation, varargs);
            }
        }));
        luaValue.set("getStationName", stationFunction(new StationFunctionImpl() { // from class: info.flowersoft.theotown.scripting.libraries.TSLibrary$$ExternalSyntheticLambda20
            @Override // info.flowersoft.theotown.scripting.libraries.TSLibrary.StationFunctionImpl
            public final Varargs call(TSStation tSStation, Varargs varargs) {
                return LuaValue.valueOf(tSStation.getName());
            }
        }));
        luaValue.set("getStationNameOrUnnamed", stationFunction(new StationFunctionImpl() { // from class: info.flowersoft.theotown.scripting.libraries.TSLibrary$$ExternalSyntheticLambda21
            @Override // info.flowersoft.theotown.scripting.libraries.TSLibrary.StationFunctionImpl
            public final Varargs call(TSStation tSStation, Varargs varargs) {
                return LuaValue.valueOf(tSStation.getNameOrUnnamed());
            }
        }));
        luaValue.set("setStationName", stationFunction(new StationFunctionImpl() { // from class: info.flowersoft.theotown.scripting.libraries.TSLibrary$$ExternalSyntheticLambda1
            @Override // info.flowersoft.theotown.scripting.libraries.TSLibrary.StationFunctionImpl
            public final Varargs call(TSStation tSStation, Varargs varargs) {
                return TSLibrary.m2194$r8$lambda$C4hSO7YhHeLGy4E2nEWp7Q1f0U(tSStation, varargs);
            }
        }));
        luaValue.set("isStationCity", stationFunction(new StationFunctionImpl() { // from class: info.flowersoft.theotown.scripting.libraries.TSLibrary$$ExternalSyntheticLambda2
            @Override // info.flowersoft.theotown.scripting.libraries.TSLibrary.StationFunctionImpl
            public final Varargs call(TSStation tSStation, Varargs varargs) {
                return LuaValue.valueOf(tSStation.isCity());
            }
        }));
        luaValue.set("getStationBuildings", stationFunction(new StationFunctionImpl() { // from class: info.flowersoft.theotown.scripting.libraries.TSLibrary$$ExternalSyntheticLambda3
            @Override // info.flowersoft.theotown.scripting.libraries.TSLibrary.StationFunctionImpl
            public final Varargs call(TSStation tSStation, Varargs varargs) {
                return TSLibrary.$r8$lambda$5Kxv1DNnuS68R3khziQqENrObGQ(this.f$0, tSStation, varargs);
            }
        }));
        luaValue.set("getSpawnBuildings", stationFunction(new StationFunctionImpl() { // from class: info.flowersoft.theotown.scripting.libraries.TSLibrary$$ExternalSyntheticLambda4
            @Override // info.flowersoft.theotown.scripting.libraries.TSLibrary.StationFunctionImpl
            public final Varargs call(TSStation tSStation, Varargs varargs) {
                return TSLibrary.$r8$lambda$Wp3VDk_97EOwxVtqfbYp_V9F5lA(this.f$0, tSStation, varargs);
            }
        }));
        luaValue.set("getSpawnXYLs", stationFunction(new StationFunctionImpl() { // from class: info.flowersoft.theotown.scripting.libraries.TSLibrary$$ExternalSyntheticLambda5
            @Override // info.flowersoft.theotown.scripting.libraries.TSLibrary.StationFunctionImpl
            public final Varargs call(TSStation tSStation, Varargs varargs) {
                return TSLibrary.m2199$r8$lambda$XjpsnAi8YNKIPsQHx4XOhguTI(this.f$0, tSStation, varargs);
            }
        }));
        luaValue.set("getBusStops", stationFunction(new StationFunctionImpl() { // from class: info.flowersoft.theotown.scripting.libraries.TSLibrary$$ExternalSyntheticLambda6
            @Override // info.flowersoft.theotown.scripting.libraries.TSLibrary.StationFunctionImpl
            public final Varargs call(TSStation tSStation, Varargs varargs) {
                return TSLibrary.$r8$lambda$BWAt21jTMKu8UxlbohMrkOBmeuA(this.f$0, tSStation, varargs);
            }
        }));
        luaValue.set("getStationStorage", stationFunction(new StationFunctionImpl() { // from class: info.flowersoft.theotown.scripting.libraries.TSLibrary$$ExternalSyntheticLambda7
            @Override // info.flowersoft.theotown.scripting.libraries.TSLibrary.StationFunctionImpl
            public final Varargs call(TSStation tSStation, Varargs varargs) {
                return tSStation.getStorage();
            }
        }));
        luaValue.set("getStationCapacity", stationFunction(new StationFunctionImpl() { // from class: info.flowersoft.theotown.scripting.libraries.TSLibrary$$ExternalSyntheticLambda8
            @Override // info.flowersoft.theotown.scripting.libraries.TSLibrary.StationFunctionImpl
            public final Varargs call(TSStation tSStation, Varargs varargs) {
                return LuaValue.valueOf(tSStation.getCapacity());
            }
        }));
        luaValue.set("getStationWaiting", stationFunction(new StationFunctionImpl() { // from class: info.flowersoft.theotown.scripting.libraries.TSLibrary$$ExternalSyntheticLambda9
            @Override // info.flowersoft.theotown.scripting.libraries.TSLibrary.StationFunctionImpl
            public final Varargs call(TSStation tSStation, Varargs varargs) {
                return LuaValue.varargsOf(LuaValue.valueOf(tSStation.getWaiting()), LuaValue.valueOf(tSStation.getAvgWaiting()), LuaValue.valueOf(tSStation.getWaitingUsage()));
            }
        }));
        luaValue.set("getStationReaching", stationFunction(new StationFunctionImpl() { // from class: info.flowersoft.theotown.scripting.libraries.TSLibrary$$ExternalSyntheticLambda10
            @Override // info.flowersoft.theotown.scripting.libraries.TSLibrary.StationFunctionImpl
            public final Varargs call(TSStation tSStation, Varargs varargs) {
                return LuaValue.varargsOf(LuaValue.valueOf(tSStation.getReaching()), LuaValue.valueOf(tSStation.getAvgReaching()), LuaValue.valueOf(tSStation.getReachingUsage()));
            }
        }));
        luaValue.set("getStationTransfer", stationFunction(new StationFunctionImpl() { // from class: info.flowersoft.theotown.scripting.libraries.TSLibrary$$ExternalSyntheticLambda12
            @Override // info.flowersoft.theotown.scripting.libraries.TSLibrary.StationFunctionImpl
            public final Varargs call(TSStation tSStation, Varargs varargs) {
                return LuaValue.varargsOf(LuaValue.valueOf(tSStation.getTransferSinceLastDay()), LuaValue.valueOf(tSStation.getAvgTransferPerDay()), LuaValue.valueOf(tSStation.getTransferUsage()));
            }
        }));
        luaValue.set("getStationAtXY", new ThreeArgFunction() { // from class: info.flowersoft.theotown.scripting.libraries.TSLibrary.6
            @Override // vm2.lib.ThreeArgFunction, vm2.lib.LibFunction, vm2.LuaValue
            public LuaValue call(LuaValue luaValue3, LuaValue luaValue4, LuaValue luaValue5) {
                TSStation stationByXYLenient;
                TSLibrary tSLibrary = TSLibrary.this;
                TSSystem tSSystemResolveTS = tSLibrary.resolveTS(tSLibrary.resolveTSModel(luaValue3));
                if (tSSystemResolveTS != null && (stationByXYLenient = tSSystemResolveTS.getStationByXYLenient(luaValue4.optint(-1), luaValue5.optint(-1))) != null) {
                    return LuaValue.valueOf(stationByXYLenient.getId());
                }
                return LuaValue.NIL;
            }
        });
        luaValue.set("meetStation", stationFunction(new StationFunctionImpl() { // from class: info.flowersoft.theotown.scripting.libraries.TSLibrary$$ExternalSyntheticLambda13
            @Override // info.flowersoft.theotown.scripting.libraries.TSLibrary.StationFunctionImpl
            public final Varargs call(TSStation tSStation, Varargs varargs) {
                return TSLibrary.m2196$r8$lambda$Il5IIZ0k7oeZFksPVQPePQB8qA(tSStation, varargs);
            }
        }));
        luaValue.set("showMapStage", new OneArgFunction() { // from class: info.flowersoft.theotown.scripting.libraries.TSLibrary.7
            @Override // vm2.lib.OneArgFunction, vm2.lib.LibFunction, vm2.LuaValue
            public LuaValue call(LuaValue luaValue3) {
                TSLibrary tSLibrary = TSLibrary.this;
                TSLibrary.this.stageVisitor.set(new TSMapStage(TSLibrary.this.context, tSLibrary.resolveTS(tSLibrary.resolveTSModel(luaValue3)), TSLibrary.this.city));
                return LuaValue.NIL;
            }
        });
        luaValue.set("showSystems", new OneArgFunction() { // from class: info.flowersoft.theotown.scripting.libraries.TSLibrary.8
            @Override // vm2.lib.OneArgFunction, vm2.lib.LibFunction, vm2.LuaValue
            public LuaValue call(LuaValue luaValue3) {
                CityInfoStage cityInfoStage = new CityInfoStage(TSLibrary.this.city, TSLibrary.this.context);
                cityInfoStage.setOwnBackgroundCity(TSLibrary.this.city);
                cityInfoStage.selectCityInfo(new TSCityInfo());
                TSLibrary.this.stageVisitor.set(cityInfoStage);
                return LuaValue.NIL;
            }
        });
        luaValue.method("_init", JavaClass.forClass(Gdx.class));
    }

    public static /* synthetic */ Varargs $r8$lambda$7GM3N2axS22kRV7yDRNaZLu73jI(TSLibrary tSLibrary, TSSystem tSSystem, Varargs varargs) {
        tSLibrary.getClass();
        TSSystemDraft draft = tSSystem.getDraft();
        if (draft.getDepotBuildings().isEmpty()) {
            return LuaValue.NIL;
        }
        ArrayList arrayList = new ArrayList();
        for (int i = 0; i < draft.getDepotBuildings().size(); i++) {
            SortedList<Building> buildingsOfDraft = tSLibrary.city.getBuildings().getBuildingsOfDraft(draft.getDepotBuildings().get(i));
            for (int i2 = 0; i2 < buildingsOfDraft.size(); i2++) {
                Building building = buildingsOfDraft.get(i2);
                arrayList.add(LuaValue.valueOf(building.getX()));
                arrayList.add(LuaValue.valueOf(building.getY()));
                arrayList.add(LuaValue.ZERO);
            }
        }
        return ArrayLibrary.createRawTable(arrayList);
    }

    /* JADX INFO: renamed from: $r8$lambda$vvU43-Rvl_DKvNRjID71a21k77U, reason: not valid java name */
    public static /* synthetic */ Varargs m2200$r8$lambda$vvU43Rvl_DKvNRjID71a21k77U(TSLibrary tSLibrary, TSSystem tSSystem, Varargs varargs) {
        tSLibrary.getClass();
        int iCheckint = varargs.checkint(1);
        int iCheckint2 = varargs.checkint(2);
        if (!tSLibrary.city.isValid(iCheckint, iCheckint2)) {
            return LuaValue.NIL;
        }
        Building building = tSLibrary.city.getTiles().getBuilding(iCheckint, iCheckint2);
        if (building == null) {
            return LuaValue.NIL;
        }
        return LuaValue.valueOf(tSSystem.getDraft().isDepotBuilding(building.getDraft()));
    }

    public static /* synthetic */ Varargs $r8$lambda$JMQUDE1LauHSpX0m61DfBZJUCFM(final TSLibrary tSLibrary, TSSystem tSSystem, Varargs varargs) {
        tSLibrary.getClass();
        final Script currentScript = ScriptingEnvironment.getInstance().getCurrentScript();
        TSRouteTool.Route route = tSLibrary.getRoute(varargs.arg(1));
        LuaTable luaTableChecktable = varargs.arg(2).checktable();
        final LuaFunction luaFunctionOptfunction = varargs.arg(3).optfunction(null);
        final LuaFunction luaFunctionOptfunction2 = varargs.arg(4).optfunction(null);
        int iOptint = varargs.arg(5).optint(0);
        int length = luaTableChecktable.length();
        ArrayList arrayList = new ArrayList(length);
        for (int i = 1; i <= length; i++) {
            arrayList.add(tSLibrary.getRoute(luaTableChecktable.rawget(LuaValue.valueOf(i))));
        }
        Setter setter = luaFunctionOptfunction == null ? null : new Setter() { // from class: info.flowersoft.theotown.scripting.libraries.TSLibrary$$ExternalSyntheticLambda22
            @Override // io.blueflower.stapel2d.util.Setter
            public final void set(Object obj) {
                TSLibrary.m2198$r8$lambda$JxglCVSwZdlFUV8xHBTTlcNcgE(luaFunctionOptfunction, currentScript, (IntList) obj);
            }
        };
        Setter setter2 = luaFunctionOptfunction2 != null ? new Setter() { // from class: info.flowersoft.theotown.scripting.libraries.TSLibrary$$ExternalSyntheticLambda23
            @Override // io.blueflower.stapel2d.util.Setter
            public final void set(Object obj) {
                TSLibrary.$r8$lambda$PtPfknLhc7zY3EzLhJnnxcsYBjg(this.f$0, luaFunctionOptfunction2, currentScript, (Integer) obj);
            }
        } : null;
        City city = tSLibrary.city;
        city.applyComponent(new TSRouteTool(city, iOptint, tSSystem, route, arrayList, setter, setter2));
        return LuaValue.NIL;
    }

    /* JADX INFO: renamed from: $r8$lambda$JxglCVSwZdlF-UV8xHBTTlcNcgE, reason: not valid java name */
    public static /* synthetic */ void m2198$r8$lambda$JxglCVSwZdlFUV8xHBTTlcNcgE(final LuaFunction luaFunction, Script script, IntList intList) {
        final LuaTable luaTableCreateArray = ((ArrayLibrary) ScriptingEnvironment.getInstance().getLibrary(ArrayLibrary.class)).createArray(intList);
        ScriptingEnvironment.getInstance().runTaskNow(new Runnable() { // from class: info.flowersoft.theotown.scripting.libraries.TSLibrary$$ExternalSyntheticLambda24
            @Override // java.lang.Runnable
            public final void run() {
                luaFunction.call(luaTableCreateArray);
            }
        }, script);
    }

    public static /* synthetic */ void $r8$lambda$PtPfknLhc7zY3EzLhJnnxcsYBjg(final TSLibrary tSLibrary, final LuaFunction luaFunction, Script script, final Integer num) {
        tSLibrary.getClass();
        ScriptingEnvironment.getInstance().runTaskNow(new Runnable() { // from class: info.flowersoft.theotown.scripting.libraries.TSLibrary$$ExternalSyntheticLambda25
            @Override // java.lang.Runnable
            public final void run() {
                TSLibrary.$r8$lambda$EzPeNqaiaBbpjwf9rneNFvz6CL8(this.f$0, luaFunction, num);
            }
        }, script);
    }

    public static /* synthetic */ void $r8$lambda$EzPeNqaiaBbpjwf9rneNFvz6CL8(TSLibrary tSLibrary, LuaFunction luaFunction, Integer num) {
        tSLibrary.getClass();
        if (luaFunction.call(LuaValue.valueOf(PackedInt2.unpackX(num.intValue())), LuaValue.valueOf(PackedInt2.unpackY(num.intValue()))).optboolean(false)) {
            City city = tSLibrary.city;
            city.applyComponent(city.getDefaultTool());
        }
    }

    public static /* synthetic */ Varargs $r8$lambda$DJDUA_X1OdO89HeOemzY31pxT2E(TSStation tSStation, Varargs varargs) {
        tSStation.setWarningMessage(varargs.arg(1).optjstring(null));
        return LuaValue.NIL;
    }

    public static /* synthetic */ Varargs $r8$lambda$LSVN1XnxEwzXotunnVbZpRBYLV8(TSStation tSStation, Varargs varargs) {
        String warningMessage = tSStation.getWarningMessage();
        return warningMessage != null ? LuaValue.valueOf(warningMessage) : LuaValue.NIL;
    }

    public static /* synthetic */ Varargs $r8$lambda$oFfx7Bw9DaCyI862U2Fxde4baEc(TSStation tSStation, Varargs varargs) {
        TileSet tiles = tSStation.getTiles();
        IntList intList = new IntList(tiles.size() * 2);
        for (int i = 0; i < tiles.size(); i++) {
            intList.add(tiles.getX(i));
            intList.add(tiles.getY(i));
        }
        return ArrayLibrary.createRawTable(intList);
    }

    public static /* synthetic */ Varargs $r8$lambda$_x8rlAZtkm0z78PrU_MZxyHbKuE(TSStation tSStation, Varargs varargs) {
        TileSet tiles = tSStation.getTiles();
        return LuaValue.varargsOf(new LuaValue[]{LuaValue.valueOf(tiles.getMinX()), LuaValue.valueOf(tiles.getMinY()), LuaValue.valueOf(tiles.getMaxX()), LuaValue.valueOf(tiles.getMaxY()), LuaValue.valueOf(tiles.getMeanX()), LuaValue.valueOf(tiles.getMeanY())});
    }

    /* JADX INFO: renamed from: $r8$lambda$C4hSO7YhHeLGy4-E2nEWp7Q1f0U, reason: not valid java name */
    public static /* synthetic */ Varargs m2194$r8$lambda$C4hSO7YhHeLGy4E2nEWp7Q1f0U(TSStation tSStation, Varargs varargs) {
        tSStation.setName(varargs.checkjstring(1));
        return LuaValue.NIL;
    }

    public static /* synthetic */ Varargs $r8$lambda$5Kxv1DNnuS68R3khziQqENrObGQ(TSLibrary tSLibrary, TSStation tSStation, Varargs varargs) {
        tSLibrary.getClass();
        return tSLibrary.buildingsToXYList(tSStation.getStationBuildings());
    }

    public static /* synthetic */ Varargs $r8$lambda$Wp3VDk_97EOwxVtqfbYp_V9F5lA(TSLibrary tSLibrary, TSStation tSStation, Varargs varargs) {
        tSLibrary.getClass();
        return tSLibrary.buildingsToXYList(tSStation.getSpawnBuildings());
    }

    /* JADX INFO: renamed from: $r8$lambda$XjpsnAi8-YN-KIPsQHx4XOhguTI, reason: not valid java name */
    public static /* synthetic */ Varargs m2199$r8$lambda$XjpsnAi8YNKIPsQHx4XOhguTI(TSLibrary tSLibrary, TSStation tSStation, Varargs varargs) {
        tSLibrary.getClass();
        return tSLibrary.buildingsAndBusStopsToXYLList(tSStation.getSpawnBuildings(), tSStation.getBusStops(), tSStation.getRoads());
    }

    public static /* synthetic */ Varargs $r8$lambda$BWAt21jTMKu8UxlbohMrkOBmeuA(TSLibrary tSLibrary, TSStation tSStation, Varargs varargs) {
        tSLibrary.getClass();
        return tSLibrary.busStopsToXYLList(tSStation.getBusStops());
    }

    /* JADX INFO: renamed from: $r8$lambda$Il5IIZ0-k7oeZFksPVQPePQB8qA, reason: not valid java name */
    public static /* synthetic */ Varargs m2196$r8$lambda$Il5IIZ0k7oeZFksPVQPePQB8qA(TSStation tSStation, Varargs varargs) {
        int iCheckint = varargs.arg(1).checkint();
        int iCheckint2 = varargs.arg(2).checkint();
        int iDeliverPassengers = tSStation.deliverPassengers(iCheckint);
        Math.max(iCheckint - iDeliverPassengers, 0);
        int iTakePassengers = tSStation.takePassengers(Math.max(iCheckint2 - iDeliverPassengers, 0));
        return LuaValue.varargsOf(LuaValue.valueOf(iDeliverPassengers + iTakePassengers), LuaValue.valueOf(iTakePassengers));
    }

    public final TSRouteTool.Route getRoute(LuaValue luaValue) {
        if (luaValue.isnil()) {
            return null;
        }
        if (!luaValue.istable()) {
            throw new IllegalArgumentException("Expected table or nil");
        }
        String strCheckjstring = luaValue.get("name").checkjstring();
        Color colorFromHex = Color.fromHex(luaValue.get(C3522b4.i.S).checkjstring(), Colors.PURPLE, new Color());
        LuaTable luaTableChecktable = luaValue.get("stations").checktable();
        int length = luaTableChecktable.length();
        IntList intList = new IntList(length);
        for (int i = 1; i <= length; i++) {
            intList.add(luaTableChecktable.rawget(LuaValue.valueOf(i)).checkint());
        }
        return new TSRouteTool.Route(strCheckjstring, colorFromHex, intList);
    }

    public final LuaValue buildingsAndBusStopsToXYLList(List<Building> list, List<BusStop> list2, List<Road> list3) {
        ArrayList arrayList = new ArrayList((list.size() + list.size()) * 3);
        for (int i = 0; i < list.size(); i++) {
            Building building = list.get(i);
            arrayList.add(LuaValue.valueOf(building.getX()));
            arrayList.add(LuaValue.valueOf(building.getY()));
            arrayList.add(LuaValue.NIL);
        }
        for (int i2 = 0; i2 < list2.size(); i2++) {
            BusStop busStop = list2.get(i2);
            arrayList.add(LuaValue.valueOf(busStop.getX()));
            arrayList.add(LuaValue.valueOf(busStop.getY()));
            arrayList.add(LuaValue.valueOf(busStop.level));
        }
        for (int i3 = 0; i3 < list3.size(); i3++) {
            Road road = list3.get(i3);
            arrayList.add(LuaValue.valueOf(road.getX()));
            arrayList.add(LuaValue.valueOf(road.getY()));
            arrayList.add(LuaValue.valueOf(road.level));
        }
        return ArrayLibrary.createRawTable(arrayList);
    }

    public final LuaValue buildingsToXYList(List<Building> list) {
        IntList intList = new IntList(list.size() * 2);
        for (int i = 0; i < list.size(); i++) {
            Building building = list.get(i);
            intList.add(building.getX());
            intList.add(building.getY());
        }
        return ArrayLibrary.createRawTable(intList);
    }

    public final LuaValue busStopsToXYLList(List<BusStop> list) {
        IntList intList = new IntList(list.size() * 3);
        for (int i = 0; i < list.size(); i++) {
            BusStop busStop = list.get(i);
            intList.add(busStop.getX());
            intList.add(busStop.getY());
            intList.add(busStop.level);
        }
        return ArrayLibrary.createRawTable(intList);
    }

    public final VarArgFunction systemFunction(final TSFunctionImpl tSFunctionImpl) {
        return new VarArgFunction() { // from class: info.flowersoft.theotown.scripting.libraries.TSLibrary.9
            @Override // vm2.lib.VarArgFunction, vm2.lib.LibFunction, vm2.LuaValue
            public Varargs invoke(Varargs varargs) {
                TSLibrary tSLibrary = TSLibrary.this;
                TSSystem tSSystemResolveTS = tSLibrary.resolveTS(tSLibrary.resolveTSModel(varargs.arg1()));
                if (TSLibrary.this.component != null && tSSystemResolveTS != null) {
                    return tSFunctionImpl.call(tSSystemResolveTS, varargs.subargs(2));
                }
                return LuaValue.NIL;
            }
        };
    }

    public final VarArgFunction stationFunction(final StationFunctionImpl stationFunctionImpl) {
        return new VarArgFunction() { // from class: info.flowersoft.theotown.scripting.libraries.TSLibrary.10
            @Override // vm2.lib.VarArgFunction, vm2.lib.LibFunction, vm2.LuaValue
            public Varargs invoke(Varargs varargs) {
                TSStation stationById;
                TSLibrary tSLibrary = TSLibrary.this;
                TSSystem tSSystemResolveTS = tSLibrary.resolveTS(tSLibrary.resolveTSModel(varargs.arg1()));
                if (TSLibrary.this.component != null && tSSystemResolveTS != null && (stationById = tSSystemResolveTS.getStationById(varargs.optint(2, -1))) != null) {
                    return stationFunctionImpl.call(stationById, varargs.subargs(3));
                }
                return LuaValue.NIL;
            }
        };
    }

    public TSSystemDraft resolveTSModel(LuaValue luaValue) {
        return (TSSystemDraft) CoerceLuaToJava.coerce(luaValue.rawget(SimpleLuaLibrary.origKey), TSSystemDraft.class);
    }

    public TSSystem resolveTS(TSSystemDraft tSSystemDraft) {
        DefaultTSComponent defaultTSComponent = this.component;
        if (defaultTSComponent != null) {
            return defaultTSComponent.getSystemObjectById(tSSystemDraft.getId());
        }
        return null;
    }

    public List<TSSystemDraft> getModels() {
        return Drafts.TS_DRAFTS;
    }
}
