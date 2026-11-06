package info.flowersoft.theotown.scripting.libraries;

import com.google.android.gms.common.api.Api;
import com.ironsource.C3522b4;
import com.ironsource.C3670j8;
import com.unity3d.services.UnityAdsConstants;
import info.flowersoft.theotown.city.BuildingList;
import info.flowersoft.theotown.city.City;
import info.flowersoft.theotown.city.MapArea;
import info.flowersoft.theotown.city.RoadList;
import info.flowersoft.theotown.city.Tiles;
import info.flowersoft.theotown.city.Zones;
import info.flowersoft.theotown.city.components.Disaster;
import info.flowersoft.theotown.city.components.NotificationAction;
import info.flowersoft.theotown.city.components.Tool;
import info.flowersoft.theotown.city.objects.Building;
import info.flowersoft.theotown.city.objects.Road;
import info.flowersoft.theotown.cityfile.LocalMapDirectory;
import info.flowersoft.theotown.cityfile.RegionInformation;
import info.flowersoft.theotown.cityloader.CityKeeper;
import info.flowersoft.theotown.components.DefaultBudget;
import info.flowersoft.theotown.components.DefaultCatastrophe;
import info.flowersoft.theotown.components.DefaultDate;
import info.flowersoft.theotown.components.DefaultIdleGame;
import info.flowersoft.theotown.components.DefaultSoundManager;
import info.flowersoft.theotown.components.DefaultTraffic;
import info.flowersoft.theotown.components.DefaultWeather;
import info.flowersoft.theotown.components.actionplace.ActionPlaceType;
import info.flowersoft.theotown.components.disaster.NukeDisaster;
import info.flowersoft.theotown.components.management.DefaultManagement;
import info.flowersoft.theotown.components.management.attribute.Attribute;
import info.flowersoft.theotown.components.management.attribute.AttributeFactory;
import info.flowersoft.theotown.components.management.attribute.ConcreteAttributeContainer;
import info.flowersoft.theotown.components.notification.DefaultNotificator;
import info.flowersoft.theotown.components.notification.SimpleNotification;
import info.flowersoft.theotown.components.notification.condition.Condition;
import info.flowersoft.theotown.components.notification.condition.TrueCondition;
import info.flowersoft.theotown.components.soundsource.TileSoundSource;
import info.flowersoft.theotown.components.transition.TransitionRunner;
import info.flowersoft.theotown.draft.AnimationDraft;
import info.flowersoft.theotown.draft.BuildingDraft;
import info.flowersoft.theotown.draft.BuildingType;
import info.flowersoft.theotown.draft.Draft;
import info.flowersoft.theotown.draft.NotificationDraft;
import info.flowersoft.theotown.draft.RankDraft;
import info.flowersoft.theotown.draft.RoadDraft;
import info.flowersoft.theotown.draft.SoundDraft;
import info.flowersoft.theotown.draft.UpgradeDraft;
import info.flowersoft.theotown.draft.ViewportDraft;
import info.flowersoft.theotown.draft.ZoneDraft;
import info.flowersoft.theotown.draft.requirement.SingleRequirement;
import info.flowersoft.theotown.minigame.Currency;
import info.flowersoft.theotown.resources.Drafts;
import info.flowersoft.theotown.resources.Resources;
import info.flowersoft.theotown.resources.SoundType;
import info.flowersoft.theotown.scripting.ManagedLibrary;
import info.flowersoft.theotown.scripting.Script;
import info.flowersoft.theotown.scripting.ScriptMethod;
import info.flowersoft.theotown.scripting.ScriptingEnvironment;
import info.flowersoft.theotown.scripting.SimpleLuaLibrary;
import info.flowersoft.theotown.scripting.libraries.CityLibrary;
import info.flowersoft.theotown.stages.ConsoleStage;
import info.flowersoft.theotown.stages.cityinfo.AirportCityInfo;
import info.flowersoft.theotown.stages.cityinfo.BudgetCityInfo;
import info.flowersoft.theotown.stages.cityinfo.CityInfo;
import info.flowersoft.theotown.stages.cityinfo.EducationCityInfo;
import info.flowersoft.theotown.stages.cityinfo.EnergyCityInfo;
import info.flowersoft.theotown.stages.cityinfo.GeneralCityInfo;
import info.flowersoft.theotown.stages.cityinfo.HealthCityInfo;
import info.flowersoft.theotown.stages.cityinfo.LoanCityInfo;
import info.flowersoft.theotown.stages.cityinfo.NeighborCityInfo;
import info.flowersoft.theotown.stages.cityinfo.RCICityInfo;
import info.flowersoft.theotown.stages.cityinfo.RankCityInfo;
import info.flowersoft.theotown.stages.cityinfo.RatingCityInfo;
import info.flowersoft.theotown.stages.cityinfo.StatisticsCityInfo;
import info.flowersoft.theotown.stages.cityinfo.TSCityInfo;
import info.flowersoft.theotown.stages.cityinfo.WaterCityInfo;
import info.flowersoft.theotown.ui.Selectable;
import info.flowersoft.theotown.ui.SuccessOverlay;
import info.flowersoft.theotown.ui.selectable.SelectableDraft;
import info.flowersoft.theotown.ui.selectable.SelectableResolver;
import info.flowersoft.theotown.ui.toolbar.ToolBar;
import info.flowersoft.theotown.util.DraftLocalizer;
import info.flowersoft.theotown.util.Localizer;
import info.flowersoft.theotown.util.vfs.AbstractFile;
import io.blueflower.stapel2d.drawing.Color;
import io.blueflower.stapel2d.drawing.Colors;
import io.blueflower.stapel2d.drawing.Engine;
import io.blueflower.stapel2d.gamestack.Stapel2DGameContext;
import io.blueflower.stapel2d.gui.Gadget;
import io.blueflower.stapel2d.gui.Master;
import io.blueflower.stapel2d.util.Getter;
import io.blueflower.stapel2d.util.OpenSimplexNoise;
import io.blueflower.stapel2d.util.Setter;
import java.io.File;
import java.util.ArrayList;
import java.util.HashMap;
import java.util.Iterator;
import java.util.List;
import java.util.Locale;
import java.util.Map;
import java.util.Random;
import java.util.UUID;
import vm2.Globals;
import vm2.LuaFunction;
import vm2.LuaTable;
import vm2.LuaValue;
import vm2.Varargs;
import vm2.lib.OneArgFunction;
import vm2.lib.ThreeArgFunction;
import vm2.lib.TwoArgFunction;
import vm2.lib.VarArgFunction;
import vm2.lib.ZeroArgFunction;
import vm2.lib.jse.CoerceJavaToLua;

/* JADX INFO: loaded from: classes4.dex */
public class CityLibrary extends ManagedLibrary implements SimpleLuaLibrary.LibraryInjector {
    public final Map<BuildingDraft, List<ScriptMethod>> addedBuildingListeners;
    public final Map<RoadDraft, List<ScriptMethod>> addedRoadListeners;
    public DefaultBudget budget;
    public final BuildingList.Listener buildingListener;
    public DefaultCatastrophe catastrophe;
    public final City city;
    public final Setter<CityInfo> cityInfoVisitor;
    public final CityKeeper cityKeeper;
    public final Stapel2DGameContext context;
    public DefaultDate date;
    public final Map<BuildingDraft, List<ScriptMethod>> finishedBuildingListeners;
    public DefaultIdleGame idleGame;
    public final DraftLocalizer localizer;
    public DefaultManagement management;
    public DefaultNotificator notificator;
    public final RegionInformation regionInformation;
    public final Map<BuildingDraft, List<ScriptMethod>> removedBuildingListeners;
    public final Map<RoadDraft, List<ScriptMethod>> removedRoadListeners;
    public final RoadList.Listener roadListener;
    public final Tiles tiles;
    public DefaultTraffic traffic;
    public final TransitionRunner transitionRunner;
    public final Runnable uiRebuilder;
    public final Map<BuildingDraft, List<ScriptMethod>> upgradedBuildingListeners;
    public DefaultWeather weather;

    public CityLibrary(Stapel2DGameContext stapel2DGameContext, Setter<CityInfo> setter, Runnable runnable, CityKeeper cityKeeper, City city, RegionInformation regionInformation) {
        super("libs/City.lua");
        this.addedBuildingListeners = new HashMap();
        this.finishedBuildingListeners = new HashMap();
        this.removedBuildingListeners = new HashMap();
        this.upgradedBuildingListeners = new HashMap();
        this.addedRoadListeners = new HashMap();
        this.removedRoadListeners = new HashMap();
        BuildingList.Listener listener = new BuildingList.Listener() { // from class: info.flowersoft.theotown.scripting.libraries.CityLibrary.1
            @Override // info.flowersoft.theotown.city.BuildingList.Listener
            public void add(Building building) {
                CityLibrary.this.onAddedBuilding(building);
            }

            @Override // info.flowersoft.theotown.city.BuildingList.Listener
            public void finished(Building building) {
                CityLibrary.this.onFinishedBuilding(building);
            }

            @Override // info.flowersoft.theotown.city.BuildingList.Listener
            public void remove(Building building) {
                CityLibrary.this.onRemovedBuilding(building);
            }

            @Override // info.flowersoft.theotown.city.BuildingList.Listener
            public void upgraded(Building building, UpgradeDraft upgradeDraft) {
                CityLibrary.this.onUpgradedBuilding(building, upgradeDraft);
            }
        };
        this.buildingListener = listener;
        RoadList.Listener listener2 = new RoadList.Listener() { // from class: info.flowersoft.theotown.scripting.libraries.CityLibrary.2
            @Override // info.flowersoft.theotown.city.RoadList.Listener
            public void add(Road road) {
                CityLibrary.this.onAddedRoad(road);
            }

            @Override // info.flowersoft.theotown.city.RoadList.Listener
            public void remove(Road road) {
                CityLibrary.this.onRemovedRoad(road);
            }
        };
        this.roadListener = listener2;
        this.context = stapel2DGameContext;
        this.city = city;
        this.tiles = city.getTiles();
        this.cityKeeper = cityKeeper;
        if (cityKeeper != null) {
            this.date = (DefaultDate) city.getComponent(1);
            this.catastrophe = (DefaultCatastrophe) city.getComponent(6);
            this.traffic = (DefaultTraffic) city.getComponent(7);
            this.budget = (DefaultBudget) city.getComponent(0);
            this.management = (DefaultManagement) city.getComponent(3);
            this.idleGame = (DefaultIdleGame) city.getComponent(20);
            this.notificator = (DefaultNotificator) city.getComponent(4);
            this.weather = (DefaultWeather) city.getComponent(12);
        }
        this.transitionRunner = new TransitionRunner(city);
        this.localizer = new DraftLocalizer(city);
        this.regionInformation = regionInformation;
        this.cityInfoVisitor = setter;
        this.uiRebuilder = runnable;
        city.getBuildings().addListener(listener);
        city.getRoads().addListener(listener2);
    }

    @Override // info.flowersoft.theotown.scripting.SimpleLuaLibrary, info.flowersoft.theotown.scripting.LuaLibrary
    public void unload(Globals globals) {
        super.unload(globals);
        this.city.getBuildings().removeListener(this.buildingListener);
        this.city.getRoads().removeListener(this.roadListener);
    }

    public final <T> void addListener(Map<T, List<ScriptMethod>> map, T t, ScriptMethod scriptMethod) {
        if (scriptMethod == null) {
            return;
        }
        List<ScriptMethod> arrayList = map.get(t);
        if (arrayList == null) {
            arrayList = new ArrayList<>();
            map.put(t, arrayList);
        }
        arrayList.add(scriptMethod);
    }

    public final <T> boolean removeListener(Map<T, List<ScriptMethod>> map, T t, ScriptMethod scriptMethod) {
        List<ScriptMethod> list;
        return (scriptMethod == null || (list = map.get(t)) == null || !list.remove(scriptMethod)) ? false : true;
    }

    public final void callBuildingListeners(List<ScriptMethod> list, Building building) {
        if (list == null || list.isEmpty()) {
            return;
        }
        LuaTable luaTableTableOf = LuaValue.tableOf();
        luaTableTableOf.set("x", building.getX());
        luaTableTableOf.set("y", building.getY());
        luaTableTableOf.set("draft", building.getDraft().luaRepr);
        for (int i = 0; i < list.size(); i++) {
            list.get(i).call(luaTableTableOf);
        }
    }

    public final void callBuildingUpgradeListeners(List<ScriptMethod> list, Building building, UpgradeDraft upgradeDraft) {
        if (list == null || list.isEmpty()) {
            return;
        }
        LuaTable luaTableTableOf = LuaValue.tableOf();
        luaTableTableOf.set("x", building.getX());
        luaTableTableOf.set("y", building.getY());
        luaTableTableOf.set("draft", building.getDraft().luaRepr);
        luaTableTableOf.set("upgradeDraft", upgradeDraft.luaRepr);
        for (int i = 0; i < list.size(); i++) {
            list.get(i).call(luaTableTableOf);
        }
    }

    public final void callRoadListeners(List<ScriptMethod> list, Road road) {
        if (list == null || list.isEmpty()) {
            return;
        }
        LuaTable luaTableTableOf = LuaValue.tableOf();
        luaTableTableOf.set("x", road.getX());
        luaTableTableOf.set("y", road.getY());
        luaTableTableOf.set("level", road.getLevel());
        luaTableTableOf.set("draft", road.draft.luaRepr);
        for (int i = 0; i < list.size(); i++) {
            list.get(i).call(luaTableTableOf);
        }
    }

    public final void onAddedBuilding(Building building) {
        callBuildingListeners(this.addedBuildingListeners.get(null), building);
        callBuildingListeners(this.addedBuildingListeners.get(building.getDraft()), building);
    }

    public final void onFinishedBuilding(Building building) {
        callBuildingListeners(this.finishedBuildingListeners.get(null), building);
        callBuildingListeners(this.finishedBuildingListeners.get(building.getDraft()), building);
    }

    public final void onRemovedBuilding(Building building) {
        callBuildingListeners(this.removedBuildingListeners.get(null), building);
        callBuildingListeners(this.removedBuildingListeners.get(building.getDraft()), building);
    }

    public final void onUpgradedBuilding(Building building, UpgradeDraft upgradeDraft) {
        callBuildingUpgradeListeners(this.upgradedBuildingListeners.get(null), building, upgradeDraft);
        callBuildingUpgradeListeners(this.upgradedBuildingListeners.get(building.getDraft()), building, upgradeDraft);
    }

    public final void onAddedRoad(Road road) {
        callRoadListeners(this.addedRoadListeners.get(null), road);
        callRoadListeners(this.addedRoadListeners.get(road.draft), road);
    }

    public final void onRemovedRoad(Road road) {
        callRoadListeners(this.removedRoadListeners.get(null), road);
        callRoadListeners(this.removedRoadListeners.get(road.draft), road);
    }

    public final boolean removeScriptListeners(List<ScriptMethod> list, Script script) {
        int i = 0;
        if (list == null) {
            return false;
        }
        boolean z = false;
        while (i < list.size()) {
            if (script == list.get(i).getScript()) {
                list.remove(i);
                i--;
                z = true;
            }
            i++;
        }
        return z;
    }

    public final <T> boolean removeScriptListeners(Map<T, List<ScriptMethod>> map, Script script) {
        Iterator<List<ScriptMethod>> it = map.values().iterator();
        boolean zRemoveScriptListeners = false;
        while (it.hasNext()) {
            zRemoveScriptListeners |= removeScriptListeners(it.next(), script);
        }
        return zRemoveScriptListeners;
    }

    public boolean removeScriptListeners(Script script) {
        return removeScriptListeners(this.removedRoadListeners, script) | removeScriptListeners(this.addedBuildingListeners, script) | removeScriptListeners(this.removedBuildingListeners, script) | removeScriptListeners(this.upgradedBuildingListeners, script) | removeScriptListeners(this.addedRoadListeners, script);
    }

    @Override // info.flowersoft.theotown.scripting.SimpleLuaLibrary.LibraryInjector
    public void inject(LuaValue luaValue, LuaValue luaValue2, Globals globals) {
        LuaValue luaValueCoerce = CoerceJavaToLua.coerce(this.city);
        CityKeeper cityKeeper = this.cityKeeper;
        luaValue.method("_init", luaValueCoerce, cityKeeper != null ? CoerceJavaToLua.coerce(cityKeeper) : LuaValue.NIL);
        luaValue.set("getHappiness", new OneArgFunction() { // from class: info.flowersoft.theotown.scripting.libraries.CityLibrary.3
            @Override // vm2.lib.OneArgFunction, vm2.lib.LibFunction, vm2.LuaValue
            public LuaValue call(LuaValue luaValue3) {
                if (CityLibrary.this.management == null) {
                    return LuaValue.NIL;
                }
                if (luaValue3.isnil() || luaValue3.optjstring("").equals("hgen")) {
                    return LuaValue.valueOf(CityLibrary.this.management.getBuildingSurvey().getRatingValue());
                }
                int index = AttributeFactory.getAttribute(luaValue3.checkjstring()).getIndex();
                int i = 0;
                float f = 0.0f;
                for (int i2 = 0; i2 < CityLibrary.this.city.getBuildings().size(); i2++) {
                    Building building = CityLibrary.this.city.getBuildings().get(i2);
                    ConcreteAttributeContainer concreteAttributeContainer = (ConcreteAttributeContainer) building.getAttributeContainer();
                    if (building.getBuildingType().isRCIOrDeco() && building.getBuildingType() != BuildingType.DECORATION && !building.inConstruction() && !building.isEmpty() && concreteAttributeContainer != null) {
                        int overallHabitants = building.getOverallHabitants();
                        float f2 = concreteAttributeContainer.getValues()[index];
                        if (f2 >= UnityAdsConstants.SafeGuards.InitRequestRetryPolicy.MIN_JITTER_PCT) {
                            f += overallHabitants * f2;
                            i += overallHabitants;
                        }
                    }
                }
                return LuaValue.valueOf(i > 0 ? Math.min(Math.max(f / i, UnityAdsConstants.SafeGuards.InitRequestRetryPolicy.MIN_JITTER_PCT), 1.0f) : 0.5f);
            }
        });
        luaValue.set("setHappinessModifier", new ThreeArgFunction() { // from class: info.flowersoft.theotown.scripting.libraries.CityLibrary.4
            @Override // vm2.lib.ThreeArgFunction, vm2.lib.LibFunction, vm2.LuaValue
            public LuaValue call(LuaValue luaValue3, LuaValue luaValue4, LuaValue luaValue5) {
                String strCheckjstring = luaValue3.checkjstring();
                Attribute attribute = AttributeFactory.getAttribute(strCheckjstring);
                if (attribute == null) {
                    throw new IllegalArgumentException("Unknown happiness attr " + strCheckjstring);
                }
                float fCheckdouble = (float) luaValue4.checkdouble();
                String strOptjstring = luaValue5.optjstring(null);
                if (strOptjstring == null) {
                    strOptjstring = ScriptingEnvironment.getInstance().getCurrentDraft().id;
                }
                CityLibrary.this.management.getHappinessModifier().set(attribute, strOptjstring, fCheckdouble);
                return LuaValue.NIL;
            }
        });
        luaValue.set("getId", new ZeroArgFunction() { // from class: info.flowersoft.theotown.scripting.libraries.CityLibrary.5
            @Override // vm2.lib.ZeroArgFunction, vm2.lib.LibFunction, vm2.LuaValue
            public LuaValue call() {
                return LuaValue.valueOf(CityLibrary.this.city.getId());
            }
        });
        luaValue.set("getRegionId", new ZeroArgFunction() { // from class: info.flowersoft.theotown.scripting.libraries.CityLibrary.6
            @Override // vm2.lib.ZeroArgFunction, vm2.lib.LibFunction, vm2.LuaValue
            public LuaValue call() {
                return CityLibrary.this.regionInformation != null ? LuaValue.valueOf(CityLibrary.this.regionInformation.getId()) : LuaValue.NIL;
            }
        });
        luaValue.set("getRegionName", new ZeroArgFunction() { // from class: info.flowersoft.theotown.scripting.libraries.CityLibrary.7
            @Override // vm2.lib.ZeroArgFunction, vm2.lib.LibFunction, vm2.LuaValue
            public LuaValue call() {
                return CityLibrary.this.regionInformation != null ? LuaValue.valueOf(CityLibrary.this.regionInformation.getName()) : LuaValue.NIL;
            }
        });
        luaValue.set("spendMoney", new VarArgFunction() { // from class: info.flowersoft.theotown.scripting.libraries.CityLibrary.8
            @Override // vm2.lib.VarArgFunction, vm2.lib.LibFunction, vm2.LuaValue
            public Varargs invoke(Varargs varargs) {
                int iCheckint = varargs.arg(1).checkint();
                float fOptdouble = (float) varargs.arg(2).optdouble(-1.0d);
                float fOptdouble2 = (float) varargs.arg(3).optdouble(-1.0d);
                Draft draftResolveDraft = DraftLibrary.resolveDraft(varargs.arg(4), Draft.class);
                if (iCheckint > 0 && !CityLibrary.this.city.getGameMode().hasInfinityMoney()) {
                    String currentSource = ScriptingEnvironment.getInstance().getCurrentSource();
                    if (fOptdouble < UnityAdsConstants.SafeGuards.InitRequestRetryPolicy.MIN_JITTER_PCT || fOptdouble2 < UnityAdsConstants.SafeGuards.InitRequestRetryPolicy.MIN_JITTER_PCT) {
                        CityLibrary.this.budget.spend(iCheckint, currentSource);
                    } else {
                        CityLibrary.this.budget.spend(iCheckint, fOptdouble, fOptdouble2, currentSource);
                    }
                    if (draftResolveDraft != null) {
                        CityLibrary.this.budget.notifyAboutBudgetItemContribution(draftResolveDraft, -iCheckint);
                    }
                    return LuaValue.valueOf(true);
                }
                return LuaValue.valueOf(false);
            }
        });
        luaValue.set("earnMoney", new VarArgFunction() { // from class: info.flowersoft.theotown.scripting.libraries.CityLibrary.9
            @Override // vm2.lib.VarArgFunction, vm2.lib.LibFunction, vm2.LuaValue
            public Varargs invoke(Varargs varargs) {
                int iCheckint = varargs.arg(1).checkint();
                float fOptdouble = (float) varargs.arg(2).optdouble(-1.0d);
                float fOptdouble2 = (float) varargs.arg(3).optdouble(-1.0d);
                boolean zOptboolean = varargs.arg(4).optboolean(false);
                Draft draftResolveDraft = DraftLibrary.resolveDraft(varargs.arg(5), Draft.class);
                if (iCheckint > 0 && ScriptingEnvironment.getInstance().isPrivileged()) {
                    if (!CityLibrary.this.city.getGameMode().hasInfinityMoney()) {
                        String currentSource = ScriptingEnvironment.getInstance().getCurrentSource();
                        if (fOptdouble < UnityAdsConstants.SafeGuards.InitRequestRetryPolicy.MIN_JITTER_PCT || fOptdouble2 < UnityAdsConstants.SafeGuards.InitRequestRetryPolicy.MIN_JITTER_PCT) {
                            CityLibrary.this.budget.earn(iCheckint, currentSource);
                        } else {
                            CityLibrary.this.budget.earn(iCheckint, fOptdouble, fOptdouble2, currentSource);
                        }
                        if (zOptboolean) {
                            SuccessOverlay.getInstance().addEvent(1, iCheckint);
                        }
                    }
                    if (draftResolveDraft != null) {
                        CityLibrary.this.budget.notifyAboutBudgetItemContribution(draftResolveDraft, iCheckint);
                    }
                    return LuaValue.valueOf(true);
                }
                return LuaValue.valueOf(false);
            }
        });
        luaValue.set("getCurrency", new VarArgFunction() { // from class: info.flowersoft.theotown.scripting.libraries.CityLibrary.10
            @Override // vm2.lib.VarArgFunction, vm2.lib.LibFunction, vm2.LuaValue
            public Varargs invoke(Varargs varargs) {
                Currency currency = CityLibrary.this.idleGame.getCurrency(varargs.arg1().checkjstring());
                if (currency != null) {
                    return LuaValue.varargsOf(LuaValue.valueOf(currency.getEstate()), LuaValue.valueOf(Localizer.localizeBigNumber(currency.getEstate()) + currency.getUnit()));
                }
                return LuaValue.NIL;
            }
        });
        luaValue.set("spendCurrency", new TwoArgFunction() { // from class: info.flowersoft.theotown.scripting.libraries.CityLibrary.11
            @Override // vm2.lib.TwoArgFunction, vm2.lib.LibFunction, vm2.LuaValue
            public LuaValue call(LuaValue luaValue3, LuaValue luaValue4) {
                String strCheckjstring = luaValue3.checkjstring();
                double dCheckdouble = luaValue4.checkdouble();
                Currency currency = CityLibrary.this.idleGame.getCurrency(strCheckjstring);
                if (currency != null && dCheckdouble > 0.0d) {
                    currency.spend(Math.min(dCheckdouble, currency.getEstate()));
                    return LuaValue.valueOf(true);
                }
                return LuaValue.valueOf(false);
            }
        });
        luaValue.set("earnCurrency", new TwoArgFunction() { // from class: info.flowersoft.theotown.scripting.libraries.CityLibrary.12
            @Override // vm2.lib.TwoArgFunction, vm2.lib.LibFunction, vm2.LuaValue
            public LuaValue call(LuaValue luaValue3, LuaValue luaValue4) {
                String strCheckjstring = luaValue3.checkjstring();
                double dCheckdouble = luaValue4.checkdouble();
                Currency currency = CityLibrary.this.idleGame.getCurrency(strCheckjstring);
                if (currency != null && dCheckdouble > 0.0d && ScriptingEnvironment.getInstance().isPrivileged()) {
                    currency.spend(-dCheckdouble);
                    return LuaValue.valueOf(true);
                }
                return LuaValue.valueOf(false);
            }
        });
        luaValue.set("getFunVar", new TwoArgFunction() { // from class: info.flowersoft.theotown.scripting.libraries.CityLibrary.13
            @Override // vm2.lib.TwoArgFunction, vm2.lib.LibFunction, vm2.LuaValue
            public LuaValue call(LuaValue luaValue3, LuaValue luaValue4) {
                if (luaValue3.checkjstring().equals("day")) {
                    return LuaValue.valueOf(CityLibrary.this.date.getAbsoluteDay());
                }
                return LuaValue.valueOf(CityLibrary.this.transitionRunner.parseValue(r3, luaValue4.optlong(0L)));
            }
        });
        luaValue.set("setFunVar", new TwoArgFunction() { // from class: info.flowersoft.theotown.scripting.libraries.CityLibrary.14
            @Override // vm2.lib.TwoArgFunction, vm2.lib.LibFunction, vm2.LuaValue
            public LuaValue call(LuaValue luaValue3, LuaValue luaValue4) {
                CityLibrary.this.transitionRunner.applyValue(luaValue3.checkjstring(), luaValue4.checklong());
                return LuaValue.NIL;
            }
        });
        luaValue.set("getDisaster", new ZeroArgFunction() { // from class: info.flowersoft.theotown.scripting.libraries.CityLibrary.15
            @Override // vm2.lib.ZeroArgFunction, vm2.lib.LibFunction, vm2.LuaValue
            public LuaValue call() {
                if (CityLibrary.this.catastrophe.isActive()) {
                    List<Disaster> activeDisasters = CityLibrary.this.catastrophe.getActiveDisasters();
                    if (!activeDisasters.isEmpty()) {
                        return LuaValue.valueOf(CityLibrary.this.catastrophe.getDisasterTag(activeDisasters.get(0)));
                    }
                }
                return LuaValue.NIL;
            }
        });
        luaValue.set("issueDisaster", new VarArgFunction() { // from class: info.flowersoft.theotown.scripting.libraries.CityLibrary.16
            @Override // vm2.lib.VarArgFunction, vm2.lib.LibFunction, vm2.LuaValue
            public Varargs invoke(Varargs varargs) {
                String strCheckjstring = varargs.arg(1).checkjstring();
                int iOptint = varargs.arg(2).optint(-1);
                int iOptint2 = varargs.arg(3).optint(-1);
                Disaster disaster = CityLibrary.this.catastrophe.getDisaster(strCheckjstring);
                if (disaster != null) {
                    if (!(disaster instanceof NukeDisaster)) {
                        if (iOptint >= 0 && iOptint2 >= 0) {
                            return LuaValue.valueOf(disaster.issue(iOptint, iOptint2));
                        }
                        return LuaValue.valueOf(disaster.issue());
                    }
                    int iOptint3 = varargs.arg(4).optint(20);
                    boolean zOptboolean = varargs.arg(5).optboolean(true);
                    NukeDisaster nukeDisaster = (NukeDisaster) disaster;
                    if (iOptint < 0 || iOptint2 < 0) {
                        Random random = Resources.RND;
                        iOptint = random.nextInt(CityLibrary.this.city.getWidth());
                        iOptint2 = random.nextInt(CityLibrary.this.city.getHeight());
                    }
                    return LuaValue.valueOf(nukeDisaster.issue(iOptint, iOptint2, zOptboolean, iOptint3));
                }
                return LuaValue.NIL;
            }
        });
        luaValue.set("spawnLightning", new TwoArgFunction() { // from class: info.flowersoft.theotown.scripting.libraries.CityLibrary.17
            @Override // vm2.lib.TwoArgFunction, vm2.lib.LibFunction, vm2.LuaValue
            public LuaValue call(LuaValue luaValue3, LuaValue luaValue4) {
                if (!luaValue3.isint() || !luaValue4.isint()) {
                    DefaultWeather defaultWeather = CityLibrary.this.weather;
                    Random random = Resources.RND;
                    defaultWeather.spawnLightning(random.nextInt(CityLibrary.this.city.getWidth()), random.nextInt(CityLibrary.this.city.getHeight()));
                } else {
                    CityLibrary.this.weather.spawnLightning(luaValue3.checkint(), luaValue4.checkint());
                }
                return LuaValue.NIL;
            }
        });
        luaValue.set("enableDisaster", new TwoArgFunction() { // from class: info.flowersoft.theotown.scripting.libraries.CityLibrary.18
            @Override // vm2.lib.TwoArgFunction, vm2.lib.LibFunction, vm2.LuaValue
            public LuaValue call(LuaValue luaValue3, LuaValue luaValue4) {
                String strCheckjstring = luaValue3.checkjstring();
                boolean zOptboolean = luaValue4.optboolean(true);
                Disaster disaster = CityLibrary.this.catastrophe.getDisaster(strCheckjstring);
                if (disaster != null) {
                    CityLibrary.this.catastrophe.setAutoActive(disaster, zOptboolean);
                }
                return LuaValue.NIL;
            }
        });
        luaValue.set("getView", new VarArgFunction() { // from class: info.flowersoft.theotown.scripting.libraries.CityLibrary.19
            @Override // vm2.lib.VarArgFunction, vm2.lib.LibFunction, vm2.LuaValue
            public Varargs invoke(Varargs varargs) {
                float focusX = CityLibrary.this.city.getFocusX();
                float focusY = CityLibrary.this.city.getFocusY();
                return LuaValue.varargsOf(LuaValue.valueOf(CityLibrary.this.city.rotatedToOriginalX(focusX, focusY)), LuaValue.valueOf(CityLibrary.this.city.rotatedToOriginalY(focusX, focusY)), LuaValue.valueOf(CityLibrary.this.city.getScale()));
            }
        });
        luaValue.set("setView", new VarArgFunction() { // from class: info.flowersoft.theotown.scripting.libraries.CityLibrary.20
            @Override // vm2.lib.VarArgFunction, vm2.lib.LibFunction, vm2.LuaValue
            public Varargs invoke(Varargs varargs) {
                float fCheckdouble = (float) varargs.arg(1).checkdouble();
                float fCheckdouble2 = (float) varargs.arg(2).checkdouble();
                float scale = CityLibrary.this.city.getScale();
                if (varargs.arg(3).isnumber()) {
                    scale = (float) varargs.arg(3).checkdouble();
                }
                CityLibrary.this.city.focus(fCheckdouble, fCheckdouble2, scale, varargs.arg(4).optboolean(true));
                return LuaValue.NIL;
            }
        });
        luaValue.set("getScale", new ZeroArgFunction() { // from class: info.flowersoft.theotown.scripting.libraries.CityLibrary.21
            @Override // vm2.lib.ZeroArgFunction, vm2.lib.LibFunction, vm2.LuaValue
            public LuaValue call() {
                return LuaValue.valueOf(CityLibrary.this.city.getScale());
            }
        });
        luaValue.set("setScale", new OneArgFunction() { // from class: info.flowersoft.theotown.scripting.libraries.CityLibrary.22
            @Override // vm2.lib.OneArgFunction, vm2.lib.LibFunction, vm2.LuaValue
            public LuaValue call(LuaValue luaValue3) {
                float fMin = Math.min(Math.max((float) luaValue3.checkdouble(), City.getMinScale()), City.getMaxScale()) / CityLibrary.this.city.getScale();
                int centerX = (int) CityLibrary.this.city.getView().getCenterX();
                int centerY = (int) CityLibrary.this.city.getView().getCenterY();
                if (fMin > 1.001f) {
                    CityLibrary.this.city.zoomIn(fMin, centerX, centerY);
                } else if (fMin < 0.999f) {
                    CityLibrary.this.city.zoomOut(1.0f / fMin, centerX, centerY);
                }
                return LuaValue.NIL;
            }
        });
        luaValue.set("move", new TwoArgFunction() { // from class: info.flowersoft.theotown.scripting.libraries.CityLibrary.23
            @Override // vm2.lib.TwoArgFunction, vm2.lib.LibFunction, vm2.LuaValue
            public LuaValue call(LuaValue luaValue3, LuaValue luaValue4) {
                CityLibrary.this.city.move((float) luaValue3.checkdouble(), (float) luaValue4.checkdouble());
                return LuaValue.NIL;
            }
        });
        luaValue.set("save", new OneArgFunction() { // from class: info.flowersoft.theotown.scripting.libraries.CityLibrary.24
            @Override // vm2.lib.OneArgFunction, vm2.lib.LibFunction, vm2.LuaValue
            public LuaValue call(LuaValue luaValue3) {
                CityLibrary.this.city.getController().save(luaValue3.optboolean(false), null);
                return LuaValue.NIL;
            }
        });
        luaValue.set("load", new VarArgFunction() { // from class: info.flowersoft.theotown.scripting.libraries.CityLibrary.25
            @Override // vm2.lib.VarArgFunction, vm2.lib.LibFunction, vm2.LuaValue
            public LuaValue invoke(Varargs varargs) {
                String strOptjstring = varargs.arg(1).optjstring("");
                boolean zOptboolean = varargs.arg(2).optboolean(false);
                boolean zOptboolean2 = varargs.arg(3).optboolean(false);
                String strReplace = varargs.arg(4).optjstring("").replace("..", "");
                if (strReplace.isEmpty()) {
                    strReplace = null;
                }
                AbstractFile abstractFileFindExternalCity = CityLibrary.findExternalCity(strOptjstring, ScriptingEnvironment.getInstance().getCurrentScript());
                if (abstractFileFindExternalCity == null || !abstractFileFindExternalCity.isFile()) {
                    File fileFindInternalCity = CityLibrary.findInternalCity(strOptjstring, CityLibrary.this.context);
                    if (!fileFindInternalCity.exists()) {
                        fileFindInternalCity = CityLibrary.this.cityKeeper.getFile();
                    }
                    if (fileFindInternalCity.exists() && Resources.isInTheoTownDir(fileFindInternalCity)) {
                        CityLibrary.this.city.getController().load(fileFindInternalCity.getPath());
                    }
                } else {
                    CityLibrary.this.city.getController().loadFromExternal(abstractFileFindExternalCity, zOptboolean, zOptboolean2, strReplace);
                }
                return LuaValue.NIL;
            }
        });
        luaValue.set("exit", new OneArgFunction() { // from class: info.flowersoft.theotown.scripting.libraries.CityLibrary.26
            @Override // vm2.lib.OneArgFunction, vm2.lib.LibFunction, vm2.LuaValue
            public LuaValue call(LuaValue luaValue3) {
                CityLibrary.this.city.getController().exit(luaValue3.optboolean(false));
                return LuaValue.NIL;
            }
        });
        luaValue.set("getCities", new OneArgFunction() { // from class: info.flowersoft.theotown.scripting.libraries.CityLibrary.27
            @Override // vm2.lib.OneArgFunction, vm2.lib.LibFunction, vm2.LuaValue
            public LuaValue call(LuaValue luaValue3) {
                ArrayLibrary arrayLibrary = (ArrayLibrary) ScriptingEnvironment.getInstance().getLibrary(ArrayLibrary.class);
                List<CityKeeper> maps = LocalMapDirectory.getDefault(CityLibrary.this.context).getMaps();
                ArrayList arrayList = new ArrayList();
                for (int i = 0; i < maps.size(); i++) {
                    arrayList.add(LuaValue.valueOf(maps.get(i).getFile().getName()));
                }
                return arrayLibrary.createArray(arrayList);
            }
        });
        luaValue.set("alert", new ThreeArgFunction() { // from class: info.flowersoft.theotown.scripting.libraries.CityLibrary.28
            @Override // vm2.lib.ThreeArgFunction, vm2.lib.LibFunction, vm2.LuaValue
            public LuaValue call(LuaValue luaValue3, LuaValue luaValue4, LuaValue luaValue5) {
                int iCheckint = luaValue3.checkint();
                int iCheckint2 = luaValue4.checkint();
                int iCheckint3 = luaValue5.checkint();
                if (CityLibrary.this.city.isValid(iCheckint2, iCheckint3) && iCheckint >= 0 && iCheckint < ActionPlaceType.COUNT) {
                    MapArea mapArea = new MapArea();
                    mapArea.add(iCheckint2, iCheckint3, CityLibrary.this.city.getTiles().getBaseTerrainHeight(iCheckint2, iCheckint3));
                    CityLibrary.this.traffic.getActionPlaceController().addOrRemoveActionPlace(mapArea, iCheckint);
                    return LuaValue.valueOf(true);
                }
                return LuaValue.valueOf(false);
            }
        });
        luaValue.set("hideNotification", new OneArgFunction() { // from class: info.flowersoft.theotown.scripting.libraries.CityLibrary.29
            @Override // vm2.lib.OneArgFunction, vm2.lib.LibFunction, vm2.LuaValue
            public LuaValue call(LuaValue luaValue3) {
                CityLibrary.this.notificator.hideNotification(luaValue3.checkjstring());
                return LuaValue.NIL;
            }
        });
        luaValue.set("clearNotifications", new ZeroArgFunction() { // from class: info.flowersoft.theotown.scripting.libraries.CityLibrary.30
            @Override // vm2.lib.ZeroArgFunction, vm2.lib.LibFunction, vm2.LuaValue
            public LuaValue call() {
                CityLibrary.this.notificator.clearNotifications();
                return LuaValue.NIL;
            }
        });
        luaValue.set("showNotification", new AnonymousClass31());
        luaValue.set("setBackground", new OneArgFunction() { // from class: info.flowersoft.theotown.scripting.libraries.CityLibrary.32
            @Override // vm2.lib.OneArgFunction, vm2.lib.LibFunction, vm2.LuaValue
            public LuaValue call(LuaValue luaValue3) {
                if (luaValue3.isnil()) {
                    CityLibrary.this.city.setBackground(null);
                    return LuaValue.valueOf(true);
                }
                AnimationDraft animationDraft = (AnimationDraft) DraftLibrary.resolveDraft(luaValue3, AnimationDraft.class);
                if (animationDraft != null) {
                    CityLibrary.this.city.setBackground(animationDraft);
                    return LuaValue.valueOf(true);
                }
                return LuaValue.valueOf(false);
            }
        });
        luaValue.set("getBackground", new ZeroArgFunction() { // from class: info.flowersoft.theotown.scripting.libraries.CityLibrary.33
            @Override // vm2.lib.ZeroArgFunction, vm2.lib.LibFunction, vm2.LuaValue
            public LuaValue call() {
                return CityLibrary.this.city.getBackground().luaRepr;
            }
        });
        luaValue.set("noise", new VarArgFunction() { // from class: info.flowersoft.theotown.scripting.libraries.CityLibrary.34
            @Override // vm2.lib.VarArgFunction, vm2.lib.LibFunction, vm2.LuaValue
            public Varargs invoke(Varargs varargs) {
                float fEval;
                OpenSimplexNoise noise = CityLibrary.this.city.getNoise();
                if (varargs.isnil(3)) {
                    fEval = noise.eval((float) varargs.checkdouble(1), (float) varargs.optdouble(2, 0.0d));
                } else if (varargs.isnil(4)) {
                    fEval = noise.eval((float) varargs.checkdouble(1), (float) varargs.optdouble(2, 0.0d), (float) varargs.optdouble(3, 0.0d));
                } else {
                    fEval = noise.eval((float) varargs.checkdouble(1), (float) varargs.optdouble(2, 0.0d), (float) varargs.optdouble(3, 0.0d), (float) varargs.optdouble(4, 0.0d));
                }
                return LuaValue.valueOf(fEval);
            }
        });
        luaValue.set("hash", new VarArgFunction() { // from class: info.flowersoft.theotown.scripting.libraries.CityLibrary.35
            @Override // vm2.lib.VarArgFunction, vm2.lib.LibFunction, vm2.LuaValue
            public LuaValue call(LuaValue luaValue3, LuaValue luaValue4) {
                int iOptint = luaValue3.optint(-1);
                int iOptint2 = luaValue4.optint(-1);
                return LuaValue.valueOf(((iOptint >= 0 || iOptint2 >= 0) ? CityLibrary.this.city.hashCode(iOptint, iOptint2) : CityLibrary.this.city.hashCode()) & Api.BaseClientBuilder.API_PRIORITY_OTHER);
            }
        });
        luaValue.set("getPlayTime", new ZeroArgFunction() { // from class: info.flowersoft.theotown.scripting.libraries.CityLibrary.36
            @Override // vm2.lib.ZeroArgFunction, vm2.lib.LibFunction, vm2.LuaValue
            public LuaValue call() {
                return LuaValue.valueOf(CityLibrary.this.city.getCityInfo().playtimeSeconds);
            }
        });
        luaValue.set("execute", new AnonymousClass37());
        final HashMap map = new HashMap();
        map.put("general", new GeneralCityInfo());
        map.put("statistics", new StatisticsCityInfo());
        map.put("rank", new RankCityInfo());
        map.put("rci", new RCICityInfo());
        map.put("rating", new RatingCityInfo());
        map.put("budget", new BudgetCityInfo());
        map.put("loan", new LoanCityInfo());
        map.put("energy", new EnergyCityInfo());
        map.put("water", new WaterCityInfo());
        map.put("education", new EducationCityInfo());
        map.put("health", new HealthCityInfo());
        map.put("neighbor", new NeighborCityInfo());
        map.put("airport", new AirportCityInfo());
        map.put("ts", new TSCityInfo());
        luaValue.set("openInfo", new OneArgFunction() { // from class: info.flowersoft.theotown.scripting.libraries.CityLibrary.38
            @Override // vm2.lib.OneArgFunction, vm2.lib.LibFunction, vm2.LuaValue
            public LuaValue call(LuaValue luaValue3) {
                if (CityLibrary.this.cityInfoVisitor != null) {
                    String strCheckjstring = luaValue3.checkjstring();
                    CityInfo cityInfo = (CityInfo) map.get(strCheckjstring.toLowerCase(Locale.ENGLISH));
                    if (cityInfo != null) {
                        CityLibrary.this.cityInfoVisitor.set(cityInfo);
                    } else {
                        throw new IllegalArgumentException("Unknown city info type " + strCheckjstring);
                    }
                }
                return LuaValue.NIL;
            }
        });
        luaValue.set("rebuildUI", new ZeroArgFunction() { // from class: info.flowersoft.theotown.scripting.libraries.CityLibrary.39
            @Override // vm2.lib.ZeroArgFunction, vm2.lib.LibFunction, vm2.LuaValue
            public LuaValue call() {
                if (CityLibrary.this.uiRebuilder != null) {
                    CityLibrary.this.uiRebuilder.run();
                }
                return LuaValue.NIL;
            }
        });
        luaValue.set("countBuildings", new OneArgFunction() { // from class: info.flowersoft.theotown.scripting.libraries.CityLibrary.40
            @Override // vm2.lib.OneArgFunction, vm2.lib.LibFunction, vm2.LuaValue
            public LuaValue call(LuaValue luaValue3) {
                BuildingDraft buildingDraft = (BuildingDraft) DraftLibrary.resolveDraft(luaValue3, BuildingDraft.class);
                return buildingDraft == null ? LuaValue.valueOf(CityLibrary.this.city.getBuildings().size()) : LuaValue.valueOf(CityLibrary.this.city.getBuildings().getBuildingsOfDraft(buildingDraft).size());
            }
        });
        luaValue.set("getBuilding", new VarArgFunction() { // from class: info.flowersoft.theotown.scripting.libraries.CityLibrary.41
            @Override // vm2.lib.VarArgFunction, vm2.lib.LibFunction, vm2.LuaValue
            public Varargs invoke(Varargs varargs) {
                int iCheckint = varargs.arg(1).checkint() - 1;
                BuildingDraft buildingDraft = (BuildingDraft) DraftLibrary.resolveDraft(varargs.arg(2), BuildingDraft.class);
                Building building = buildingDraft != null ? CityLibrary.this.city.getBuildings().getBuildingsOfDraft(buildingDraft).get(iCheckint) : CityLibrary.this.city.getBuildings().get(iCheckint);
                if (building != null) {
                    return LuaValue.varargsOf(LuaValue.valueOf(building.getX()), LuaValue.valueOf(building.getY()));
                }
                return LuaValue.NIL;
            }
        });
        luaValue.set("forEachBuilding", new TwoArgFunction() { // from class: info.flowersoft.theotown.scripting.libraries.CityLibrary.42
            @Override // vm2.lib.TwoArgFunction, vm2.lib.LibFunction, vm2.LuaValue
            public LuaValue call(LuaValue luaValue3, LuaValue luaValue4) {
                Building building;
                LuaFunction luaFunctionCheckfunction = luaValue3.checkfunction();
                BuildingDraft buildingDraft = (BuildingDraft) DraftLibrary.resolveDraft(luaValue4, BuildingDraft.class);
                List buildingsOfDraft = buildingDraft != null ? CityLibrary.this.city.getBuildings().getBuildingsOfDraft(buildingDraft) : CityLibrary.this.city.getBuildings();
                for (int i = 0; i < buildingsOfDraft.size() && (building = (Building) buildingsOfDraft.get(i)) != null; i++) {
                    luaFunctionCheckfunction.call(LuaValue.valueOf(building.getX()), LuaValue.valueOf(building.getY()), building.getDraft().luaRepr);
                }
                return LuaValue.NIL;
            }
        });
        luaValue.set("countRoads", new OneArgFunction() { // from class: info.flowersoft.theotown.scripting.libraries.CityLibrary.43
            @Override // vm2.lib.OneArgFunction, vm2.lib.LibFunction, vm2.LuaValue
            public LuaValue call(LuaValue luaValue3) {
                RoadDraft roadDraft = (RoadDraft) DraftLibrary.resolveDraft(luaValue3, RoadDraft.class);
                return roadDraft != null ? LuaValue.valueOf(CityLibrary.this.city.getRoads().getRoadsOfDraft(roadDraft).size()) : LuaValue.valueOf(CityLibrary.this.city.getRoads().size());
            }
        });
        luaValue.set("getRoad", new VarArgFunction() { // from class: info.flowersoft.theotown.scripting.libraries.CityLibrary.44
            @Override // vm2.lib.VarArgFunction, vm2.lib.LibFunction, vm2.LuaValue
            public Varargs invoke(Varargs varargs) {
                int iCheckint = varargs.arg(1).checkint() - 1;
                RoadDraft roadDraft = (RoadDraft) DraftLibrary.resolveDraft(varargs.arg(2), RoadDraft.class);
                Road road = roadDraft != null ? CityLibrary.this.city.getRoads().getRoadsOfDraft(roadDraft).get(iCheckint) : CityLibrary.this.city.getRoads().get(iCheckint);
                if (road != null) {
                    return LuaValue.varargsOf(new LuaValue[]{LuaValue.valueOf(road.getX()), LuaValue.valueOf(road.getY()), LuaValue.valueOf(road.getLevel()), road.draft.luaRepr});
                }
                return LuaValue.NIL;
            }
        });
        luaValue.set("forEachRoad", new TwoArgFunction() { // from class: info.flowersoft.theotown.scripting.libraries.CityLibrary.45
            @Override // vm2.lib.TwoArgFunction, vm2.lib.LibFunction, vm2.LuaValue
            public LuaValue call(LuaValue luaValue3, LuaValue luaValue4) {
                Road road;
                LuaFunction luaFunctionCheckfunction = luaValue3.checkfunction();
                RoadDraft roadDraft = (RoadDraft) DraftLibrary.resolveDraft(luaValue4, RoadDraft.class);
                List roadsOfDraft = roadDraft != null ? CityLibrary.this.city.getRoads().getRoadsOfDraft(roadDraft) : CityLibrary.this.city.getRoads();
                for (int i = 0; i < roadsOfDraft.size() && (road = (Road) roadsOfDraft.get(i)) != null; i++) {
                    luaFunctionCheckfunction.invoke(new LuaValue[]{LuaValue.valueOf(road.getX()), LuaValue.valueOf(road.getY()), LuaValue.valueOf(road.getLevel()), road.draft.luaRepr});
                }
                return LuaValue.NIL;
            }
        });
        luaValue2.set("setTaxFactors", new TwoArgFunction() { // from class: info.flowersoft.theotown.scripting.libraries.CityLibrary.46
            @Override // vm2.lib.TwoArgFunction, vm2.lib.LibFunction, vm2.LuaValue
            public LuaValue call(LuaValue luaValue3, LuaValue luaValue4) {
                CityLibrary.this.assertPrivileged("taxes");
                String strCheckjstring = luaValue3.checkjstring();
                LuaTable luaTableOpttable = luaValue4.opttable(null);
                if (luaTableOpttable == null) {
                    CityLibrary.this.budget.removeTaxFactor(strCheckjstring);
                } else {
                    float[] fArr = new float[9];
                    int i = 0;
                    while (i < 9) {
                        int i2 = i + 1;
                        fArr[i] = luaTableOpttable.get(i2).checknumber().tofloat();
                        i = i2;
                    }
                    CityLibrary.this.budget.addTaxFactor(strCheckjstring, fArr);
                }
                return LuaValue.NIL;
            }
        });
        luaValue.set("getTax", new TwoArgFunction() { // from class: info.flowersoft.theotown.scripting.libraries.CityLibrary.47
            @Override // vm2.lib.TwoArgFunction, vm2.lib.LibFunction, vm2.LuaValue
            public LuaValue call(LuaValue luaValue3, LuaValue luaValue4) {
                int iCheckint = luaValue3.checkint();
                int iCheckint2 = luaValue4.checkint();
                if (iCheckint < 0 || iCheckint > 2) {
                    throw new IllegalArgumentException("Tax rci must be a valid TAX_ identifier");
                }
                if (iCheckint2 < 1 || iCheckint2 > 3) {
                    throw new IllegalArgumentException("Tax level must be in 1..3");
                }
                return LuaValue.valueOf(CityLibrary.this.budget.getTaxes(Zones.getInstance().resolveRci(iCheckint), iCheckint2 - 1));
            }
        });
        luaValue2.set("setTax", new ThreeArgFunction() { // from class: info.flowersoft.theotown.scripting.libraries.CityLibrary.48
            @Override // vm2.lib.ThreeArgFunction, vm2.lib.LibFunction, vm2.LuaValue
            public LuaValue call(LuaValue luaValue3, LuaValue luaValue4, LuaValue luaValue5) {
                CityLibrary.this.assertPrivileged("taxes");
                int iCheckint = luaValue3.checkint();
                int iCheckint2 = luaValue4.checkint();
                float f = luaValue5.checknumber().tofloat();
                if (iCheckint < 0 || iCheckint > 2) {
                    throw new IllegalArgumentException("Tax rci must be a valid TAX_ identifier");
                }
                if (iCheckint2 < 1 || iCheckint2 > 3) {
                    throw new IllegalArgumentException("Tax level must be in 1..3");
                }
                if (f < UnityAdsConstants.SafeGuards.InitRequestRetryPolicy.MIN_JITTER_PCT || f > 100.0f) {
                    throw new IllegalArgumentException("Tax must be in 0..100");
                }
                CityLibrary.this.budget.setTaxes(Zones.getInstance().resolveRci(iCheckint), iCheckint2 - 1, f);
                return LuaValue.NIL;
            }
        });
        luaValue.set("addBuildingListener", new OneArgFunction() { // from class: info.flowersoft.theotown.scripting.libraries.CityLibrary.49
            @Override // vm2.lib.OneArgFunction, vm2.lib.LibFunction, vm2.LuaValue
            public LuaValue call(LuaValue luaValue3) {
                LuaTable luaTableChecktable = luaValue3.checktable();
                BuildingDraft buildingDraft = (BuildingDraft) DraftLibrary.resolveDraft(luaTableChecktable.get("draft"), BuildingDraft.class);
                CityLibrary cityLibrary = CityLibrary.this;
                cityLibrary.addListener(cityLibrary.addedBuildingListeners, buildingDraft, ScriptMethod.resolve(luaTableChecktable, "added"));
                CityLibrary cityLibrary2 = CityLibrary.this;
                cityLibrary2.addListener(cityLibrary2.finishedBuildingListeners, buildingDraft, ScriptMethod.resolve(luaTableChecktable, "finished"));
                CityLibrary cityLibrary3 = CityLibrary.this;
                cityLibrary3.addListener(cityLibrary3.upgradedBuildingListeners, buildingDraft, ScriptMethod.resolve(luaTableChecktable, "upgraded"));
                CityLibrary cityLibrary4 = CityLibrary.this;
                cityLibrary4.addListener(cityLibrary4.removedBuildingListeners, buildingDraft, ScriptMethod.resolve(luaTableChecktable, "removed"));
                return LuaValue.NIL;
            }
        });
        luaValue.set("removeBuildingListener", new OneArgFunction() { // from class: info.flowersoft.theotown.scripting.libraries.CityLibrary.50
            @Override // vm2.lib.OneArgFunction, vm2.lib.LibFunction, vm2.LuaValue
            public LuaValue call(LuaValue luaValue3) {
                LuaTable luaTableChecktable = luaValue3.checktable();
                BuildingDraft buildingDraft = (BuildingDraft) DraftLibrary.resolveDraft(luaTableChecktable.get("draft"), BuildingDraft.class);
                CityLibrary cityLibrary = CityLibrary.this;
                boolean zRemoveListener = cityLibrary.removeListener(cityLibrary.addedBuildingListeners, buildingDraft, ScriptMethod.resolve(luaTableChecktable, "added"));
                CityLibrary cityLibrary2 = CityLibrary.this;
                boolean zRemoveListener2 = zRemoveListener | cityLibrary2.removeListener(cityLibrary2.finishedBuildingListeners, buildingDraft, ScriptMethod.resolve(luaTableChecktable, "finished"));
                CityLibrary cityLibrary3 = CityLibrary.this;
                boolean zRemoveListener3 = zRemoveListener2 | cityLibrary3.removeListener(cityLibrary3.upgradedBuildingListeners, buildingDraft, ScriptMethod.resolve(luaTableChecktable, "upgraded"));
                CityLibrary cityLibrary4 = CityLibrary.this;
                return LuaValue.valueOf(cityLibrary4.removeListener(cityLibrary4.removedBuildingListeners, buildingDraft, ScriptMethod.resolve(luaTableChecktable, "removed")) | zRemoveListener3);
            }
        });
        luaValue.set("addRoadListener", new OneArgFunction() { // from class: info.flowersoft.theotown.scripting.libraries.CityLibrary.51
            @Override // vm2.lib.OneArgFunction, vm2.lib.LibFunction, vm2.LuaValue
            public LuaValue call(LuaValue luaValue3) {
                LuaTable luaTableChecktable = luaValue3.checktable();
                RoadDraft roadDraft = (RoadDraft) DraftLibrary.resolveDraft(luaTableChecktable.get("draft"), RoadDraft.class);
                CityLibrary cityLibrary = CityLibrary.this;
                cityLibrary.addListener(cityLibrary.addedRoadListeners, roadDraft, ScriptMethod.resolve(luaTableChecktable, "added"));
                CityLibrary cityLibrary2 = CityLibrary.this;
                cityLibrary2.addListener(cityLibrary2.removedRoadListeners, roadDraft, ScriptMethod.resolve(luaTableChecktable, "removed"));
                return LuaValue.NIL;
            }
        });
        luaValue.set("removeRoadListener", new OneArgFunction() { // from class: info.flowersoft.theotown.scripting.libraries.CityLibrary.52
            @Override // vm2.lib.OneArgFunction, vm2.lib.LibFunction, vm2.LuaValue
            public LuaValue call(LuaValue luaValue3) {
                LuaTable luaTableChecktable = luaValue3.checktable();
                RoadDraft roadDraft = (RoadDraft) DraftLibrary.resolveDraft(luaTableChecktable.get("draft"), RoadDraft.class);
                CityLibrary cityLibrary = CityLibrary.this;
                boolean zRemoveListener = cityLibrary.removeListener(cityLibrary.addedRoadListeners, roadDraft, ScriptMethod.resolve(luaTableChecktable, "added"));
                CityLibrary cityLibrary2 = CityLibrary.this;
                return LuaValue.valueOf(cityLibrary2.removeListener(cityLibrary2.removedRoadListeners, roadDraft, ScriptMethod.resolve(luaTableChecktable, "removed")) | zRemoveListener);
            }
        });
        luaValue.set("removeAllListeners", new ZeroArgFunction() { // from class: info.flowersoft.theotown.scripting.libraries.CityLibrary.53
            @Override // vm2.lib.ZeroArgFunction, vm2.lib.LibFunction, vm2.LuaValue
            public LuaValue call() {
                Script currentScript = ScriptingEnvironment.getInstance().getCurrentScript();
                if (currentScript == null) {
                    return LuaValue.NIL;
                }
                return LuaValue.valueOf(CityLibrary.this.removeScriptListeners(currentScript));
            }
        });
        luaValue.set("playSound", new VarArgFunction() { // from class: info.flowersoft.theotown.scripting.libraries.CityLibrary.54
            @Override // vm2.lib.VarArgFunction, vm2.lib.LibFunction, vm2.LuaValue
            public Varargs invoke(Varargs varargs) {
                DefaultSoundManager defaultSoundManager = (DefaultSoundManager) CityLibrary.this.city.getComponent(15);
                LuaValue luaValueArg = varargs.arg(1);
                LuaValue luaValueArg2 = varargs.arg(2);
                LuaValue luaValueArg3 = varargs.arg(3);
                LuaValue luaValueArg4 = varargs.arg(4);
                LuaValue luaValueArg5 = varargs.arg(5);
                float fOptdouble = (float) luaValueArg4.optdouble(1.0d);
                int iCheckint = 0;
                boolean zOptboolean = luaValueArg5.optboolean(false);
                if (luaValueArg.isint()) {
                    iCheckint = luaValueArg.checkint();
                } else {
                    SoundDraft soundDraft = (SoundDraft) DraftLibrary.resolveDraft(luaValueArg, SoundDraft.class);
                    if (soundDraft != null) {
                        fOptdouble *= soundDraft.volume;
                        iCheckint = soundDraft.sound;
                    }
                }
                int iCheckint2 = luaValueArg2.checkint();
                int iCheckint3 = luaValueArg3.checkint();
                if (iCheckint > 0) {
                    TileSoundSource tileSoundSource = new TileSoundSource(CityLibrary.this.city, iCheckint2, iCheckint3, 1, 1);
                    tileSoundSource.setVolume(fOptdouble);
                    if (zOptboolean) {
                        defaultSoundManager.playLoop(iCheckint, SoundType.PLUGIN, tileSoundSource);
                    } else {
                        defaultSoundManager.playOnce(iCheckint, SoundType.PLUGIN, tileSoundSource);
                    }
                    return CityLibrary.this.buildSoundTable(tileSoundSource);
                }
                return LuaValue.NIL;
            }
        });
        luaValue.set("createDraftDrawer", new ThreeArgFunction() { // from class: info.flowersoft.theotown.scripting.libraries.CityLibrary.55
            @Override // vm2.lib.ThreeArgFunction, vm2.lib.LibFunction, vm2.LuaValue
            public LuaValue call(LuaValue luaValue3, LuaValue luaValue4, LuaValue luaValue5) {
                SelectableDraft selectableDraftResolve;
                Draft draftResolveDraft = DraftLibrary.resolveDraft(luaValue3, Draft.class);
                boolean zOptboolean = luaValue4.optboolean(false);
                Color color = null;
                String strOptjstring = luaValue5.optjstring(null);
                if (strOptjstring != null) {
                    color = new Color();
                    Color.fromHex(strOptjstring, Colors.WHITE, color);
                }
                if (draftResolveDraft != null && CityLibrary.this.city != null && (selectableDraftResolve = new SelectableResolver(CityLibrary.this.city).resolve(draftResolveDraft, zOptboolean, color)) != null) {
                    return CityLibrary.this.buildDraftDrawerTable(selectableDraftResolve, draftResolveDraft);
                }
                return LuaValue.NIL;
            }
        });
        luaValue.set("getToolName", new ZeroArgFunction() { // from class: info.flowersoft.theotown.scripting.libraries.CityLibrary.56
            @Override // vm2.lib.ZeroArgFunction, vm2.lib.LibFunction, vm2.LuaValue
            public LuaValue call() {
                return LuaValue.valueOf(((Tool) CityLibrary.this.city.getComponent(13)).getName());
            }
        });
        luaValue.set("getToolId", new ZeroArgFunction() { // from class: info.flowersoft.theotown.scripting.libraries.CityLibrary.57
            @Override // vm2.lib.ZeroArgFunction, vm2.lib.LibFunction, vm2.LuaValue
            public LuaValue call() {
                return LuaValue.valueOf(((Tool) CityLibrary.this.city.getComponent(13)).getId());
            }
        });
        luaValue.set("getXp", new ZeroArgFunction() { // from class: info.flowersoft.theotown.scripting.libraries.CityLibrary.58
            @Override // vm2.lib.ZeroArgFunction, vm2.lib.LibFunction, vm2.LuaValue
            public LuaValue call() {
                return LuaValue.valueOf(CityLibrary.this.city.getTargetXp());
            }
        });
        luaValue.set("setXp", new OneArgFunction() { // from class: info.flowersoft.theotown.scripting.libraries.CityLibrary.59
            @Override // vm2.lib.OneArgFunction, vm2.lib.LibFunction, vm2.LuaValue
            public LuaValue call(LuaValue luaValue3) {
                ScriptingEnvironment.getInstance().assertPrivileged("setXp");
                CityLibrary.this.city.setTargetXp(luaValue3.checkint());
                return LuaValue.NIL;
            }
        });
        luaValue.set("getRank", new VarArgFunction() { // from class: info.flowersoft.theotown.scripting.libraries.CityLibrary.60
            @Override // vm2.lib.VarArgFunction, vm2.lib.LibFunction, vm2.LuaValue
            public Varargs invoke(Varargs varargs) {
                RankDraft rank = CityLibrary.this.city.getRank();
                if (rank == null) {
                    return LuaValue.NIL;
                }
                return LuaValue.varargsOf(rank.luaRepr, LuaValue.valueOf(rank.ordinal));
            }
        });
        luaValue.set("isSandbox", new ZeroArgFunction() { // from class: info.flowersoft.theotown.scripting.libraries.CityLibrary.61
            @Override // vm2.lib.ZeroArgFunction, vm2.lib.LibFunction, vm2.LuaValue
            public LuaValue call() {
                return LuaValue.valueOf(CityLibrary.this.city.getGameMode().hasInfinityMoney());
            }
        });
        luaValue.set("isReadonly", new ZeroArgFunction() { // from class: info.flowersoft.theotown.scripting.libraries.CityLibrary.62
            @Override // vm2.lib.ZeroArgFunction, vm2.lib.LibFunction, vm2.LuaValue
            public LuaValue call() {
                return LuaValue.valueOf(CityLibrary.this.city.isReadonly());
            }
        });
        luaValue.set("isOnline", new ZeroArgFunction() { // from class: info.flowersoft.theotown.scripting.libraries.CityLibrary.63
            @Override // vm2.lib.ZeroArgFunction, vm2.lib.LibFunction, vm2.LuaValue
            public LuaValue call() {
                return LuaValue.valueOf(CityLibrary.this.city.isOnline());
            }
        });
        luaValue.set("countZones", new OneArgFunction() { // from class: info.flowersoft.theotown.scripting.libraries.CityLibrary.64
            @Override // vm2.lib.OneArgFunction, vm2.lib.LibFunction, vm2.LuaValue
            public LuaValue call(LuaValue luaValue3) {
                int[] zoneCounter = CityLibrary.this.city.getZoneCounter();
                if (luaValue3.isnil()) {
                    int i = 0;
                    for (int i2 : zoneCounter) {
                        i += i2;
                    }
                    return LuaValue.valueOf(i);
                }
                return LuaValue.valueOf(zoneCounter[((ZoneDraft) DraftLibrary.resolveDraft(luaValue3, ZoneDraft.class)).tempId]);
            }
        });
        luaValue.set("isLeftSideTraffic", new ZeroArgFunction() { // from class: info.flowersoft.theotown.scripting.libraries.CityLibrary.65
            @Override // vm2.lib.ZeroArgFunction, vm2.lib.LibFunction, vm2.LuaValue
            public LuaValue call() {
                return LuaValue.valueOf(CityLibrary.this.city.isLeftSideTraffic());
            }
        });
        luaValue.set("setLeftSideTraffic", new OneArgFunction() { // from class: info.flowersoft.theotown.scripting.libraries.CityLibrary.66
            @Override // vm2.lib.OneArgFunction, vm2.lib.LibFunction, vm2.LuaValue
            public LuaValue call(LuaValue luaValue3) {
                boolean zIsLeftSideTraffic = CityLibrary.this.city.isLeftSideTraffic();
                boolean zCheckboolean = luaValue3.checkboolean();
                if (zIsLeftSideTraffic != zCheckboolean) {
                    CityLibrary.this.city.setLeftSideTraffic(zCheckboolean);
                    Drafts.setLeftSideTraffic(zCheckboolean);
                }
                return LuaValue.valueOf(zIsLeftSideTraffic);
            }
        });
    }

    /* JADX INFO: renamed from: info.flowersoft.theotown.scripting.libraries.CityLibrary$31, reason: invalid class name */
    public class AnonymousClass31 extends VarArgFunction {
        public static /* synthetic */ Building $r8$lambda$yxsa3sDsNJi7DoHKHZz2OtbyFCU(Building building) {
            return building;
        }

        public AnonymousClass31() {
        }

        @Override // vm2.lib.VarArgFunction, vm2.lib.LibFunction, vm2.LuaValue
        public Varargs invoke(Varargs varargs) {
            LuaTable luaTableChecktable;
            String string;
            NotificationDraft notificationDraft = (NotificationDraft) DraftLibrary.resolveDraft(varargs.arg(1), NotificationDraft.class);
            ViewportDraft viewportDraft = (ViewportDraft) DraftLibrary.resolveDraft(varargs.arg(1), ViewportDraft.class);
            if (notificationDraft != null) {
                luaTableChecktable = LuaValue.tableOf();
                luaTableChecktable.set(LuaValue.valueOf("notification"), LuaValue.valueOf(notificationDraft.id));
            } else if (varargs.isnumber(1) || viewportDraft != null) {
                LuaTable luaTableTableOf = LuaValue.tableOf();
                luaTableTableOf.set(LuaValue.valueOf(C3522b4.i.H0), LuaValue.valueOf(viewportDraft != null ? viewportDraft.frames[0] : varargs.checkint(1)));
                luaTableTableOf.set(LuaValue.valueOf(C3522b4.i.K0), varargs.checkstring(2));
                luaTableTableOf.set(LuaValue.valueOf("locationX"), varargs.arg(3));
                luaTableTableOf.set(LuaValue.valueOf("locationY"), varargs.arg(4));
                luaTableChecktable = luaTableTableOf;
            } else if (varargs.istable(1)) {
                luaTableChecktable = varargs.checktable(1);
            } else {
                throw new IllegalArgumentException("First argument is of unexpected type " + varargs.arg1().typename());
            }
            NotificationDraft notificationDraft2 = (NotificationDraft) DraftLibrary.resolveDraft(luaTableChecktable.get("notification"), NotificationDraft.class);
            LuaValue luaValue = luaTableChecktable.get(C3670j8.x);
            if (notificationDraft2 != null) {
                string = "$notify_notificationdraft_" + notificationDraft2.id;
            } else {
                string = UUID.randomUUID().toString();
            }
            String strOptjstring = luaValue.optjstring(string);
            int iOptint = luaTableChecktable.get(C3522b4.i.H0).optint(notificationDraft2 != null ? notificationDraft2.frames[0] : 0);
            String strOptjstring2 = luaTableChecktable.get(C3522b4.i.D0).optjstring(notificationDraft2 != null ? CityLibrary.this.localizer.getTitle(notificationDraft2) : "No title");
            String strOptjstring3 = luaTableChecktable.get(C3522b4.i.K0).optjstring(notificationDraft2 != null ? CityLibrary.this.localizer.getText(notificationDraft2) : "No text");
            boolean zOptboolean = luaTableChecktable.get("important").optboolean(notificationDraft2 != null && notificationDraft2.important);
            boolean zOptboolean2 = luaTableChecktable.get("question").optboolean(notificationDraft2 != null && notificationDraft2.question);
            boolean zOptboolean3 = luaTableChecktable.get("optionOk").optboolean(zOptboolean2);
            boolean zOptboolean4 = luaTableChecktable.get("closeable").optboolean(notificationDraft2 == null || notificationDraft2.closeable);
            LuaFunction luaFunctionOptfunction = luaTableChecktable.get("onOk").optfunction(null);
            LuaFunction luaFunctionOptfunction2 = luaTableChecktable.get("onCancel").optfunction(null);
            final LuaFunction luaFunctionOptfunction3 = luaTableChecktable.get("onClose").optfunction(null);
            boolean zOptboolean5 = luaTableChecktable.get(C3522b4.i.v).optboolean(notificationDraft2 != null && notificationDraft2.immersive);
            boolean zOptboolean6 = luaTableChecktable.get("showOnce").optboolean(notificationDraft2 == null || notificationDraft2.showOnce);
            int iOptint2 = luaTableChecktable.get("locationX").optint(-1);
            int iOptint3 = luaTableChecktable.get("locationY").optint(-1);
            boolean z = iOptint2 >= 0 && iOptint3 >= 0;
            boolean zOptboolean7 = luaTableChecktable.get("show").optboolean(true);
            final LuaFunction luaFunctionOptfunction4 = luaTableChecktable.get("condition").optfunction(null);
            LuaTable luaTableOpttable = luaTableChecktable.get("actions").opttable(null);
            final Script currentScript = ScriptingEnvironment.getInstance().getCurrentScript();
            AnonymousClass1 anonymousClass1 = new AnonymousClass1(CityLibrary.this.city, luaTableOpttable, currentScript, zOptboolean2, luaFunctionOptfunction2, zOptboolean3, luaFunctionOptfunction);
            anonymousClass1.setId(strOptjstring);
            anonymousClass1.setIcon(iOptint);
            anonymousClass1.setText(strOptjstring3);
            anonymousClass1.setTitle(strOptjstring2);
            anonymousClass1.setImportant(zOptboolean);
            anonymousClass1.setCloseable(zOptboolean4 && !zOptboolean2);
            if (anonymousClass1.isCloseable() && luaFunctionOptfunction3 != null) {
                anonymousClass1.setOnClose(new Runnable() { // from class: info.flowersoft.theotown.scripting.libraries.CityLibrary$31$$ExternalSyntheticLambda0
                    @Override // java.lang.Runnable
                    public final void run() {
                        ScriptingEnvironment.getInstance().postponeTask(new Runnable() { // from class: info.flowersoft.theotown.scripting.libraries.CityLibrary$31$$ExternalSyntheticLambda3
                            @Override // java.lang.Runnable
                            public final void run() {
                                luaFunction.call();
                            }
                        }, currentScript);
                    }
                });
            }
            if (luaFunctionOptfunction4 == null) {
                anonymousClass1.setCondition(new TrueCondition(CityLibrary.this.city));
            } else {
                anonymousClass1.setCondition(new Condition(CityLibrary.this.city) { // from class: info.flowersoft.theotown.scripting.libraries.CityLibrary.31.2
                    @Override // info.flowersoft.theotown.components.notification.condition.Condition, info.flowersoft.theotown.city.components.AbstractCondition
                    public boolean evaluate() {
                        return luaFunctionOptfunction4.call().optboolean(false);
                    }
                });
            }
            anonymousClass1.setImmersive(zOptboolean5);
            anonymousClass1.setShowOnlyOnce(zOptboolean6);
            if (z && CityLibrary.this.city.isValid(iOptint2, iOptint3)) {
                final Building building = CityLibrary.this.tiles.getBuilding(iOptint2, iOptint3);
                if (building != null) {
                    anonymousClass1.setLocationBuildingProvider(new Getter() { // from class: info.flowersoft.theotown.scripting.libraries.CityLibrary$31$$ExternalSyntheticLambda1
                        @Override // io.blueflower.stapel2d.util.Getter
                        public final Object get() {
                            return CityLibrary.AnonymousClass31.$r8$lambda$yxsa3sDsNJi7DoHKHZz2OtbyFCU(building);
                        }
                    });
                } else {
                    final long j = iOptint2;
                    final long j2 = iOptint3;
                    anonymousClass1.setLocationProvider(new Getter() { // from class: info.flowersoft.theotown.scripting.libraries.CityLibrary$31$$ExternalSyntheticLambda2
                        @Override // io.blueflower.stapel2d.util.Getter
                        public final Object get() {
                            return CityLibrary.AnonymousClass31.m2179$r8$lambda$BRHKtsJ6TqCM70T7fTzMoRBwGo(j, j2);
                        }
                    });
                }
            }
            DefaultNotificator defaultNotificator = (DefaultNotificator) CityLibrary.this.city.getComponent(4);
            if (zOptboolean7) {
                defaultNotificator.showNotification(anonymousClass1);
            } else {
                defaultNotificator.addNotification(anonymousClass1);
            }
            return LuaValue.NIL;
        }

        /* JADX INFO: renamed from: info.flowersoft.theotown.scripting.libraries.CityLibrary$31$1, reason: invalid class name */
        public class AnonymousClass1 extends SimpleNotification {
            public final /* synthetic */ LuaTable val$luaActions;
            public final /* synthetic */ LuaFunction val$onCancel;
            public final /* synthetic */ LuaFunction val$onOk;
            public final /* synthetic */ boolean val$optionOk;
            public final /* synthetic */ boolean val$question;
            public final /* synthetic */ Script val$script;

            /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
            public AnonymousClass1(City city, LuaTable luaTable, Script script, boolean z, LuaFunction luaFunction, boolean z2, LuaFunction luaFunction2) {
                super(city);
                this.val$luaActions = luaTable;
                this.val$script = script;
                this.val$question = z;
                this.val$onCancel = luaFunction;
                this.val$optionOk = z2;
                this.val$onOk = luaFunction2;
            }

            @Override // info.flowersoft.theotown.city.components.Notification
            public List<NotificationAction> getActions() {
                List<NotificationAction> actions = super.getActions();
                LuaTable luaTable = this.val$luaActions;
                if (luaTable != null && luaTable.length() > 0) {
                    for (int i = 1; i <= this.val$luaActions.length(); i++) {
                        LuaTable luaTableOpttable = this.val$luaActions.get(i).opttable(null);
                        if (luaTableOpttable == null && !this.val$luaActions.get(C3522b4.i.H0).isnil()) {
                            luaTableOpttable = this.val$luaActions;
                        }
                        if (luaTableOpttable != null) {
                            int iOptint = luaTableOpttable.get(C3522b4.i.H0).optint(0);
                            luaTableOpttable.get(C3522b4.i.K0).optjstring(null);
                            final LuaFunction luaFunctionOptfunction = luaTableOpttable.get("onClick").optfunction(null);
                            final Script script = this.val$script;
                            actions.add(new NotificationAction(iOptint, new Runnable() { // from class: info.flowersoft.theotown.scripting.libraries.CityLibrary$31$1$$ExternalSyntheticLambda0
                                @Override // java.lang.Runnable
                                public final void run() {
                                    CityLibrary.AnonymousClass31.AnonymousClass1.$r8$lambda$6N51rcig4_A6a7xnKvEZFfe4RyE(this.f$0, luaFunctionOptfunction, script);
                                }
                            }));
                        }
                    }
                }
                if (this.val$question) {
                    int i2 = Resources.ICON_CANCEL;
                    final LuaFunction luaFunction = this.val$onCancel;
                    final Script script2 = this.val$script;
                    actions.add(0, new NotificationAction(i2, new Runnable() { // from class: info.flowersoft.theotown.scripting.libraries.CityLibrary$31$1$$ExternalSyntheticLambda1
                        @Override // java.lang.Runnable
                        public final void run() {
                            CityLibrary.AnonymousClass31.AnonymousClass1.$r8$lambda$PABTNWawZXuUIHSRJBfk2H0IFh4(this.f$0, luaFunction, script2);
                        }
                    }));
                    if (this.val$optionOk) {
                        int i3 = Resources.ICON_OK;
                        final LuaFunction luaFunction2 = this.val$onOk;
                        final Script script3 = this.val$script;
                        actions.add(0, new NotificationAction(i3, new Runnable() { // from class: info.flowersoft.theotown.scripting.libraries.CityLibrary$31$1$$ExternalSyntheticLambda2
                            @Override // java.lang.Runnable
                            public final void run() {
                                CityLibrary.AnonymousClass31.AnonymousClass1.m2182$r8$lambda$0jQZ22nlGHNkpxWkj5vQPgnIe4(this.f$0, luaFunction2, script3);
                            }
                        }));
                    }
                }
                return actions;
            }

            public static /* synthetic */ void $r8$lambda$6N51rcig4_A6a7xnKvEZFfe4RyE(AnonymousClass1 anonymousClass1, final LuaFunction luaFunction, Script script) {
                anonymousClass1.close();
                if (luaFunction != null) {
                    ScriptingEnvironment.getInstance().postponeTask(new Runnable() { // from class: info.flowersoft.theotown.scripting.libraries.CityLibrary$31$1$$ExternalSyntheticLambda5
                        @Override // java.lang.Runnable
                        public final void run() {
                            luaFunction.invoke();
                        }
                    }, script);
                }
            }

            public static /* synthetic */ void $r8$lambda$PABTNWawZXuUIHSRJBfk2H0IFh4(AnonymousClass1 anonymousClass1, final LuaFunction luaFunction, Script script) {
                anonymousClass1.close();
                if (luaFunction != null) {
                    ScriptingEnvironment.getInstance().postponeTask(new Runnable() { // from class: info.flowersoft.theotown.scripting.libraries.CityLibrary$31$1$$ExternalSyntheticLambda4
                        @Override // java.lang.Runnable
                        public final void run() {
                            luaFunction.call();
                        }
                    }, script);
                }
            }

            /* JADX INFO: renamed from: $r8$lambda$0jQZ22n-lGHNkpxWkj5vQPgnIe4, reason: not valid java name */
            public static /* synthetic */ void m2182$r8$lambda$0jQZ22nlGHNkpxWkj5vQPgnIe4(AnonymousClass1 anonymousClass1, final LuaFunction luaFunction, Script script) {
                anonymousClass1.close();
                if (luaFunction != null) {
                    ScriptingEnvironment.getInstance().postponeTask(new Runnable() { // from class: info.flowersoft.theotown.scripting.libraries.CityLibrary$31$1$$ExternalSyntheticLambda3
                        @Override // java.lang.Runnable
                        public final void run() {
                            luaFunction.call();
                        }
                    }, script);
                }
            }
        }

        /* JADX INFO: renamed from: $r8$lambda$BRHKtsJ6TqCM70T7fTzMoR-BwGo, reason: not valid java name */
        public static /* synthetic */ float[] m2179$r8$lambda$BRHKtsJ6TqCM70T7fTzMoRBwGo(long j, long j2) {
            return new float[]{j, j2};
        }
    }

    /* JADX INFO: renamed from: info.flowersoft.theotown.scripting.libraries.CityLibrary$37, reason: invalid class name */
    public class AnonymousClass37 extends TwoArgFunction {
        public AnonymousClass37() {
        }

        @Override // vm2.lib.TwoArgFunction, vm2.lib.LibFunction, vm2.LuaValue
        public LuaValue call(LuaValue luaValue, LuaValue luaValue2) {
            String strCheckjstring = luaValue.checkjstring();
            final LuaFunction luaFunctionCheckfunction = luaValue2.checkfunction();
            new ConsoleStage(CityLibrary.this.context, CityLibrary.this.city, null, false).process(strCheckjstring, new Setter() { // from class: info.flowersoft.theotown.scripting.libraries.CityLibrary$37$$ExternalSyntheticLambda0
                @Override // io.blueflower.stapel2d.util.Setter
                public final void set(Object obj) {
                    luaFunctionCheckfunction.call(LuaValue.valueOf((String) obj));
                }
            });
            return LuaValue.NIL;
        }
    }

    public final LuaTable buildSoundTable(final TileSoundSource tileSoundSource) {
        LuaTable luaTableTableOf = LuaValue.tableOf();
        luaTableTableOf.set("stop", new ZeroArgFunction() { // from class: info.flowersoft.theotown.scripting.libraries.CityLibrary.67
            @Override // vm2.lib.ZeroArgFunction, vm2.lib.LibFunction, vm2.LuaValue
            public LuaValue call() {
                tileSoundSource.setValid(false);
                return LuaValue.NIL;
            }
        });
        luaTableTableOf.set("setVolume", new TwoArgFunction() { // from class: info.flowersoft.theotown.scripting.libraries.CityLibrary.68
            @Override // vm2.lib.TwoArgFunction, vm2.lib.LibFunction, vm2.LuaValue
            public LuaValue call(LuaValue luaValue, LuaValue luaValue2) {
                tileSoundSource.setVolume((float) luaValue.checkdouble());
                return LuaValue.NIL;
            }
        });
        luaTableTableOf.set("setRate", new OneArgFunction() { // from class: info.flowersoft.theotown.scripting.libraries.CityLibrary.69
            @Override // vm2.lib.OneArgFunction, vm2.lib.LibFunction, vm2.LuaValue
            public LuaValue call(LuaValue luaValue) {
                return LuaValue.NIL;
            }
        });
        luaTableTableOf.set("setPosition", new TwoArgFunction() { // from class: info.flowersoft.theotown.scripting.libraries.CityLibrary.70
            @Override // vm2.lib.TwoArgFunction, vm2.lib.LibFunction, vm2.LuaValue
            public LuaValue call(LuaValue luaValue, LuaValue luaValue2) {
                tileSoundSource.setX(luaValue.optint(0));
                tileSoundSource.setY(luaValue2.optint(0));
                return LuaValue.NIL;
            }
        });
        luaTableTableOf.set("setSize", new TwoArgFunction() { // from class: info.flowersoft.theotown.scripting.libraries.CityLibrary.71
            @Override // vm2.lib.TwoArgFunction, vm2.lib.LibFunction, vm2.LuaValue
            public LuaValue call(LuaValue luaValue, LuaValue luaValue2) {
                tileSoundSource.setW(luaValue.optint(0));
                tileSoundSource.setH(luaValue2.optint(0));
                return LuaValue.NIL;
            }
        });
        return luaTableTableOf;
    }

    public final LuaTable buildDraftDrawerTable(final SelectableDraft selectableDraft, final Draft draft) {
        LuaTable luaTableTableOf = LuaValue.tableOf();
        luaTableTableOf.set("getWidth", new ZeroArgFunction() { // from class: info.flowersoft.theotown.scripting.libraries.CityLibrary.72
            @Override // vm2.lib.ZeroArgFunction, vm2.lib.LibFunction, vm2.LuaValue
            public LuaValue call() {
                return LuaValue.valueOf(selectableDraft.getPreviewWidth());
            }
        });
        luaTableTableOf.set("getHeight", new ZeroArgFunction() { // from class: info.flowersoft.theotown.scripting.libraries.CityLibrary.73
            @Override // vm2.lib.ZeroArgFunction, vm2.lib.LibFunction, vm2.LuaValue
            public LuaValue call() {
                return LuaValue.valueOf(selectableDraft.getPreviewWidth());
            }
        });
        luaTableTableOf.set("getTitle", new ZeroArgFunction() { // from class: info.flowersoft.theotown.scripting.libraries.CityLibrary.74
            @Override // vm2.lib.ZeroArgFunction, vm2.lib.LibFunction, vm2.LuaValue
            public LuaValue call() {
                return LuaValue.valueOf(selectableDraft.getTitle());
            }
        });
        luaTableTableOf.set("getText", new ZeroArgFunction() { // from class: info.flowersoft.theotown.scripting.libraries.CityLibrary.75
            @Override // vm2.lib.ZeroArgFunction, vm2.lib.LibFunction, vm2.LuaValue
            public LuaValue call() {
                return LuaValue.valueOf(selectableDraft.getText());
            }
        });
        luaTableTableOf.set("getPrice", new ZeroArgFunction() { // from class: info.flowersoft.theotown.scripting.libraries.CityLibrary.76
            @Override // vm2.lib.ZeroArgFunction, vm2.lib.LibFunction, vm2.LuaValue
            public LuaValue call() {
                return LuaValue.valueOf(selectableDraft.getPrice());
            }
        });
        luaTableTableOf.set("getMonthlyPrice", new ZeroArgFunction() { // from class: info.flowersoft.theotown.scripting.libraries.CityLibrary.77
            @Override // vm2.lib.ZeroArgFunction, vm2.lib.LibFunction, vm2.LuaValue
            public LuaValue call() {
                return LuaValue.valueOf(selectableDraft.getMonthlyPrice());
            }
        });
        luaTableTableOf.set("getDiamondPrice", new ZeroArgFunction() { // from class: info.flowersoft.theotown.scripting.libraries.CityLibrary.78
            @Override // vm2.lib.ZeroArgFunction, vm2.lib.LibFunction, vm2.LuaValue
            public LuaValue call() {
                return LuaValue.valueOf(selectableDraft.getDiamondPrice());
            }
        });
        luaTableTableOf.set("isActive", new ZeroArgFunction() { // from class: info.flowersoft.theotown.scripting.libraries.CityLibrary.79
            @Override // vm2.lib.ZeroArgFunction, vm2.lib.LibFunction, vm2.LuaValue
            public LuaValue call() {
                return LuaValue.valueOf(selectableDraft.isActive());
            }
        });
        luaTableTableOf.set("isSelectable", new ZeroArgFunction() { // from class: info.flowersoft.theotown.scripting.libraries.CityLibrary.80
            @Override // vm2.lib.ZeroArgFunction, vm2.lib.LibFunction, vm2.LuaValue
            public LuaValue call() {
                return LuaValue.valueOf(selectableDraft.isSelectable());
            }
        });
        luaTableTableOf.set("getRequirements", new OneArgFunction() { // from class: info.flowersoft.theotown.scripting.libraries.CityLibrary.81
            @Override // vm2.lib.OneArgFunction, vm2.lib.LibFunction, vm2.LuaValue
            public LuaValue call(LuaValue luaValue) {
                List<SingleRequirement> singleRequirements = draft.getRequirement().getSingleRequirements();
                ArrayList arrayList = new ArrayList();
                boolean zHasRequirements = CityLibrary.this.city.getGameMode().hasRequirements();
                for (int i = 0; i < singleRequirements.size(); i++) {
                    SingleRequirement singleRequirement = singleRequirements.get(i);
                    singleRequirement.setContext(null);
                    if (!singleRequirement.autoFulfilledInSandboxMode() || zHasRequirements) {
                        boolean zIsFulfilled = singleRequirement.isFulfilled(CityLibrary.this.city);
                        if (zIsFulfilled == luaValue.optboolean(zIsFulfilled)) {
                            arrayList.add(LuaValue.valueOf(singleRequirement.localize(CityLibrary.this.context.getTranslator(), CityLibrary.this.city)));
                            if (singleRequirement.isImportant()) {
                                break;
                            }
                        } else {
                            continue;
                        }
                    }
                }
                return ArrayLibrary.createRawTable(arrayList);
            }
        });
        luaTableTableOf.set("hasFrames", new ZeroArgFunction() { // from class: info.flowersoft.theotown.scripting.libraries.CityLibrary.82
            @Override // vm2.lib.ZeroArgFunction, vm2.lib.LibFunction, vm2.LuaValue
            public LuaValue call() {
                return LuaValue.valueOf(selectableDraft.countFrames() > 1);
            }
        });
        luaTableTableOf.set("nextFrame", new ZeroArgFunction() { // from class: info.flowersoft.theotown.scripting.libraries.CityLibrary.83
            @Override // vm2.lib.ZeroArgFunction, vm2.lib.LibFunction, vm2.LuaValue
            public LuaValue call() {
                selectableDraft.nextFrame();
                return LuaValue.NIL;
            }
        });
        luaTableTableOf.set("prevFrame", new ZeroArgFunction() { // from class: info.flowersoft.theotown.scripting.libraries.CityLibrary.84
            @Override // vm2.lib.ZeroArgFunction, vm2.lib.LibFunction, vm2.LuaValue
            public LuaValue call() {
                selectableDraft.prevFrame();
                return LuaValue.NIL;
            }
        });
        luaTableTableOf.set("getDraft", new ZeroArgFunction() { // from class: info.flowersoft.theotown.scripting.libraries.CityLibrary.85
            @Override // vm2.lib.ZeroArgFunction, vm2.lib.LibFunction, vm2.LuaValue
            public LuaValue call() {
                return draft.luaRepr;
            }
        });
        luaTableTableOf.set("select", new ZeroArgFunction() { // from class: info.flowersoft.theotown.scripting.libraries.CityLibrary.86
            @Override // vm2.lib.ZeroArgFunction, vm2.lib.LibFunction, vm2.LuaValue
            public LuaValue call() {
                selectableDraft.select();
                CityLibrary.this.addToHistory(selectableDraft);
                return LuaValue.NIL;
            }
        });
        luaTableTableOf.set("markAsUsed", new ZeroArgFunction() { // from class: info.flowersoft.theotown.scripting.libraries.CityLibrary.87
            @Override // vm2.lib.ZeroArgFunction, vm2.lib.LibFunction, vm2.LuaValue
            public LuaValue call() {
                CityLibrary.this.addToHistory(selectableDraft);
                return LuaValue.NIL;
            }
        });
        luaTableTableOf.set("draw", new VarArgFunction() { // from class: info.flowersoft.theotown.scripting.libraries.CityLibrary.88
            @Override // vm2.lib.VarArgFunction, vm2.lib.LibFunction, vm2.LuaValue
            public Varargs invoke(Varargs varargs) {
                float fCheckdouble = (float) varargs.arg(1).checkdouble();
                float fCheckdouble2 = (float) varargs.arg(2).checkdouble();
                float fOptdouble = (float) varargs.arg(3).optdouble(-1.0d);
                float fOptdouble2 = (float) varargs.arg(4).optdouble(-1.0d);
                Engine engine = CityLibrary.this.context.getEngine();
                if (fOptdouble >= UnityAdsConstants.SafeGuards.InitRequestRetryPolicy.MIN_JITTER_PCT && fOptdouble2 >= UnityAdsConstants.SafeGuards.InitRequestRetryPolicy.MIN_JITTER_PCT) {
                    int previewWidth = selectableDraft.getPreviewWidth();
                    int previewHeight = selectableDraft.getPreviewHeight();
                    float scaleX = engine.getScaleX();
                    float scaleY = engine.getScaleY();
                    float f = previewWidth;
                    float f2 = previewHeight;
                    float fMin = Math.min(1.0f, Math.min(fOptdouble / f, fOptdouble2 / f2));
                    engine.setScale(fMin, fMin);
                    selectableDraft.drawPreview(engine, (int) (fCheckdouble + ((fOptdouble - (f * fMin)) * 0.5f)), (int) (fCheckdouble2 + ((fOptdouble2 - (f2 * fMin)) * 0.5f)));
                    engine.setScale(scaleX, scaleY);
                } else {
                    selectableDraft.drawPreview(engine, (int) fCheckdouble, (int) fCheckdouble2);
                }
                return LuaValue.NIL;
            }
        });
        luaTableTableOf.set("getHistory", new ZeroArgFunction() { // from class: info.flowersoft.theotown.scripting.libraries.CityLibrary.89
            @Override // vm2.lib.ZeroArgFunction, vm2.lib.LibFunction, vm2.LuaValue
            public LuaValue call() {
                return CityLibrary.this.getHistory(selectableDraft);
            }
        });
        return luaTableTableOf;
    }

    public final void addToHistory(SelectableDraft selectableDraft) {
        Master master = selectableDraft.getMaster();
        if (master != null) {
            Gadget gadgetFindChildWithId = master.findChildWithId("roottoolbar");
            if (gadgetFindChildWithId instanceof ToolBar) {
                ((ToolBar) gadgetFindChildWithId).registerForUse(selectableDraft.getDraft().id);
            }
        }
    }

    public final LuaTable getHistory(Selectable selectable) {
        ArrayLibrary arrayLibrary = (ArrayLibrary) ScriptingEnvironment.getInstance().getLibrary(ArrayLibrary.class);
        Master master = selectable.getMaster();
        if (master != null) {
            Gadget gadgetFindChildWithId = master.findChildWithId("roottoolbar");
            if (gadgetFindChildWithId instanceof ToolBar) {
                ArrayList arrayList = new ArrayList();
                Iterator<String> it = ((ToolBar) gadgetFindChildWithId).getHistory().iterator();
                while (it.hasNext()) {
                    arrayList.add(LuaValue.valueOf(it.next()));
                }
                return arrayLibrary.createArray(arrayList);
            }
        }
        return arrayLibrary.createArray(new ArrayList());
    }

    public static AbstractFile findExternalCity(String str, Script script) {
        String lowerCase = str.toLowerCase(Locale.ENGLISH);
        AbstractFile abstractFile = script.getDraft().path;
        AbstractFile file = abstractFile != null ? abstractFile.getFile(lowerCase) : null;
        return (file == null || !file.isFile()) ? script.getPath().getFile(lowerCase) : file;
    }

    public static File findInternalCity(String str, Stapel2DGameContext stapel2DGameContext) {
        String lowerCase = str.toLowerCase(Locale.ENGLISH);
        File file = new File(LocalMapDirectory.getDefault(stapel2DGameContext).getDirectory(), lowerCase);
        return !file.exists() ? new File(Resources.getLocalMapSaveDir(), lowerCase) : file;
    }
}
