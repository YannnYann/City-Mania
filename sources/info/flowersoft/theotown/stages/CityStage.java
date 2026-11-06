package info.flowersoft.theotown.stages;

import com.badlogic.gdx.Application;
import com.badlogic.gdx.Gdx;
import com.badlogic.gdx.math.Vector2;
import com.badlogic.gdx.utils.TimeUtils;
import com.ironsource.C3522b4;
import com.ironsource.C3540c4;
import com.ironsource.mediationsdk.utils.IronSourceConstants;
import com.unity3d.services.UnityAdsConstants;
import info.flowersoft.theotown.ScenarioIsNewlyStarted;
import info.flowersoft.theotown.city.City;
import info.flowersoft.theotown.city.CityController;
import info.flowersoft.theotown.city.PreviewCreator;
import info.flowersoft.theotown.city.ScenarioInfo;
import info.flowersoft.theotown.city.SmoothCityZoomDrawer;
import info.flowersoft.theotown.city.components.DateListener;
import info.flowersoft.theotown.city.components.Notificator;
import info.flowersoft.theotown.city.components.SoundManager;
import info.flowersoft.theotown.city.components.Tool;
import info.flowersoft.theotown.cityfile.RegionInformation;
import info.flowersoft.theotown.cityloader.CityKeeper;
import info.flowersoft.theotown.components.DefaultCatastrophe;
import info.flowersoft.theotown.components.DefaultDate;
import info.flowersoft.theotown.components.DefaultSoundManager;
import info.flowersoft.theotown.crossplatform.TheoTown;
import info.flowersoft.theotown.draft.Draft;
import info.flowersoft.theotown.draft.FeatureDraft;
import info.flowersoft.theotown.drawing.Drawing;
import info.flowersoft.theotown.input.KeyAction;
import info.flowersoft.theotown.mechanics.GameHandler;
import info.flowersoft.theotown.mechanics.LastCityManager;
import info.flowersoft.theotown.mechanics.TimedEffectManager;
import info.flowersoft.theotown.online.CityGiftManager;
import info.flowersoft.theotown.resources.BuildingPeopleCounter;
import info.flowersoft.theotown.resources.Constants;
import info.flowersoft.theotown.resources.Drafts;
import info.flowersoft.theotown.resources.Features;
import info.flowersoft.theotown.resources.GlobalTransitionVariables;
import info.flowersoft.theotown.resources.MusicBox;
import info.flowersoft.theotown.resources.Resources;
import info.flowersoft.theotown.resources.Settings;
import info.flowersoft.theotown.resources.WinterManager;
import info.flowersoft.theotown.scripting.LuaLibrary;
import info.flowersoft.theotown.scripting.MethodCluster;
import info.flowersoft.theotown.scripting.ScriptingEnvironment;
import info.flowersoft.theotown.scripting.libraries.BuilderLibrary;
import info.flowersoft.theotown.scripting.libraries.CarLibrary;
import info.flowersoft.theotown.scripting.libraries.CityLibrary;
import info.flowersoft.theotown.scripting.libraries.DraftLibrary;
import info.flowersoft.theotown.scripting.libraries.DrawingLibrary;
import info.flowersoft.theotown.scripting.libraries.NeighborCityLibrary;
import info.flowersoft.theotown.scripting.libraries.ScenarioLibrary;
import info.flowersoft.theotown.scripting.libraries.ScenarioLibraryKt;
import info.flowersoft.theotown.scripting.libraries.TSLibrary;
import info.flowersoft.theotown.scripting.libraries.TileLibrary;
import info.flowersoft.theotown.stages.CityStage;
import info.flowersoft.theotown.stages.cityinfo.CityInfo;
import info.flowersoft.theotown.stages.gameuibuilder.ActionButtonsBuilder;
import info.flowersoft.theotown.stages.gameuibuilder.BorderBuilder;
import info.flowersoft.theotown.stages.gameuibuilder.DebugLayerBuilder;
import info.flowersoft.theotown.stages.gameuibuilder.DialogBuilder;
import info.flowersoft.theotown.stages.gameuibuilder.HintBuilder;
import info.flowersoft.theotown.stages.gameuibuilder.MinimapBuilder;
import info.flowersoft.theotown.stages.gameuibuilder.NewPluginsHintBuilder;
import info.flowersoft.theotown.stages.gameuibuilder.NotificationBarBuilder;
import info.flowersoft.theotown.stages.gameuibuilder.OverlayBuilder;
import info.flowersoft.theotown.stages.gameuibuilder.ScreenshotProcessorBuilder;
import info.flowersoft.theotown.stages.gameuibuilder.SideBarBuilder;
import info.flowersoft.theotown.stages.gameuibuilder.StatusBarBuilder;
import info.flowersoft.theotown.stages.gameuibuilder.TaskBuilder;
import info.flowersoft.theotown.store.PluginUnloader;
import info.flowersoft.theotown.tools.DefaultTool;
import info.flowersoft.theotown.tutorial.Tutorial;
import info.flowersoft.theotown.ui.CursorManager;
import info.flowersoft.theotown.ui.CursorType;
import info.flowersoft.theotown.ui.DebugLayer;
import info.flowersoft.theotown.ui.Dialog;
import info.flowersoft.theotown.ui.GameMenuBuilder;
import info.flowersoft.theotown.ui.GoldButton;
import info.flowersoft.theotown.ui.Minimap;
import info.flowersoft.theotown.ui.TouchPane;
import info.flowersoft.theotown.ui.scenario.ScenarioInfoDialog;
import info.flowersoft.theotown.ui.selectable.DefaultSelectable;
import info.flowersoft.theotown.ui.selectable.SelectableDraft;
import info.flowersoft.theotown.ui.selectable.SelectableEyedropper;
import info.flowersoft.theotown.util.Files;
import info.flowersoft.theotown.util.ProgressProvider;
import info.flowersoft.theotown.util.ScreenshotProcessor;
import info.flowersoft.theotown.util.StopWatch;
import info.flowersoft.theotown.util.StringFormatter;
import info.flowersoft.theotown.util.TimeLog;
import info.flowersoft.theotown.util.vfs.AbstractFile;
import io.blueflower.stapel2d.drawing.Colors;
import io.blueflower.stapel2d.drawing.Engine;
import io.blueflower.stapel2d.gamestack.GameStack;
import io.blueflower.stapel2d.gamestack.Stage;
import io.blueflower.stapel2d.gamestack.Stapel2DGameContext;
import io.blueflower.stapel2d.gamestack.Translator;
import io.blueflower.stapel2d.gui.GUICache;
import io.blueflower.stapel2d.gui.Gadget;
import io.blueflower.stapel2d.gui.Master;
import io.blueflower.stapel2d.gui.Panel;
import io.blueflower.stapel2d.touch.TouchPoint;
import io.blueflower.stapel2d.touch.TouchUpdate;
import io.blueflower.stapel2d.util.BuilderGroup;
import io.blueflower.stapel2d.util.Getter;
import io.blueflower.stapel2d.util.ScreenRect;
import io.blueflower.stapel2d.util.Setter;
import java.io.File;
import java.io.IOException;
import java.util.ArrayList;
import java.util.Iterator;
import java.util.List;
import java.util.Objects;

/* JADX INFO: loaded from: classes4.dex */
public class CityStage extends BaseStage {
    public final List<Runnable> asyncRunnables;
    public City city;
    public final CityKeeper cityKeeper;
    public boolean citySaved;
    public final CityVisitor cityVisitor;
    public final AbstractCommentsStage commentsStage;
    public DefaultDate date;
    public Runnable finalCityAction;
    public GameStack gameStack;
    public GameStageContext gameStageContext;
    public final CityGiftManager giftManager;
    public GUICache guiCache;
    public long lastAutoSaveSeconds;
    public long lastMS;
    public Tool lastTool;
    public int lastTpCount;
    public final List<LuaLibrary> luaLibraries;
    public Minimap minimap;
    public float moveMomentumX;
    public float moveMomentumY;
    public int movementPivotX;
    public int movementPivotY;
    public int movementTargetX;
    public int movementTargetY;
    public boolean moving;
    public Tool movingTool;
    public final List<Runnable> postProcessors;
    public boolean primaryTouchPointIsTrusted;
    public final RegionInformation regionInformation;
    public int saveCounter;
    public final Setter<Exception> saveErrorHandler;
    public Exception saveException;
    public Thread saveHook;
    public final SmoothCityZoomDrawer smoothCityZoomDrawer;
    public SoundManager soundManager;
    public final Vector2 tempVec2;
    public TouchPane touchPane;
    public int touchStartAngle;
    public float touchStartCityScale;
    public float touchStartDistance;
    public int touchStartRotation;
    public MethodCluster updateMethods;

    public interface CityVisitor {
        void visit(int i, int i2);
    }

    public static /* synthetic */ void $r8$lambda$v2rhJNw8uhlBTWb3ohRW10mnufE() {
    }

    public CityStage(Stapel2DGameContext stapel2DGameContext, CityKeeper cityKeeper, AbstractCommentsStage abstractCommentsStage, CityGiftManager cityGiftManager, RegionInformation regionInformation, CityVisitor cityVisitor) {
        super(stapel2DGameContext);
        this.movementPivotX = -1;
        this.movementPivotY = -1;
        this.movementTargetX = -1;
        this.movementTargetY = -1;
        this.tempVec2 = new Vector2();
        this.asyncRunnables = new ArrayList();
        this.finalCityAction = null;
        this.saveErrorHandler = new Setter<Exception>() { // from class: info.flowersoft.theotown.stages.CityStage.1
            @Override // io.blueflower.stapel2d.util.Setter
            public void set(Exception exc) {
                exc.printStackTrace();
                CityStage.this.saveException = exc;
                CityStage.this.gameStack.ensureOnTop(CityStage.this);
            }
        };
        this.luaLibraries = new ArrayList();
        this.cityKeeper = cityKeeper;
        this.commentsStage = abstractCommentsStage;
        this.giftManager = cityGiftManager;
        this.regionInformation = regionInformation;
        this.cityVisitor = cityVisitor;
        this.smoothCityZoomDrawer = new SmoothCityZoomDrawer(stapel2DGameContext);
        this.postProcessors = new ArrayList();
    }

    @Override // info.flowersoft.theotown.stages.BaseStage, io.blueflower.stapel2d.gamestack.Stage
    public void prepare() {
        super.prepare();
        this.gameStack = getGameStack();
        this.cityKeeper.storeTempBackupFileInTheFuture();
        City city = this.cityKeeper.getCity();
        this.city = city;
        Objects.requireNonNull(city);
        Drafts.setLeftSideTraffic(this.city.isLeftSideTraffic());
        ScenarioInfo scenarioInfo = this.city.getScenarioInfo();
        if (this.city.isOnline()) {
            PluginUnloader.getInstance().apply(this.city.isAllowPlugins() ? 1 : 3, null, null, null, null);
            if (this.city.isReadonly()) {
                TheoTown.analytics.logEvent("online", "visit city", this.city.getName());
            } else {
                TheoTown.analytics.logEvent("online", "enter own city", this.city.getName());
            }
            if (this.city.isReadonly()) {
                TheoTown.gamesService.unlockAchievement("online_city_visit");
            }
        } else if (scenarioInfo != null) {
            ScenarioLibraryKt.applyToDrafts(scenarioInfo);
        } else {
            PluginUnloader.getInstance().apply(0, null, null, null, null);
        }
        this.city.assignHandlers();
        Drafts.BUILDING_PEOPLE_COUNTER = new BuildingPeopleCounter();
        this.date = (DefaultDate) this.city.getComponent(1);
        if (this.city.isReadonly()) {
            DefaultDate defaultDate = this.date;
            defaultDate.setSpeed((defaultDate.getSpeed() == 2 || this.date.getSpeed() == 0) ? this.date.getSpeed() : 0);
        }
        this.soundManager = (DefaultSoundManager) this.city.getComponent(15);
        this.city.setController(new AnonymousClass2(Thread.currentThread()));
        this.city.setDefaultTool(getDefaultTool());
        City city2 = this.city;
        city2.applyComponent(city2.getDefaultTool());
        this.city.clearDateListeners();
        this.city.addDateListener(new DateListener() { // from class: info.flowersoft.theotown.stages.CityStage.3
            @Override // info.flowersoft.theotown.city.components.DateListener
            public void nextMonth() {
            }

            @Override // info.flowersoft.theotown.city.components.DateListener
            public void nextYear() {
            }

            /* JADX WARN: Multi-variable type inference failed */
            @Override // info.flowersoft.theotown.city.components.DateListener
            public void nextDay() {
                if (CityStage.this.date.getSpeed() == 3 && !((FeatureDraft) Features.getInstance().FEATURE_FREEFASTSPEED00.get()).isUnlocked() && !TheoTown.PREMIUM) {
                    TimedEffectManager timedEffectManager = GameHandler.getInstance().getTimedEffectManager();
                    timedEffectManager.setFastForwardDays(timedEffectManager.getFastForwardDays() - 1);
                    if (timedEffectManager.getFastForwardDays() <= 0) {
                        CityStage.this.date.setSpeed(0);
                    }
                }
                if (CityStage.this.date.getSpeed() != 4 || ((FeatureDraft) Features.getInstance().FEATURE_SLOWSPEED.get()).isUnlocked()) {
                    return;
                }
                CityStage.this.date.setSpeed(0);
            }
        });
        Tutorial.getInstance().setContext(this.context, getGameStack());
        Tutorial.getInstance().setCity(this.city);
        this.lastAutoSaveSeconds = this.city.getCityInfo().playtimeSeconds;
        loadScripts();
    }

    /* JADX INFO: renamed from: info.flowersoft.theotown.stages.CityStage$2, reason: invalid class name */
    public class AnonymousClass2 implements CityController {
        public final /* synthetic */ Thread val$mainThread;

        public AnonymousClass2(Thread thread) {
            this.val$mainThread = thread;
        }

        @Override // info.flowersoft.theotown.city.CityController
        public void save(final boolean z, final Runnable runnable) {
            if (Thread.currentThread() != this.val$mainThread) {
                CityStage.this.addTask(new Runnable() { // from class: info.flowersoft.theotown.stages.CityStage$2$$ExternalSyntheticLambda0
                    @Override // java.lang.Runnable
                    public final void run() {
                        CityStage.AnonymousClass2.$r8$lambda$dOgLyxdyNy5UrnU6NiHRp15OpvU(this.f$0, z, runnable);
                    }
                });
                return;
            }
            if (z) {
                CityStage.this.new GameStageContext().save(runnable);
                return;
            }
            CityStage cityStage = CityStage.this;
            cityStage.getSaveThread(true, true, cityStage.saveErrorHandler).run();
            if (runnable != null) {
                runnable.run();
            }
        }

        public static /* synthetic */ void $r8$lambda$dOgLyxdyNy5UrnU6NiHRp15OpvU(AnonymousClass2 anonymousClass2, boolean z, Runnable runnable) {
            if (z) {
                CityStage.this.new GameStageContext().save(runnable);
                return;
            }
            CityStage cityStage = CityStage.this;
            cityStage.getSaveThread(true, true, cityStage.saveErrorHandler).run();
            if (runnable != null) {
                runnable.run();
            }
        }

        @Override // info.flowersoft.theotown.city.CityController
        public void load(String str) {
            File file = new File(str);
            if (file.exists() && file.isFile() && file.canRead()) {
                final CityKeeper cityKeeper = new CityKeeper(file, CityStage.this.context.getTranslator());
                Thread thread = new Thread(new Runnable() { // from class: info.flowersoft.theotown.stages.CityStage$2$$ExternalSyntheticLambda2
                    @Override // java.lang.Runnable
                    public final void run() {
                        cityKeeper.load();
                    }
                });
                final GameStack gameStack = CityStage.this.getGameStack();
                Runnable runnable = new Runnable() { // from class: info.flowersoft.theotown.stages.CityStage$2$$ExternalSyntheticLambda3
                    @Override // java.lang.Runnable
                    public final void run() {
                        CityStage.AnonymousClass2.$r8$lambda$ZZCwfJ70xq_8Fe1ozbi0ZclQlLc(this.f$0, cityKeeper, gameStack);
                    }
                };
                Stage stageLeaveStage = CityStage.this.leaveStage(true, false);
                gameStack.push(new LoadWaitingStage(CityStage.this.context, thread, runnable, cityKeeper));
                if (stageLeaveStage != null) {
                    gameStack.push(stageLeaveStage);
                }
            }
        }

        public static /* synthetic */ void $r8$lambda$ZZCwfJ70xq_8Fe1ozbi0ZclQlLc(AnonymousClass2 anonymousClass2, CityKeeper cityKeeper, GameStack gameStack) {
            anonymousClass2.getClass();
            if (cityKeeper.getCity() != null) {
                gameStack.pop();
                if (gameStack.peek() instanceof CityStage) {
                    gameStack.pop();
                }
                gameStack.push(new CityStage(CityStage.this.context, cityKeeper, null, null, null, null));
            }
        }

        @Override // info.flowersoft.theotown.city.CityController
        public void loadFromExternal(AbstractFile abstractFile, boolean z, boolean z2, String str) {
            File oldMapSaveDir;
            if (abstractFile == null || !abstractFile.isFile()) {
                return;
            }
            if (z2) {
                oldMapSaveDir = Resources.getLocalMapSaveDir();
            } else {
                oldMapSaveDir = Resources.getOldMapSaveDir();
            }
            if (oldMapSaveDir.exists() || oldMapSaveDir.mkdirs()) {
                if (str == null || str.isEmpty()) {
                    str = abstractFile.getName();
                }
                File file = new File(oldMapSaveDir, str);
                if (!file.exists() || z) {
                    try {
                        Files.copyFile(abstractFile.read(), file);
                    } catch (IOException e) {
                        e.printStackTrace();
                    }
                }
                if (file.exists()) {
                    load(file.getPath());
                }
            }
        }

        @Override // info.flowersoft.theotown.city.CityController
        public void exit(final boolean z) {
            CityStage.this.finalCityAction = new Runnable() { // from class: info.flowersoft.theotown.stages.CityStage$2$$ExternalSyntheticLambda1
                @Override // java.lang.Runnable
                public final void run() {
                    CityStage.this.leaveStage(z);
                }
            };
        }

        @Override // info.flowersoft.theotown.city.CityController
        public boolean isSavable() {
            return CityStage.this.cityKeeper.isSavable();
        }
    }

    public City getCity() {
        return this.city;
    }

    public final void loadScripts() {
        ScriptingEnvironment scriptingEnvironment = ScriptingEnvironment.getInstance();
        this.luaLibraries.add(new CityLibrary(this.context, new Setter() { // from class: info.flowersoft.theotown.stages.CityStage$$ExternalSyntheticLambda7
            @Override // io.blueflower.stapel2d.util.Setter
            public final void set(Object obj) {
                this.f$0.visitCityInfo((CityInfo) obj);
            }
        }, new Runnable() { // from class: info.flowersoft.theotown.stages.CityStage$$ExternalSyntheticLambda8
            @Override // java.lang.Runnable
            public final void run() {
                CityStage.m2206$r8$lambda$dUPqw1VMZELCznzEpChb_kwL2o(this.f$0);
            }
        }, this.cityKeeper, this.city, this.regionInformation));
        this.luaLibraries.add(new TileLibrary(this.city));
        this.luaLibraries.add(new BuilderLibrary(this.city));
        this.luaLibraries.add(new CarLibrary(this.city));
        this.luaLibraries.add(new NeighborCityLibrary(this.city));
        this.luaLibraries.add(new ScenarioLibrary(this.city, this.context));
        for (int i = 0; i < this.luaLibraries.size(); i++) {
            scriptingEnvironment.loadLibrary(this.luaLibraries.get(i));
        }
        ((DraftLibrary) scriptingEnvironment.getLibrary(DraftLibrary.class)).setCityName(this.city.getName());
        ((TSLibrary) scriptingEnvironment.getLibrary(TSLibrary.class)).enterCity(this.city, this.context, this.gameStack);
        scriptingEnvironment.callMethodOnce("enterCity");
        this.updateMethods = scriptingEnvironment.getMethodClusterOrNull("update", Draft.class);
    }

    /* JADX INFO: renamed from: $r8$lambda$dUPqw1VMZELCznzEpCh-b_kwL2o, reason: not valid java name */
    public static /* synthetic */ void m2206$r8$lambda$dUPqw1VMZELCznzEpChb_kwL2o(final CityStage cityStage) {
        cityStage.getClass();
        cityStage.addTask(new Runnable() { // from class: info.flowersoft.theotown.stages.CityStage$$ExternalSyntheticLambda10
            @Override // java.lang.Runnable
            public final void run() {
                CityStage.$r8$lambda$gVykIAht4IoFp1AtWGLCXHlPGhE(this.f$0);
            }
        });
    }

    public static /* synthetic */ void $r8$lambda$gVykIAht4IoFp1AtWGLCXHlPGhE(CityStage cityStage) {
        if (cityStage.gameStack.peek() == cityStage) {
            cityStage.leave();
            cityStage.guiCache = null;
            cityStage.enter();
        }
    }

    public final void unloadScripts() {
        this.city.joinWorkers();
        ScriptingEnvironment scriptingEnvironment = ScriptingEnvironment.getInstance();
        scriptingEnvironment.callMethodOnce("leaveCity");
        ((TSLibrary) scriptingEnvironment.getLibrary(TSLibrary.class)).leaveCity();
        this.updateMethods = null;
        for (int i = 0; i < this.luaLibraries.size(); i++) {
            scriptingEnvironment.unloadLibrary(this.luaLibraries.get(i));
        }
        this.luaLibraries.clear();
    }

    @Override // info.flowersoft.theotown.stages.BaseStage, io.blueflower.stapel2d.gamestack.Stage
    public void enter() {
        super.enter();
        CityGiftManager cityGiftManager = this.giftManager;
        if (cityGiftManager != null) {
            cityGiftManager.fetch(false);
        }
        GameStageContext gameStageContext = this.gameStageContext;
        if (gameStageContext != null) {
            gameStageContext.lastEnterMS = TimeUtils.millis();
        }
        WinterManager.getInstance().setWinter(this.city.getCityInfo().winter || WinterManager.shouldItBeWinter(Settings.winter));
        if (this.saveHook != null) {
            getGameStack().removeLeaveAppHook(this.saveHook);
            this.saveHook = null;
        }
        City city = this.cityKeeper.getCity();
        this.city = city;
        city.setView(new ScreenRect(UnityAdsConstants.SafeGuards.InitRequestRetryPolicy.MIN_JITTER_PCT, UnityAdsConstants.SafeGuards.InitRequestRetryPolicy.MIN_JITTER_PCT, this.engine.getVirtualWidth(), this.engine.getVirtualHeight()));
        this.touchPane = new TouchPane(0, -this.gui.getPaddingLeft(), -this.gui.getPaddingTop(), this.gui.getWidth(), this.gui.getHeight(), this.gui) { // from class: info.flowersoft.theotown.stages.CityStage.4
            @Override // info.flowersoft.theotown.ui.TouchPane
            public void clickAt(int i, int i2, TouchPoint touchPoint) {
                if (CityStage.this.isDialogOpen()) {
                    return;
                }
                CityStage.this.gui.reset();
                if (touchPoint != null && (!touchPoint.isMouse() || touchPoint.getButton() == 0)) {
                    Vector2 vector2TransformFromScreen = CityStage.this.smoothCityZoomDrawer.transformFromScreen(CityStage.this.city, CityStage.this.tempVec2.set(i, i2));
                    CityStage.this.city.onClick((int) vector2TransformFromScreen.x, (int) vector2TransformFromScreen.y);
                } else {
                    if (touchPoint == null || touchPoint.getButton() != 1) {
                        return;
                    }
                    CityStage.this.city.closeOrCancelTool();
                }
            }

            @Override // info.flowersoft.theotown.ui.TouchPane
            public void twoFingerClick() {
                if (CityStage.this.isDialogOpen()) {
                    return;
                }
                CityStage.this.gui.reset();
                CityStage.this.city.closeOrCancelTool();
            }

            @Override // io.blueflower.stapel2d.gui.MultiSensitiveGadget, io.blueflower.stapel2d.gui.Gadget
            public CursorType updateTouchInput(TouchUpdate touchUpdate) {
                super.updateTouchInput(touchUpdate);
                float scrollChange = touchUpdate.getScrollChange();
                if (scrollChange == UnityAdsConstants.SafeGuards.InitRequestRetryPolicy.MIN_JITTER_PCT) {
                    return null;
                }
                touchUpdate.clearScrollChange();
                if (Settings.smoothZoom == 0) {
                    scrollChange /= Math.abs(scrollChange);
                }
                float fPow = (float) Math.pow(CityStage.this.getZoomStep(), Math.abs(scrollChange));
                if (touchUpdate.getMousePos() == null) {
                    if (scrollChange < UnityAdsConstants.SafeGuards.InitRequestRetryPolicy.MIN_JITTER_PCT) {
                        CityStage.this.city.zoomIn(fPow);
                        return null;
                    }
                    CityStage.this.city.zoomOut(fPow);
                    return null;
                }
                Vector2 vector2TransformFromScreen = CityStage.this.smoothCityZoomDrawer.transformFromScreen(CityStage.this.city, CityStage.this.tempVec2.set((int) (touchUpdate.getMousePos().getX() * CityStage.this.engine.getWidthRatio()), (int) (touchUpdate.getMousePos().getY() * CityStage.this.engine.getHeightRatio())));
                if (scrollChange < UnityAdsConstants.SafeGuards.InitRequestRetryPolicy.MIN_JITTER_PCT) {
                    CityStage.this.city.zoomIn(fPow, (int) vector2TransformFromScreen.x, (int) vector2TransformFromScreen.y);
                    return null;
                }
                CityStage.this.city.zoomOut(fPow, (int) vector2TransformFromScreen.x, (int) vector2TransformFromScreen.y);
                return null;
            }
        };
        DefaultSelectable.setMaster(this.gui);
        SelectableDraft.context = this.context;
        SelectableDraft.stageSetter = new Setter<Stage>() { // from class: info.flowersoft.theotown.stages.CityStage.5
            @Override // io.blueflower.stapel2d.util.Setter
            public void set(Stage stage) {
                if (stage instanceof BaseStage) {
                    ((BaseStage) stage).setOwnBackgroundCity(CityStage.this.city);
                }
                CityStage.this.visitStage(stage);
            }
        };
        GUICache gUICache = this.guiCache;
        if (gUICache != null && gUICache.canApply(this.gui) && !this.city.isDirtyUIAndReset()) {
            this.guiCache.apply(this.gui);
            this.guiCache = null;
        } else {
            GUICache gUICache2 = this.guiCache;
            if (gUICache2 != null) {
                gUICache2.free();
                this.guiCache = null;
            }
            StopWatch.start("Build builders");
            GameStageContext gameStageContext2 = new GameStageContext();
            BuilderGroup builderGroup = new BuilderGroup(gameStageContext2);
            builderGroup.addBuilder(new BorderBuilder(gameStageContext2));
            builderGroup.addBuilder(new SideBarBuilder(gameStageContext2));
            builderGroup.addBuilder(new StatusBarBuilder(gameStageContext2));
            builderGroup.addBuilder(new MinimapBuilder(gameStageContext2));
            builderGroup.addBuilder(new NotificationBarBuilder(gameStageContext2));
            builderGroup.addBuilder(new ScreenshotProcessorBuilder(gameStageContext2));
            builderGroup.addBuilder(new OverlayBuilder(gameStageContext2));
            builderGroup.addBuilder(new ActionButtonsBuilder(gameStageContext2));
            builderGroup.addBuilder(new TaskBuilder(gameStageContext2));
            builderGroup.addBuilder(new HintBuilder(gameStageContext2));
            builderGroup.addBuilder(new NewPluginsHintBuilder(gameStageContext2));
            builderGroup.addBuilder(new DialogBuilder(gameStageContext2));
            builderGroup.addBuilder(new DebugLayerBuilder(gameStageContext2));
            builderGroup.build();
            this.gameStageContext = gameStageContext2;
            StopWatch.stop("Build builders");
            maybeShowScenarioWelcomeDialog();
            ScriptingEnvironment.getInstance().callMethodOnce("buildCityGUI");
        }
        this.soundManager.resume();
        ((Notificator) this.city.getComponent(4)).poll();
        this.date.flushTime();
    }

    public final void maybeShowScenarioWelcomeDialog() {
        final ScenarioInfo scenarioInfo = this.city.getScenarioInfo();
        if (scenarioInfo != null && ScenarioIsNewlyStarted.INSTANCE.isNewlyStarted(scenarioInfo.getId())) {
            ScenarioInfoDialog.Companion.forInfo(this.context, scenarioInfo, this.gui, new Runnable() { // from class: info.flowersoft.theotown.stages.CityStage$$ExternalSyntheticLambda4
                @Override // java.lang.Runnable
                public final void run() {
                    ScenarioIsNewlyStarted.INSTANCE.setNewlyStarted(scenarioInfo.getId(), false);
                }
            }).setVisible(true);
        }
    }

    public final float getZoomStep() {
        if (Settings.smoothZoom > 0) {
            return Constants.SMOOTH_ZOOM_STEP;
        }
        return 2.0f;
    }

    @Override // info.flowersoft.theotown.stages.BaseStage
    public void onUpdate() {
        if (!this.asyncRunnables.isEmpty()) {
            this.asyncRunnables.remove(0).run();
        }
        GameHandler.getInstance().getTimedEffectManager().updateInCity();
        if (((DefaultCatastrophe) this.city.getComponent(6)).isActive()) {
            MusicBox.getInstance().selectType(MusicBox.Type.ACTION);
        } else {
            MusicBox.getInstance().selectType(MusicBox.Type.GAME);
        }
        handleTouchInput();
        handleKeyInput();
        if (this.updateMethods != null) {
            synchronized (this.city) {
                drawCity();
                ScriptingEnvironment scriptingEnvironment = ScriptingEnvironment.getInstance();
                ((DrawingLibrary) scriptingEnvironment.getLibrary(DrawingLibrary.class)).setCity(this.city);
                this.updateMethods.invoke();
                ((DrawingLibrary) scriptingEnvironment.getLibrary(DrawingLibrary.class)).setCity(null);
            }
        }
        if (this.movementPivotX >= 0) {
            this.engine.setColor(Colors.WHITE);
            this.engine.setTransparency(200);
            Drawing.getInstance().drawCircle(this.movementPivotX, this.movementPivotY, 6.0f, 8.0f, this.engine);
            this.engine.setTransparency(120);
            Drawing.getInstance().drawLine(this.movementPivotX, this.movementPivotY, this.movementTargetX, this.movementTargetY, 2.0f, this.engine);
            this.engine.setTransparency(255);
        }
        updateSaveCounter();
        updateGameTime();
        if (this.saveException != null) {
            Dialog dialog = new Dialog(Resources.ICON_ALERT, this.translator.translate(2386), StringFormatter.format(this.translator.translate(381), this.saveException.getMessage()), this.gui);
            dialog.addButton(Resources.ICON_OK, this.translator.translate(2447), false, null);
            dialog.setVisible(true);
            this.saveException = null;
        }
        Runnable runnable = this.finalCityAction;
        if (runnable != null) {
            runnable.run();
            this.finalCityAction = null;
        }
    }

    @Override // info.flowersoft.theotown.stages.BaseStage
    public void callOverlayMethods() {
        synchronized (this.city) {
            super.callOverlayMethods();
        }
    }

    public final void drawCity() {
        this.engine.setColor(Colors.WHITE);
        this.smoothCityZoomDrawer.draw(this.city, true);
        TimeLog.log(0);
        this.city.update();
        TimeLog.log(1);
        Iterator<Runnable> it = this.postProcessors.iterator();
        while (it.hasNext()) {
            it.next().run();
        }
        Tool tool = (Tool) this.city.getComponent(13);
        if (tool != this.lastTool) {
            this.lastTool = tool;
            this.minimap.flush();
        }
    }

    @Override // info.flowersoft.theotown.stages.BaseStage
    public void drawGui() {
        synchronized (this.city) {
            super.drawGui();
        }
    }

    public final void handleKeyInput() {
        if (isDialogOpen()) {
            return;
        }
        int i = (keyHit(KeyAction.CITY_ZOOM_IN) || keyHit(KeyAction.CITY_ZOOM_IN_ALT)) ? 1 : 0;
        if (keyHit(KeyAction.CITY_ZOOM_OUT) || keyHit(KeyAction.CITY_ZOOM_OUT_ALT)) {
            i--;
        }
        if (keyHit(KeyAction.OPEN_CONSOLE)) {
            getGameStack().push(new ConsoleStage(this.context, this.city, null, true));
        }
        if (keyHit(KeyAction.CITY_SAVE)) {
            proceedSave();
        }
        if (keyHit(KeyAction.OPEN_EYEDROPPER_TOOL) && !this.city.isReadonly()) {
            new SelectableEyedropper(this.city).select();
        }
        if (Settings.experimentalFeatures) {
            if (keyHit(KeyAction.TOGGLE_NIGHT)) {
                Settings.nightMode = Settings.nightMode == 0 ? 1 : 0;
            }
            if (keyHit(KeyAction.TOGGLE_WINTER)) {
                Settings.winter = Settings.winter == 1 ? 2 : 1;
                WinterManager.getInstance().setWinter(WinterManager.shouldItBeWinter(Settings.winter));
            }
            if (keyHit(KeyAction.TOGGLE_DEBUG)) {
                DebugLayer debugLayer = this.gameStageContext.debugLayer;
                debugLayer.setVisible(true ^ debugLayer.isVisible());
            }
        }
        if (i != 0) {
            float fMin = (float) Math.min(Math.max(Math.pow(2.0d, i + ((int) Math.floor(Math.log(this.city.getScale()) / Math.log(2.0d)))), City.getMinScale()), City.getMaxScale());
            while (fMin > this.city.getScale() + 0.001f) {
                this.city.zoomIn(2.0f);
            }
            while (fMin < this.city.getScale() - 0.001f) {
                this.city.zoomOut(2.0f);
            }
        }
    }

    public final void handleTouchInput() {
        Tool tool;
        boolean z;
        boolean z2;
        boolean z3;
        float f;
        float f2;
        float f3;
        float f4;
        float f5;
        float fRotatedToOriginalY;
        int iRotatedToOriginalX;
        int iRotatedToOriginalY;
        float fRotatedToOriginalX;
        float f6;
        float f7;
        float f8;
        List<TouchPoint> touchPoints = this.touchPane.getTouchPoints();
        long jMillis = TimeUtils.millis();
        float widthRatio = this.engine.getWidthRatio();
        float heightRatio = this.engine.getHeightRatio();
        float deltaTime = this.context.getDeltaTime();
        this.movementPivotY = -1;
        this.movementPivotX = -1;
        Tool tool2 = (Tool) this.city.getComponent(13);
        if (touchPoints.isEmpty()) {
            this.primaryTouchPointIsTrusted = false;
        }
        if (touchPoints.size() == 1) {
            TouchPoint touchPoint = touchPoints.get(0);
            float firstX = touchPoint.getFirstX() * widthRatio;
            float firstY = touchPoint.getFirstY() * heightRatio;
            float x = touchPoint.getX() * widthRatio;
            float y = touchPoint.getY() * heightRatio;
            float f9 = x - firstX;
            float f10 = y - firstY;
            double d = (f9 * f9) + (f10 * f10);
            float fSqrt = (float) Math.sqrt(d);
            float xSpeed = touchPoint.getXSpeed() * widthRatio;
            float ySpeed = touchPoint.getYSpeed() * heightRatio;
            if ((this.primaryTouchPointIsTrusted || jMillis - touchPoint.getTimestamp() < 200) && Math.sqrt(d) < 10.0d) {
                z3 = true;
            } else {
                z3 = true;
                this.primaryTouchPointIsTrusted = true;
            }
            if (touchPoint.isPrimary()) {
                if (!touchPoint.isMouse()) {
                    this.city.onCancelMouse();
                }
                if (this.moving || !(jMillis - touchPoint.getTimestamp() > 300 || touchPoint.isMouse() || tool2.moveImmediate())) {
                    f = xSpeed;
                    f2 = ySpeed;
                    z2 = z3;
                    f3 = firstX;
                    f4 = firstY;
                    f5 = y;
                    tool = tool2;
                    fRotatedToOriginalY = UnityAdsConstants.SafeGuards.InitRequestRetryPolicy.MIN_JITTER_PCT;
                    iRotatedToOriginalX = 0;
                    iRotatedToOriginalY = 0;
                    fRotatedToOriginalX = UnityAdsConstants.SafeGuards.InitRequestRetryPolicy.MIN_JITTER_PCT;
                } else {
                    this.movingTool = null;
                    Gdx.app.debug(C3522b4.i.q, "moving");
                    if (fSqrt < 15.0f || tool2.moveImmediate()) {
                        Gdx.app.debug(C3522b4.i.q, "dist");
                        City.ScreenToTileData screenToTileDataResolveScreenToTile = this.city.resolveScreenToTile((int) firstX, (int) firstY);
                        int i = screenToTileDataResolveScreenToTile.x;
                        int i2 = screenToTileDataResolveScreenToTile.y;
                        float f11 = screenToTileDataResolveScreenToTile.fx;
                        float f12 = screenToTileDataResolveScreenToTile.fy;
                        f = xSpeed;
                        int iRotatedToOriginalX2 = this.city.rotatedToOriginalX(i, i2);
                        f2 = ySpeed;
                        iRotatedToOriginalY = this.city.rotatedToOriginalY(i, i2);
                        fRotatedToOriginalX = this.city.rotatedToOriginalX(f11, f12);
                        float fRotatedToOriginalY2 = this.city.rotatedToOriginalY(f11, f12);
                        if (this.city.isClickable(iRotatedToOriginalX2, iRotatedToOriginalY)) {
                            z2 = true;
                            f5 = y;
                            iRotatedToOriginalX = iRotatedToOriginalX2;
                            boolean zCanBeginMove = tool2.canBeginMove(firstX, firstY, iRotatedToOriginalX, iRotatedToOriginalY, fRotatedToOriginalX, fRotatedToOriginalY2);
                            f4 = firstY;
                            f3 = firstX;
                            tool = tool2;
                            fRotatedToOriginalY = fRotatedToOriginalY2;
                            if (zCanBeginMove && (!touchPoint.isMouse() || touchPoint.getButton() != 1)) {
                                Gdx.app.debug(C3522b4.i.q, C3540c4.d);
                                this.movingTool = tool;
                                tool.beginMove(iRotatedToOriginalX, iRotatedToOriginalY, fRotatedToOriginalX, fRotatedToOriginalY);
                            }
                        } else {
                            f3 = firstX;
                            f4 = firstY;
                            f5 = y;
                            iRotatedToOriginalX = iRotatedToOriginalX2;
                            tool = tool2;
                            fRotatedToOriginalY = fRotatedToOriginalY2;
                            z2 = true;
                        }
                    } else {
                        f = xSpeed;
                        f2 = ySpeed;
                        f3 = firstX;
                        f4 = firstY;
                        f5 = y;
                        z2 = true;
                        iRotatedToOriginalX = 0;
                        iRotatedToOriginalY = 0;
                        fRotatedToOriginalX = UnityAdsConstants.SafeGuards.InitRequestRetryPolicy.MIN_JITTER_PCT;
                        tool = tool2;
                        fRotatedToOriginalY = UnityAdsConstants.SafeGuards.InitRequestRetryPolicy.MIN_JITTER_PCT;
                    }
                    this.moving = z2;
                }
                Tool tool3 = this.movingTool;
                if (tool3 != tool && tool3 != null) {
                    tool3.cancelMove();
                    this.movingTool = null;
                }
                if (this.movingTool != null) {
                    City.ScreenToTileData screenToTileDataResolveScreenToTile2 = this.city.resolveScreenToTile((int) x, (int) f5);
                    int i3 = screenToTileDataResolveScreenToTile2.x;
                    int i4 = screenToTileDataResolveScreenToTile2.y;
                    float f13 = screenToTileDataResolveScreenToTile2.fx;
                    float f14 = screenToTileDataResolveScreenToTile2.fy;
                    iRotatedToOriginalX = this.city.rotatedToOriginalX(i3, i4);
                    iRotatedToOriginalY = this.city.rotatedToOriginalY(i3, i4);
                    fRotatedToOriginalX = this.city.rotatedToOriginalX(f13, f14);
                    fRotatedToOriginalY = this.city.rotatedToOriginalY(f13, f14);
                }
                float f15 = fRotatedToOriginalY;
                int i5 = iRotatedToOriginalX;
                int i6 = iRotatedToOriginalY;
                float f16 = fRotatedToOriginalX;
                Tool tool4 = this.movingTool;
                if (tool4 != null) {
                    f6 = x;
                    if (tool4.updateMove(x, f5, f, f2, i5, i6, f16, f15) || !this.primaryTouchPointIsTrusted) {
                        if (this.primaryTouchPointIsTrusted) {
                            this.moveMomentumY = UnityAdsConstants.SafeGuards.InitRequestRetryPolicy.MIN_JITTER_PCT;
                            this.moveMomentumX = UnityAdsConstants.SafeGuards.InitRequestRetryPolicy.MIN_JITTER_PCT;
                            float fMin = Math.min(this.engine.getVirtualWidth(), this.engine.getVirtualHeight()) / 6;
                            if (f6 < fMin) {
                                this.moveMomentumX = (((fMin - f6) * 10.0f) / fMin) / deltaTime;
                            }
                            if (f5 < fMin) {
                                this.moveMomentumY = (((fMin - f5) * 10.0f) / fMin) / deltaTime;
                            }
                            if (f6 >= this.engine.getVirtualWidth() - r2) {
                                this.moveMomentumX = ((((f6 - this.engine.getVirtualWidth()) + fMin) * (-10.0f)) / fMin) / deltaTime;
                            }
                            if (f5 >= this.engine.getVirtualHeight() - r2) {
                                this.moveMomentumY = (((-10.0f) * ((f5 - this.engine.getVirtualHeight()) + fMin)) / fMin) / deltaTime;
                            }
                        }
                    }
                } else {
                    f6 = x;
                }
                Tool tool5 = this.movingTool;
                if (tool5 != null) {
                    tool5.cancelMove();
                    this.movingTool = null;
                }
                if (tool.reversedMovement()) {
                    f7 = f * (-1.0f);
                    f8 = f2 * (-1.0f);
                } else {
                    f7 = f;
                    f8 = f2;
                }
                if (touchPoint.getButton() == z2) {
                    float f17 = f9 * (-16.0f);
                    float f18 = f10 * (-16.0f);
                    float fSqrt2 = (float) Math.sqrt((f17 * f17) + (f18 * f18));
                    if (fSqrt2 > 1000.0f) {
                        f17 = (f17 * 1000.0f) / fSqrt2;
                        f18 = (f18 * 1000.0f) / fSqrt2;
                    }
                    f7 = f17 * deltaTime;
                    f8 = f18 * deltaTime;
                    this.movementPivotX = (int) f3;
                    this.movementPivotY = (int) f4;
                    this.movementTargetX = (int) f6;
                    this.movementTargetY = (int) f5;
                } else {
                    z2 = false;
                }
                this.moveMomentumX = f7 / deltaTime;
                this.moveMomentumY = f8 / deltaTime;
            } else {
                tool = tool2;
            }
            z2 = false;
        } else {
            tool = tool2;
            int i7 = 1;
            if (touchPoints.size() == 2) {
                this.city.onCancelMouse();
                TouchPoint touchPoint2 = touchPoints.get(0);
                TouchPoint touchPoint3 = touchPoints.get(1);
                float xSpeed2 = (touchPoint2.getXSpeed() + touchPoint3.getXSpeed()) * 0.5f * widthRatio;
                float ySpeed2 = (touchPoint2.getYSpeed() + touchPoint3.getYSpeed()) * 0.5f * heightRatio;
                float x2 = (touchPoint3.getX() - touchPoint2.getX()) * widthRatio;
                float y2 = (touchPoint3.getY() - touchPoint2.getY()) * heightRatio;
                float fSqrt3 = (float) Math.sqrt((x2 * x2) + (y2 * y2));
                if (tool.reversedMovement()) {
                    xSpeed2 *= -1.0f;
                    ySpeed2 *= -1.0f;
                }
                this.moveMomentumX = xSpeed2 / deltaTime;
                this.moveMomentumY = ySpeed2 / deltaTime;
                Tool tool6 = this.movingTool;
                if (tool6 != null) {
                    tool6.cancelMove();
                    this.movingTool = null;
                }
                if (!this.moving) {
                    this.moving = true;
                }
                int degrees = (int) Math.toDegrees(Math.atan2(x2, y2));
                if (this.lastTpCount < 2) {
                    this.touchStartAngle = degrees;
                    this.touchStartRotation = this.city.getRotation();
                    this.touchStartDistance = fSqrt3;
                    this.touchStartCityScale = this.city.getScale();
                } else {
                    int i8 = degrees - this.touchStartAngle;
                    int i9 = i8 + 360;
                    if (Math.abs(i9) < Math.abs(i8)) {
                        i8 = i9;
                    }
                    if (i8 <= 90 || i8 >= 270) {
                        i7 = (i8 >= -90 || i8 <= -270) ? 0 : -1;
                    }
                    if (Math.min(this.touchStartDistance, fSqrt3) >= 100.0f && Settings.touchRotate) {
                        rotateMap((this.touchStartRotation + 4) - i7);
                    }
                    if (fSqrt3 != this.touchStartDistance && i8 > -45 && i8 < 45) {
                        int firstX2 = (int) (((touchPoint2.getFirstX() + touchPoint3.getFirstX()) / 2.0f) * widthRatio);
                        int firstY2 = (int) (((touchPoint2.getFirstY() + touchPoint3.getFirstY()) / 2.0f) * heightRatio);
                        if (Settings.smoothZoom > 0) {
                            float fMin2 = Math.min(Math.max((this.touchStartCityScale * fSqrt3) / this.touchStartDistance, City.getMinScale()), City.getMaxScale()) / this.city.getScale();
                            if (fMin2 > 1.001f) {
                                this.city.zoomIn(fMin2, firstX2, firstY2);
                            } else if (fMin2 < 0.999f) {
                                this.city.zoomOut(1.0f / fMin2, firstX2, firstY2);
                            }
                        } else {
                            float fMin3 = (float) Math.min(Math.max(Math.pow(2.0d, Math.round((float) (Math.log(((double) this.touchStartCityScale) * Math.pow(fSqrt3 / this.touchStartDistance, 1.0d)) / Math.log(2.0d)))), City.getMinScale()), City.getMaxScale());
                            while (fMin3 > this.city.getScale() + 0.01f) {
                                this.city.zoomIn(2.0f, firstX2, firstY2);
                            }
                            while (fMin3 < this.city.getScale() - 0.01f) {
                                this.city.zoomOut(2.0f, firstX2, firstY2);
                            }
                        }
                    }
                }
            } else {
                Tool tool7 = this.movingTool;
                if (tool7 != null) {
                    tool7.endMove();
                    this.movingTool = null;
                }
                this.moving = false;
                if (this.context.getTouch().isMouse()) {
                    Vector2 vector2TransformFromScreen = this.smoothCityZoomDrawer.transformFromScreen(this.city, this.tempVec2.set(this.context.getTouch().getMouseX() * widthRatio, this.context.getTouch().getMouseY() * heightRatio));
                    z = false;
                    this.city.onMouseMove(vector2TransformFromScreen.x, vector2TransformFromScreen.y, false);
                }
                z2 = z;
            }
            z = false;
            z2 = z;
        }
        if (keyDown(KeyAction.CITY_SCROLL_UP) || keyDown(KeyAction.CITY_SCROLL_UP_ALT)) {
            this.moveMomentumY = 400.0f;
        } else if (keyDown(KeyAction.CITY_SCROLL_DOWN) || keyDown(KeyAction.CITY_SCROLL_DOWN_ALT)) {
            this.moveMomentumY = -400.0f;
        }
        if (keyDown(KeyAction.CITY_SCROLL_LEFT) || keyDown(KeyAction.CITY_SCROLL_LEFT_ALT)) {
            this.moveMomentumX = 400.0f;
        } else if (keyDown(KeyAction.CITY_SCROLL_RIGHT) || keyDown(KeyAction.CITY_SCROLL_RIGHT_ALT)) {
            this.moveMomentumX = -400.0f;
        }
        if (TheoTown.runtimeFeatures.isFullscreen() && Settings.scrollEdges && this.context.getTouch().getActivePoints().size() == 0) {
            int x3 = Gdx.input.getX();
            int y3 = Gdx.input.getY();
            if (x3 < 2) {
                this.moveMomentumX = 600.0f;
            } else if (x3 >= Gdx.graphics.getWidth() - 2) {
                this.moveMomentumX = -600.0f;
            }
            if (y3 < 2) {
                this.moveMomentumY = 600.0f;
            } else if (y3 >= Gdx.graphics.getHeight() - 2) {
                this.moveMomentumY = -600.0f;
            }
        }
        if (!((Tool) this.city.getComponent(13)).allowMapMovement()) {
            this.moveMomentumX = UnityAdsConstants.SafeGuards.InitRequestRetryPolicy.MIN_JITTER_PCT;
            this.moveMomentumY = UnityAdsConstants.SafeGuards.InitRequestRetryPolicy.MIN_JITTER_PCT;
        }
        if (Math.max(Math.abs(this.moveMomentumX), Math.abs(this.moveMomentumY)) > 0.01f) {
            this.city.move(this.moveMomentumX * deltaTime, this.moveMomentumY * deltaTime);
            float fPow = (float) Math.pow(0.0010000000474974513d, deltaTime);
            this.moveMomentumX *= fPow;
            this.moveMomentumY *= fPow;
        }
        if (Math.max(Math.abs(this.moveMomentumX), Math.abs(this.moveMomentumY)) < 0.1f || !Settings.smoothScrolling) {
            this.moveMomentumY = UnityAdsConstants.SafeGuards.InitRequestRetryPolicy.MIN_JITTER_PCT;
            this.moveMomentumX = UnityAdsConstants.SafeGuards.InitRequestRetryPolicy.MIN_JITTER_PCT;
        }
        this.lastTpCount = touchPoints.size();
        if (CursorManager.INSTANCE.isSupported()) {
            if (z2) {
                setPreferredCursor(CursorType.Move);
            } else {
                setPreferredCursor(tool.getCursorType());
            }
        }
    }

    public final void updateSaveCounter() {
        if (this.citySaved) {
            int i = this.saveCounter;
            if (i > 10) {
                this.citySaved = false;
                this.saveCounter = 0;
            } else {
                this.saveCounter = i + 1;
            }
        }
    }

    public final void updateGameTime() {
        long jMillis = TimeUtils.millis();
        long j = jMillis - this.lastMS;
        if (j >= 1000 || j < 0) {
            this.city.getCityInfo().playtimeSeconds++;
            Settings.playTimeSeconds++;
            this.lastMS = jMillis - Math.max(Math.min(j - 1000, 1000L), 0L);
        }
        if (Settings.autoSaveMinutes <= 0 || !this.cityKeeper.isSavable() || !this.touchPane.getTouchPoints().isEmpty() || isDialogOpen() || RecoveryMode.INSTANCE.getActive() || this.city.getCityInfo().playtimeSeconds - this.lastAutoSaveSeconds < ((long) Settings.autoSaveMinutes) * 60) {
            return;
        }
        proceedSave();
    }

    @Override // info.flowersoft.theotown.stages.BaseStage
    public void onUpdateWhileDialogIsOpen() {
        super.onUpdateWhileDialogIsOpen();
        this.date.flushTime();
    }

    @Override // info.flowersoft.theotown.stages.BaseStage
    public void onBack() {
        if (isDialogOpen()) {
            super.onBack();
            return;
        }
        Gadget child = this.gui.getChild(r0.countChildren() - 1);
        if ("roottoolbar".equals(child.getId()) && child.isVisible()) {
            child.setVisible(false);
            return;
        }
        if (this.city.getDefaultTool() != this.city.getComponent(13)) {
            this.city.closeOrCancelTool();
        } else if (Gdx.app.getType() == Application.ApplicationType.Desktop) {
            Settings.hideUI = false;
            new GameMenuBuilder().build(this.gui, this.gameStageContext, null, null, this.context, new Setter<Stage>() { // from class: info.flowersoft.theotown.stages.CityStage.6
                @Override // io.blueflower.stapel2d.util.Setter
                public void set(Stage stage) {
                    CityStage.this.getGameStack().push(stage);
                }
            });
        } else {
            close();
        }
    }

    @Override // info.flowersoft.theotown.stages.BaseStage, io.blueflower.stapel2d.gamestack.Stage
    public void leave() {
        this.soundManager.pause();
        this.smoothCityZoomDrawer.dispose();
        this.gui.removeChild(this.touchPane);
        this.touchPane.free();
        this.guiCache = new GUICache(this.gui);
        super.leave();
        if (!this.citySaved && Settings.shouldSaveOnAppSwitch() && this.cityKeeper.isSavable() && !this.context.isRequestRestart()) {
            this.citySaved = true;
            getSaveThread(false, false, this.saveErrorHandler).start();
        }
        DefaultSelectable.setMaster(null);
        SelectableDraft.stageSetter = null;
        Settings.save();
        GlobalTransitionVariables.getInstance().save();
    }

    public final Thread getSaveThread(final boolean z, boolean z2, final Setter<Exception> setter) {
        if (z2 || this.cityKeeper.isOnline()) {
            PreviewCreator.generateMiniPreview(this.cityKeeper);
        }
        GlobalTransitionVariables.getInstance().save();
        ScriptingEnvironment.getInstance().callMethodOnce("save");
        final LastCityManager lastCityManager = GameHandler.getInstance().getLastCityManager();
        return new Thread(new Runnable() { // from class: info.flowersoft.theotown.stages.CityStage$$ExternalSyntheticLambda5
            @Override // java.lang.Runnable
            public final void run() {
                CityStage.$r8$lambda$TNTCV6kWbcRzk91cznnB71jtkHY(this.f$0, lastCityManager, z, setter);
            }
        });
    }

    public static /* synthetic */ void $r8$lambda$TNTCV6kWbcRzk91cznnB71jtkHY(CityStage cityStage, LastCityManager lastCityManager, boolean z, Setter setter) {
        lastCityManager.submitCity(cityStage.city);
        lastCityManager.setLastCity(cityStage.cityKeeper.getFile().getPath(), cityStage.city.getName(), cityStage.city.getGameMode().hasInfinityMoney());
        try {
            cityStage.cityKeeper.save();
            cityStage.lastAutoSaveSeconds = cityStage.city.getCityInfo().playtimeSeconds;
            if (z) {
                cityStage.cityKeeper.removeTempBackupFile();
                cityStage.cityKeeper.storeTempBackupFileInTheFuture();
            }
        } catch (Exception e) {
            setter.set(e);
        }
    }

    @Override // info.flowersoft.theotown.stages.BaseStage, io.blueflower.stapel2d.gamestack.Stage
    public void drop() {
        super.drop();
        this.smoothCityZoomDrawer.dispose();
        GUICache.invalidateAllCaches();
        this.postProcessors.clear();
        unloadScripts();
        PluginUnloader.getInstance().reset();
        Tutorial.showAll();
    }

    public final void closeApp() {
        Dialog dialog = new Dialog(Resources.FRAME_PEOPLE + 8, this.translator.translate(2594), this.translator.translate(2934), this.gui);
        dialog.addButton(Resources.ICON_CLOSE, this.translator.translate(1574), false, new Runnable() { // from class: info.flowersoft.theotown.stages.CityStage$$ExternalSyntheticLambda0
            @Override // java.lang.Runnable
            public final void run() {
                TheoTown.runtimeFeatures.closeApp();
            }
        });
        dialog.addCancelButton(Resources.ICON_CANCEL, this.translator.translate(1340)).setGolden(true);
        dialog.distributeButtons();
        dialog.setVisible(true);
    }

    public static void showSaveDialog(Translator translator, Master master, boolean z, Setter<Dialog> setter, final Runnable runnable, Runnable runnable2) {
        if (Settings.shouldSaveOnLeaveCity()) {
            runnable.run();
            return;
        }
        if (!z) {
            runnable2.run();
            return;
        }
        final Dialog dialog = new Dialog(Resources.ICON_SAVE_AND_CLOSE, translator.translate(275), translator.translate(1308), 260, 140, master);
        dialog.addCancelButton(0, "CANCEL").setVisible(false);
        dialog.addButton(Resources.ICON_TRASH, translator.translate(2691), false, runnable2);
        new GoldButton(Resources.ICON_SAVE, translator.translate(2293), 0, 0, 0, dialog.getControlLine().getClientHeight(), dialog.getControlLine().getThirdPart()) { // from class: info.flowersoft.theotown.stages.CityStage.7
            @Override // io.blueflower.stapel2d.gui.Button, io.blueflower.stapel2d.gui.Gadget
            public void onClick() {
                super.onClick();
                dialog.setVisible(false);
                runnable.run();
            }
        };
        dialog.distributeButtons();
        setter.set(dialog);
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void close() {
        showSaveDialog(this.translator, this.gui, this.cityKeeper.isSavable(), new Setter() { // from class: info.flowersoft.theotown.stages.CityStage$$ExternalSyntheticLambda1
            @Override // io.blueflower.stapel2d.util.Setter
            public final void set(Object obj) {
                this.f$0.showDialog((Dialog) obj);
            }
        }, new Runnable() { // from class: info.flowersoft.theotown.stages.CityStage$$ExternalSyntheticLambda2
            @Override // java.lang.Runnable
            public final void run() {
                this.f$0.leaveStage(true);
            }
        }, new Runnable() { // from class: info.flowersoft.theotown.stages.CityStage$$ExternalSyntheticLambda3
            @Override // java.lang.Runnable
            public final void run() {
                this.f$0.leaveStage(false);
            }
        });
    }

    public final void close(final Runnable runnable) {
        showSaveDialog(this.translator, this.gui, this.cityKeeper.isSavable(), new Setter() { // from class: info.flowersoft.theotown.stages.CityStage$$ExternalSyntheticLambda11
            @Override // io.blueflower.stapel2d.util.Setter
            public final void set(Object obj) {
                this.f$0.showDialog((Dialog) obj);
            }
        }, new Runnable() { // from class: info.flowersoft.theotown.stages.CityStage$$ExternalSyntheticLambda12
            @Override // java.lang.Runnable
            public final void run() {
                CityStage.$r8$lambda$3IboEVEjiVWWz896i3lC6SLU8Ss(this.f$0, runnable);
            }
        }, new Runnable() { // from class: info.flowersoft.theotown.stages.CityStage$$ExternalSyntheticLambda13
            @Override // java.lang.Runnable
            public final void run() {
                CityStage.$r8$lambda$qlrmTzefXJ06wLB7uIbKXy8bhEk(this.f$0, runnable);
            }
        });
    }

    public static /* synthetic */ void $r8$lambda$3IboEVEjiVWWz896i3lC6SLU8Ss(CityStage cityStage, Runnable runnable) {
        cityStage.getClass();
        runnable.run();
        cityStage.leaveStage(true);
    }

    public static /* synthetic */ void $r8$lambda$qlrmTzefXJ06wLB7uIbKXy8bhEk(CityStage cityStage, Runnable runnable) {
        cityStage.getClass();
        runnable.run();
        cityStage.leaveStage(false);
    }

    public final void proceedSave() {
        if (this.cityKeeper.isSavable()) {
            Runnable runnable = new Runnable() { // from class: info.flowersoft.theotown.stages.CityStage$$ExternalSyntheticLambda6
                @Override // java.lang.Runnable
                public final void run() {
                    CityStage.$r8$lambda$v2rhJNw8uhlBTWb3ohRW10mnufE();
                }
            };
            this.citySaved = true;
            this.lastAutoSaveSeconds = this.city.getCityInfo().playtimeSeconds;
            ScriptingEnvironment.getInstance().callMethodOnce("save");
            SaveWaitingStage saveWaitingStage = new SaveWaitingStage(this.context, getSaveThread(true, false, this.saveErrorHandler), runnable, this.cityKeeper);
            saveWaitingStage.setOwnBackgroundCity(this.city);
            getGameStack().push(saveWaitingStage);
        }
    }

    public final void leaveStage(boolean z) {
        leaveStage(z, true);
    }

    public final Stage leaveStage(boolean z, boolean z2) {
        this.citySaved = true;
        if (z2) {
            getGameStack().pop();
        }
        if (z && this.cityKeeper.isSavable()) {
            Runnable runnable = new Runnable() { // from class: info.flowersoft.theotown.stages.CityStage$$ExternalSyntheticLambda9
                @Override // java.lang.Runnable
                public final void run() {
                    CityStage.m2208$r8$lambda$oPi_QPaRgNqIinHyadFo3QRYfg(this.f$0);
                }
            };
            ScriptingEnvironment.getInstance().callMethodOnce("save");
            SaveWaitingStage saveWaitingStage = new SaveWaitingStage(this.context, getSaveThread(true, true, this.saveErrorHandler), runnable, this.cityKeeper);
            saveWaitingStage.setAborted(runnable);
            if (z2) {
                getGameStack().push(saveWaitingStage);
            }
            return saveWaitingStage;
        }
        if (this.cityKeeper.hasTempBackupFile()) {
            this.cityKeeper.restoreTempBackupFile();
        }
        this.city.dispose();
        this.cityKeeper.setCity(null);
        return null;
    }

    /* JADX INFO: renamed from: $r8$lambda$oPi-_QPaRgNqIinHyadFo3QRYfg, reason: not valid java name */
    public static /* synthetic */ void m2208$r8$lambda$oPi_QPaRgNqIinHyadFo3QRYfg(CityStage cityStage) {
        if (cityStage.cityKeeper.hasTempBackupFile()) {
            cityStage.cityKeeper.removeTempBackupFile();
        }
    }

    public final void visitStage(Stage stage) {
        if (Settings.shouldSaveOnAppSwitch() && this.cityKeeper.isSavable()) {
            ScriptingEnvironment.getInstance().callMethodOnce("save");
            this.saveHook = getSaveThread(false, false, this.saveErrorHandler);
            getGameStack().addLeaveAppHook(this.saveHook);
            this.citySaved = true;
        }
        if (stage instanceof BaseStage) {
            ((BaseStage) stage).setOwnBackgroundCity(this.city);
        }
        getGameStack().push(stage);
    }

    public String toString() {
        return "GameStage";
    }

    /* JADX INFO: renamed from: info.flowersoft.theotown.stages.CityStage$8, reason: invalid class name */
    public class AnonymousClass8 extends DefaultTool {
        @Override // info.flowersoft.theotown.city.components.Tool
        public boolean ensureValidPosition() {
            return false;
        }

        public AnonymousClass8() {
            registerClickListener(new Tool.ClickListener() { // from class: info.flowersoft.theotown.stages.CityStage$8$$ExternalSyntheticLambda0
                @Override // info.flowersoft.theotown.city.components.Tool.ClickListener
                public final void onClick(Tool tool, int i, int i2, int i3, int i4) {
                    CityStage.AnonymousClass8.m2210$r8$lambda$hiCm_g0A9ivxaO5sMwa_TGs5Wo(this.f$0, tool, i, i2, i3, i4);
                }
            });
        }

        /* JADX WARN: Removed duplicated region for block: B:25:0x0089  */
        /* JADX INFO: renamed from: $r8$lambda$hiCm_g0A9-ivxaO5sMwa_TGs5Wo, reason: not valid java name */
        /*
            Code decompiled incorrectly, please refer to instructions dump.
            To view partially-correct code enable 'Show inconsistent code' option in preferences
        */
        public static /* synthetic */ void m2210$r8$lambda$hiCm_g0A9ivxaO5sMwa_TGs5Wo(final info.flowersoft.theotown.stages.CityStage.AnonymousClass8 r10, info.flowersoft.theotown.city.components.Tool r11, final int r12, final int r13, int r14, int r15) {
            /*
                Method dump skipped, instruction units count: 491
                To view this dump change 'Code comments level' option to 'DEBUG'
            */
            throw new UnsupportedOperationException("Method not decompiled: info.flowersoft.theotown.stages.CityStage.AnonymousClass8.m2210$r8$lambda$hiCm_g0A9ivxaO5sMwa_TGs5Wo(info.flowersoft.theotown.stages.CityStage$8, info.flowersoft.theotown.city.components.Tool, int, int, int, int):void");
        }

        public static /* synthetic */ void $r8$lambda$RU0OcmlejuUr1MppMWg4YU9jDiI(AnonymousClass8 anonymousClass8, int i, int i2) {
            if (CityStage.this.cityVisitor != null) {
                CityStage.this.cityVisitor.visit(i, i2);
            }
        }
    }

    public final Tool getDefaultTool() {
        return new AnonymousClass8();
    }

    public final void visitCityInfo(CityInfo cityInfo) {
        if (getGameStack().peek() instanceof CityInfoStage) {
            return;
        }
        CityInfoStage cityInfoStage = new CityInfoStage(this.city, this.context);
        cityInfoStage.selectCityInfo(cityInfo);
        cityInfoStage.setOwnBackgroundCity(this.city);
        visitStage(cityInfoStage);
    }

    public final void rotateMap(int i) {
        if (this.city.getRotation() == i % 4) {
            return;
        }
        this.city.setRotation(i);
        this.minimap.flush();
    }

    public class GameStageContext {
        public Panel areaPanel;
        public DebugLayer debugLayer;
        public long lastEnterMS = TimeUtils.millis();
        public ScreenshotProcessor mapScreenshot;
        public Panel minimapPanel;
        public ScreenshotProcessor onlineScreenshot;
        public ScreenshotProcessor screenshot;

        public GameStageContext() {
            Panel panel = new Panel(0, 0, CityStage.this.gui.getClientWidth(), CityStage.this.gui.getClientHeight(), CityStage.this.gui) { // from class: info.flowersoft.theotown.stages.CityStage.GameStageContext.1
                @Override // io.blueflower.stapel2d.gui.Panel, io.blueflower.stapel2d.gui.Gadget
                public void draw(int i, int i2) {
                }
            };
            this.areaPanel = panel;
            panel.setTouchThrough(true);
        }

        public boolean isSavable() {
            return CityStage.this.cityKeeper.isSavable();
        }

        public void close() {
            CityStage.this.close();
        }

        public void closeApp() {
            CityStage.this.closeApp();
        }

        public void visitStage(Stage stage) {
            CityStage.this.visitStage(stage);
        }

        public boolean isDialogOpen() {
            return CityStage.this.isDialogOpen();
        }

        public Stapel2DGameContext getGameContext() {
            return CityStage.this.context;
        }

        public City getCity() {
            return CityStage.this.city;
        }

        public DefaultDate getDate() {
            return CityStage.this.date;
        }

        public Master getGUI() {
            return (Master) this.areaPanel.getAbsoluteParent();
        }

        public void setMinimap(Minimap minimap) {
            CityStage.this.minimap = minimap;
        }

        public Minimap getMinimap() {
            return CityStage.this.minimap;
        }

        public Engine getEngine() {
            return CityStage.this.engine;
        }

        public int getLastRenderTime() {
            return CityStage.this.lastRenderTime;
        }

        public int getDelimitedMS() {
            return CityStage.this.delimitedMS;
        }

        public void visitCityInfo(CityInfo cityInfo) {
            CityStage.this.visitCityInfo(cityInfo);
        }

        public void addPostProcessor(Runnable runnable) {
            CityStage.this.postProcessors.add(runnable);
        }

        public void showDialog(Dialog dialog) {
            CityStage.this.showDialog(dialog);
        }

        public void turnMap(int i) {
            CityStage cityStage = CityStage.this;
            cityStage.rotateMap(i + cityStage.city.getRotation());
        }

        public AbstractCommentsStage getCommentsStage() {
            return CityStage.this.commentsStage;
        }

        public CityGiftManager getGiftManager() {
            return CityStage.this.giftManager;
        }

        public void save(final Runnable runnable) {
            if (isSavable()) {
                CityStage.this.citySaved = true;
                CityStage cityStage = CityStage.this;
                SaveWaitingStage saveWaitingStage = new SaveWaitingStage(cityStage.context, cityStage.getSaveThread(true, true, cityStage.saveErrorHandler), new Runnable() { // from class: info.flowersoft.theotown.stages.CityStage$GameStageContext$$ExternalSyntheticLambda1
                    @Override // java.lang.Runnable
                    public final void run() {
                        CityStage.GameStageContext.m2211$r8$lambda$ceLdWdOFqrZApHxELw8lmbRk1c(runnable);
                    }
                }, CityStage.this.cityKeeper);
                saveWaitingStage.setOwnBackgroundCity(CityStage.this.city);
                CityStage.this.getGameStack().push(saveWaitingStage);
            }
        }

        /* JADX INFO: renamed from: $r8$lambda$ceLdWdOF-qrZApHxELw8lmbRk1c, reason: not valid java name */
        public static /* synthetic */ void m2211$r8$lambda$ceLdWdOFqrZApHxELw8lmbRk1c(Runnable runnable) {
            if (runnable != null) {
                runnable.run();
            }
        }

        public void saveForScreenshot(final Getter<PreviewCreator.SteppedTask<Void>> getter) {
            Thread thread;
            if (isSavable()) {
                CityStage.this.citySaved = true;
                ScriptingEnvironment.getInstance().callMethodOnce("save");
                if (Settings.shouldSaveForScreenshot()) {
                    CityStage cityStage = CityStage.this;
                    thread = cityStage.getSaveThread(false, false, cityStage.saveErrorHandler);
                } else {
                    thread = new Thread();
                }
            } else {
                thread = new Thread();
            }
            Thread thread2 = thread;
            CityStage cityStage2 = CityStage.this;
            WaitingStage waitingStage = new WaitingStage(cityStage2.context, Resources.ICON_MAP_SCREENSHOT, cityStage2.translator.translate(IronSourceConstants.errorCode_TEST_SUITE_EXCEPTION_ON_LAUNCH), thread2, null, new ProgressProvider() { // from class: info.flowersoft.theotown.stages.CityStage$GameStageContext$$ExternalSyntheticLambda0
                @Override // info.flowersoft.theotown.util.ProgressProvider
                public final float getProgress() {
                    return CityStage.GameStageContext.m2212$r8$lambda$lN175GaLiI2RoVtuztTUXHknms(this.f$0);
                }
            }, CityStage.this.cityKeeper.getStateProvider());
            waitingStage.append(getter);
            waitingStage.setAborted(new Runnable() { // from class: info.flowersoft.theotown.stages.CityStage.GameStageContext.2
                @Override // java.lang.Runnable
                public void run() {
                    PreviewCreator.evaluateSteppedTask((PreviewCreator.SteppedTask) getter.get());
                }
            });
            waitingStage.setOwnBackgroundCity(CityStage.this.city);
            CityStage.this.getGameStack().push(waitingStage);
        }

        /* JADX INFO: renamed from: $r8$lambda$lN175G-aLiI2RoVtuztTUXHknms, reason: not valid java name */
        public static /* synthetic */ float m2212$r8$lambda$lN175GaLiI2RoVtuztTUXHknms(GameStageContext gameStageContext) {
            return CityStage.this.cityKeeper.getProgressProvider().getProgress() * 0.5f;
        }

        public void handleRunnable(Runnable runnable) {
            CityStage.this.asyncRunnables.add(runnable);
        }
    }

    @Override // info.flowersoft.theotown.stages.BaseStage
    public void runPostponedTasks() {
        synchronized (this.city) {
            ScriptingEnvironment.getInstance().runPostponedTasks();
        }
    }
}
