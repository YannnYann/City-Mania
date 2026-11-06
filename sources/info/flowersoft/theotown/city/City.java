package info.flowersoft.theotown.city;

import com.badlogic.gdx.Application;
import com.badlogic.gdx.Gdx;
import com.badlogic.gdx.math.MathUtils;
import com.unity3d.services.UnityAdsConstants;
import info.flowersoft.theotown.city.components.BuildMask;
import info.flowersoft.theotown.city.components.CityComponent;
import info.flowersoft.theotown.city.components.ComponentType;
import info.flowersoft.theotown.city.components.DateListener;
import info.flowersoft.theotown.city.components.LODController;
import info.flowersoft.theotown.city.components.Tool;
import info.flowersoft.theotown.city.neighbors.NeighborCity;
import info.flowersoft.theotown.city.neighbors.RealNeighborCity;
import info.flowersoft.theotown.city.objects.Building;
import info.flowersoft.theotown.city.objects.Ground;
import info.flowersoft.theotown.city.objects.Rail;
import info.flowersoft.theotown.city.objects.Road;
import info.flowersoft.theotown.city.objects.Tree;
import info.flowersoft.theotown.city.objects.Wire;
import info.flowersoft.theotown.components.DefaultDate;
import info.flowersoft.theotown.draft.AnimationDraft;
import info.flowersoft.theotown.draft.Draft;
import info.flowersoft.theotown.draft.RankDraft;
import info.flowersoft.theotown.draft.ScenarioDraft;
import info.flowersoft.theotown.draftloader.PluginHelper;
import info.flowersoft.theotown.resources.Drafts;
import info.flowersoft.theotown.resources.GlobalTransitionVariables;
import info.flowersoft.theotown.resources.Resources;
import info.flowersoft.theotown.resources.Settings;
import info.flowersoft.theotown.scripting.LuaUtil;
import info.flowersoft.theotown.scripting.MethodCluster;
import info.flowersoft.theotown.scripting.ScriptingEnvironment;
import info.flowersoft.theotown.scripting.libraries.DrawingLibrary;
import info.flowersoft.theotown.tools.DefaultTool;
import info.flowersoft.theotown.util.Distance;
import info.flowersoft.theotown.util.ManhattenDistance;
import info.flowersoft.theotown.util.SpecialInt;
import info.flowersoft.theotown.util.StopWatch;
import io.blueflower.stapel2d.drawing.Color;
import io.blueflower.stapel2d.drawing.Engine;
import io.blueflower.stapel2d.drawing.Image;
import io.blueflower.stapel2d.drawing.Texture;
import io.blueflower.stapel2d.gamestack.Translator;
import io.blueflower.stapel2d.util.CyclicWorker;
import io.blueflower.stapel2d.util.IntList;
import io.blueflower.stapel2d.util.OpenSimplexNoise;
import io.blueflower.stapel2d.util.ScreenRect;
import io.blueflower.stapel2d.util.Setter;
import java.util.ArrayList;
import java.util.Calendar;
import java.util.HashMap;
import java.util.List;
import java.util.Map;
import java.util.Objects;
import vm2.LuaFunction;
import vm2.LuaInteger;
import vm2.LuaTable;
import vm2.LuaValue;
import vm2.Varargs;

/* JADX INFO: loaded from: classes4.dex */
public final class City {
    public static int DRAWSPACE_BOTTOM = -1024;
    public static final int[] xyOffsets = {0, 0, 1, 0, 1, 1, 0, 1};
    public MethodCluster CLICK_EARLY_HANDLER;
    public MethodCluster CLICK_HANDLER;
    public MethodCluster DRAW_CITY_HANDLER;
    public MethodCluster NEXT_DAY_HANDLER;
    public MethodCluster NEXT_MONTH_HANDLER;
    public MethodCluster NEXT_YEAR_HANDLER;
    public boolean allowPlugins;
    public String author;
    public long authorId;
    public String authorName;
    public AnimationDraft backgroundDraft;
    public final BuildingList buildings;
    public final BusStopList busStops;
    public CityInfo cityInfo;
    public final CityComponent[] components;
    public CityController controller;
    public final SpecialInt currentXp;
    public final List<DateListener> dateListeners;
    public Tool defaultTool;
    public boolean dirtyUI;
    public boolean disposed;
    public final Distance distance;
    public int drawArrayCounter;
    public int drawArrayEnd;
    public int drawArrayFrame;
    public float drawArrayOffsetX;
    public float drawArrayOffsetY;
    public int drawArrayStart;
    public final Drawer drawer;
    public final int height;
    public String id;
    public final IsoConverter iso;
    public float lastRealDaytimeResult;
    public long lastRealDaytimeTime;
    public long lastSimulationTimestamp;
    public boolean leftSideTraffic;
    public final LODController lod;
    public LuaTable luaStorage;
    public LuaTable luaStorageProxy;
    public GameMode mode;
    public String name;
    public final List<NeighborCity> neighbors;
    public OpenSimplexNoise noise;
    public boolean online;
    public float originalDaytime;
    public final PipeList pipes;
    public final List<Rail> rails;
    public RankDraft rank;
    public long rankUpgradeAbsDay;
    public boolean readonly;
    public final RoadList roads;
    public int rotation;
    public ScenarioDraft scenarioDraft;
    public ScenarioInfo scenarioInfo;
    public String seed;
    public final Color shadingColor;
    public float targetScale;
    public final SpecialInt targetXp;
    public final IntList tempInts;
    public final Tiles tiles;
    public final Map<String, Long> transitionVars;
    public final Translator translator;
    public boolean uber;
    public ScreenRect view;
    public int waterTiles;
    public final int width;
    public final WireList wires;
    public final int[] zoneCounter;
    public final int TRANSPARENCY_NEIGHBOR = 60;
    public final int TRANSPARENCY_NEIGHBOR_ROTATED = 30;
    public final LuaValue luaStrTheoTown = LuaValue.valueOf("TheoTown");
    public final LuaValue luaStrDayLength = LuaValue.valueOf("getDayLength");
    public final LuaValue luaStrOriginalDayLength = LuaValue.valueOf("getOriginalDayLength");
    public final LuaValue luaStrDaytimeShadingColor = LuaValue.valueOf("getDaytimeShadingColor");
    public final LuaValue luaStrDaytimeEnabled = LuaValue.valueOf("isDynamicDaytimeEnabled");
    public final LuaValue luaStrConstantDaytime = LuaValue.valueOf("getConstantDaytime");
    public final LuaValue luaStrDaytime = LuaValue.valueOf("daytime");
    public final LuaValue luaStrDaytimeDay = LuaValue.valueOf("daytimeDay");
    public final AnimationDraft oceanAnimation = (AnimationDraft) Drafts.get("$anim_ocean00", AnimationDraft.class);
    public final AnimationDraft oceanSparkleAnimation = (AnimationDraft) Drafts.get("$anim_ocean01", AnimationDraft.class);
    public int drawCounter = 1;

    public static final class ScreenToTileData {
        public float fx;
        public float fy;
        public int originalX;
        public int originalY;
        public int x;
        public int y;
    }

    public static float getMaxScale() {
        return 8.0f;
    }

    public City(int i, int i2, GameMode gameMode, Translator translator) {
        this.rank = !Drafts.RANKS.isEmpty() ? Drafts.RANKS.get(0) : null;
        this.rankUpgradeAbsDay = 0L;
        this.cityInfo = new CityInfo();
        this.transitionVars = new HashMap();
        this.targetXp = new SpecialInt();
        this.currentXp = new SpecialInt();
        this.dateListeners = new ArrayList();
        this.zoneCounter = new int[Drafts.ZONES.size()];
        LuaTable luaTableTableOf = LuaValue.tableOf();
        this.luaStorage = luaTableTableOf;
        this.luaStorageProxy = LuaUtil.getProxy(luaTableTableOf);
        this.disposed = false;
        this.shadingColor = new Color(0, 0, 0);
        this.allowPlugins = true;
        this.targetScale = -1.0f;
        this.dirtyUI = false;
        this.tempInts = new IntList();
        this.lastRealDaytimeResult = UnityAdsConstants.SafeGuards.InitRequestRetryPolicy.MIN_JITTER_PCT;
        this.lastRealDaytimeTime = 0L;
        if (gameMode != GameMode.TEST) {
            setBackground(null);
        }
        this.mode = gameMode;
        assignHandlers();
        this.width = i;
        this.height = i2;
        this.tiles = new Tiles(i, i2);
        this.translator = translator;
        this.rotation = 0;
        this.drawer = new Drawer(this);
        this.iso = new IsoConverter();
        this.distance = new ManhattenDistance();
        this.lod = new LODController();
        this.buildings = new BuildingList();
        this.roads = new RoadList();
        this.busStops = new BusStopList();
        this.wires = new WireList();
        this.pipes = new PipeList();
        this.rails = new ArrayList();
        this.neighbors = new ArrayList();
        this.components = new CityComponent[ComponentType.values.length];
        setView(new ScreenRect(UnityAdsConstants.SafeGuards.InitRequestRetryPolicy.MIN_JITTER_PCT, UnityAdsConstants.SafeGuards.InitRequestRetryPolicy.MIN_JITTER_PCT, UnityAdsConstants.SafeGuards.InitRequestRetryPolicy.MIN_JITTER_PCT, UnityAdsConstants.SafeGuards.InitRequestRetryPolicy.MIN_JITTER_PCT));
    }

    public void assignHandlers() {
        if (this.mode != GameMode.TEST) {
            this.CLICK_EARLY_HANDLER = ScriptingEnvironment.getInstance().getMethodClusterOrNull("earlyTap", Draft.class);
            this.CLICK_HANDLER = ScriptingEnvironment.getInstance().getMethodClusterOrNull("tap", Draft.class);
            this.NEXT_DAY_HANDLER = ScriptingEnvironment.getInstance().getMethodClusterOrNull("nextDay", Draft.class);
            this.NEXT_MONTH_HANDLER = ScriptingEnvironment.getInstance().getMethodClusterOrNull("nextMonth", Draft.class);
            this.NEXT_YEAR_HANDLER = ScriptingEnvironment.getInstance().getMethodClusterOrNull("nextYear", Draft.class);
            this.DRAW_CITY_HANDLER = ScriptingEnvironment.getInstance().getMethodClusterOrNull("drawCity", Draft.class);
            return;
        }
        this.CLICK_EARLY_HANDLER = null;
        this.CLICK_HANDLER = null;
        this.NEXT_DAY_HANDLER = null;
        this.NEXT_MONTH_HANDLER = null;
        this.NEXT_YEAR_HANDLER = null;
        this.DRAW_CITY_HANDLER = null;
    }

    public boolean isDirtyUIAndReset() {
        boolean z = this.dirtyUI;
        this.dirtyUI = false;
        return z;
    }

    public void setDirtyUI() {
        this.dirtyUI = true;
    }

    public boolean isLeftSideTraffic() {
        return this.leftSideTraffic;
    }

    public void setLeftSideTraffic(boolean z) {
        this.leftSideTraffic = z;
    }

    public void setBackground(AnimationDraft animationDraft) {
        if (animationDraft == null) {
            animationDraft = (AnimationDraft) Drafts.ALL.get("$anim_blank00");
        }
        this.backgroundDraft = animationDraft;
    }

    public AnimationDraft getBackground() {
        return this.backgroundDraft;
    }

    public static float getMinScale() {
        return Settings.maxZoomOut ? 0.125f : 0.25f;
    }

    public boolean isOnline() {
        return this.online;
    }

    public void setOnline(boolean z, String str, long j, boolean z2) {
        this.online = z;
        this.authorName = str;
        this.authorId = j;
        this.allowPlugins = z2;
    }

    public void setLuaStorage(LuaTable luaTable) {
        this.luaStorage = luaTable;
        this.luaStorageProxy = LuaUtil.getProxy(luaTable);
    }

    public LuaTable getRawLuaStorage() {
        return this.luaStorage;
    }

    public LuaTable getLuaStorageProxy() {
        return this.luaStorageProxy;
    }

    public long getAuthorId() {
        return this.authorId;
    }

    public String getAuthorName() {
        return this.authorName;
    }

    public boolean isAllowPlugins() {
        return this.allowPlugins;
    }

    public boolean isReadonly() {
        return this.readonly;
    }

    public boolean canAchieve() {
        return (getGameMode().hasInfinityMoney() || isReadonly() || GlobalTransitionVariables.getInstance().get("!_dsalocaloppluginsdetected", 0L) != 0) ? false : true;
    }

    public void setReadonly(boolean z) {
        this.readonly = z;
    }

    public boolean isUber() {
        return this.uber;
    }

    public void setUber(boolean z) {
        this.uber = z;
    }

    public CityController getController() {
        return this.controller;
    }

    public void setController(CityController cityController) {
        this.controller = cityController;
    }

    public Map<String, Long> getTransitionVars() {
        return this.transitionVars;
    }

    public long getTransitionVar(String str, long j) {
        Long l = this.transitionVars.get(str);
        return l != null ? l.longValue() : j;
    }

    public CityInfo getCityInfo() {
        return this.cityInfo;
    }

    public void setCityInfo(CityInfo cityInfo) {
        Objects.requireNonNull(cityInfo);
        this.cityInfo = cityInfo;
    }

    public ScenarioInfo getScenarioInfo() {
        return this.scenarioInfo;
    }

    public ScenarioDraft getScenarioDraft() {
        return this.scenarioDraft;
    }

    public void setScenarioInfo(ScenarioInfo scenarioInfo) {
        this.scenarioInfo = scenarioInfo;
        if (scenarioInfo != null) {
            this.scenarioDraft = (ScenarioDraft) Drafts.get(scenarioInfo.getId(), ScenarioDraft.class);
        } else {
            this.scenarioDraft = null;
        }
    }

    public int getTargetXp() {
        return this.targetXp.get();
    }

    public void setTargetXp(int i) {
        this.targetXp.set(i);
    }

    public int getCurrentXp() {
        return this.currentXp.get();
    }

    public void setCurrentXp(int i) {
        this.currentXp.set(i);
    }

    public int[] getZoneCounter() {
        return this.zoneCounter;
    }

    public long getLastSimulationTimestamp() {
        return this.lastSimulationTimestamp;
    }

    public void setLastSimulationTimestamp(long j) {
        this.lastSimulationTimestamp = j;
    }

    public void clearNeighbors() {
        this.neighbors.clear();
    }

    public void addNeighbor(NeighborCity neighborCity) {
        this.neighbors.add(neighborCity);
    }

    public void removeNeighbor(NeighborCity neighborCity) {
        this.neighbors.remove(neighborCity);
    }

    public int countNeighbors() {
        return this.neighbors.size();
    }

    public NeighborCity getNeighbor(int i) {
        try {
            return this.neighbors.get(i);
        } catch (Exception e) {
            e.printStackTrace();
            return null;
        }
    }

    public int getNeighborIndex(int i, int i2) {
        for (int i3 = 0; i3 < this.neighbors.size(); i3++) {
            if (this.neighbors.get(i3).contains(i, i2)) {
                return i3;
            }
        }
        return -1;
    }

    public void setId(String str) {
        this.id = str;
    }

    public String getId() {
        return this.id;
    }

    public void clearDateListeners() {
        this.dateListeners.clear();
    }

    public void addDateListener(DateListener dateListener) {
        this.dateListeners.add(dateListener);
    }

    public void removeDateListener(DateListener dateListener) {
        this.dateListeners.remove(dateListener);
    }

    public boolean isTutorial() {
        return this.cityInfo.tutorialStage != null;
    }

    public RankDraft getRank() {
        return this.rank;
    }

    public long getRankUpgradeAbsDay() {
        return this.rankUpgradeAbsDay;
    }

    public void setRank(RankDraft rankDraft, long j) {
        this.rank = rankDraft;
        this.rankUpgradeAbsDay = j;
    }

    public Tool getDefaultTool() {
        return this.defaultTool;
    }

    public void setDefaultTool(Tool tool) {
        this.defaultTool = tool;
    }

    public int getWaterTiles() {
        return this.waterTiles;
    }

    public void setWaterTiles(int i) {
        this.waterTiles = i;
    }

    public void applyComponent(CityComponent cityComponent) {
        CityComponent cityComponent2 = this.components[cityComponent.getType()];
        if (cityComponent2 != null) {
            cityComponent2.unbind();
        }
        this.components[cityComponent.getType()] = cityComponent;
        cityComponent.bind(this);
    }

    public CityComponent getComponent(int i) {
        return this.components[i];
    }

    public int getRotation() {
        return this.rotation;
    }

    public void setRotation(int i) {
        if (getRotation() == i) {
            return;
        }
        ScreenToTileData screenToTileDataResolveScreenToTile = resolveScreenToTile((int) this.iso.halfWidth(), (int) this.iso.halfHeight());
        setRotationRaw(i);
        focus(screenToTileDataResolveScreenToTile.originalX + 0.5f, screenToTileDataResolveScreenToTile.originalY + 0.5f, getScale());
    }

    public void setRotationRaw(int i) {
        this.rotation = (i + 4) % 4;
    }

    public Distance getDistance() {
        return this.distance;
    }

    public GameMode getGameMode() {
        return this.mode;
    }

    public void setGameMode(GameMode gameMode) {
        if (this.mode != gameMode) {
            this.mode = gameMode;
            setDirtyUI();
        }
    }

    public Translator getTranslator() {
        return this.translator;
    }

    public BuildingList getBuildings() {
        return this.buildings;
    }

    public RoadList getRoads() {
        return this.roads;
    }

    public BusStopList getBusStops() {
        return this.busStops;
    }

    public WireList getWires() {
        return this.wires;
    }

    public PipeList getPipes() {
        return this.pipes;
    }

    public List<Rail> getRails() {
        return this.rails;
    }

    public String getName() {
        return this.name;
    }

    public void setName(String str) {
        this.name = str;
    }

    public String getAuthor() {
        return this.author;
    }

    public void setAuthor(String str) {
        this.author = str;
    }

    public String getSeed() {
        return this.seed;
    }

    public void setSeed(String str) {
        this.seed = str;
    }

    public ScreenRect getView() {
        return this.view;
    }

    public OpenSimplexNoise getNoise() {
        if (this.noise == null) {
            this.noise = new OpenSimplexNoise(getSeed().hashCode());
        }
        return this.noise;
    }

    public void setView(ScreenRect screenRect) {
        this.view = screenRect;
        this.iso.setView(screenRect);
    }

    public void prepare(Setter<Float> setter, boolean z) {
        int i = 0;
        this.waterTiles = 0;
        for (int i2 = 0; i2 < this.height; i2++) {
            for (int i3 = 0; i3 < this.width; i3++) {
                this.waterTiles += this.tiles.getGround(i3, i2).isWater() ? 1 : 0;
            }
        }
        for (int i4 = 0; i4 < ComponentType.values.length; i4++) {
            if (this.components[i4] == null) {
                throw new IllegalStateException("No component " + ComponentType.names[i4] + " set!");
            }
        }
        if (z) {
            StopWatch.start("Prepare City");
        }
        int i5 = 0;
        while (true) {
            CityComponent[] cityComponentArr = this.components;
            if (i5 >= cityComponentArr.length) {
                break;
            }
            cityComponentArr[i5].prepare();
            i5++;
            setter.set(Float.valueOf(i5 / (this.components.length * 2)));
        }
        while (true) {
            CityComponent[] cityComponentArr2 = this.components;
            if (i >= cityComponentArr2.length) {
                break;
            }
            CityComponent cityComponent = cityComponentArr2[i];
            cityComponent.finishPrepare();
            i++;
            CityComponent[] cityComponentArr3 = this.components;
            setter.set(Float.valueOf((cityComponentArr3.length + i) / (cityComponentArr3.length * 2)));
            if (z) {
                StopWatch.step("Prepare City", "Joined " + cityComponent.getClass().getSimpleName());
            }
        }
        if (z) {
            StopWatch.stop("Prepare City");
        }
    }

    public int getRotatedWidth() {
        return this.rotation % 2 == 0 ? this.width : this.height;
    }

    public int getRotatedHeight() {
        return this.rotation % 2 == 0 ? this.height : this.width;
    }

    public int getWidth() {
        return this.width;
    }

    public int getHeight() {
        return this.height;
    }

    public IsoConverter getIsoConverter() {
        return this.iso;
    }

    public synchronized void update() {
        for (CityComponent cityComponent : this.components) {
            cityComponent.update();
        }
    }

    public synchronized void nextDay() {
        try {
            for (CityComponent cityComponent : this.components) {
                cityComponent.nextDay();
            }
            for (int i = 0; i < this.dateListeners.size(); i++) {
                this.dateListeners.get(i).nextDay();
            }
            MethodCluster methodCluster = this.NEXT_DAY_HANDLER;
            if (methodCluster != null) {
                methodCluster.invoke();
            }
        } catch (Throwable th) {
            throw th;
        }
    }

    public synchronized void nextMonth() {
        try {
            for (CityComponent cityComponent : this.components) {
                cityComponent.nextMonth();
            }
            for (int i = 0; i < this.dateListeners.size(); i++) {
                this.dateListeners.get(i).nextMonth();
            }
            MethodCluster methodCluster = this.NEXT_MONTH_HANDLER;
            if (methodCluster != null) {
                methodCluster.invoke();
            }
        } catch (Throwable th) {
            throw th;
        }
    }

    public synchronized void nextYear() {
        try {
            for (CityComponent cityComponent : this.components) {
                cityComponent.nextYear();
            }
            for (int i = 0; i < this.dateListeners.size(); i++) {
                this.dateListeners.get(i).nextYear();
            }
            MethodCluster methodCluster = this.NEXT_YEAR_HANDLER;
            if (methodCluster != null) {
                methodCluster.invoke();
            }
        } catch (Throwable th) {
            throw th;
        }
    }

    public float getOriginalDaytime() {
        return this.originalDaytime;
    }

    public synchronized void draw(Engine engine, boolean z) {
        int i;
        Texture texture;
        try {
            ScriptingEnvironment scriptingEnvironment = ScriptingEnvironment.getInstance();
            ((DrawingLibrary) scriptingEnvironment.getLibrary(DrawingLibrary.class)).setCity(this);
            DefaultDate defaultDate = (DefaultDate) getComponent(1);
            LuaValue luaValue = scriptingEnvironment.getGlobals().get(this.luaStrTheoTown);
            LuaFunction luaFunctionCheckfunction = luaValue.get(this.luaStrDayLength).checkfunction();
            LuaFunction luaFunctionCheckfunction2 = luaValue.get(this.luaStrOriginalDayLength).checkfunction();
            LuaFunction luaFunctionCheckfunction3 = luaValue.get(this.luaStrDaytimeShadingColor).checkfunction();
            LuaFunction luaFunctionCheckfunction4 = luaValue.get(this.luaStrDaytimeEnabled).checkfunction();
            LuaFunction luaFunctionCheckfunction5 = luaValue.get(this.luaStrConstantDaytime).checkfunction();
            boolean zOptboolean = luaFunctionCheckfunction4.call().optboolean(false);
            int iOptint = luaFunctionCheckfunction.call().optint(60);
            int iOptint2 = luaFunctionCheckfunction2.call().optint(60);
            float fOptdouble = (float) luaFunctionCheckfunction5.call().optdouble(0.5d);
            float f = iOptint;
            float f2 = fOptdouble * f;
            float absoluteDay = ((((defaultDate.getAbsoluteDay() % ((long) iOptint)) + defaultDate.getDayPart()) + f2) % f) / f;
            float absoluteDay2 = (defaultDate.getAbsoluteDay() % ((long) iOptint2)) + defaultDate.getDayPart();
            float f3 = iOptint2;
            this.originalDaytime = ((absoluteDay2 + (fOptdouble * f3)) % f3) / f3;
            if (zOptboolean) {
                fOptdouble = absoluteDay;
            }
            if (iOptint < 0) {
                if (System.currentTimeMillis() - this.lastRealDaytimeTime > 4000) {
                    Calendar calendar = Calendar.getInstance();
                    float f4 = (calendar.get(11) / 24.0f) + ((calendar.get(12) / 60.0f) / 24.0f);
                    this.lastRealDaytimeResult = f4;
                    this.lastRealDaytimeTime = System.currentTimeMillis();
                    fOptdouble = f4;
                } else {
                    fOptdouble = this.lastRealDaytimeResult;
                }
                this.drawer.daytimeDay = fOptdouble;
            } else {
                this.drawer.daytimeDay = ((defaultDate.getAbsoluteDay() + ((double) defaultDate.getDayPart())) + ((double) f2)) / ((double) iOptint);
            }
            Varargs varargsInvoke = luaFunctionCheckfunction3.invoke(LuaValue.valueOf(fOptdouble));
            this.shadingColor.setTo((int) varargsInvoke.checkdouble(1), (int) varargsInvoke.checkdouble(2), (int) varargsInvoke.checkdouble(3), 255);
            this.drawer.begin(engine);
            this.drawer.setShadingColor(this.shadingColor.getRed(), this.shadingColor.getGreen(), this.shadingColor.getBlue());
            this.drawer.setUseShading(z);
            this.drawer.daytime = fOptdouble;
            this.lod.setCityScale(Math.round((float) (Math.log(this.iso.getAbsScaleX()) / Math.log(2.0d))));
            luaValue.set(this.luaStrDaytime, LuaValue.valueOf(this.drawer.daytime));
            luaValue.set(this.luaStrDaytimeDay, LuaValue.valueOf(this.drawer.daytimeDay));
            engine.setScale(this.iso.getAbsScaleX(), this.iso.getAbsScaleY());
            int i2 = 0;
            while (true) {
                CityComponent[] cityComponentArr = this.components;
                if (i2 >= cityComponentArr.length) {
                    break;
                }
                cityComponentArr[i2].drawBefore(engine);
                i2++;
            }
            if (!this.lod.isNoBackground() && (texture = CityBackgroundTexture.INSTANCE.getTexture(engine, this.backgroundDraft)) != null) {
                float absScaleX = this.iso.getAbsScaleX();
                float absScaleY = this.iso.getAbsScaleY();
                float width = (1.0f / texture.getWidth()) / absScaleX;
                float height = (1.0f / texture.getHeight()) / absScaleY;
                float absShiftX = (-width) * ((this.iso.getAbsShiftX() * absScaleX) + this.view.getCenterX());
                float absShiftY = (((this.iso.getAbsShiftY() * absScaleY) + this.view.getCenterY()) - absScaleY) * (-height);
                engine.drawTextureRect(texture, this.view.getX(), this.view.getY(), this.view.getWidth() + 1.0f, this.view.getHeight() + 1.0f, absShiftX, absShiftY, (width * this.view.getWidth()) + absShiftX, (height * this.view.getHeight()) + absShiftY, 5);
            }
            if (this.iso.getAbsScaleX() > 0.25f || this.lod.isNoBuffering() || PluginHelper.getTextureId(PluginHelper.countTextureAreas() - 1) != 0 || Gdx.app.getType() == Application.ApplicationType.Desktop) {
                i = 0;
                drawWholeCity(engine);
                int i3 = 0;
                while (true) {
                    CityComponent[] cityComponentArr2 = this.components;
                    if (i3 >= cityComponentArr2.length) {
                        break;
                    }
                    cityComponentArr2[i3].drawAfterCached(this.drawer);
                    i3++;
                }
            } else {
                float fIsoToAbsX = this.iso.isoToAbsX(0, 0) - this.drawArrayOffsetX;
                float fIsoToAbsY = this.iso.isoToAbsY(0, 0) - this.drawArrayOffsetY;
                int i4 = this.drawArrayFrame;
                if (i4 == 0 || !engine.isDrawArrayValid(i4, this.drawArrayStart, this.drawArrayEnd) || this.drawArrayCounter <= 0 || Math.max(Math.abs(fIsoToAbsX), Math.abs(fIsoToAbsY)) >= 1.0f) {
                    this.drawArrayOffsetX = this.iso.isoToAbsX(0, 0);
                    this.drawArrayOffsetY = this.iso.isoToAbsY(0, 0);
                    this.drawArrayStart = engine.getDrawIndex();
                    int frame = engine.getFrame();
                    drawWholeCity(engine);
                    int i5 = 0;
                    while (true) {
                        CityComponent[] cityComponentArr3 = this.components;
                        if (i5 >= cityComponentArr3.length) {
                            break;
                        }
                        cityComponentArr3[i5].drawAfterCached(this.drawer);
                        i5++;
                    }
                    this.drawArrayEnd = engine.getDrawIndex();
                    int frame2 = engine.getFrame();
                    this.drawArrayFrame = frame2;
                    this.drawArrayCounter = 5;
                    if (frame != frame2) {
                        i = 0;
                        this.drawArrayCounter = 0;
                        Gdx.app.debug("City", "fast draw call failed " + this.drawArrayStart + " -> " + this.drawArrayEnd + "; frames " + frame + " != " + this.drawArrayFrame);
                    }
                } else {
                    int drawIndex = engine.getDrawIndex();
                    int frame3 = engine.getFrame();
                    engine.drawDrawArray(Resources.TEXTURE_WORLD, this.drawArrayFrame, this.drawArrayStart, this.drawArrayEnd, fIsoToAbsX, fIsoToAbsY);
                    this.drawArrayEnd = engine.getDrawIndex();
                    int frame4 = engine.getFrame();
                    this.drawArrayFrame = frame4;
                    this.drawArrayStart = drawIndex;
                    this.drawArrayCounter--;
                    if (frame3 != frame4) {
                        this.drawArrayCounter = 0;
                    }
                }
                i = 0;
            }
            engine.reset();
            drawNeighboringCities(engine);
            engine.setScale(this.iso.getAbsScaleX(), this.iso.getAbsScaleY());
            int i6 = i;
            while (true) {
                CityComponent[] cityComponentArr4 = this.components;
                if (i6 >= cityComponentArr4.length) {
                    break;
                }
                cityComponentArr4[i6].drawAfter(this.drawer);
                i6++;
            }
            this.drawer.end();
            engine.setScale(1.0f, 1.0f);
            MethodCluster methodCluster = this.DRAW_CITY_HANDLER;
            if (methodCluster != null) {
                methodCluster.invoke();
            }
            this.drawCounter++;
            ((DrawingLibrary) scriptingEnvironment.getLibrary(DrawingLibrary.class)).setCity(null);
        } catch (Throwable th) {
            throw th;
        }
    }

    public Drawer getDrawer() {
        return this.drawer;
    }

    public final void drawWholeCity(Engine engine) {
        drawCity(engine);
        drawEdges();
    }

    public final void drawNeighboringCities(Engine engine) {
        Engine engine2;
        if (this.lod.drawNeighboringCities()) {
            Drawer drawer = this.drawer;
            engine.setColor((drawer.shadingRed + 255) / 2, (drawer.shadingGreen + 255) / 2, (drawer.shadingBlue + 255) / 2);
            engine.setType(3);
            IntList intList = this.tempInts;
            intList.clear();
            int i = 0;
            for (int i2 = 0; i2 < this.neighbors.size(); i2++) {
                NeighborCity neighborCity = this.neighbors.get(i2);
                if (neighborCity instanceof RealNeighborCity) {
                    RealNeighborCity realNeighborCity = (RealNeighborCity) neighborCity;
                    if (neighborCity.isDirect() && ((realNeighborCity.getX() != 0 || realNeighborCity.getY() != 0) && neighborCity.getPreviewImage() != null)) {
                        intList.add((((-(originalToRotatedX(realNeighborCity.getX(), realNeighborCity.getY()) / 4)) + (originalToRotatedY(realNeighborCity.getX(), realNeighborCity.getY()) / 4)) << 16) | i2);
                    }
                }
            }
            intList.sort();
            while (i < intList.size()) {
                NeighborCity neighborCity2 = this.neighbors.get(intList.get(i) & 65535);
                RealNeighborCity realNeighborCity2 = (RealNeighborCity) neighborCity2;
                Image previewImage = neighborCity2.getPreviewImage();
                if (previewImage == null) {
                    engine2 = engine;
                } else {
                    int x = realNeighborCity2.getX();
                    int y = realNeighborCity2.getY();
                    int width = realNeighborCity2.getWidth();
                    int height = realNeighborCity2.getHeight();
                    if (x + width <= 0) {
                        x -= 16;
                    }
                    if (y + height <= 0) {
                        y -= 16;
                    }
                    if (x >= this.width) {
                        x += 16;
                    }
                    if (y >= this.height) {
                        y += 16;
                    }
                    float width2 = previewImage.getWidth();
                    this.drawer.setRealTile(x, y);
                    float absScaleX = ((((width + height) * 0.5f) * 32.0f) / width2) * this.iso.getAbsScaleX();
                    engine.setScale(absScaleX, absScaleX);
                    int i3 = this.rotation;
                    if (i3 == 1 || i3 == 3) {
                        engine.setScale(0.5f * absScaleX, absScaleX * 2.0f);
                    }
                    if (this.rotation == 0) {
                        engine.setTransparency(60);
                    } else {
                        engine.setTransparency(30);
                    }
                    float f = this.rotation * 1.5707964f;
                    float fSin = MathUtils.sin(f) * (-40.0f) * this.drawer.scaleX;
                    float fCos = MathUtils.cos(f) * 40.0f;
                    Drawer drawer2 = this.drawer;
                    float f2 = fCos * drawer2.scaleY;
                    float f3 = drawer2.x + fSin;
                    float f4 = drawer2.y + f2;
                    engine2 = engine;
                    engine2.drawImageRotated(previewImage, f3, f4, 0, f);
                }
                i++;
                engine = engine2;
            }
            Engine engine3 = engine;
            engine3.flush();
            engine3.reset();
        }
    }

    /* JADX WARN: Removed duplicated region for block: B:23:0x0142  */
    /* JADX WARN: Removed duplicated region for block: B:82:0x02ef  */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct code enable 'Show inconsistent code' option in preferences
    */
    public final void drawCity(io.blueflower.stapel2d.drawing.Engine r41) {
        /*
            Method dump skipped, instruction units count: 988
            To view this dump change 'Code comments level' option to 'DEBUG'
        */
        throw new UnsupportedOperationException("Method not decompiled: info.flowersoft.theotown.city.City.drawCity(io.blueflower.stapel2d.drawing.Engine):void");
    }

    public final void drawEdges() {
        int i;
        if (this.lod.drawEdges()) {
            DRAWSPACE_BOTTOM = (-8) - ((int) (this.iso.getAbsScaleY() * 180.0f));
            Tool tool = (Tool) getComponent(13);
            IsoConverter isoConverter = this.iso;
            int iAbsToIsoX = isoConverter.absToIsoX((int) (isoConverter.getAbsScaleX() * (-16.0f)), (int) (this.view.getY() + this.view.getHeight()));
            IsoConverter isoConverter2 = this.iso;
            int iAbsToIsoY = isoConverter2.absToIsoY((int) (isoConverter2.getAbsScaleX() * (-16.0f)), (int) (this.view.getY() + this.view.getHeight()));
            int iAbsToIsoX2 = this.iso.absToIsoX((int) (this.view.getX() + this.view.getWidth() + (this.iso.getAbsScaleX() * 16.0f)), (int) (this.view.getY() + this.view.getHeight()));
            int iAbsToIsoY2 = this.iso.absToIsoY((int) (this.view.getX() + this.view.getWidth() + (this.iso.getAbsScaleX() * 16.0f)), (int) (this.view.getY() + this.view.getHeight()));
            int y = (int) (this.view.getY() + this.view.getHeight());
            int rotatedWidth = getRotatedWidth();
            int rotatedHeight = getRotatedHeight();
            int i2 = iAbsToIsoX + iAbsToIsoY;
            int i3 = iAbsToIsoX2 + iAbsToIsoY2;
            int iMax = Math.max(i2, 0);
            while (true) {
                i = rotatedWidth - 1;
                if (iMax > Math.min(i3, i)) {
                    break;
                }
                int iRotatedToOriginalX = rotatedToOriginalX(iMax, 0);
                int iRotatedToOriginalY = rotatedToOriginalY(iMax, 0);
                this.drawer.setTile(iMax, 0, iRotatedToOriginalX, iRotatedToOriginalY);
                Drawer drawer = this.drawer;
                if (drawer.y - (((drawer.baseTerrainHeight + 3) * 12) * drawer.scaleY) <= y) {
                    tool.drawEdge(iRotatedToOriginalX, iRotatedToOriginalY, drawer, 8);
                }
                iMax++;
            }
            int i4 = (i2 - rotatedWidth) + 1;
            for (int iMin = Math.min((i3 - rotatedWidth) + 1, rotatedHeight - 1); iMin >= Math.max(i4, 0); iMin--) {
                int iRotatedToOriginalX2 = rotatedToOriginalX(i, iMin);
                int iRotatedToOriginalY2 = rotatedToOriginalY(i, iMin);
                this.drawer.setTile(i, iMin, iRotatedToOriginalX2, iRotatedToOriginalY2);
                Drawer drawer2 = this.drawer;
                if (drawer2.y - (((drawer2.baseTerrainHeight + 3) * 12) * drawer2.scaleY) <= y) {
                    tool.drawEdge(iRotatedToOriginalX2, iRotatedToOriginalY2, drawer2, 1);
                }
            }
        }
    }

    public void move(float f, float f2) {
        IsoConverter isoConverter = this.iso;
        isoConverter.setAbsShift(isoConverter.getAbsShiftX() + (f / this.iso.getAbsScaleX()), this.iso.getAbsShiftY() + (f2 / this.iso.getAbsScaleY()));
        IsoConverter isoConverter2 = this.iso;
        float fAbsToIsoX = isoConverter2.absToIsoX(isoConverter2.halfWidth(), this.iso.halfHeight()) - 0.5f;
        IsoConverter isoConverter3 = this.iso;
        setViewTo(fAbsToIsoX, isoConverter3.absToIsoY(isoConverter3.halfWidth(), this.iso.halfHeight()) - 0.5f);
    }

    public void setViewToCenter() {
        setViewTo((this.width - 1) / 2.0f, (this.height - 1) / 2.0f);
    }

    public void setViewTo(float f, float f2) {
        float f3 = -32;
        float fMin = Math.min(Math.max(f, f3), getRotatedWidth() + 31) + 0.5f;
        float fMin2 = Math.min(Math.max(f2, f3), getRotatedHeight() + 31) + 0.5f;
        this.iso.setAbsShift(this.iso.getAbsShiftX() + ((this.iso.halfWidth() - this.iso.isoToAbsX(fMin, fMin2)) / this.iso.getAbsScaleX()), this.iso.getAbsShiftY() + ((this.iso.halfHeight() - this.iso.isoToAbsY(fMin, fMin2)) / this.iso.getAbsScaleY()));
    }

    public int getViewX() {
        return this.iso.absToIsoX((int) (this.iso.getView().getWidth() / 2.0f), (int) (this.iso.getView().getHeight() / 2.0f));
    }

    public int getViewY() {
        return this.iso.absToIsoY((int) (this.iso.getView().getWidth() / 2.0f), (int) (this.iso.getView().getHeight() / 2.0f));
    }

    public float getViewFX() {
        return this.iso.absToIsoX(this.iso.getView().getWidth() / 2.0f, this.iso.getView().getHeight() / 2.0f);
    }

    public float getViewFY() {
        return this.iso.absToIsoY(this.iso.getView().getWidth() / 2.0f, this.iso.getView().getHeight() / 2.0f);
    }

    public boolean isValid(int i, int i2) {
        return i >= 0 && i2 >= 0 && i < this.width && i2 < this.height;
    }

    public boolean isRotatedValid(int i, int i2) {
        return i >= 0 && i2 >= 0 && i < getRotatedWidth() && i2 < getRotatedHeight();
    }

    public Tiles getTiles() {
        return this.tiles;
    }

    public int rotatedToOriginalX(int i, int i2) {
        int i3 = this.rotation;
        if (i3 == 0) {
            return i;
        }
        if (i3 == 1) {
            return (this.width - 1) - i2;
        }
        if (i3 == 2) {
            return (this.width - 1) - i;
        }
        if (i3 != 3) {
            return 0;
        }
        return i2;
    }

    public int rotatedToOriginalY(int i, int i2) {
        int i3 = this.rotation;
        if (i3 == 0) {
            return i2;
        }
        if (i3 == 1) {
            return i;
        }
        if (i3 == 2) {
            return (this.height - 1) - i2;
        }
        if (i3 != 3) {
            return 0;
        }
        return (this.height - 1) - i;
    }

    public float rotatedToOriginalX(float f, float f2) {
        int i = this.rotation;
        if (i == 0) {
            return f;
        }
        if (i == 1) {
            return this.width - f2;
        }
        if (i != 2) {
            return i != 3 ? UnityAdsConstants.SafeGuards.InitRequestRetryPolicy.MIN_JITTER_PCT : f2;
        }
        return this.width - f;
    }

    public float rotatedToOriginalY(float f, float f2) {
        int i = this.rotation;
        if (i == 0) {
            return f2;
        }
        if (i == 1) {
            return f;
        }
        if (i != 2) {
            return i != 3 ? UnityAdsConstants.SafeGuards.InitRequestRetryPolicy.MIN_JITTER_PCT : this.height - f;
        }
        return this.height - f2;
    }

    public int originalToRotatedX(int i, int i2) {
        int i3 = this.rotation;
        if (i3 == 0) {
            return i;
        }
        if (i3 == 1) {
            return i2;
        }
        if (i3 == 2) {
            return (this.width - 1) - i;
        }
        if (i3 != 3) {
            return 0;
        }
        return (this.height - 1) - i2;
    }

    public int originalToRotatedY(int i, int i2) {
        int i3 = this.rotation;
        if (i3 == 0) {
            return i2;
        }
        if (i3 == 1) {
            return (this.width - 1) - i;
        }
        if (i3 == 2) {
            return (this.height - 1) - i2;
        }
        if (i3 != 3) {
            return 0;
        }
        return i;
    }

    public float originalToRotatedX(float f, float f2) {
        int i = this.rotation;
        if (i == 0) {
            return f;
        }
        if (i == 1) {
            return f2;
        }
        if (i != 2) {
            return i != 3 ? UnityAdsConstants.SafeGuards.InitRequestRetryPolicy.MIN_JITTER_PCT : this.height - f2;
        }
        return this.width - f;
    }

    public float originalToRotatedY(float f, float f2) {
        int i = this.rotation;
        if (i == 0) {
            return f2;
        }
        if (i == 1) {
            return this.width - f;
        }
        if (i != 2) {
            return i != 3 ? UnityAdsConstants.SafeGuards.InitRequestRetryPolicy.MIN_JITTER_PCT : f;
        }
        return this.height - f2;
    }

    public LODController getLod() {
        return this.lod;
    }

    public ScreenToTileData resolveScreenToTile(int i, int i2) {
        boolean z;
        int i3;
        int i4;
        int i5;
        int i6;
        Tool tool = (Tool) getComponent(13);
        boolean z2 = ((tool instanceof DefaultTool) && ((DefaultTool) tool).drawUnderground) ? false : true;
        ScreenToTileData screenToTileData = new ScreenToTileData();
        int i7 = 16;
        while (i7 >= 0) {
            int absScaleY = ((int) (i7 * 12 * this.iso.getAbsScaleY())) + i2;
            int iAbsToIsoX = this.iso.absToIsoX(i, absScaleY);
            int iAbsToIsoY = this.iso.absToIsoY(i, absScaleY);
            int iRotatedToOriginalX = rotatedToOriginalX(iAbsToIsoX, iAbsToIsoY);
            int iRotatedToOriginalY = rotatedToOriginalY(iAbsToIsoX, iAbsToIsoY);
            if (isValid(iRotatedToOriginalX, iRotatedToOriginalY)) {
                Ground ground = this.tiles.getGround(iRotatedToOriginalX, iRotatedToOriginalY);
                Building building = this.tiles.getBuilding(iRotatedToOriginalX, iRotatedToOriginalY);
                if (ground.getBaseTerrainHeight() == i7 || (building != null && !building.getDraft().supportsSlope && building.getMaxTerrainLevel() == i7 && z2)) {
                    screenToTileData.x = iAbsToIsoX;
                    screenToTileData.y = iAbsToIsoY;
                    screenToTileData.originalX = iRotatedToOriginalX;
                    screenToTileData.originalY = iRotatedToOriginalY;
                    float f = i;
                    float f2 = absScaleY;
                    screenToTileData.fx = this.iso.absToIsoX(f, f2);
                    screenToTileData.fy = this.iso.absToIsoY(f, f2);
                    return screenToTileData;
                }
            }
            int i8 = i7 - 1;
            int absScaleY2 = (int) (i8 * 12 * this.iso.getAbsScaleY());
            int i9 = 12;
            while (i9 >= 0) {
                int absScaleY3 = ((int) (absScaleY2 + (i9 * this.iso.getAbsScaleY()))) + i2;
                int iAbsToIsoX2 = this.iso.absToIsoX(i, absScaleY3);
                int iAbsToIsoY2 = this.iso.absToIsoY(i, absScaleY3);
                int iRotatedToOriginalX2 = rotatedToOriginalX(iAbsToIsoX2, iAbsToIsoY2);
                int iRotatedToOriginalY2 = rotatedToOriginalY(iAbsToIsoX2, iAbsToIsoY2);
                if (isValid(iRotatedToOriginalX2, iRotatedToOriginalY2)) {
                    Ground ground2 = this.tiles.getGround(iRotatedToOriginalX2, iRotatedToOriginalY2);
                    int baseTerrainHeight = ground2.getBaseTerrainHeight();
                    if (ground2.isFlat() || baseTerrainHeight != i8) {
                        z = z2;
                        i3 = i7;
                        i4 = i8;
                    } else {
                        int iRotateCW = Direction.rotateCW(ground2.getTerrainHeights(), this.rotation);
                        int i10 = iRotateCW & 1;
                        int i11 = (iRotateCW >> 1) & 1;
                        int i12 = (iRotateCW >> 2) & 1;
                        int i13 = (iRotateCW >> 3) & 1;
                        z = z2;
                        i3 = i7;
                        int iIsoToAbsX = (this.iso.isoToAbsX(iAbsToIsoX2, iAbsToIsoY2) + this.iso.isoToAbsX(iAbsToIsoX2 + 1, iAbsToIsoY2 + 1)) / 2;
                        i4 = i8;
                        float fIsoToAbsY = this.iso.isoToAbsY(iAbsToIsoX2, iAbsToIsoY2) - ((i10 * 12) * this.iso.getAbsScaleY());
                        float fIsoToAbsY2 = this.iso.isoToAbsY(r6, r7) - (this.iso.getAbsScaleY() * (i12 * 12));
                        float fMin = Math.min(this.iso.isoToAbsY(iAbsToIsoX2, r7) - ((i13 * 12) * this.iso.getAbsScaleY()), (fIsoToAbsY + fIsoToAbsY2) / 2.0f);
                        float fIsoToAbsY3 = this.iso.isoToAbsY(r6, iAbsToIsoY2) - ((i11 * 12) * this.iso.getAbsScaleY());
                        if (i < iIsoToAbsX) {
                            float f3 = (i - r3) / (iIsoToAbsX - r3);
                            float f4 = (1.0f - f3) * fIsoToAbsY;
                            i6 = (int) ((fMin * f3) + f4);
                            i5 = (int) (f4 + (f3 * fIsoToAbsY3));
                        } else {
                            float f5 = (i - iIsoToAbsX) / (r3 - iIsoToAbsX);
                            float f6 = 1.0f - f5;
                            float f7 = f5 * fIsoToAbsY2;
                            i5 = (int) ((f6 * fIsoToAbsY3) + f7);
                            i6 = (int) ((fMin * f6) + f7);
                        }
                        int i14 = i2 + absScaleY2;
                        if (i14 < i6 || i14 > i5) {
                            i9--;
                            z2 = z;
                            i7 = i3;
                            i8 = i4;
                        } else {
                            screenToTileData.x = iAbsToIsoX2;
                            screenToTileData.y = iAbsToIsoY2;
                            screenToTileData.originalX = iRotatedToOriginalX2;
                            screenToTileData.originalY = iRotatedToOriginalY2;
                            float f8 = UnityAdsConstants.SafeGuards.InitRequestRetryPolicy.MIN_JITTER_PCT;
                            float f9 = 0.0f;
                            float f10 = 0.0f;
                            int i15 = 0;
                            while (true) {
                                int[] iArr = xyOffsets;
                                if (i15 < iArr.length) {
                                    int i16 = iArr[i15];
                                    int i17 = iArr[i15 + 1];
                                    float fIsoToAbsX = this.iso.isoToAbsX(iAbsToIsoX2 + i16, iAbsToIsoY2 + i17);
                                    float f11 = f8;
                                    float fIsoToAbsY4 = this.iso.isoToAbsY(r14, r15) - ((ground2.getTerrainHeight((this.rotation + (i15 / 2)) + 3) * 12) * this.iso.getAbsScaleY());
                                    float f12 = i - fIsoToAbsX;
                                    float f13 = i2 - fIsoToAbsY4;
                                    float fSqrt = (float) Math.sqrt((f12 * f12) + (f13 * f13));
                                    f9 += i16 * fSqrt;
                                    f10 += i17 * fSqrt;
                                    f8 = f11 + fSqrt;
                                    i15 += 2;
                                } else {
                                    float f14 = f8;
                                    float f15 = f14 * 2.0f;
                                    float f16 = 3.0f * f14;
                                    screenToTileData.fx = iAbsToIsoX2 + ((f15 - f9) / f16);
                                    screenToTileData.fy = iAbsToIsoY2 + ((f15 - f10) / f16);
                                    return screenToTileData;
                                }
                            }
                        }
                    }
                } else {
                    z = z2;
                    i3 = i7;
                    i4 = i8;
                }
                i9--;
                z2 = z;
                i7 = i3;
                i8 = i4;
            }
            i7--;
        }
        screenToTileData.x = this.iso.absToIsoX(i, i2);
        int iAbsToIsoY3 = this.iso.absToIsoY(i, i2);
        screenToTileData.y = iAbsToIsoY3;
        screenToTileData.originalX = rotatedToOriginalX(screenToTileData.x, iAbsToIsoY3);
        screenToTileData.originalY = rotatedToOriginalY(screenToTileData.x, screenToTileData.y);
        float f17 = i;
        float f18 = i2;
        screenToTileData.fx = this.iso.absToIsoX(f17, f18);
        screenToTileData.fy = this.iso.absToIsoY(f17, f18);
        return screenToTileData;
    }

    public boolean isClickable(int i, int i2) {
        return ((BuildMask) getComponent(14)).isClickable(i, i2) && isValid(i, i2);
    }

    public synchronized void onClick(int i, int i2) {
        char c;
        ScreenToTileData screenToTileDataResolveScreenToTile = resolveScreenToTile(i, i2);
        int i3 = screenToTileDataResolveScreenToTile.x;
        int i4 = screenToTileDataResolveScreenToTile.y;
        float f = screenToTileDataResolveScreenToTile.fx;
        float f2 = screenToTileDataResolveScreenToTile.fy;
        int iRotatedToOriginalX = rotatedToOriginalX(i3, i4);
        int iRotatedToOriginalY = rotatedToOriginalY(i3, i4);
        float fRotatedToOriginalX = rotatedToOriginalX(f, f2);
        float fRotatedToOriginalY = rotatedToOriginalY(f, f2);
        Tool tool = (Tool) getComponent(13);
        BuildMask buildMask = (BuildMask) getComponent(14);
        MethodCluster methodCluster = this.CLICK_EARLY_HANDLER;
        if (methodCluster != null) {
            c = 3;
            if (!methodCluster.invoke(LuaValue.varargsOf(new LuaValue[]{LuaValue.valueOf(iRotatedToOriginalX), LuaValue.valueOf(iRotatedToOriginalY), LuaValue.valueOf(i), LuaValue.valueOf(i2)}))) {
                return;
            }
        } else {
            c = 3;
        }
        int[] iArrCorrect = buildMask.correct(iRotatedToOriginalX, iRotatedToOriginalY);
        if (iArrCorrect != null) {
            iRotatedToOriginalX = iArrCorrect[0];
            iRotatedToOriginalY = iArrCorrect[1];
        }
        int i5 = iRotatedToOriginalY;
        int i6 = iRotatedToOriginalX;
        if (buildMask.isClickable(i6, i5) && (isValid(i6, i5) || !tool.ensureValidPosition())) {
            tool.click(i6, i5, fRotatedToOriginalX, fRotatedToOriginalY, i, i2);
        } else if (!isValid(i6, i5) && tool.ensureValidPosition()) {
            closeOrCancelTool();
        }
        MethodCluster methodCluster2 = this.CLICK_HANDLER;
        if (methodCluster2 != null) {
            LuaInteger luaIntegerValueOf = LuaValue.valueOf(i6);
            LuaInteger luaIntegerValueOf2 = LuaValue.valueOf(i5);
            LuaInteger luaIntegerValueOf3 = LuaValue.valueOf(i);
            LuaInteger luaIntegerValueOf4 = LuaValue.valueOf(i2);
            LuaValue[] luaValueArr = new LuaValue[4];
            luaValueArr[0] = luaIntegerValueOf;
            luaValueArr[1] = luaIntegerValueOf2;
            luaValueArr[2] = luaIntegerValueOf3;
            luaValueArr[c] = luaIntegerValueOf4;
            methodCluster2.invoke(LuaValue.varargsOf(luaValueArr));
        }
        this.drawArrayCounter = 0;
    }

    public void closeOrCancelTool() {
        if (((Tool) getComponent(13)).close()) {
            return;
        }
        applyComponent(getDefaultTool());
    }

    public synchronized void onMouseMove(float f, float f2, boolean z) {
        ScreenToTileData screenToTileDataResolveScreenToTile = resolveScreenToTile((int) f, (int) f2);
        ((Tool) getComponent(13)).mouseMove(screenToTileDataResolveScreenToTile.originalX, screenToTileDataResolveScreenToTile.originalY, rotatedToOriginalX(screenToTileDataResolveScreenToTile.fx, screenToTileDataResolveScreenToTile.fy), rotatedToOriginalY(screenToTileDataResolveScreenToTile.fx, screenToTileDataResolveScreenToTile.fy), f, f2, z);
    }

    public synchronized void onCancelMouse() {
        ((Tool) getComponent(13)).cancelMouse();
    }

    public void joinWorkers() {
        for (CityComponent cityComponent : this.components) {
            cityComponent.join();
        }
    }

    public void dispose() {
        this.disposed = true;
        for (CityComponent cityComponent : this.components) {
            cityComponent.dispose();
        }
        CyclicWorker.dispose();
    }

    public boolean isDisposed() {
        return this.disposed;
    }

    public float getScale() {
        return this.iso.getAbsScaleX() / 1.0f;
    }

    public void setScale(float f) {
        float f2 = f * 1.0f;
        this.iso.setAbsScale(f2, f2);
    }

    public void setTargetScale(float f) {
        this.targetScale = f;
    }

    public void resetTargetScale() {
        this.targetScale = -1.0f;
    }

    public float getTargetScale() {
        float f = this.targetScale;
        return f > UnityAdsConstants.SafeGuards.InitRequestRetryPolicy.MIN_JITTER_PCT ? f : this.iso.getAbsScaleX();
    }

    public void focus(float f, float f2) {
        focus(f, f2, 2.0f);
    }

    public void focus(float f, float f2, float f3) {
        focus(f, f2, f3, true);
    }

    public void focus(float f, float f2, float f3, boolean z) {
        setViewTo(originalToRotatedX(f, f2), originalToRotatedY(f, f2));
        if (z) {
            Ground ground = this.tiles.getGround(Math.max(Math.min((int) f, this.width - 1), 0), Math.max(Math.min((int) f2, this.height - 1), 0));
            IsoConverter isoConverter = this.iso;
            isoConverter.setAbsShift(isoConverter.getAbsShiftX(), this.iso.getAbsShiftY() + (ground.getTerrainAverageHeight() * 12.0f));
        }
        this.iso.setAbsScale(f3, f3);
    }

    public void focus(Building building) {
        if (building != null) {
            focus(building.getX() + ((building.getWidth() - 1) / 2.0f), building.getY() + ((building.getHeight() - 1) / 2.0f));
        }
    }

    public float getFocusX() {
        return this.iso.absToIsoX(this.view.getX() + this.iso.halfWidth(), this.view.getY() + this.iso.halfHeight()) - 0.5f;
    }

    public float getFocusY() {
        return this.iso.absToIsoY(this.view.getX() + this.iso.halfWidth(), this.view.getY() + this.iso.halfHeight()) - 0.5f;
    }

    public int getTileHeight(int i, int i2) {
        int iMax = 0;
        if (!isValid(i, i2)) {
            return 0;
        }
        Wire wire = this.tiles.getWire(i, i2, 0);
        Wire wire2 = this.tiles.getWire(i, i2, 1);
        Rail rail = this.tiles.getRail(i, i2);
        Tree tree = this.tiles.getTree(i, i2);
        Building building = this.tiles.getBuilding(i, i2);
        if (building != null) {
            return (building.getDraft().buildHeight * 8) + (building.getMaxTerrainLevel() * 12);
        }
        if (wire != null || tree != null) {
            iMax = 16;
        } else if (rail != null || wire2 != null) {
            iMax = 32;
        }
        Road topRoad = this.tiles.getTopRoad(i, i2);
        if (topRoad != null) {
            iMax = Math.max(iMax, topRoad.level * 12) + 16;
        }
        return iMax + ((int) (this.tiles.getGround(i, i2).getTerrainAverageHeight() * 12.0f));
    }

    public boolean canZoomIn() {
        return getScale() < getMaxScale() - 1.0E-4f;
    }

    public boolean canZoomOut() {
        return getScale() > getMinScale() + 1.0E-4f;
    }

    public void zoomIn(float f) {
        if (canZoomIn()) {
            setScale(Math.min(f * getScale(), getMaxScale()));
        }
    }

    public void zoomOut(float f) {
        if (canZoomOut()) {
            setScale(Math.max((1.0f / f) * getScale(), getMinScale()));
        }
    }

    public void zoomIn(float f, int i, int i2) {
        if (canZoomIn()) {
            IsoConverter isoConverter = this.iso;
            float f2 = i;
            float f3 = i2;
            isoConverter.setAbsShift(isoConverter.getAbsShiftX() - ((f2 - this.iso.halfWidth()) / this.iso.getAbsScaleX()), this.iso.getAbsShiftY() - ((f3 - this.iso.halfHeight()) / this.iso.getAbsScaleY()));
            zoomIn(f);
            IsoConverter isoConverter2 = this.iso;
            isoConverter2.setAbsShift(isoConverter2.getAbsShiftX() + ((f2 - this.iso.halfWidth()) / this.iso.getAbsScaleX()), this.iso.getAbsShiftY() + ((f3 - this.iso.halfHeight()) / this.iso.getAbsScaleY()));
        }
    }

    public void zoomOut(float f, int i, int i2) {
        if (canZoomOut()) {
            IsoConverter isoConverter = this.iso;
            float f2 = i;
            float f3 = i2;
            isoConverter.setAbsShift(isoConverter.getAbsShiftX() - ((f2 - this.iso.halfWidth()) / this.iso.getAbsScaleX()), this.iso.getAbsShiftY() - ((f3 - this.iso.halfHeight()) / this.iso.getAbsScaleY()));
            zoomOut(f);
            IsoConverter isoConverter2 = this.iso;
            isoConverter2.setAbsShift(isoConverter2.getAbsShiftX() + ((f2 - this.iso.halfWidth()) / this.iso.getAbsScaleX()), this.iso.getAbsShiftY() + ((f3 - this.iso.halfHeight()) / this.iso.getAbsScaleY()));
        }
    }

    public int hashCode(int i, int i2) {
        return hashCode() + (i * 977) + (i2 * 3217);
    }

    public int hashCode() {
        return this.id.hashCode();
    }
}
