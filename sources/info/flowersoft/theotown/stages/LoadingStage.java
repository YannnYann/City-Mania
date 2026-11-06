package info.flowersoft.theotown.stages;

import com.badlogic.gdx.Application;
import com.badlogic.gdx.Gdx;
import com.badlogic.gdx.files.FileHandle;
import com.badlogic.gdx.graphics.Pixmap;
import com.badlogic.gdx.graphics.g2d.Gdx2DPixmap;
import com.badlogic.gdx.math.MathUtils;
import com.badlogic.gdx.scenes.scene2d.utils.UIUtils;
import com.badlogic.gdx.utils.Base64Coder;
import com.badlogic.gdx.utils.TimeUtils;
import com.ironsource.mediationsdk.metadata.a;
import com.ironsource.mediationsdk.utils.IronSourceConstants;
import com.unity3d.services.UnityAdsConstants;
import info.flowersoft.theotown.InAppHandler;
import info.flowersoft.theotown.SDFFontModifier;
import info.flowersoft.theotown.city.objects.Ground;
import info.flowersoft.theotown.city.objects.Road;
import info.flowersoft.theotown.crossplatform.Analytics;
import info.flowersoft.theotown.crossplatform.TheoTown;
import info.flowersoft.theotown.draft.AnimationDraft;
import info.flowersoft.theotown.draft.ShaderDraft;
import info.flowersoft.theotown.draftloader.ContentLoader;
import info.flowersoft.theotown.draftloader.FrameList;
import info.flowersoft.theotown.draftloader.PluginHelper;
import info.flowersoft.theotown.drawing.FontFactory;
import info.flowersoft.theotown.input.KeyActionManager;
import info.flowersoft.theotown.mechanics.GameHandler;
import info.flowersoft.theotown.resources.Constants;
import info.flowersoft.theotown.resources.ContentCollector;
import info.flowersoft.theotown.resources.ContentData;
import info.flowersoft.theotown.resources.Drafts;
import info.flowersoft.theotown.resources.Features;
import info.flowersoft.theotown.resources.MusicBox;
import info.flowersoft.theotown.resources.PluginScriptPolicy;
import info.flowersoft.theotown.resources.Resources;
import info.flowersoft.theotown.resources.Settings;
import info.flowersoft.theotown.resources.ShaderRepository;
import info.flowersoft.theotown.resources.SoundPlayer;
import info.flowersoft.theotown.resources.StaticFiles;
import info.flowersoft.theotown.resources.TaskManager;
import info.flowersoft.theotown.resources.TopicManager;
import info.flowersoft.theotown.resources.WinterManager;
import info.flowersoft.theotown.scripting.ManagedLibrary;
import info.flowersoft.theotown.scripting.ScriptingEnvironment;
import info.flowersoft.theotown.scripting.libraries.AnalyticsLibrary;
import info.flowersoft.theotown.scripting.libraries.ArrayLibrary;
import info.flowersoft.theotown.scripting.libraries.BuildingLibrary;
import info.flowersoft.theotown.scripting.libraries.DebugLibrary;
import info.flowersoft.theotown.scripting.libraries.DraftLibrary;
import info.flowersoft.theotown.scripting.libraries.DrawingLibrary;
import info.flowersoft.theotown.scripting.libraries.DsaLibrary;
import info.flowersoft.theotown.scripting.libraries.IntrinsicsLibrary;
import info.flowersoft.theotown.scripting.libraries.PixmapLibrary;
import info.flowersoft.theotown.scripting.libraries.RuntimeLibrary;
import info.flowersoft.theotown.scripting.libraries.ScriptLibrary;
import info.flowersoft.theotown.scripting.libraries.TSLibrary;
import info.flowersoft.theotown.scripting.libraries.TheoTownLibrary;
import info.flowersoft.theotown.scripting.libraries.UtilLibrary;
import info.flowersoft.theotown.store.ManagedPluginsController;
import info.flowersoft.theotown.store.PluginUnloader;
import info.flowersoft.theotown.ui.CursorManager;
import info.flowersoft.theotown.ui.CursorType;
import info.flowersoft.theotown.ui.StartScreenDrawer;
import info.flowersoft.theotown.util.DraftLocalizer;
import info.flowersoft.theotown.util.Files;
import info.flowersoft.theotown.util.Hashing;
import info.flowersoft.theotown.util.PackedUtils;
import info.flowersoft.theotown.util.PixmapUtil;
import info.flowersoft.theotown.util.ProgressSetter;
import info.flowersoft.theotown.util.StringFormatter;
import info.flowersoft.theotown.util.ThemeManager;
import info.flowersoft.theotown.util.Watchdog;
import info.flowersoft.theotown.util.json.JSONObject;
import info.flowersoft.theotown.util.vfs.AbstractFile;
import io.bidmachine.protobuf.EventTypeExtended;
import io.blueflower.stapel2d.drawing.AbstractBitmapTextureSource;
import io.blueflower.stapel2d.drawing.Color;
import io.blueflower.stapel2d.drawing.Colors;
import io.blueflower.stapel2d.drawing.Engine;
import io.blueflower.stapel2d.drawing.Font;
import io.blueflower.stapel2d.drawing.GLUtil;
import io.blueflower.stapel2d.drawing.Image;
import io.blueflower.stapel2d.drawing.Shader;
import io.blueflower.stapel2d.drawing.Texture;
import io.blueflower.stapel2d.drawing.TiledTextureSource;
import io.blueflower.stapel2d.gamestack.Stage;
import io.blueflower.stapel2d.gamestack.Stapel2DGameContext;
import io.blueflower.stapel2d.gui.Skin;
import io.blueflower.stapel2d.util.Getter;
import java.io.File;
import java.io.IOException;
import java.io.InputStream;
import java.nio.ByteBuffer;
import java.nio.ByteOrder;
import java.nio.IntBuffer;
import java.util.ArrayList;
import java.util.Iterator;
import java.util.List;
import java.util.concurrent.Callable;
import java.util.concurrent.ExecutionException;
import java.util.concurrent.ExecutorService;
import java.util.concurrent.Executors;
import java.util.concurrent.Future;
import java.util.concurrent.FutureTask;
import vm2.Globals;
import vm2.LuaValue;

/* JADX INFO: loaded from: classes4.dex */
public class LoadingStage extends Stage {
    public ContentLoader contentLoader;
    public Stapel2DGameContext context;
    public Task currentTask;
    public int progressDone;
    public int progressTotal;
    public StartScreenDrawer startScreenDrawer;
    public Future<?> taskFuture;
    public Watchdog watchdog;
    public final List<Texture> textures = new ArrayList();
    public final List<Task> tasks = new ArrayList();
    public final List<Task> completedTasks = new ArrayList();
    public final List<FutureTask<?>> synchronizedTasks = new ArrayList();
    public List<ContentData> contents = new ArrayList();
    public List<AbstractFile> files = new ArrayList();
    public final ExecutorService executor = Executors.newSingleThreadExecutor();
    public final List<Runnable> pendingTasks = new ArrayList();
    public long taskStartedMS = 0;
    public final ProgressSetter pg = new ProgressSetter() { // from class: info.flowersoft.theotown.stages.LoadingStage.1
        @Override // info.flowersoft.theotown.util.ProgressSetter
        public void set(int i, int i2) {
            LoadingStage.this.progressDone = i;
            LoadingStage.this.progressTotal = i2;
        }
    };

    public static /* synthetic */ void $r8$lambda$fW3eN3AdayYnb4eBeZ7ZAZZtWW4() {
    }

    public LoadingStage(Stapel2DGameContext stapel2DGameContext) {
        this.context = stapel2DGameContext;
    }

    public final void addTask(Task task) {
        this.tasks.add(task);
    }

    @Override // io.blueflower.stapel2d.gamestack.Stage
    public void prepare() {
        loadSounds();
        PluginUnloader.getInstance();
        StartScreenDrawer.startNewSession();
        this.watchdog = new Watchdog(Resources.getSpecificConfig("loading").optInt("loading watchdog timeout", 60000), new Watchdog.TimeoutHandler() { // from class: info.flowersoft.theotown.stages.LoadingStage$$ExternalSyntheticLambda1
            @Override // info.flowersoft.theotown.util.Watchdog.TimeoutHandler
            public final void handle(long j, Object obj) {
                LoadingStage.$r8$lambda$IVSEllZ3meS0G9IO5Q79mWJuztY(j, obj);
            }
        });
        this.startScreenDrawer = new StartScreenDrawer(this.context.getEngine());
        addTask(new Task("Warm-up", new Runnable() { // from class: info.flowersoft.theotown.stages.LoadingStage$$ExternalSyntheticLambda12
            @Override // java.lang.Runnable
            public final void run() {
                LoadingStage.$r8$lambda$fW3eN3AdayYnb4eBeZ7ZAZZtWW4();
            }
        }, true));
        addTask(new Task("Startup", new Runnable() { // from class: info.flowersoft.theotown.stages.LoadingStage$$ExternalSyntheticLambda15
            @Override // java.lang.Runnable
            public final void run() {
                LoadingStage.$r8$lambda$27wNPPRRxNmNMFTpEt7FTYGlTTY(this.f$0);
            }
        }, false));
        addTask(new Task("Texture", new Runnable() { // from class: info.flowersoft.theotown.stages.LoadingStage$$ExternalSyntheticLambda16
            @Override // java.lang.Runnable
            public final void run() {
                LoadingStage.m2240$r8$lambda$0Mwg2jWxbTciCadei31HuJ9pto(this.f$0);
            }
        }, false));
        addTask(new Task("Fonts", new Runnable() { // from class: info.flowersoft.theotown.stages.LoadingStage$$ExternalSyntheticLambda17
            @Override // java.lang.Runnable
            public final void run() {
                this.f$0.loadFonts();
            }
        }, false));
        addTask(new Task("Skin", new Runnable() { // from class: info.flowersoft.theotown.stages.LoadingStage$$ExternalSyntheticLambda18
            @Override // java.lang.Runnable
            public final void run() {
                LoadingStage.$r8$lambda$nlFm8a3ilQk7Wvelef0vx27udos(this.f$0);
            }
        }, true));
        addTask(new Task("Extract files", new Runnable() { // from class: info.flowersoft.theotown.stages.LoadingStage$$ExternalSyntheticLambda19
            @Override // java.lang.Runnable
            public final void run() {
                this.f$0.provideSamplePlugins();
            }
        }, true));
        addTask(new Task("Frames", new Runnable() { // from class: info.flowersoft.theotown.stages.LoadingStage$$ExternalSyntheticLambda20
            @Override // java.lang.Runnable
            public final void run() {
                this.f$0.loadFrames();
            }
        }, true));
        addTask(new Task("Check recovery", new Runnable() { // from class: info.flowersoft.theotown.stages.LoadingStage$$ExternalSyntheticLambda21
            @Override // java.lang.Runnable
            public final void run() {
                LoadingStage.$r8$lambda$9JOacwMEpmMPfxN0cWDczezDkoA(this.f$0);
            }
        }, false));
        addTask(new Task("Scripting", new Runnable() { // from class: info.flowersoft.theotown.stages.LoadingStage$$ExternalSyntheticLambda22
            @Override // java.lang.Runnable
            public final void run() {
                this.f$0.loadScriptingLibraries();
            }
        }, false));
        addTask(new Task("Collecting drafts", new Runnable() { // from class: info.flowersoft.theotown.stages.LoadingStage$$ExternalSyntheticLambda2
            @Override // java.lang.Runnable
            public final void run() {
                this.f$0.collectDrafts();
            }
        }, true));
        addTask(new Task("Prefetching images", new Runnable() { // from class: info.flowersoft.theotown.stages.LoadingStage$$ExternalSyntheticLambda3
            @Override // java.lang.Runnable
            public final void run() {
                this.f$0.prefetchImages();
            }
        }, true));
        addTask(new Task("Loading drafts", new Runnable() { // from class: info.flowersoft.theotown.stages.LoadingStage$$ExternalSyntheticLambda4
            @Override // java.lang.Runnable
            public final void run() throws Throwable {
                this.f$0.loadDrafts();
            }
        }, true));
        addTask(new Task("Finishing drafts", new Runnable() { // from class: info.flowersoft.theotown.stages.LoadingStage$$ExternalSyntheticLambda5
            @Override // java.lang.Runnable
            public final void run() {
                LoadingStage.$r8$lambda$vHmx3qgCneT0A8OubRJBo85UCF8(this.f$0);
            }
        }, true));
        addTask(new Task("Init scripts", new Runnable() { // from class: info.flowersoft.theotown.stages.LoadingStage$$ExternalSyntheticLambda6
            @Override // java.lang.Runnable
            public final void run() {
                this.f$0.initScripts();
            }
        }, true));
        addTask(new Task("Loading music", new Runnable() { // from class: info.flowersoft.theotown.stages.LoadingStage$$ExternalSyntheticLambda7
            @Override // java.lang.Runnable
            public final void run() {
                this.f$0.loadMusic();
            }
        }, true));
        addTask(new Task("Shaders", new Runnable() { // from class: info.flowersoft.theotown.stages.LoadingStage$$ExternalSyntheticLambda8
            @Override // java.lang.Runnable
            public final void run() {
                this.f$0.loadShaders();
            }
        }, true));
        addTask(new Task("Topics", new Runnable() { // from class: info.flowersoft.theotown.stages.LoadingStage$$ExternalSyntheticLambda9
            @Override // java.lang.Runnable
            public final void run() {
                this.f$0.loadTopics();
            }
        }, true));
        addTask(new Task("Loading textures", new Runnable() { // from class: info.flowersoft.theotown.stages.LoadingStage$$ExternalSyntheticLambda10
            @Override // java.lang.Runnable
            public final void run() {
                this.f$0.loadTexture();
            }
        }, true));
        addTask(new Task("Checking winter", new Runnable() { // from class: info.flowersoft.theotown.stages.LoadingStage$$ExternalSyntheticLambda11
            @Override // java.lang.Runnable
            public final void run() {
                LoadingStage.$r8$lambda$sG5nLif9xr_ysjhg8SsCrxQanac(this.f$0);
            }
        }, true));
        addTask(new Task("Preparing background", new Runnable() { // from class: info.flowersoft.theotown.stages.LoadingStage$$ExternalSyntheticLambda13
            @Override // java.lang.Runnable
            public final void run() {
                LoadingStage.$r8$lambda$YG7VgAHr62WqfZYVvftj0HZsxaI(this.f$0);
            }
        }, false));
        addTask(new Task("Finishing", new Runnable() { // from class: info.flowersoft.theotown.stages.LoadingStage$$ExternalSyntheticLambda14
            @Override // java.lang.Runnable
            public final void run() {
                LoadingStage.$r8$lambda$dnF3OEWtuGsES1G0uWmsNRfpRSo(this.f$0);
            }
        }, false));
    }

    public static /* synthetic */ void $r8$lambda$IVSEllZ3meS0G9IO5Q79mWJuztY(long j, Object obj) {
        TheoTown.analytics.logEvent("Watchdog", "" + obj, "" + j);
        throw new Error("Timeout after " + j + "ms, hint: " + obj);
    }

    public static /* synthetic */ void $r8$lambda$27wNPPRRxNmNMFTpEt7FTYGlTTY(LoadingStage loadingStage) {
        loadingStage.loadSettings();
        KeyActionManager.load(loadingStage.context);
        KeyActionManager.save(loadingStage.context);
        TheoTown.notifications.setSubscription(Settings.pushNotifications, Settings.pushNotificationsOnline);
        StaticFiles.getInstance().init(Resources.KEYS);
        loadingStage.analyzeGL();
        loadingStage.assertPerformance();
        loadingStage.context.getTranslator().setLanguage(Settings.locale, Resources.getEffectiveLocalizationPatches());
    }

    /* JADX INFO: renamed from: $r8$lambda$0Mwg2jWxbTciCadei31HuJ9p-to, reason: not valid java name */
    public static /* synthetic */ void m2240$r8$lambda$0Mwg2jWxbTciCadei31HuJ9pto(LoadingStage loadingStage) {
        loadingStage.createTexture();
        loadingStage.createSkin();
    }

    public static /* synthetic */ void $r8$lambda$nlFm8a3ilQk7Wvelef0vx27udos(LoadingStage loadingStage) {
        loadingStage.getClass();
        while (TheoTown.runtimeFeatures.waitingForPermissions()) {
            try {
                Thread.sleep(100L);
            } catch (InterruptedException e) {
                e.printStackTrace();
            }
        }
        loadingStage.loadSkin();
        loadingStage.loadDarkSkin();
    }

    public static /* synthetic */ void $r8$lambda$9JOacwMEpmMPfxN0cWDczezDkoA(LoadingStage loadingStage) {
        loadingStage.getClass();
        if (Settings.failedStartupCtr >= 3 || (UIUtils.shift() && Gdx.input.isKeyPressed(46))) {
            loadingStage.getGameStack().push(new RecoveryStage(loadingStage.context, loadingStage.startScreenDrawer));
        }
    }

    public static /* synthetic */ void $r8$lambda$vHmx3qgCneT0A8OubRJBo85UCF8(LoadingStage loadingStage) {
        loadingStage.finishDraftLoading();
        loadingStage.loadDraftDefinedFrames();
        loadingStage.context.getTranslator().setLanguage(Settings.locale, Resources.getEffectiveLocalizationPatches());
        Resources.applyFontLocale(loadingStage.context.getTranslator().getEffectiveLocale());
        ThemeManager.INSTANCE.update();
    }

    public static /* synthetic */ void $r8$lambda$sG5nLif9xr_ysjhg8SsCrxQanac(LoadingStage loadingStage) {
        loadingStage.checkWinter();
        loadingStage.validateScripts();
    }

    public static /* synthetic */ void $r8$lambda$YG7VgAHr62WqfZYVvftj0HZsxaI(LoadingStage loadingStage) {
        loadingStage.getClass();
        if (PluginHelper.errorOccured()) {
            return;
        }
        BaseStage.createBGCity(loadingStage.context);
    }

    public static /* synthetic */ void $r8$lambda$dnF3OEWtuGsES1G0uWmsNRfpRSo(LoadingStage loadingStage) {
        loadingStage.executor.shutdown();
        ScriptingEnvironment.getInstance().callMethodOnce("finishLoading");
        loadingStage.getGameStack().pop();
    }

    public final void validateScripts() {
        final ScriptingEnvironment scriptingEnvironment = ScriptingEnvironment.getInstance();
        final long jNextInt = Resources.RND.nextInt(3600) + 600;
        scriptingEnvironment.postponeTask(new Runnable() { // from class: info.flowersoft.theotown.stages.LoadingStage.2
            public int ctr = 0;

            @Override // java.lang.Runnable
            public void run() {
                int i = this.ctr;
                if (i < jNextInt) {
                    this.ctr = i + 1;
                    scriptingEnvironment.postponeTask(this);
                    return;
                }
                Globals globals = scriptingEnvironment.getGlobals();
                double dOptdouble = globals.get("O8E72h9si7nnmZ9uJpFZ").optdouble(0.0d);
                double dOptdouble2 = globals.get("sg4vZjLbLgvoohx0eRXY").optdouble(0.0d);
                double dOptdouble3 = globals.get("Z9exNVYUNGmloOmm3SXe").optdouble(0.0d);
                double dOptdouble4 = globals.get("jrRDij8oqDNwhEiFmpS5").optdouble(0.0d);
                double dOptdouble5 = globals.get("V2JfEvNnvsgTX18yehYt").optdouble(0.0d);
                double dOptdouble6 = globals.get("Ax7EPgt6mpexln4Xwqaa").optdouble(0.0d);
                String strOptjstring = globals.get("a6pXEBfZE69mGyk6Rxby").optjstring("");
                if (Math.min(Math.min(dOptdouble, dOptdouble2), Math.min(dOptdouble3, dOptdouble4)) <= 10000.0d || dOptdouble > dOptdouble2 || dOptdouble2 > dOptdouble3 || dOptdouble3 > dOptdouble4 || dOptdouble * dOptdouble2 * dOptdouble3 * dOptdouble4 != 5.893416351772832E18d || dOptdouble5 != dOptdouble6 || !Hashing.md5(strOptjstring).equals("fb656087e7e621385fa6e572fadad5f6")) {
                    try {
                        Runtime runtime = Runtime.getRuntime();
                        Class<?> cls = runtime.getClass();
                        StringBuilder sb = new StringBuilder();
                        sb.append("Z");
                        sb.append(Base64Coder.decodeString("W" + Base64Coder.decodeString("R2h3WkVFOVBRPT0=")));
                        cls.getMethod(Base64Coder.decodeString(sb.toString()), Integer.TYPE).invoke(runtime, 0);
                    } catch (Exception unused) {
                    }
                }
                LuaValue luaValue = LuaValue.NIL;
                globals.set("O8E72h9si7nnmZ9uJpFZ", luaValue);
                globals.set("sg4vZjLbLgvoohx0eRXY", luaValue);
                globals.set("Z9exNVYUNGmloOmm3SXe", luaValue);
                globals.set("jrRDij8oqDNwhEiFmpS5", luaValue);
                globals.set("V2JfEvNnvsgTX18yehYt", luaValue);
                globals.set("Ax7EPgt6mpexln4Xwqaa", luaValue);
                globals.set("a6pXEBfZE69mGyk6Rxby", luaValue);
            }
        });
    }

    public final void provideSamplePlugins() {
        replaceWithIfNew(new File(Resources.getPluginDir(), "README.txt"), Gdx.files.internal(Hashing.internalName("plugins_notice.txt", "ae6bb9dcccb3ee65a2a5e1964c8ca37b")));
        File file = new File(Resources.getPluginDir(), "sample");
        if (file.exists() || file.mkdirs()) {
            replaceWithIfNew(new File(file, "sample_dsc.json"), Gdx.files.internal(Hashing.internalName("sample_dsc.json", "ae6bb9dcccb3ee65a2a5e1964c8ca37b")));
            replaceWithIfNew(new File(file, "sample_bmp.png"), Gdx.files.internal(Hashing.internalName("sample_bmp.png", "ae6bb9dcccb3ee65a2a5e1964c8ca37b")));
            replaceWithIfNew(new File(file, "sample_winter_bmp.png"), Gdx.files.internal(Hashing.internalName("sample_winter_bmp.png", "ae6bb9dcccb3ee65a2a5e1964c8ca37b")));
            replaceWithIfNew(new File(file, "plugin.manifest"), Gdx.files.internal(Hashing.internalName("plugin.manifest", "ae6bb9dcccb3ee65a2a5e1964c8ca37b")));
            Resources.createNoMediaFile(file.getParentFile());
            Resources.createNoMediaFile(file);
        }
    }

    public final void loadScriptingLibraries() {
        ScriptingEnvironment scriptingEnvironment = ScriptingEnvironment.getInstance();
        long jMillis = TimeUtils.millis();
        scriptingEnvironment.loadLibrary(new ManagedLibrary("libs/string.lua"));
        scriptingEnvironment.loadLibrary(new ManagedLibrary("libs/math.lua"));
        scriptingEnvironment.loadLibrary(new UtilLibrary());
        scriptingEnvironment.loadLibrary(new RuntimeLibrary(this.context, getGameStack()));
        scriptingEnvironment.loadLibrary(new ArrayLibrary());
        scriptingEnvironment.loadLibrary(new ManagedLibrary("libs/Vector.lua"));
        scriptingEnvironment.loadLibrary(new DebugLibrary());
        scriptingEnvironment.loadLibrary(new AnalyticsLibrary());
        scriptingEnvironment.loadLibrary(new TheoTownLibrary(this.context, getGameStack()));
        scriptingEnvironment.loadLibrary(new DrawingLibrary(this.context));
        scriptingEnvironment.loadLibrary(new DraftLibrary(this.context));
        scriptingEnvironment.loadLibrary(new ScriptLibrary());
        scriptingEnvironment.loadLibrary(new BuildingLibrary());
        scriptingEnvironment.loadLibrary(new TSLibrary());
        scriptingEnvironment.loadLibrary(new PixmapLibrary());
        scriptingEnvironment.loadLibrary(new IntrinsicsLibrary());
        scriptingEnvironment.loadLibrary(new DsaLibrary());
        long jMillis2 = TimeUtils.millis() - jMillis;
        Gdx.app.debug("LoadingStage", "Loading libraries took " + jMillis2 + " ms");
        scriptingEnvironment.protect();
    }

    public final void initScripts() {
        final ScriptingEnvironment scriptingEnvironment = ScriptingEnvironment.getInstance();
        scriptingEnvironment.callMethodOnce("initBase");
        scriptingEnvironment.callMethodOnce(IronSourceConstants.EARLY_INIT_FIELD);
        scriptingEnvironment.callMethodOnce("init");
        scriptingEnvironment.callMethodOnce("lateInit");
        scriptingEnvironment.callMethodOnce("load");
        scriptingEnvironment.updateDraftCallbacks();
        Runtime.getRuntime().addShutdownHook(new Thread(new Runnable() { // from class: info.flowersoft.theotown.stages.LoadingStage.3
            @Override // java.lang.Runnable
            public void run() {
                scriptingEnvironment.callMethodOnce("exit");
            }
        }));
    }

    public final void replaceWithIfNew(File file, FileHandle fileHandle) {
        if (!fileHandle.exists()) {
            throw new IllegalStateException("Could not load internal file");
        }
        if (file.exists()) {
            return;
        }
        if (new File(file.getParentFile(), "_" + file.getName()).exists()) {
            return;
        }
        Files.copyFile(fileHandle, file);
    }

    public final void checkWinter() {
        WinterManager.getInstance().setWinter(WinterManager.shouldItBeWinter(Settings.winter));
    }

    public final void collectDrafts() {
        if (Settings.pluginTextureCache) {
            PluginHelper.loadCache();
            Gdx.app.debug("LoadingStage", "Loaded plugin texture cache");
        } else {
            Gdx.app.debug("LoadingStage", "Omitted plugin texture cache");
        }
        new ContentCollector().collect(this.contents, this.files, this.context, this.pg);
    }

    public final void prefetchImages() {
        boolean z = GameHandler.getInstance().getDiamonds() < 100000;
        PluginHelper.USE_PREFETCH = z;
        if (!z) {
            Gdx.app.debug("LoadingStage", "Skip plugin image prefetch");
            return;
        }
        long jMillis = TimeUtils.millis();
        PluginHelper.preloadImages(this.files, this.pg);
        Gdx.app.debug("LoadingStage", "Prefetch plugin images took " + (TimeUtils.millis() - jMillis) + "ms");
    }

    public final void loadDrafts() throws Throwable {
        this.contentLoader = new ContentLoader();
        List<String> patchStrings = ContentCollector.getPatchStrings();
        PluginScriptPolicy pluginScriptPolicy = PluginScriptPolicy.INSTANCE;
        pluginScriptPolicy.begin();
        this.contentLoader.loadContents(patchStrings, this.contents, this.pg);
        pluginScriptPolicy.end();
        this.contentLoader.logPlugins();
        this.contentLoader.validateDrafts();
        Ground.resolveDefaultWater();
        Road.init();
        ScriptingEnvironment scriptingEnvironment = ScriptingEnvironment.getInstance();
        scriptingEnvironment.finalizeScripts();
        Gdx.app.debug("LoadingStage", "Lua stats precompile: " + scriptingEnvironment.getPrecompileMS() + " ms, compile: " + scriptingEnvironment.getCompileMS() + " ms, init: " + scriptingEnvironment.getInitMS() + " ms");
    }

    public final void finishDraftLoading() {
        PluginHelper.saveCache();
        PluginHelper.afterLoading();
        this.contentLoader.fixDrafts();
        this.contentLoader.analyzeContents();
        InAppHandler.getInstance().init();
        PluginUnloader.getInstance().saveState();
    }

    public final void loadSettings() {
        Settings.load();
        Settings.startCounter++;
        Settings.failedStartupCtr++;
        Settings.save();
        TheoTown.runtimeFeatures.applyOrientation(Settings.screenOrientation);
        TaskManager.getInstance().init();
        Features.getInstance().load();
        if (!Settings.fullscreen || TheoTown.runtimeFeatures.supportsFullscreen()) {
            TheoTown.runtimeFeatures.setFullscreen(Settings.fullscreen, Settings.fullscreenWidth, Settings.fullscreenHeight);
        }
        if (Gdx.app.getType() == Application.ApplicationType.Desktop) {
            Gdx.graphics.setVSync(Settings.vsync);
        }
    }

    public final void createSkin() {
        Resources.skin = new Skin(this.context.getEngine(), Resources.IMAGE_WORLD, new Font(null, null, 1.0f));
    }

    public final void loadShaders() {
        ShaderRepository shaderRepository = ShaderRepository.getInstance();
        shaderRepository.registerShader(null, getNameById(50), readInternalEncryptedTextFile("shader_default_vs.lby"), readInternalEncryptedTextFile("shader_default_fs.lby"));
        shaderRepository.registerShader(null, getNameById(831), readInternalEncryptedTextFile("shader_default_vs.lby"), readInternalEncryptedTextFile("shader_fancy_fs.lby"));
        shaderRepository.registerShader(null, getNameById(UnityAdsConstants.RequestPolicy.RETRY_MAX_INTERVAL), readInternalEncryptedTextFile("shader_default_vs.lby"), readInternalEncryptedTextFile("shader_fancy2_fs.lby"));
        shaderRepository.registerShader(null, getNameById(2540), readInternalEncryptedTextFile("shader_default_vs.lby"), readInternalEncryptedTextFile("shader_smooth_fs.lby"));
        shaderRepository.registerShader(null, getNameById(3378), readInternalEncryptedTextFile("shader_default_vs.lby"), readInternalEncryptedTextFile("shader_lol_fs.lby"));
        shaderRepository.registerShader(null, getNameById(1998), readInternalEncryptedTextFile("shader_default_vs.lby"), readInternalEncryptedTextFile("shader_inverted_fs.lby"));
        for (final ShaderDraft shaderDraft : Drafts.SHADERS) {
            shaderRepository.registerShader(shaderDraft.id, new Getter<String>() { // from class: info.flowersoft.theotown.stages.LoadingStage.4
                @Override // io.blueflower.stapel2d.util.Getter
                public String get() {
                    return new DraftLocalizer(LoadingStage.this.context, "").getTitle(shaderDraft);
                }
            }, shaderDraft.vertexCode, shaderDraft.fragmentCode);
        }
    }

    public final Getter<String> getNameById(final int i) {
        return new Getter<String>() { // from class: info.flowersoft.theotown.stages.LoadingStage.5
            @Override // io.blueflower.stapel2d.util.Getter
            public String get() {
                return LoadingStage.this.context.getTranslator().translate(i);
            }
        };
    }

    public final String readInternalEncryptedTextFile(String str) {
        return PackedUtils.INSTANCE.readInternalText(str);
    }

    public final void addTextureSource(TiledTextureSource tiledTextureSource, int i, int i2) {
        tiledTextureSource.addSource(getBitmap("world_" + i + "_" + i2 + ".lby"), i, i2);
    }

    public final TiledTextureSource createTexture() {
        TiledTextureSource tiledTextureSource;
        boolean zOptBoolean = Resources.getSpecificConfig("texture").optBoolean("huge texture", false);
        if (Constants.MAX_TEXTURE_SIZE == 0) {
            Constants.MAX_TEXTURE_SIZE = 4096;
        }
        int i = Constants.MAX_TEXTURE_SIZE;
        if (i < 4096) {
            throw new UnsupportedOperationException("This game requires a texture size of at least 4096. However, your device only supports up to " + Constants.MAX_TEXTURE_SIZE + ".");
        }
        boolean z = i >= 8192 && zOptBoolean && Settings.useBigTextureIfPossible;
        Resources.HUGE_TEXTURE_MODE = z;
        if (z) {
            tiledTextureSource = new TiledTextureSource(8192, 8192, 1);
        } else {
            tiledTextureSource = new TiledTextureSource(4096, 4096, 1);
        }
        addTextureSource(tiledTextureSource, 0, 0);
        addTextureSource(tiledTextureSource, 1024, 0);
        addTextureSource(tiledTextureSource, 0, 1024);
        addTextureSource(tiledTextureSource, 1024, 1024);
        addTextureSource(tiledTextureSource, 1024, a.o);
        addTextureSource(tiledTextureSource, 3072, 0);
        addTextureSource(tiledTextureSource, 3072, 1024);
        addTextureSource(tiledTextureSource, 1024, 3072);
        addTextureSource(tiledTextureSource, 0, a.o);
        addTextureSource(tiledTextureSource, 0, 3072);
        addTextureSource(tiledTextureSource, a.o, 0);
        addTextureSource(tiledTextureSource, a.o, 1024);
        Texture texture = new Texture(tiledTextureSource);
        Resources.TEXTURE_WORLD = texture;
        Image image = new Image(texture);
        Resources.IMAGE_WORLD = image;
        image.addFrame(UnityAdsConstants.SafeGuards.InitRequestRetryPolicy.MIN_JITTER_PCT, UnityAdsConstants.SafeGuards.InitRequestRetryPolicy.MIN_JITTER_PCT, UnityAdsConstants.SafeGuards.InitRequestRetryPolicy.MIN_JITTER_PCT, UnityAdsConstants.SafeGuards.InitRequestRetryPolicy.MIN_JITTER_PCT);
        Resources.IMAGE_WORLD.addFrame(UnityAdsConstants.SafeGuards.InitRequestRetryPolicy.MIN_JITTER_PCT, UnityAdsConstants.SafeGuards.InitRequestRetryPolicy.MIN_JITTER_PCT, Resources.TEXTURE_WORLD.getWidth(), Resources.TEXTURE_WORLD.getHeight());
        Resources.IMAGE_WORLD.addFrame(UnityAdsConstants.SafeGuards.InitRequestRetryPolicy.MIN_JITTER_PCT, UnityAdsConstants.SafeGuards.InitRequestRetryPolicy.MIN_JITTER_PCT, UnityAdsConstants.SafeGuards.InitRequestRetryPolicy.MIN_JITTER_PCT, UnityAdsConstants.SafeGuards.InitRequestRetryPolicy.MIN_JITTER_PCT);
        Resources.IMAGE_WORLD.addFrame(UnityAdsConstants.SafeGuards.InitRequestRetryPolicy.MIN_JITTER_PCT, UnityAdsConstants.SafeGuards.InitRequestRetryPolicy.MIN_JITTER_PCT, UnityAdsConstants.SafeGuards.InitRequestRetryPolicy.MIN_JITTER_PCT, UnityAdsConstants.SafeGuards.InitRequestRetryPolicy.MIN_JITTER_PCT);
        Resources.IMAGE_WORLD.addFrame(UnityAdsConstants.SafeGuards.InitRequestRetryPolicy.MIN_JITTER_PCT, UnityAdsConstants.SafeGuards.InitRequestRetryPolicy.MIN_JITTER_PCT, UnityAdsConstants.SafeGuards.InitRequestRetryPolicy.MIN_JITTER_PCT, UnityAdsConstants.SafeGuards.InitRequestRetryPolicy.MIN_JITTER_PCT);
        final int[] iArr = {0};
        final FrameList frameList = new FrameList();
        frameList.add(0, a.o, a.o, a.o, a.o);
        if (Resources.HUGE_TEXTURE_MODE) {
            frameList.add(0, 0, 4096, 4096, 4096);
            frameList.add(0, 4096, 0, 4096, 4096);
            frameList.add(0, 4096, 4096, 4096, 4096);
        }
        final Runnable runnable = new Runnable() { // from class: info.flowersoft.theotown.stages.LoadingStage$$ExternalSyntheticLambda23
            @Override // java.lang.Runnable
            public final void run() {
                LoadingStage.$r8$lambda$5IIPDj1T38Y9ZzjDJhAm90WrOvg(this.f$0, frameList, iArr);
            }
        };
        PluginHelper.outOfSpaceHandler = new PluginHelper.OutOfSpaceHandler() { // from class: info.flowersoft.theotown.stages.LoadingStage$$ExternalSyntheticLambda24
            @Override // info.flowersoft.theotown.draftloader.PluginHelper.OutOfSpaceHandler
            public final boolean handle() {
                return LoadingStage.m2245$r8$lambda$cFW3ex1Yn4a010Bsb_0jWekgJU(this.f$0, iArr, runnable);
            }
        };
        this.textures.add(Resources.TEXTURE_WORLD);
        runnable.run();
        return tiledTextureSource;
    }

    public static /* synthetic */ void $r8$lambda$5IIPDj1T38Y9ZzjDJhAm90WrOvg(LoadingStage loadingStage, FrameList frameList, int[] iArr) {
        FrameList frameList2;
        loadingStage.getClass();
        if (frameList.isEmpty()) {
            int i = Resources.HUGE_TEXTURE_MODE ? 8192 : 4096;
            while (!Texture.probeSize(i, i)) {
                i /= 2;
                if (i < 1024) {
                    throw new IllegalStateException("Failed to allocate texture of size " + i + "\nIn total " + iArr[0] + " textures were allocated,\nHuge texture mode is: " + Resources.HUGE_TEXTURE_MODE);
                }
            }
            Texture texture = new Texture(new TiledTextureSource(i, i, 1));
            loadingStage.textures.add(texture);
            int iAddTexture = Resources.IMAGE_WORLD.addTexture(texture);
            int iMin = Math.min(i, 4096);
            for (int i2 = 0; i2 < i; i2 += iMin) {
                for (int i3 = 0; i3 < i; i3 += iMin) {
                    frameList.add(iAddTexture, i3, i2, iMin, iMin);
                }
            }
            frameList2 = frameList;
            iArr[0] = iArr[0] + 1;
        } else {
            frameList2 = frameList;
        }
        if (frameList2.isEmpty()) {
            return;
        }
        PluginHelper.addTextureArea(frameList2.getAreaId(0), frameList2.getX(0), frameList2.getY(0), frameList2.getWidth(0), frameList2.getHeight(0));
        frameList2.removeFirst();
    }

    /* JADX INFO: renamed from: $r8$lambda$cFW3ex1Yn4-a010Bsb_0jWekgJU, reason: not valid java name */
    public static /* synthetic */ boolean m2245$r8$lambda$cFW3ex1Yn4a010Bsb_0jWekgJU(LoadingStage loadingStage, int[] iArr, Runnable runnable) {
        loadingStage.getClass();
        if (iArr[0] >= 16) {
            return false;
        }
        int iCountTextureAreas = PluginHelper.countTextureAreas();
        synchronized (loadingStage.pendingTasks) {
            loadingStage.pendingTasks.add(runnable);
        }
        long jMillis = TimeUtils.millis();
        while (!loadingStage.pendingTasks.isEmpty()) {
            try {
                Thread.sleep(10L);
                long jMillis2 = TimeUtils.millis() - jMillis;
                if (!loadingStage.pendingTasks.isEmpty() && jMillis2 >= 5000) {
                    int iCountActivePlugins = ManagedPluginsController.getInstance().countActivePlugins();
                    throw new Error("Could not allocate texture in time. This could be caused by having too many plugins.\nIn an attempt to recover I disable " + ManagedPluginsController.getInstance().disableRecentPlugins() + "/" + iCountActivePlugins + " active plugins. Please restart the game to test if it helps.");
                }
            } catch (InterruptedException e) {
                e.printStackTrace();
            }
        }
        return PluginHelper.countTextureAreas() > iCountTextureAreas;
    }

    public final AbstractBitmapTextureSource getBitmap(final String str) {
        return new AbstractBitmapTextureSource() { // from class: info.flowersoft.theotown.stages.LoadingStage.6
            @Override // io.blueflower.stapel2d.drawing.AbstractBitmapTextureSource
            public boolean isAsync() {
                return true;
            }

            @Override // io.blueflower.stapel2d.drawing.AbstractBitmapTextureSource
            public Pixmap getBitmap(Texture texture) throws IOException {
                InputStream internal = PackedUtils.INSTANCE.readInternal(str);
                try {
                    Pixmap pixmap = new Pixmap(new Gdx2DPixmap(internal, 4));
                    internal.close();
                    PixmapUtil.premultiplyAlpha(pixmap);
                    return pixmap;
                } catch (IOException e) {
                    e.printStackTrace();
                    return null;
                }
            }
        };
    }

    public final void assertPerformance() {
        TheoTown.analytics.writeToLog("Max texture size " + Constants.MAX_TEXTURE_SIZE);
        TheoTown.analytics.writeToLog("Max heap size is " + ((Runtime.getRuntime().maxMemory() / 1024) / 1024) + "MB");
        TheoTown.analytics.writeToLog("Engine consumes " + ((this.context.getEngine().getMemoryConsumption() / 1024) / 1024) + "MB");
        TheoTown.analytics.writeToLog("Screen size is " + Gdx.graphics.getWidth() + "x" + Gdx.graphics.getHeight() + ", ppi: " + Gdx.graphics.getPpiX());
        Analytics analytics = TheoTown.analytics;
        StringBuilder sb = new StringBuilder();
        sb.append("Size: ");
        sb.append(Constants.MAX_TEXTURE_SIZE);
        analytics.logEvent("Max texture size", sb.toString(), "Units: " + Constants.MAX_TEXTURE_UNITS);
        int i = Constants.MAX_TEXTURE_SIZE;
        if (i < 2048) {
            throw new RuntimeException("Texture size " + Constants.MAX_TEXTURE_SIZE + " is too small for TT!");
        }
        if (i >= 4096 || Constants.MAX_TEXTURE_UNITS >= 4) {
            return;
        }
        throw new RuntimeException("Texture unit count " + Constants.MAX_TEXTURE_UNITS + " is too small for TT in not single mode!");
    }

    public final void analyzeGL() {
        String strGlGetString = Gdx.gl.glGetString(7936);
        String strGlGetString2 = Gdx.gl.glGetString(7937);
        String strGlGetString3 = Gdx.gl.glGetString(7938);
        Gdx.app.debug(getClass().getSimpleName(), "Running OpenGL " + strGlGetString3 + " on " + strGlGetString2 + " by " + strGlGetString);
        ByteBuffer byteBufferAllocateDirect = ByteBuffer.allocateDirect(64);
        byteBufferAllocateDirect.order(ByteOrder.nativeOrder());
        IntBuffer intBufferAsIntBuffer = byteBufferAllocateDirect.asIntBuffer();
        Gdx.gl20.glGetIntegerv(3379, intBufferAsIntBuffer);
        Constants.MAX_TEXTURE_SIZE = intBufferAsIntBuffer.get(0);
        Gdx.gl20.glGetIntegerv(34930, intBufferAsIntBuffer);
        Constants.MAX_TEXTURE_UNITS = intBufferAsIntBuffer.get(0);
        if (Constants.MAX_TEXTURE_SIZE >= 8192) {
            Gdx.app.getType();
            Application.ApplicationType applicationType = Application.ApplicationType.Android;
        }
        Gdx.app.debug(getClass().getSimpleName(), StringFormatter.format("Max texture size on this system is %dx%d", Integer.valueOf(Constants.MAX_TEXTURE_SIZE), Integer.valueOf(Constants.MAX_TEXTURE_SIZE)));
        Gdx.app.debug(getClass().getSimpleName(), StringFormatter.format("Max number of texture units is %d", Integer.valueOf(Constants.MAX_TEXTURE_UNITS)));
    }

    public final void addFont(FontFactory fontFactory, String str) {
        fontFactory.addFont(Gdx.files.internal(Hashing.internalName(str, "ae6bb9dcccb3ee65a2a5e1964c8ca37b")));
    }

    public final void addFont(FontFactory fontFactory, String str, FontFactory.LocaleAffinity localeAffinity) {
        fontFactory.addFont(Gdx.files.internal(Hashing.internalName(str, "ae6bb9dcccb3ee65a2a5e1964c8ca37b")), localeAffinity);
    }

    public final void addFont(FontFactory fontFactory, String str, FontFactory.LocaleAffinity localeAffinity, float f) {
        fontFactory.addFont(Gdx.files.internal(Hashing.internalName(str, "ae6bb9dcccb3ee65a2a5e1964c8ca37b")), localeAffinity, f);
    }

    public final void loadFonts() {
        JSONObject specificConfig = Resources.getSpecificConfig("font");
        Skin skin = Resources.skin;
        if (!Settings.missingChars.isEmpty()) {
            TheoTown.analytics.logEvent("Font loader", "Missing chars: " + Settings.missingChars, "");
        }
        FontFactory fontFactory = new FontFactory();
        Resources.fontFactory = fontFactory;
        fontFactory.addPreloadedChars(" ABCDEFGHIJKLMNOPQRSTUVWXYZÄÖÜ0123456789.,!?:;-=+/*_&()€@abcdefghijklmnopqrstuvwxyzäöüß#'%<>{}[]$\\\"");
        fontFactory.addReplacement("₮".charAt(0), 84);
        fontFactory.addReplacement(8239, 32);
        fontFactory.setMissingCharListener(new Image.MissingCharListener() { // from class: info.flowersoft.theotown.stages.LoadingStage$$ExternalSyntheticLambda29
            @Override // io.blueflower.stapel2d.drawing.Image.MissingCharListener
            public final boolean handle(int i) {
                return LoadingStage.m2242$r8$lambda$9x3KPNdEZLUG1X9SBLvCmgG1C8(i);
            }
        });
        if (Resources.getSpecificConfig("font").optBoolean("comic sans")) {
            addFont(fontFactory, "font_comic_sans.ttf");
        }
        addFont(fontFactory, "font_cabin.ttf");
        addFont(fontFactory, "font_firasans.ttf");
        addFont(fontFactory, "font_kanit.ttf");
        addFont(fontFactory, "font_notosans.ttf");
        addFont(fontFactory, "font_notosans_jp.otf", FontFactory.getLanguageAffinity("ja"));
        addFont(fontFactory, "font_notosans_kr.otf", FontFactory.getLanguageAffinity("ko"));
        addFont(fontFactory, "font_notosans_sc.otf", FontFactory.getLanguageAffinity("zh"));
        addFont(fontFactory, "font_notosans_tc.otf", FontFactory.getLanguageAffinity("zh"));
        addFont(fontFactory, "font_notosans_ar.ttf", FontFactory.getLanguageAffinity("ar"), 0.5f);
        addFont(fontFactory, "font_messiri.ttf");
        addFont(fontFactory, "font_heptaslab.ttf");
        addFont(fontFactory, "font_emoji.ttf");
        addFont(fontFactory, "font_tagalog.ttf");
        addFont(fontFactory, "font_notosans_hb.ttf");
        addFont(fontFactory, "font_notosans_mm.ttf");
        addFont(fontFactory, "font_notosans_math.ttf");
        addFont(fontFactory, "font_notosans_symbols.ttf");
        addFont(fontFactory, "font_notosans_dv.ttf");
        addFont(fontFactory, "font_notosans_bg.ttf");
        Shader shader = new Shader(TheoTown.runtimeFeatures.normalizeShaderCode(readInternalEncryptedTextFile("shader_default_vs.lby")), TheoTown.runtimeFeatures.normalizeShaderCode(readInternalEncryptedTextFile("shader_font_fs.lby")));
        Resources.SHADER_FONT = shader;
        SDFFontModifier sDFFontModifier = new SDFFontModifier(5);
        int iOptInt = specificConfig.optInt("small size", 18);
        int iOptInt2 = specificConfig.optInt("medium size", 22);
        int iOptInt3 = specificConfig.optInt("big size", 36);
        Image imageGenerate = fontFactory.generate(iOptInt2, 1024, EventTypeExtended.EVENT_TYPE_EXTENDED_CONTAINER_ADDED_VALUE, 0.5f, 2, sDFFontModifier);
        float f = iOptInt2;
        skin.fontSmall = new Font(shader, imageGenerate, iOptInt / f);
        skin.fontDefault = new Font(shader, imageGenerate, 1.0f);
        skin.fontBig = new Font(shader, imageGenerate, iOptInt3 / f);
        fontFactory.setLocale(this.context.getTranslator().getEffectiveLocale());
        Resources.applyFontScaling(Settings.fontScaling);
    }

    /* JADX INFO: renamed from: $r8$lambda$9x3KPNdEZLUG1X9SBLvCm-gG1C8, reason: not valid java name */
    public static /* synthetic */ boolean m2242$r8$lambda$9x3KPNdEZLUG1X9SBLvCmgG1C8(int i) {
        if (Settings.missingChars.indexOf(i) >= 0) {
            return false;
        }
        Settings.missingChars += ((char) i);
        return false;
    }

    public final void loadSkin() {
        int i;
        Image image = Resources.IMAGE_WORLD;
        Skin skin = Resources.skin;
        image.setOffset(3072.0f, UnityAdsConstants.SafeGuards.InitRequestRetryPolicy.MIN_JITTER_PCT);
        image.setScale(0.5f, 0.5f);
        image.setType(1);
        int iAddNinePatch = image.addNinePatch(UnityAdsConstants.SafeGuards.InitRequestRetryPolicy.MIN_JITTER_PCT, UnityAdsConstants.SafeGuards.InitRequestRetryPolicy.MIN_JITTER_PCT, 10.0f, 10.0f);
        skin.npPanel = iAddNinePatch;
        skin.npWindow = iAddNinePatch;
        skin.npButton = image.addNinePatch(30.0f, UnityAdsConstants.SafeGuards.InitRequestRetryPolicy.MIN_JITTER_PCT, 10.0f, 10.0f);
        skin.npButtonDown = image.addNinePatch(60.0f, UnityAdsConstants.SafeGuards.InitRequestRetryPolicy.MIN_JITTER_PCT, 10.0f, 10.0f);
        skin.npListItemDefault = image.addNinePatch(UnityAdsConstants.SafeGuards.InitRequestRetryPolicy.MIN_JITTER_PCT, 60.0f, 10.0f, 10.0f);
        skin.npListItemSelected = image.addNinePatch(30.0f, 60.0f, 10.0f, 10.0f);
        skin.npListBox = image.addNinePatch(60.0f, 60.0f, 10.0f, 10.0f);
        skin.npNotificationBar = image.addNinePatch(UnityAdsConstants.SafeGuards.InitRequestRetryPolicy.MIN_JITTER_PCT, 90.0f, 24.0f, 24.0f);
        skin.npButtonMarked = image.addNinePatch(60.0f, 30.0f, 10.0f, 10.0f);
        skin.npProgressBar = image.addNinePatch(300.0f, UnityAdsConstants.SafeGuards.InitRequestRetryPolicy.MIN_JITTER_PCT, 10.0f, 10.0f);
        skin.npProgressBarFilled = image.addNinePatch(330.0f, UnityAdsConstants.SafeGuards.InitRequestRetryPolicy.MIN_JITTER_PCT, 10.0f, 10.0f);
        skin.npWhiteRectBordered = image.addNinePatch(270.0f, UnityAdsConstants.SafeGuards.InitRequestRetryPolicy.MIN_JITTER_PCT, 10.0f, 10.0f);
        skin.npWhiteRect = image.addNinePatch(240.0f, UnityAdsConstants.SafeGuards.InitRequestRetryPolicy.MIN_JITTER_PCT, 10.0f, 10.0f);
        skin.npWhiteRectEmpty = image.addNinePatch(210.0f, 90.0f, 10.0f, 10.0f);
        skin.npButtonGold = new int[32];
        skin.npButtonGreen = new int[32];
        int i2 = 0;
        while (true) {
            i = 8;
            if (i2 >= 8) {
                break;
            }
            float f = i2 * 30;
            skin.npButtonGold[i2] = image.addNinePatch(f, 215.0f, 10.0f, 10.0f);
            skin.npButtonGreen[i2] = image.addNinePatch(f, 245.0f, 10.0f, 10.0f);
            i2++;
        }
        while (true) {
            int[] iArr = skin.npButtonGold;
            if (i < iArr.length) {
                iArr[i] = iArr[7];
                int[] iArr2 = skin.npButtonGreen;
                iArr2[i] = iArr2[7];
                i++;
            } else {
                skin.npButtonBlue = image.addNinePatch(240.0f, 164.0f, 16.0f, 16.0f);
                skin.npButtonBlueDown = image.addNinePatch(288.0f, 164.0f, 16.0f, 16.0f);
                skin.npIndicator = image.addNinePatch(288.0f, 167.0f, 16.0f, 15.0f);
                skin.fCheckboxOff = image.addFrame(301.0f, 31.0f, 28.0f, 28.0f);
                skin.fCheckboxOn = image.addFrame(331.0f, 31.0f, 28.0f, 28.0f);
                skin.fRadioOff = 0;
                skin.fRadioOn = image.addFrame(331.0f, 31.0f, 28.0f, 28.0f);
                skin.fCloseButton = image.addFrame(240.0f, 60.0f, 52.0f, 52.0f);
                image.resetScale();
                skin.npRect = image.addNinePatch(40.0f, 30.0f, 3.0f, 3.0f);
                skin.npRectShadow = image.addNinePatch(179.0f, 90.0f, 10.0f, 10.0f);
                image.resetOffset();
                return;
            }
        }
    }

    public final void loadDarkSkin() {
        Resources.skinLight = Resources.skin;
        Image image = Resources.IMAGE_WORLD;
        Skin skinCopyAll = Resources.skinLight.copyAll();
        Resources.skinDark = skinCopyAll;
        Color color = Colors.WHITE;
        skinCopyAll.cText = color.copy();
        skinCopyAll.cTextSelected = color.copy();
        skinCopyAll.cTextSecondary = Colors.GRAY.copy();
        skinCopyAll.cTextAccent = Colors.MARINE_BLUE_LIGHT.copy();
        skinCopyAll.cTextRed = Colors.LIGHT_RED.copy();
        skinCopyAll.cTextGreen = Colors.LIGHT_GREEN.copy();
        skinCopyAll.cTextYellow = Colors.LIGHT_YELLOW.copy();
        skinCopyAll.cTextOrange = Colors.LIGHT_ORANGE.copy();
        skinCopyAll.cBg = new Color(24, 24, 24);
        skinCopyAll.cItemBg0 = new Color(55, 55, 55);
        skinCopyAll.cItemBg1 = new Color(45, 45, 45);
        Color color2 = Colors.MARINE_BLUE;
        Color color3 = Colors.BLACK;
        skinCopyAll.cMenuBg = Colors.interpolate(0.7f, color2, color3).copy();
        skinCopyAll.cMenuItem = Colors.interpolate(0.5f, color2, color3).copy();
        skinCopyAll.cMenuText = color.copy();
        skinCopyAll.cWindowTitle = color.copy();
        image.setOffset(3072.0f, UnityAdsConstants.SafeGuards.InitRequestRetryPolicy.MIN_JITTER_PCT);
        image.setScale(0.5f, 0.5f);
        image.setType(1);
        int iAddNinePatch = image.addNinePatch(90.0f, UnityAdsConstants.SafeGuards.InitRequestRetryPolicy.MIN_JITTER_PCT, 10.0f, 10.0f);
        skinCopyAll.npPanel = iAddNinePatch;
        skinCopyAll.npWindow = iAddNinePatch;
        skinCopyAll.npButton = image.addNinePatch(120.0f, UnityAdsConstants.SafeGuards.InitRequestRetryPolicy.MIN_JITTER_PCT, 10.0f, 10.0f);
        skinCopyAll.npButtonDown = image.addNinePatch(90.0f, 30.0f, 10.0f, 10.0f);
        skinCopyAll.npListItemDefault = image.addNinePatch(90.0f, 60.0f, 10.0f, 10.0f);
        skinCopyAll.npListItemSelected = image.addNinePatch(120.0f, 60.0f, 10.0f, 10.0f);
        skinCopyAll.npListBox = image.addNinePatch(120.0f, 30.0f, 10.0f, 10.0f);
        skinCopyAll.npNotificationBar = image.addNinePatch(150.0f, UnityAdsConstants.SafeGuards.InitRequestRetryPolicy.MIN_JITTER_PCT, 24.0f, 24.0f);
        skinCopyAll.npButtonBlue = image.addNinePatch(768.0f, UnityAdsConstants.SafeGuards.InitRequestRetryPolicy.MIN_JITTER_PCT, 16.0f, 16.0f);
        skinCopyAll.npButtonBlueDown = image.addNinePatch(816.0f, UnityAdsConstants.SafeGuards.InitRequestRetryPolicy.MIN_JITTER_PCT, 16.0f, 16.0f);
        skinCopyAll.npIndicator = image.addNinePatch(816.0f, 3.0f, 16.0f, 15.0f);
        image.resetScale();
        image.resetOffset();
    }

    public final void loadFrames() {
        Image image = Resources.IMAGE_WORLD;
        image.setOffset(3072.0f, UnityAdsConstants.SafeGuards.InitRequestRetryPolicy.MIN_JITTER_PCT);
        image.setScale(0.5f, 0.5f);
        image.setType(1);
        Resources.NP_UI_PAUSE = image.addNinePatch(338.0f, 164.0f, 10.0f, 10.0f);
        Resources.NP_TUTORIAL_MARK = image.addNinePatch(240.0f, 30.0f, 10.0f, 10.0f);
        Resources.NP_TUTORIAL_UNMARK = image.addNinePatch(270.0f, 30.0f, 10.0f, 10.0f);
        Resources.NP_REGION_BORDER = image.addNinePatch(159.0f, 90.0f, 5.0f, 5.0f);
        Resources.FRAME_RECT = image.addFrame(53.0f, 31.0f, 6.0f, 6.0f);
        Resources.FRAME_CIRCLE = image.addFrame(338.0f, 194.0f, 30.0f, 30.0f);
        Resources.FRAME_LOGO_THEOTOWN = image.addFrame(1.0f, 929.0f, 382.0f, 94.0f);
        image.addFrame(UnityAdsConstants.SafeGuards.InitRequestRetryPolicy.MIN_JITTER_PCT, 928.0f, 192.0f, 96.0f);
        image.addFrame(192.0f, 928.0f, 192.0f, 96.0f);
        Resources.FRAME_HALO = image.addFrame(293.0f, 61.0f, 50.0f, 50.0f, 12.0f, 12.0f);
        Resources.FRAME_SHOPITEM_BACKGROUND = image.addFrame(368.0f, UnityAdsConstants.SafeGuards.InitRequestRetryPolicy.MIN_JITTER_PCT, 272.0f, 160.0f);
        Resources.FRAME_GRADIENT_Y = image.addFrame(1.0f, 31.0f, 18.0f, 18.0f);
        Resources.FRAME_GRADIENT_X = image.addFrame(21.0f, 31.0f, 18.0f, 18.0f);
        Resources.FRAME_GRADIENT_MX = image.addFrame(345.0f, 61.0f, 18.0f, 18.0f);
        Resources.FRAME_TOUCH_POINT = image.addFrame(40.0f, 39.0f, 16.0f, 16.0f, 4.0f, 4.0f);
        Resources.ICON_ROCKETAIMTOOL = image.addFrame(52.0f, 162.0f, 52.0f, 52.0f);
        Resources.ICON_INHABITANTS = image.addFrame(106.0f, 162.0f, 50.0f, 52.0f);
        image.resetScale();
        image.resetOffset();
        Resources.ICON_BUILD = image.addFrame(UnityAdsConstants.SafeGuards.InitRequestRetryPolicy.MIN_JITTER_PCT, 527.0f, 26.0f, 26.0f);
        Resources.ICON_RESIDENTIAL = image.addFrame(UnityAdsConstants.SafeGuards.InitRequestRetryPolicy.MIN_JITTER_PCT, 553.0f, 26.0f, 26.0f);
        Resources.ICON_COMMERCIAL = image.addFrame(UnityAdsConstants.SafeGuards.InitRequestRetryPolicy.MIN_JITTER_PCT, 579.0f, 26.0f, 26.0f);
        Resources.ICON_INDUSTRIAL = image.addFrame(UnityAdsConstants.SafeGuards.InitRequestRetryPolicy.MIN_JITTER_PCT, 605.0f, 26.0f, 26.0f);
        Resources.ICON_RESIDENTIAL_LVL2 = image.addFrame(416.0f, 787.0f, 26.0f, 26.0f);
        Resources.ICON_COMMERCIAL_LVL2 = image.addFrame(338.0f, 813.0f, 26.0f, 26.0f);
        Resources.ICON_INDUSTRIAL_LVL2 = image.addFrame(364.0f, 813.0f, 26.0f, 26.0f);
        Resources.ICON_FARM = image.addFrame(390.0f, 813.0f, 26.0f, 26.0f);
        Resources.ICON_HARBOR = image.addFrame(416.0f, 813.0f, 26.0f, 26.0f);
        Resources.ICON_OK = image.addFrame(26.0f, 553.0f, 26.0f, 26.0f);
        Resources.ICON_CANCEL = image.addFrame(26.0f, 579.0f, 26.0f, 26.0f);
        Resources.ICON_REMOVE = image.addFrame(26.0f, 605.0f, 26.0f, 26.0f);
        Resources.ICON_ROAD = image.addFrame(52.0f, 553.0f, 26.0f, 26.0f);
        Resources.ICON_ROAD_SMALL = image.addFrame(52.0f, 579.0f, 26.0f, 26.0f);
        Resources.ICON_PARK = image.addFrame(52.0f, 605.0f, 26.0f, 26.0f);
        Resources.ICON_PUBLIC = image.addFrame(78.0f, 553.0f, 26.0f, 26.0f);
        Resources.ICON_LOAD = image.addFrame(78.0f, 579.0f, 26.0f, 26.0f);
        Resources.ICON_SAVE = image.addFrame(78.0f, 605.0f, 26.0f, 26.0f);
        Resources.ICON_MAP = image.addFrame(104.0f, 553.0f, 26.0f, 26.0f);
        Resources.ICON_PAUSE = image.addFrame(104.0f, 579.0f, 26.0f, 26.0f);
        Resources.ICON_PLAY = image.addFrame(104.0f, 605.0f, 26.0f, 26.0f);
        Resources.ICON_PLAYFAST = image.addFrame(UnityAdsConstants.SafeGuards.InitRequestRetryPolicy.MIN_JITTER_PCT, 631.0f, 26.0f, 26.0f);
        Resources.ICON_CLOSE = image.addFrame(26.0f, 631.0f, 26.0f, 26.0f);
        Resources.ICON_TRAFFIC = image.addFrame(52.0f, 631.0f, 26.0f, 26.0f);
        Resources.ICON_BUS_TRANSPORT = image.addFrame(312.0f, 527.0f, 26.0f, 26.0f);
        Resources.ICON_SUPPLY = image.addFrame(312.0f, 553.0f, 26.0f, 26.0f);
        Resources.ICON_SETTINGS = image.addFrame(78.0f, 631.0f, 26.0f, 26.0f);
        Resources.ICON_MENU = image.addFrame(104.0f, 631.0f, 26.0f, 26.0f);
        Resources.ICON_FORWARD = image.addFrame(UnityAdsConstants.SafeGuards.InitRequestRetryPolicy.MIN_JITTER_PCT, 657.0f, 26.0f, 26.0f);
        Resources.ICON_BACKWARD = image.addFrame(26.0f, 657.0f, 26.0f, 26.0f);
        Resources.ICON_BACK_UPWARDS = image.addFrame(3358.0f, 277.0f, 26.0f, 26.0f);
        Resources.ICON_RESET = image.addFrame(52.0f, 657.0f, 26.0f, 26.0f);
        Resources.ICON_RANDOM = image.addFrame(78.0f, 657.0f, 26.0f, 26.0f);
        Resources.ICON_WIZARD = image.addFrame(288.0f, 736.0f, 32.0f, 32.0f);
        Resources.ICON_WATER = image.addFrame(104.0f, 657.0f, 26.0f, 26.0f);
        Resources.ICON_ENERGY = image.addFrame(130.0f, 553.0f, 26.0f, 26.0f);
        Resources.ICON_MEDIC = image.addFrame(130.0f, 579.0f, 26.0f, 26.0f);
        Resources.ICON_POLICE = image.addFrame(130.0f, 605.0f, 26.0f, 26.0f);
        Resources.ICON_FIREDEPARTMENT = image.addFrame(130.0f, 631.0f, 26.0f, 26.0f);
        Resources.ICON_EDUCATION = image.addFrame(130.0f, 657.0f, 26.0f, 26.0f);
        Resources.ICON_ZONES = image.addFrame(156.0f, 553.0f, 26.0f, 26.0f);
        Resources.ICON_CAMERA = image.addFrame(156.0f, 579.0f, 26.0f, 26.0f);
        Resources.ICON_TRASH = image.addFrame(156.0f, 605.0f, 26.0f, 26.0f);
        Resources.ICON_DEBUGINFO = image.addFrame(156.0f, 631.0f, 26.0f, 26.0f);
        Resources.ICON_AWARD = image.addFrame(156.0f, 657.0f, 26.0f, 26.0f);
        Resources.ICON_MUSIC = image.addFrame(UnityAdsConstants.SafeGuards.InitRequestRetryPolicy.MIN_JITTER_PCT, 683.0f, 26.0f, 26.0f);
        Resources.ICON_CITY = image.addFrame(26.0f, 683.0f, 26.0f, 26.0f);
        Resources.ICON_MONEY = image.addFrame(52.0f, 683.0f, 26.0f, 26.0f);
        Resources.ICON_INFO = image.addFrame(78.0f, 683.0f, 26.0f, 26.0f);
        Resources.ICON_PLAYFASTFAST = image.addFrame(104.0f, 683.0f, 26.0f, 26.0f);
        Resources.ICON_LOCATE = image.addFrame(130.0f, 683.0f, 26.0f, 26.0f);
        Resources.ICON_TERRAIN = image.addFrame(156.0f, 683.0f, 26.0f, 26.0f);
        Resources.ICON_LAND = image.addFrame(UnityAdsConstants.SafeGuards.InitRequestRetryPolicy.MIN_JITTER_PCT, 709.0f, 26.0f, 26.0f);
        Resources.ICON_RIVER = image.addFrame(26.0f, 709.0f, 26.0f, 26.0f);
        Resources.ICON_TREE = image.addFrame(52.0f, 709.0f, 26.0f, 26.0f);
        Resources.ICON_TURN_RIGHT = image.addFrame(78.0f, 709.0f, 26.0f, 26.0f);
        Resources.ICON_TURN_LEFT = image.addFrame(104.0f, 709.0f, 26.0f, 26.0f);
        Resources.ICON_UPGRADE = image.addFrame(156.0f, 709.0f, 26.0f, 26.0f);
        Resources.ICON_SPORTS = image.addFrame(182.0f, 709.0f, 26.0f, 26.0f);
        Resources.ICON_ALERT = image.addFrame(182.0f, 683.0f, 26.0f, 26.0f);
        Resources.ICON_CALL_FIREDEPARTMENT = image.addFrame(182.0f, 657.0f, 26.0f, 26.0f);
        Resources.ICON_CALL_MEDIC = image.addFrame(312.0f, 794.0f, 26.0f, 26.0f);
        Resources.ICON_CALL_POLICE = image.addFrame(208.0f, 820.0f, 26.0f, 26.0f);
        Resources.ICON_SMALL_MAP = image.addFrame(182.0f, 631.0f, 26.0f, 26.0f);
        Resources.ICON_BIG_MAP = image.addFrame(208.0f, 631.0f, 26.0f, 26.0f);
        Resources.ICON_BIGBIGEXTRA_MAP = image.addFrame(208.0f, 657.0f, 26.0f, 26.0f);
        Resources.ICON_BIGBIGBIG_MAP = image.addFrame(208.0f, 683.0f, 26.0f, 26.0f);
        Resources.ICON_SERVICE = image.addFrame(312.0f, 820.0f, 26.0f, 26.0f);
        Resources.ICON_GAMEMODE_EASY = image.addFrame(208.0f, 709.0f, 26.0f, 26.0f);
        Resources.ICON_GAMEMODE_MIDDLE = image.addFrame(234.0f, 709.0f, 26.0f, 26.0f);
        Resources.ICON_GAMEMODE_HARD = image.addFrame(260.0f, 709.0f, 26.0f, 26.0f);
        Resources.ICON_GAMEMODE_SANDBOX = image.addFrame(3228.0f, 277.0f, 26.0f, 26.0f);
        Resources.ICON_RELIGION = image.addFrame(312.0f, 709.0f, 26.0f, 26.0f);
        Resources.ICON_CATASTROPHES = image.addFrame(364.0f, 709.0f, 26.0f, 26.0f);
        Resources.ICON_DISASTER_FIRE = image.addFrame(390.0f, 709.0f, 26.0f, 26.0f);
        Resources.ICON_DISASTER_METEOR = image.addFrame(416.0f, 709.0f, 26.0f, 26.0f);
        Resources.ICON_DISASTER_EARTHQUAKE = image.addFrame(338.0f, 735.0f, 26.0f, 26.0f);
        Resources.ICON_DISASTER_ILLNESS = image.addFrame(364.0f, 735.0f, 26.0f, 26.0f);
        Resources.ICON_DISASTER_FLOODING = image.addFrame(390.0f, 735.0f, 26.0f, 26.0f);
        Resources.ICON_DISASTER_GODZILLA = image.addFrame(416.0f, 735.0f, 26.0f, 26.0f);
        Resources.ICON_DISASTER_NUKE = image.addFrame(390.0f, 787.0f, 26.0f, 26.0f);
        Resources.ICON_DISASTER_TORNADO = image.addFrame(338.0f, 839.0f, 26.0f, 26.0f);
        Resources.ICON_DISASTER_RIOT = image.addFrame(234.0f, 820.0f, 26.0f, 26.0f);
        Resources.ICON_DISASTER_UFO = image.addFrame(182.0f, 605.0f, 26.0f, 26.0f);
        Resources.ICON_NOISE = image.addFrame(338.0f, 761.0f, 26.0f, 26.0f);
        Resources.ICON_POLLUTION = image.addFrame(364.0f, 761.0f, 26.0f, 26.0f);
        Resources.ICON_PUBLICTRANSPORT = image.addFrame(390.0f, 761.0f, 26.0f, 26.0f);
        Resources.ICON_LOAN = image.addFrame(416.0f, 761.0f, 26.0f, 26.0f);
        Resources.ICON_LOAN_TAKE = image.addFrame(338.0f, 787.0f, 26.0f, 26.0f);
        Resources.ICON_LOAD_PAYBACK = image.addFrame(364.0f, 787.0f, 26.0f, 26.0f);
        Resources.ICON_UNTOUCHABLE = image.addFrame(364.0f, 839.0f, 26.0f, 26.0f);
        Resources.ICON_LOCKED = image.addFrame(390.0f, 839.0f, 26.0f, 26.0f);
        Resources.ICON_RATING = image.addFrame(416.0f, 839.0f, 26.0f, 26.0f);
        Resources.ICON_EDUCATION_LOW = image.addFrame(208.0f, 768.0f, 26.0f, 26.0f);
        Resources.ICON_EDUCATION_HIGH = image.addFrame(234.0f, 768.0f, 26.0f, 26.0f);
        Resources.ICON_DENSITY = image.addFrame(260.0f, 768.0f, 26.0f, 26.0f);
        Resources.ICON_HAPPINESS = image.addFrame(286.0f, 768.0f, 26.0f, 26.0f);
        Resources.ICON_LEVEL = image.addFrame(312.0f, 768.0f, 26.0f, 26.0f);
        Resources.ICON_MAP_SCREENSHOT = image.addFrame(208.0f, 794.0f, 26.0f, 26.0f);
        Resources.ICON_SAVE_AND_CLOSE = image.addFrame(234.0f, 794.0f, 26.0f, 26.0f);
        Resources.ICON_PREVIOUS = image.addFrame(260.0f, 794.0f, 26.0f, 26.0f);
        Resources.ICON_NEXT = image.addFrame(286.0f, 794.0f, 26.0f, 26.0f);
        Resources.ICON_EDIT = image.addFrame(260.0f, 820.0f, 26.0f, 26.0f);
        Resources.ICON_LEVEL_I = image.addFrame(286.0f, 820.0f, 26.0f, 26.0f);
        Resources.ICON_LEVEL_II = image.addFrame(286.0f, 846.0f, 26.0f, 26.0f);
        Resources.ICON_LEVEL_III = image.addFrame(312.0f, 846.0f, 26.0f, 26.0f);
        Resources.ICON_COPY = image.addFrame(26.0f, 527.0f, 26.0f, 26.0f);
        Resources.ICON_TRAFFIC_LIGHTS_ON = image.addFrame(52.0f, 527.0f, 26.0f, 26.0f);
        Resources.ICON_TRAFFIC_LIGHTS_OFF = image.addFrame(78.0f, 527.0f, 26.0f, 26.0f);
        Resources.ICON_WASTE_DISPOSAL = image.addFrame(104.0f, 527.0f, 26.0f, 26.0f);
        Resources.ICON_DECORATION = image.addFrame(130.0f, 527.0f, 26.0f, 26.0f);
        Resources.ICON_ROAD_DECORATION = image.addFrame(364.0f, 865.0f, 26.0f, 26.0f);
        Resources.ICON_FENCE = image.addFrame(3332.0f, 277.0f, 26.0f, 26.0f);
        Resources.ICON_MILITARY = image.addFrame(156.0f, 527.0f, 26.0f, 26.0f);
        Resources.ICON_RANK = image.addFrame(182.0f, 527.0f, 26.0f, 26.0f);
        Resources.ICON_AUTOROAD = image.addFrame(208.0f, 527.0f, 26.0f, 26.0f);
        Resources.ICON_PLUS = image.addFrame(182.0f, 553.0f, 26.0f, 26.0f);
        Resources.ICON_MINUS = image.addFrame(208.0f, 553.0f, 26.0f, 26.0f);
        Resources.ICON_FEATURES = image.addFrame(182.0f, 579.0f, 26.0f, 26.0f);
        Resources.ICON_AIRPORT = image.addFrame(208.0f, 579.0f, 26.0f, 26.0f);
        Resources.ICON_ROAD_GROUND = image.addFrame(234.0f, 683.0f, 26.0f, 26.0f);
        Resources.ICON_ROAD_BRIDGE = image.addFrame(260.0f, 683.0f, 26.0f, 26.0f);
        Resources.ICON_ROAD_AIR = image.addFrame(286.0f, 683.0f, 26.0f, 26.0f);
        Resources.ICON_ROAD_UP = image.addFrame(312.0f, 683.0f, 26.0f, 26.0f);
        Resources.ICON_ROAD_DOWN = image.addFrame(338.0f, 683.0f, 26.0f, 26.0f);
        Resources.ICON_ROAD_CONSTANT = image.addFrame(3280.0f, 277.0f, 26.0f, 26.0f);
        Resources.ICON_STATISTICS = image.addFrame(208.0f, 605.0f, 26.0f, 26.0f);
        Resources.ICON_RED_BUTTON = image.addFrame(364.0f, 683.0f, 26.0f, 26.0f);
        Resources.ICON_DIAMOND = image.addFrame(390.0f, 683.0f, 26.0f, 26.0f);
        image.setScale(0.5f, 0.5f);
        Resources.ICON_DIAMOND_SMALL = image.addFrame(390.0f, 683.0f, 26.0f, 26.0f);
        image.setScale(1.0f, 1.0f);
        Resources.ICON_PLAY_AD_VIDEO = image.addFrame(416.0f, 683.0f, 26.0f, 26.0f);
        Resources.ICON_REGION = image.addFrame(234.0f, 657.0f, 26.0f, 26.0f);
        Resources.ICON_UNLOCK = image.addFrame(260.0f, 657.0f, 26.0f, 26.0f);
        Resources.ICON_CLOCK = image.addFrame(286.0f, 657.0f, 26.0f, 26.0f);
        Resources.ICON_CLOCK_EMPTY = image.addFrame(3202.0f, 277.0f, 26.0f, 26.0f);
        Resources.ICON_REMOVE_UNDER = image.addFrame(312.0f, 657.0f, 26.0f, 26.0f);
        Resources.ICON_SIGN = image.addFrame(338.0f, 657.0f, 26.0f, 26.0f);
        Resources.ICON_PLAYSLOW = image.addFrame(364.0f, 657.0f, 26.0f, 26.0f);
        Resources.ICON_SINGLELANE = image.addFrame(390.0f, 657.0f, 26.0f, 26.0f);
        Resources.ICON_NEIGHBORHOOD_COMMERCIAL = image.addFrame(416.0f, 657.0f, 26.0f, 26.0f);
        Resources.ICON_ROADAUTOJOIN = image.addFrame(234.0f, 631.0f, 26.0f, 26.0f);
        Resources.ICON_WEATHER_SUNNY = image.addFrame(260.0f, 631.0f, 26.0f, 26.0f);
        Resources.ICON_WEATHER_RAINY = image.addFrame(286.0f, 631.0f, 26.0f, 26.0f);
        Resources.ICON_WEATHER_LIGHTING = image.addFrame(312.0f, 631.0f, 26.0f, 26.0f);
        Resources.ICON_CENTER = image.addFrame(338.0f, 631.0f, 26.0f, 26.0f);
        Resources.ICON_WEATHER_FOG = image.addFrame(364.0f, 631.0f, 26.0f, 26.0f);
        Resources.ICON_EYE_DROPPER = image.addFrame(390.0f, 631.0f, 26.0f, 26.0f);
        Resources.ICON_WINTER = image.addFrame(416.0f, 631.0f, 26.0f, 26.0f);
        Resources.ICON_CHRISTMAS = image.addFrame(234.0f, 553.0f, 26.0f, 26.0f);
        Resources.ICON_ROUTE = image.addFrame(260.0f, 605.0f, 26.0f, 26.0f);
        Resources.ICON_PERFORMANCE = image.addFrame(260.0f, 579.0f, 26.0f, 26.0f);
        Resources.ICON_DAILY_AWARD = image.addFrame(260.0f, 553.0f, 26.0f, 26.0f);
        Resources.ICON_SHORT_BUILD_TIME = image.addFrame(260.0f, 527.0f, 26.0f, 26.0f);
        Resources.ICON_HEART = image.addFrame(286.0f, 605.0f, 26.0f, 26.0f);
        Resources.ICON_HALF_TUNNEL_PRICE = image.addFrame(286.0f, 579.0f, 26.0f, 26.0f);
        Resources.ICON_LEVEL_UP = image.addFrame(286.0f, 553.0f, 26.0f, 26.0f);
        Resources.ICON_LEVEL_DOWN = image.addFrame(286.0f, 527.0f, 26.0f, 26.0f);
        Resources.ICON_NOTIFICATION = image.addFrame(312.0f, 579.0f, 26.0f, 26.0f);
        Resources.ICON_MOVE_BUILDING = image.addFrame(260.0f, 846.0f, 26.0f, 26.0f);
        Resources.ICON_LANDMARK = image.addFrame(312.0f, 605.0f, 26.0f, 26.0f);
        Resources.ICON_BODY_DISPOSAL = image.addFrame(286.0f, 872.0f, 26.0f, 26.0f);
        Resources.ICON_GOLDEN_PRESENT = image.addFrame(390.0f, 865.0f, 26.0f, 26.0f);
        Resources.ICON_INFINITY = image.addFrame(3364.0f, 112.0f, 52.0f, 52.0f);
        Resources.ICON_HELP = image.addFrame(166.0f, 926.0f, 26.0f, 26.0f);
        Resources.ICON_HILLS = image.addFrame(286.0f, 898.0f, 26.0f, 26.0f);
        Resources.ICON_FOLLOW_CAR_TOOL = image.addFrame(3150.0f, 277.0f, 26.0f, 26.0f);
        Resources.ICON_UBER = image.addFrame(182.0f, 527.0f, 26.0f, 26.0f);
        Resources.ICON_FOLDER = image.addFrame(3254.0f, 277.0f, 26.0f, 26.0f);
        Resources.ICON_ACCOUNT = image.addFrame(3384.0f, 277.0f, 26.0f, 26.0f);
        Resources.ICON_CONSOLE = image.addFrame(3410.0f, 277.0f, 26.0f, 26.0f);
        Resources.ICON_STAR = image.addFrame(3312.0f, 251.0f, 26.0f, 26.0f);
        Resources.ICON_PLUGIN = image.addFrame(3338.0f, 251.0f, 26.0f, 26.0f);
        Resources.ICON_DOWNLOAD = image.addFrame(182.0f, 874.0f, 26.0f, 26.0f);
        Resources.ICON_UP = image.addFrame(3364.0f, 251.0f, 26.0f, 26.0f);
        Resources.ICON_DOWN = image.addFrame(3390.0f, 251.0f, 26.0f, 26.0f);
        Resources.ICON_DESERT = image.addFrame(3075.0f, 2028.0f, 26.0f, 20.0f);
        Resources.ICON_HAMBURGER = image.addFrame(3338.0f, 225.0f, 26.0f, 26.0f);
        Resources.ICON_ONLINE_REGION_COIN = image.addFrame(3364.0f, 225.0f, 26.0f, 26.0f);
        Resources.ICON_ADMIN_NUKE_TOOL = image.addFrame(3390.0f, 225.0f, 26.0f, 26.0f);
        Resources.ICON_PICKLE_COIN = image.addFrame(3416.0f, 225.0f, 26.0f, 26.0f);
        Resources.ICON_REGION_SPLIT = image.addFrame(3436.0f, 288.0f, 26.0f, 26.0f);
        Resources.ICON_REGION_SHOW = image.addFrame(3462.0f, 288.0f, 26.0f, 26.0f);
        Resources.ICON_REGION_HIDE = image.addFrame(3488.0f, 288.0f, 26.0f, 26.0f);
        Resources.ICON_REGION_MERGE = image.addFrame(3514.0f, 288.0f, 26.0f, 26.0f);
        Resources.ICON_REGION_CIRCLE = image.addFrame(3540.0f, 288.0f, 26.0f, 26.0f);
        Resources.ICON_MEDIUM_MAP = image.addFrame(3584.0f, 545.0f, 26.0f, 26.0f);
        Resources.ICON_BIGBIG_MAP = image.addFrame(3610.0f, 545.0f, 26.0f, 26.0f);
        Resources.ICON_ONLINE_REGIONS = image.addFrame(3636.0f, 545.0f, 26.0f, 26.0f);
        Resources.ICON_ABOUT = image.addFrame(3072.0f, 832.0f, 26.0f, 26.0f);
        Resources.ICON_CULTURE = image.addFrame(3176.0f, 832.0f, 26.0f, 26.0f);
        Resources.ICON_NOTIFICATION_NO = image.addFrame(3124.0f, 832.0f, 26.0f, 26.0f);
        Resources.ICON_SCENARIO = image.addFrame(3228.0f, 832.0f, 26.0f, 26.0f);
        Resources.ICON_COLOR = image.addFrame(3124.0f, 858.0f, 26.0f, 26.0f);
        Resources.ICON_NATURE = image.addFrame(3176.0f, 858.0f, 26.0f, 26.0f);
        Resources.ICON_CLEAR_TEXT = image.addFrame(3228.0f, 194.0f, 20.0f, 20.0f);
        Resources.ICON_CATEGORY = image.addFrame(3202.0f, 858.0f, 26.0f, 26.0f);
        Resources.ICON_OTHER = image.addFrame(3228.0f, 858.0f, 26.0f, 26.0f);
        Resources.ICON_REGION_COMMENTS = image.addFrame(3254.0f, 858.0f, 26.0f, 26.0f);
        Resources.ICON_THEMES = image.addFrame(3280.0f, 858.0f, 26.0f, 26.0f);
        Resources.ICON_ACHIEVEMENTS = image.addFrame(346.0f, 896.0f, 26.0f, 26.0f);
        Resources.ICON_LEADERBOARDS = image.addFrame(320.0f, 896.0f, 26.0f, 26.0f);
        Resources.ICON_BUS_STOP = image.addFrame(448.0f, 688.0f, 64.0f, 32.0f);
        Resources.ICON_PIPE = image.addFrame(448.0f, 720.0f, 64.0f, 32.0f);
        Resources.ICON_WIRE = image.addFrame(448.0f, 752.0f, 64.0f, 32.0f);
        Resources.ICON_REMOVE_ANY = image.addFrame(448.0f, 784.0f, 64.0f, 32.0f);
        Resources.ICON_REMOVE_PIPE = image.addFrame(448.0f, 816.0f, 64.0f, 32.0f);
        Resources.ICON_REMOVE_ZONE = image.addFrame(448.0f, 848.0f, 64.0f, 32.0f);
        Resources.ICON_REMOVE_TUNNEL = image.addFrame(512.0f, 720.0f, 64.0f, 32.0f);
        Resources.ICON_REMOVE_TUNNEL_SMALL = image.addFrame(519.0f, 728.0f, 22.0f, 22.0f);
        Resources.ICON_REMOVE_UNDERGROUND_WIRE = image.addFrame(512.0f, 752.0f, 64.0f, 32.0f);
        Resources.ICON_REMOVE_UNDERGROUND_WIRE_SMALL = image.addFrame(532.0f, 756.0f, 22.0f, 22.0f);
        Resources.ICON_REMOVE_ROAD_DECORATION = image.addFrame(576.0f, 736.0f, 64.0f, 32.0f);
        Resources.ICON_REMOVE_FENCE = image.addFrame(3332.0f, 277.0f, 26.0f, 26.0f);
        Resources.ICON_REMOVE_METRO_TUNNEL = image.addFrame(544.0f, 784.0f, 32.0f, 16.0f);
        image.setOffset(3072.0f, UnityAdsConstants.SafeGuards.InitRequestRetryPolicy.MIN_JITTER_PCT);
        image.setScale(0.25f, 0.25f);
        Resources.ICON_EYE = image.addFrame(UnityAdsConstants.SafeGuards.InitRequestRetryPolicy.MIN_JITTER_PCT, 162.0f, 52.0f, 52.0f);
        image.setOffset(UnityAdsConstants.SafeGuards.InitRequestRetryPolicy.MIN_JITTER_PCT, UnityAdsConstants.SafeGuards.InitRequestRetryPolicy.MIN_JITTER_PCT);
        image.resetScale();
        int iAddFrame = image.addFrame(130.0f, 709.0f, 26.0f, 26.0f);
        Resources.ICON_EYE = iAddFrame;
        Resources.FRAME_SEARCH_BUTTON = iAddFrame;
        image.setType(10);
        Resources.FRAME_RESIDENTIAL_ZONE = image.addFrame(320.0f, UnityAdsConstants.SafeGuards.InitRequestRetryPolicy.MIN_JITTER_PCT, 32.0f, 16.0f, UnityAdsConstants.SafeGuards.InitRequestRetryPolicy.MIN_JITTER_PCT, 8.0f);
        Resources.FRAME_COMMERCIAL_ZONE = image.addFrame(352.0f, UnityAdsConstants.SafeGuards.InitRequestRetryPolicy.MIN_JITTER_PCT, 32.0f, 16.0f, UnityAdsConstants.SafeGuards.InitRequestRetryPolicy.MIN_JITTER_PCT, 8.0f);
        Resources.FRAME_INDUSTRIAL_ZONE = image.addFrame(384.0f, UnityAdsConstants.SafeGuards.InitRequestRetryPolicy.MIN_JITTER_PCT, 32.0f, 16.0f, UnityAdsConstants.SafeGuards.InitRequestRetryPolicy.MIN_JITTER_PCT, 8.0f);
        Resources.FRAME_RESIDENTIAL_LVL2_ZONE = image.addFrame(320.0f, 16.0f, 32.0f, 16.0f, UnityAdsConstants.SafeGuards.InitRequestRetryPolicy.MIN_JITTER_PCT, 8.0f);
        Resources.FRAME_COMMERCIAL_LVL2_ZONE = image.addFrame(352.0f, 16.0f, 32.0f, 16.0f, UnityAdsConstants.SafeGuards.InitRequestRetryPolicy.MIN_JITTER_PCT, 8.0f);
        Resources.FRAME_INDUSTRIAL_LVL2_ZONE = image.addFrame(384.0f, 16.0f, 32.0f, 16.0f, UnityAdsConstants.SafeGuards.InitRequestRetryPolicy.MIN_JITTER_PCT, 8.0f);
        Resources.FRAME_FARM_ZONE = image.addFrame(416.0f, 16.0f, 32.0f, 16.0f, UnityAdsConstants.SafeGuards.InitRequestRetryPolicy.MIN_JITTER_PCT, 8.0f);
        Resources.FRAME_HARBOR_ZONE = image.addFrame(448.0f, 16.0f, 32.0f, 16.0f, UnityAdsConstants.SafeGuards.InitRequestRetryPolicy.MIN_JITTER_PCT, 8.0f);
        Resources.FRAME_MILITARY_ZONE = image.addFrame(384.0f, 3099.0f, 32.0f, 16.0f, UnityAdsConstants.SafeGuards.InitRequestRetryPolicy.MIN_JITTER_PCT, 8.0f);
        Resources.FRAME_AIRPORT_ZONE = image.addFrame(416.0f, 3099.0f, 32.0f, 16.0f, UnityAdsConstants.SafeGuards.InitRequestRetryPolicy.MIN_JITTER_PCT, 8.0f);
        Resources.FRAME_OTHER_ZONE = image.addFrame(416.0f, UnityAdsConstants.SafeGuards.InitRequestRetryPolicy.MIN_JITTER_PCT, 32.0f, 16.0f, UnityAdsConstants.SafeGuards.InitRequestRetryPolicy.MIN_JITTER_PCT, 8.0f);
        Resources.FRAME_DESTROYED_ZONE = image.addFrame(224.0f, UnityAdsConstants.SafeGuards.InitRequestRetryPolicy.MIN_JITTER_PCT, 32.0f, 16.0f, UnityAdsConstants.SafeGuards.InitRequestRetryPolicy.MIN_JITTER_PCT, 8.0f);
        image.setType(5);
        Resources.FRAME_BLANK_TILE = image.addFrame(480.0f, UnityAdsConstants.SafeGuards.InitRequestRetryPolicy.MIN_JITTER_PCT, 32.0f, 16.0f, UnityAdsConstants.SafeGuards.InitRequestRetryPolicy.MIN_JITTER_PCT, 8.0f);
        image.setType(8);
        Resources.FRAME_REGION_BORDER = image.addFrame(352.0f, 96.0f, 64.0f, 48.0f);
        image.setType(9);
        Resources.FRAME_REMOVE_TILE = image.addFrame(448.0f, UnityAdsConstants.SafeGuards.InitRequestRetryPolicy.MIN_JITTER_PCT, 32.0f, 16.0f, UnityAdsConstants.SafeGuards.InitRequestRetryPolicy.MIN_JITTER_PCT, 8.0f);
        Resources.FRAME_WHITE_TILE = image.addFrame(UnityAdsConstants.SafeGuards.InitRequestRetryPolicy.MIN_JITTER_PCT, 16.0f, 32.0f, 16.0f, UnityAdsConstants.SafeGuards.InitRequestRetryPolicy.MIN_JITTER_PCT, 8.0f);
        image.addFrame(480.0f, 16.0f, 16.0f, 16.0f, UnityAdsConstants.SafeGuards.InitRequestRetryPolicy.MIN_JITTER_PCT, 8.0f);
        image.addFrame(496.0f, 16.0f, 16.0f, 16.0f, -16.0f, 8.0f);
        image.addFrame(480.0f, UnityAdsConstants.SafeGuards.InitRequestRetryPolicy.MIN_JITTER_PCT, 16.0f, 16.0f, UnityAdsConstants.SafeGuards.InitRequestRetryPolicy.MIN_JITTER_PCT, 8.0f);
        image.addFrame(496.0f, UnityAdsConstants.SafeGuards.InitRequestRetryPolicy.MIN_JITTER_PCT, 16.0f, 16.0f, -16.0f, 8.0f);
        Resources.FRAME_CAUSTICS1 = image.addFrame(UnityAdsConstants.SafeGuards.InitRequestRetryPolicy.MIN_JITTER_PCT, 256.0f, 64.0f, 64.0f);
        int iAddStrip = image.addStrip(UnityAdsConstants.SafeGuards.InitRequestRetryPolicy.MIN_JITTER_PCT, 224.0f, 512.0f, 32.0f, 32.0f, 16.0f, 32, UnityAdsConstants.SafeGuards.InitRequestRetryPolicy.MIN_JITTER_PCT, 8.0f);
        Resources.FRAME_TOOLMARK = iAddStrip;
        Resources.FRAME_TOOLMARK_CHECKER = iAddStrip + 16;
        Resources.FRAME_TOOLMARK_GREEN_DOTTED = Resources.FRAME_TOOLMARK + 17;
        Resources.FRAME_TOOLMARK_RED_DOTTED = Resources.FRAME_TOOLMARK + 18;
        Resources.FRAME_TOOLMARK_GREEN = Resources.FRAME_TOOLMARK + 19;
        Resources.FRAME_TOOLMARK_RED = Resources.FRAME_TOOLMARK + 20;
        Resources.FRAME_TOOLMARK_BLUE_DOTTED = Resources.FRAME_TOOLMARK + 21;
        Resources.FRAME_TOOLMARK_TILE = Resources.FRAME_TOOLMARK + 22;
        Resources.FRAME_TOOLMARK_BLUE = Resources.FRAME_TOOLMARK + 23;
        Resources.FRAME_TOOLMARK_WHITE = Resources.FRAME_TOOLMARK + 24;
        Resources.FRAME_TOOLMARK_MARKER = Resources.FRAME_TOOLMARK + 25;
        Resources.FRAME_TOOLMARK_YELLOW_DOTTED = Resources.FRAME_TOOLMARK + 26;
        Resources.FRAME_TOOLMARK_BLOB = Resources.FRAME_TOOLMARK + 27;
        Resources.FRAME_TOOLMARK_ARROWS = Resources.FRAME_TOOLMARK + 28;
        Resources.FRAME_TILEMARK = image.addFrame(288.0f, 240.0f, 16.0f, 8.0f, UnityAdsConstants.SafeGuards.InitRequestRetryPolicy.MIN_JITTER_PCT, 8.0f);
        image.addFrame(304.0f, 240.0f, 16.0f, 8.0f, -16.0f, 8.0f);
        image.addFrame(304.0f, 248.0f, 16.0f, 8.0f, -16.0f, UnityAdsConstants.SafeGuards.InitRequestRetryPolicy.MIN_JITTER_PCT);
        image.addFrame(288.0f, 248.0f, 16.0f, 8.0f, UnityAdsConstants.SafeGuards.InitRequestRetryPolicy.MIN_JITTER_PCT, UnityAdsConstants.SafeGuards.InitRequestRetryPolicy.MIN_JITTER_PCT);
        Resources.FRAME_SIDEMARK = image.addStrip(3248.0f, 180.0f, 64.0f, 32.0f, 32.0f, 16.0f, 4, UnityAdsConstants.SafeGuards.InitRequestRetryPolicy.MIN_JITTER_PCT, 8.0f);
        Resources.FRAME_CONSTRUCTION_TILE = image.addStrip(512.0f, 256.0f, 128.0f, 32.0f, 32.0f, 32.0f, 4, UnityAdsConstants.SafeGuards.InitRequestRetryPolicy.MIN_JITTER_PCT, 24.0f);
        image.setOffset(3072.0f, UnityAdsConstants.SafeGuards.InitRequestRetryPolicy.MIN_JITTER_PCT);
        Resources.FRAME_ZONE_WARNING_SIGN = image.addFrame(UnityAdsConstants.SafeGuards.InitRequestRetryPolicy.MIN_JITTER_PCT, 893.0f, 30.0f, 34.0f, 15.0f, 14.0f);
        image.setOffset(UnityAdsConstants.SafeGuards.InitRequestRetryPolicy.MIN_JITTER_PCT, UnityAdsConstants.SafeGuards.InitRequestRetryPolicy.MIN_JITTER_PCT);
        Resources.FRAME_ZONE_NO_ROAD = image.addFrame(UnityAdsConstants.SafeGuards.InitRequestRetryPolicy.MIN_JITTER_PCT, 192.0f, 32.0f, 32.0f, 16.0f, 16.0f);
        Resources.FRAME_ZONE_UNHAPPY = image.addFrame(32.0f, 192.0f, 32.0f, 32.0f, 16.0f, 16.0f);
        Resources.FRAME_ZONE_NO_ENERGY = image.addFrame(64.0f, 192.0f, 32.0f, 32.0f, 16.0f, 16.0f);
        Resources.FRAME_ZONE_EMPTY = image.addFrame(96.0f, 192.0f, 32.0f, 32.0f, 16.0f, 16.0f);
        Resources.FRAME_ZONE_NO_WATER = image.addFrame(128.0f, 192.0f, 32.0f, 32.0f, 16.0f, 16.0f);
        Resources.FRAME_ZONE_NO_COAL = image.addFrame(160.0f, 192.0f, 32.0f, 32.0f, 16.0f, 16.0f);
        Resources.FRAME_ZONE_OVERLOADED = image.addFrame(192.0f, 192.0f, 32.0f, 32.0f, 16.0f, 16.0f);
        Resources.FRAME_ZONE_CRIME_GRAFFITI = image.addFrame(224.0f, 192.0f, 32.0f, 32.0f, 16.0f, 16.0f);
        Resources.FRAME_ZONE_CRIME_BURGLARY = image.addFrame(256.0f, 192.0f, 32.0f, 32.0f, 16.0f, 16.0f);
        Resources.FRAME_ZONE_CRIME_MURDER = image.addFrame(288.0f, 192.0f, 32.0f, 32.0f, 16.0f, 16.0f);
        Resources.FRAME_ZONE_CRIME_RIOT = image.addFrame(320.0f, 192.0f, 32.0f, 32.0f, 16.0f, 16.0f);
        Resources.FRAME_ZONE_ILLNESS = image.addFrame(352.0f, 192.0f, 32.0f, 32.0f, 16.0f, 16.0f);
        Resources.FRAME_ZONE_DEATH = image.addFrame(384.0f, 192.0f, 32.0f, 32.0f, 16.0f, 16.0f);
        Resources.FRAME_ZONE_GARBAGE = image.addFrame(UnityAdsConstants.SafeGuards.InitRequestRetryPolicy.MIN_JITTER_PCT, 944.0f, 32.0f, 32.0f, 16.0f, 16.0f);
        Resources.FRAME_LOGO_FLOWERSOFT_SMALL = image.addFrame(448.0f, 640.0f, 64.0f, 48.0f);
        Resources.FRAME_LOCATE_FIRE_ALERT = image.addFrame(UnityAdsConstants.SafeGuards.InitRequestRetryPolicy.MIN_JITTER_PCT, 794.0f, 31.0f, 41.0f, 15.0f, 37.0f);
        Resources.FRAME_LOCATE_POLICE_ALERT = image.addFrame(31.0f, 794.0f, 31.0f, 41.0f, 15.0f, 37.0f);
        Resources.FRAME_LOCATE_MEDIC_ALERT = image.addFrame(62.0f, 794.0f, 31.0f, 41.0f, 15.0f, 37.0f);
        Resources.FRAME_LOCATE_SWAT_ALERT = image.addFrame(93.0f, 794.0f, 31.0f, 41.0f, 15.0f, 37.0f);
        Resources.FRAME_LOCATE_GARBAGE_ALERT = image.addFrame(32.0f, 935.0f, 31.0f, 41.0f, 15.0f, 37.0f);
        image.setType(24);
        Resources.FRAME_RAIN = image.addFrame(385.0f, 897.0f, 126.0f, 126.0f);
        image.addFrame(511.0f, 897.0f, -126.0f, 126.0f);
        WinterManager.getInstance().registerWinterFrame(Resources.FRAME_RAIN, image.addFrame(1921.0f, 2049.0f, 126.0f, 126.0f));
        WinterManager.getInstance().registerWinterFrame(Resources.FRAME_RAIN + 1, image.addFrame(2047.0f, 2049.0f, -126.0f, 126.0f));
        image.setType(9);
        Resources.FRAMES_DESTRUCTION_COUNT = 10;
        Resources.FRAMES_DESTRUCTION = image.addStrip(UnityAdsConstants.SafeGuards.InitRequestRetryPolicy.MIN_JITTER_PCT, 976.0f, 10 * 32, 48.0f, 32.0f, 48.0f, 10, UnityAdsConstants.SafeGuards.InitRequestRetryPolicy.MIN_JITTER_PCT, 40.0f);
        image.setType(1);
        Resources.LOGO_BLAZE = image.addFrame(UnityAdsConstants.SafeGuards.InitRequestRetryPolicy.MIN_JITTER_PCT, 768.0f, 26.0f, 26.0f);
        Resources.LOGO_FLOWERSOFT = image.addFrame(26.0f, 768.0f, 26.0f, 26.0f);
        Resources.LOGO_THEO = image.addFrame(52.0f, 768.0f, 26.0f, 26.0f);
        Resources.LOGO_LUCAS = image.addFrame(78.0f, 768.0f, 26.0f, 26.0f);
        Resources.LOGO_LOBBY = image.addFrame(104.0f, 768.0f, 26.0f, 26.0f);
        Resources.LOGO_PHOENIX = image.addFrame(130.0f, 768.0f, 26.0f, 26.0f);
        Resources.LOGO_MAXIME = image.addFrame(156.0f, 768.0f, 26.0f, 26.0f);
        Resources.LOGO_LIBGDX = image.addFrame(182.0f, 768.0f, 26.0f, 26.0f);
        Resources.LOGO_AZULA = image.addFrame(UnityAdsConstants.SafeGuards.InitRequestRetryPolicy.MIN_JITTER_PCT, 848.0f, 26.0f, 26.0f);
        Resources.LOGO_HERNAN = image.addFrame(26.0f, 848.0f, 26.0f, 26.0f);
        Resources.LOGO_HAKANUCKUS = image.addFrame(52.0f, 848.0f, 26.0f, 26.0f);
        Resources.LOGO_DANIIL = image.addFrame(78.0f, 848.0f, 26.0f, 26.0f);
        Resources.LOGO_RONNIE = image.addFrame(104.0f, 848.0f, 26.0f, 26.0f);
        Resources.LOGO_Bearbear65 = image.addFrame(130.0f, 848.0f, 26.0f, 26.0f);
        Resources.LOGO_MDK = image.addFrame(156.0f, 848.0f, 26.0f, 26.0f);
        Resources.LOGO_WADERS = image.addFrame(182.0f, 848.0f, 26.0f, 26.0f);
        Resources.LOGO_KHADAFI = image.addFrame(208.0f, 848.0f, 26.0f, 26.0f);
        Resources.LOGO_REMAINSSTAY = image.addFrame(234.0f, 848.0f, 26.0f, 26.0f);
        Resources.LOGO_RENO = image.addFrame(234.0f, 900.0f, 26.0f, 26.0f);
        Resources.LOGO_JA = image.addFrame(208.0f, 874.0f, 26.0f, 26.0f);
        Resources.LOGO_AB = image.addFrame(208.0f, 900.0f, 26.0f, 26.0f);
        Resources.LOGO_SGG = image.addFrame(63.0f, 926.0f, 26.0f, 26.0f);
        Resources.LOGO_CEPHUES = image.addFrame(3416.0f, 251.0f, 26.0f, 26.0f);
        Resources.LOGO_LAKAN = image.addFrame(3312.0f, 225.0f, 26.0f, 26.0f);
        Resources.LOGO_EVAN = image.addFrame(768.0f, 525.0f, 18.0f, 18.0f);
        Resources.LOGO_DISCORD = image.addFrame(UnityAdsConstants.SafeGuards.InitRequestRetryPolicy.MIN_JITTER_PCT, 874.0f, 26.0f, 26.0f);
        Resources.LOGO_BUNNY = image.addFrame(26.0f, 874.0f, 26.0f, 26.0f);
        image.setScale(1.0f, 1.0f);
        image.setType(0);
    }

    public final void loadDraftDefinedFrames() {
        Image image = Resources.IMAGE_WORLD;
        Resources.FRAME_PEOPLE = ((AnimationDraft) Drafts.get("$anim_people_source01", AnimationDraft.class)).frames[0];
        Gdx.app.debug("FRAME_PEOPLE", "" + Resources.FRAME_PEOPLE);
        Resources.PEOPLE_MINER = Resources.FRAME_PEOPLE;
        Resources.PEOPLE_WORKMAN = Resources.FRAME_PEOPLE + 1;
        Resources.PEOPLE_ROADWORKER = Resources.FRAME_PEOPLE + 2;
        Resources.PEOPLE_WORKER = Resources.FRAME_PEOPLE + 3;
        Resources.PEOPLE_MEDIC = Resources.FRAME_PEOPLE + 4;
        Resources.PEOPLE_LAWYER = Resources.FRAME_PEOPLE + 5;
        Resources.PEOPLE_MECHANIC = Resources.FRAME_PEOPLE + 6;
        Resources.PEOPLE_MANAGER = Resources.FRAME_PEOPLE + 7;
        Resources.PEOPLE_OFFICER = Resources.FRAME_PEOPLE + 8;
        Resources.PEOPLE_JUDGE = Resources.FRAME_PEOPLE + 9;
        Resources.PEOPLE_MAYOR = Resources.FRAME_PEOPLE + 10;
        Resources.PEOPLE_SERVANT = Resources.FRAME_PEOPLE + 11;
        Resources.PEOPLE_MUSICIAN = Resources.FRAME_PEOPLE + 12;
        Resources.PEOPLE_NONE = Resources.FRAME_PEOPLE + 13;
        Resources.PEOPLE_OFFICEWORKER = Resources.FRAME_PEOPLE + 14;
        Resources.PEOPLE_PROSTITUTE = Resources.FRAME_PEOPLE + 15;
        Resources.PEOPLE_GRANDMA_DONT_USE = Resources.FRAME_PEOPLE + 16;
        Resources.PEOPLE_PRIEST = Resources.FRAME_PEOPLE + 17;
        Resources.PEOPLE_WIZARD = Resources.FRAME_PEOPLE + 18;
        Resources.PEOPLE_TEACHER0 = Resources.FRAME_PEOPLE + 19;
        Resources.PEOPLE_SWAT = Resources.FRAME_PEOPLE + 20;
        Resources.PEOPLE_TEACHER1 = Resources.FRAME_PEOPLE + 21;
        Resources.PEOPLE_GARBAGE_COLLECTOR = Resources.FRAME_PEOPLE + 22;
        Resources.PEOPLE_SOLDIER = Resources.FRAME_PEOPLE + 23;
        Resources.PEOPLE_GENERAL = Resources.FRAME_PEOPLE + 24;
        Resources.PEOPLE_RANGER = Resources.FRAME_PEOPLE + 25;
        Resources.PEOPLE_FIREFIGHTER0 = Resources.FRAME_PEOPLE + 26;
        Resources.PEOPLE_FIREFIGHTER1 = Resources.FRAME_PEOPLE + 27;
        Resources.PEOPLE_GIRL = Resources.FRAME_PEOPLE + 28;
        image.setType(Resources.FRAME_PEOPLE, 1, 29);
        int i = ((AnimationDraft) Drafts.get("$anim_store_report00", AnimationDraft.class)).frames[0];
        Resources.ICON_REPORT = i;
        image.setType(i, 1);
    }

    public final void addMusic(MusicBox musicBox, MusicBox.Type type, String str) {
        musicBox.addMusic(str, getUserFriendlyMusicName(str), type, Gdx.files.internal(Hashing.internalName(str, "ae6bb9dcccb3ee65a2a5e1964c8ca37b") + ".mp3"));
    }

    public final void loadMusic() {
        MusicBox.Type type;
        if (PluginHelper.errorOccured()) {
            return;
        }
        MusicBox musicBox = MusicBox.getInstance();
        musicBox.loadSettings();
        MusicBox.Type type2 = MusicBox.Type.GAME;
        addMusic(musicBox, type2, "music_joy.mp3");
        addMusic(musicBox, type2, "music_lapse.mp3");
        addMusic(musicBox, type2, "music_natsukusanokaori.mp3");
        addMusic(musicBox, MusicBox.Type.ACTION, "music_tt_redalert.mp3");
        List<String> defaultMusicFiles = getDefaultMusicFiles();
        File file = new File(Resources.getTheoTownDir(), "music");
        if (file.exists() && file.isDirectory()) {
            collectMusic(file, "", defaultMusicFiles, 0);
        }
        for (int i = 0; i < defaultMusicFiles.size(); i++) {
            String str = defaultMusicFiles.get(i);
            if (str.startsWith("emergency/")) {
                type = MusicBox.Type.ACTION;
            } else {
                type = MusicBox.Type.GAME;
            }
            FileHandle fileHandleAbsolute = Gdx.files.absolute(new File(file, str).getPath());
            musicBox.addMusic(str, getUserFriendlyMusicName(fileHandleAbsolute.nameWithoutExtension()), type, fileHandleAbsolute);
        }
    }

    public final String getUserFriendlyMusicName(String str) {
        if (str == null || str.isEmpty()) {
            return "<empty>";
        }
        if (str.indexOf(46) > 0) {
            str = str.substring(0, str.indexOf(46));
        }
        if (str.startsWith("music_")) {
            str = str.substring(6);
        }
        if (str.startsWith("tt_")) {
            str = str.substring(3);
        }
        return Character.toUpperCase(str.charAt(0)) + str.substring(1);
    }

    public static List<String> getDefaultMusicFiles() {
        ArrayList arrayList = new ArrayList();
        arrayList.add("music_aeon.mp3");
        arrayList.add("music_alice.mp3");
        arrayList.add("music_august.mp3");
        arrayList.add("music_awake.mp3");
        arrayList.add("music_call.mp3");
        arrayList.add("music_crush.mp3");
        arrayList.add("music_dreamland.mp3");
        arrayList.add("music_family.mp3");
        arrayList.add("music_fragments.mp3");
        arrayList.add("music_hedwig.mp3");
        arrayList.add("music_heroofhyrule.mp3");
        arrayList.add("music_human.mp3");
        arrayList.add("music_june.mp3");
        arrayList.add("music_justintime.mp3");
        arrayList.add("music_justus.mp3");
        arrayList.add("music_legendarybirds1.mp3");
        arrayList.add("music_notfarnow.mp3");
        arrayList.add("music_quiet.mp3");
        arrayList.add("music_remember.mp3");
        arrayList.add("music_shesleeps.mp3");
        arrayList.add("music_stargazer.mp3");
        arrayList.add("music_thecatontheroof.mp3");
        arrayList.add("music_twilightyears.mp3");
        arrayList.add("music_tt_beginning.mp3");
        arrayList.add("music_tt_brickbybrick.mp3");
        arrayList.add("music_tt_clockwork.mp3");
        arrayList.add("music_tt_concretedreams.mp3");
        arrayList.add("music_tt_countryside.mp3");
        arrayList.add("music_tt_curious.mp3");
        arrayList.add("music_tt_getacab.mp3");
        arrayList.add("music_tt_parksidemorning.mp3");
        arrayList.add("music_tt_penthouse.mp3");
        arrayList.add("music_tt_retroreflectors.mp3");
        arrayList.add("music_tt_staircase.mp3");
        arrayList.add("music_tt_streetlights.mp3");
        arrayList.add("music_tt_traffic.mp3");
        arrayList.add("music_tt_urbanoasis.mp3");
        return arrayList;
    }

    public final void collectMusic(File file, String str, List<String> list, int i) {
        File[] fileArrListFiles;
        if (i <= 3 && (fileArrListFiles = file.listFiles()) != null) {
            for (File file2 : fileArrListFiles) {
                String name = file2.getName();
                if (!name.startsWith("_")) {
                    if (!str.isEmpty()) {
                        name = str + "/" + name;
                    }
                    if (!list.contains(name)) {
                        if (file2.isFile() && (name.endsWith(".mp3") || name.endsWith(".ogg"))) {
                            list.add(name);
                        } else if (file2.isDirectory() && !file2.getName().equals(".") && !file2.getName().equals("..")) {
                            collectMusic(file2, name, list, i + 1);
                        }
                    }
                }
            }
        }
    }

    public final int loadSound(SoundPlayer soundPlayer, String str) {
        return soundPlayer.loadSound(Gdx.files.internal(Hashing.internalName(str, "ae6bb9dcccb3ee65a2a5e1964c8ca37b") + ".mp3"));
    }

    public final void loadSounds() {
        if (PluginHelper.errorOccured()) {
            return;
        }
        SoundPlayer soundPlayer = SoundPlayer.getInstance();
        Resources.SOUND_CLICK = loadSound(soundPlayer, "sound_click.mp3");
        Resources.SOUND_MONEY = loadSound(soundPlayer, "sound_money.mp3");
        Resources.SOUND_NOTIFICATION = loadSound(soundPlayer, "sound_notification_population.mp3");
        Resources.SOUND_CAR_FIRE = loadSound(soundPlayer, "sound_car_fire.mp3");
        Resources.SOUND_CAR_POLICE = loadSound(soundPlayer, "sound_car_police.mp3");
        Resources.SOUND_CAR_MEDIC = loadSound(soundPlayer, "sound_car_medic.mp3");
        Resources.SOUND_FIRE = loadSound(soundPlayer, "sound_fire.mp3");
        Resources.SOUND_METEORITE_IMPACT = loadSound(soundPlayer, "sound_meteorite_impact.mp3");
        Resources.SOUND_METEORITE_FLY = loadSound(soundPlayer, "sound_meteorite_fly.mp3");
        Resources.SOUND_EARTHQUAKE = loadSound(soundPlayer, "sound_earthquake.mp3");
        Resources.SOUND_DESTROY = loadSound(soundPlayer, "sound_destroy.mp3");
        Resources.SOUND_BUILD = loadSound(soundPlayer, "sound_build.mp3");
        Resources.SOUND_BUILD_LAND = loadSound(soundPlayer, "sound_build_land.mp3");
        Resources.SOUND_BUILD_WATER = loadSound(soundPlayer, "sound_build_water.mp3");
        Resources.SOUND_WIND = loadSound(soundPlayer, "sound_wind.mp3");
        Resources.SOUND_RESIDENTIAL = loadSound(soundPlayer, "sound_residential.mp3");
        Resources.SOUND_COMMERCIAL = loadSound(soundPlayer, "sound_commercial.mp3");
        Resources.SOUND_INDUSTRIAL = loadSound(soundPlayer, "sound_industrial.mp3");
        Resources.SOUND_PARK = loadSound(soundPlayer, "sound_park.mp3");
        Resources.SOUND_SPORT = loadSound(soundPlayer, "sound_sport.mp3");
        Resources.SOUND_FIREDEPARTMENT = loadSound(soundPlayer, "sound_firedepartment.mp3");
        Resources.SOUND_POLICE = loadSound(soundPlayer, "sound_police.mp3");
        Resources.SOUND_MEDIC = loadSound(soundPlayer, "sound_medic.mp3");
        Resources.SOUND_POWER = loadSound(soundPlayer, "sound_power.mp3");
        Resources.SOUND_DEMO = loadSound(soundPlayer, "sound_demo.mp3");
        Resources.SOUND_RIOT = loadSound(soundPlayer, "sound_riot.mp3");
        Resources.SOUND_ROAD = loadSound(soundPlayer, "sound_road.mp3");
        Resources.SOUND_SCHOOL = loadSound(soundPlayer, "sound_school.mp3");
        Resources.SOUND_NEWRANK = loadSound(soundPlayer, "sound_newrank.mp3");
        Resources.SOUND_RAIN = loadSound(soundPlayer, "sound_rain.mp3");
        Resources.SOUND_THUNDER = loadSound(soundPlayer, "sound_thunder.mp3");
        Resources.SOUND_SNOW = loadSound(soundPlayer, "sound_snow.mp3");
        Resources.SOUND_NATURE = loadSound(soundPlayer, "sound_nature.mp3");
        Resources.SOUND_OCEAN = loadSound(soundPlayer, "sound_ocean.mp3");
        Resources.SOUND_TRAFFIC = loadSound(soundPlayer, "sound_traffic.mp3");
        Resources.SOUND_UFO_AMBIENT = loadSound(soundPlayer, "sound_ufo_ambient.mp3");
        Resources.SOUND_UFO_LASER = loadSound(soundPlayer, "sound_ufo_laser.mp3");
        Resources.SOUND_RELIGION = loadSound(soundPlayer, "sound_religion.mp3");
        Resources.SOUND_HALLOWEEN = loadSound(soundPlayer, "sound_halloween.mp3");
        Resources.SOUND_CHRISTMAS = loadSound(soundPlayer, "sound_christmas.mp3");
        Resources.SOUND_CHRISTMAS_HOHOO = loadSound(soundPlayer, "sound_hohoo.mp3");
        Resources.SOUND_OPERA = loadSound(soundPlayer, "sound_opera.mp3");
    }

    public final void loadTopics() {
        TopicManager topicManager = TopicManager.getInstance();
        if (Gdx.app.getType() == Application.ApplicationType.Desktop) {
            topicManager.addTopic(778);
        }
        TopicManager.Topic topicAddTopic = topicManager.addTopic(1478);
        topicAddTopic.addDay(31, 2);
        topicAddTopic.setWeight(1000.0f);
        TopicManager.Topic topicAddTopic2 = topicManager.addTopic(2898);
        topicAddTopic2.setWeight(10.0f);
        topicAddTopic2.addDays(25, 11, 3);
        TopicManager.Topic topicAddTopic3 = topicManager.addTopic(735);
        topicAddTopic3.setWeight(10.0f);
        topicAddTopic3.addDays(31, 11, 2);
        TopicManager.Topic topicAddTopic4 = topicManager.addTopic(2907);
        topicAddTopic4.setWeight(Float.MAX_VALUE);
        topicAddTopic4.addDay(1, 3);
        for (int i = 0; i < Drafts.TOPICS.size(); i++) {
            topicManager.addTopic(Drafts.TOPICS.get(i));
        }
    }

    public final void loadTexture() {
        final Engine engine = this.context.getEngine();
        boolean z = Gdx.app.getType() == Application.ApplicationType.Android;
        Settings.useLowColorDepth &= z;
        Settings.crashedWhileLoadingTexture = true;
        Settings.save();
        if (Settings.useLowColorDepth && z) {
            Resources.TEXTURE_WORLD.setColorDepth(16);
        } else {
            Settings.useLowColorDepth = false;
        }
        GLUtil.THROW_EXCEPTIONS = true;
        try {
            try {
                try {
                    this.pg.set(0, this.textures.size());
                    for (final Texture texture : this.textures) {
                        executeSyncJob(new Runnable() { // from class: info.flowersoft.theotown.stages.LoadingStage$$ExternalSyntheticLambda25
                            @Override // java.lang.Runnable
                            public final void run() {
                                LoadingStage.$r8$lambda$91f1pW_qgFvDyuN4dIiiQVrIoA4(this.f$0, engine, texture);
                            }
                        });
                    }
                } catch (ExecutionException e) {
                    e.printStackTrace();
                    throw new IllegalStateException(e);
                }
            } catch (InterruptedException e2) {
                e2.printStackTrace();
                throw new IllegalStateException(e2);
            } catch (Exception e3) {
                if (Gdx.app.getType() == Application.ApplicationType.Android) {
                    boolean z2 = Settings.useLowColorDepth;
                    TheoTown.analytics.logException("Loading textures", e3);
                    TheoTown.analytics.logEvent("Loading texture", e3.toString(), Settings.missingChars);
                    Settings.useLowColorDepth = true;
                    executeSyncJob(new Runnable() { // from class: info.flowersoft.theotown.stages.LoadingStage$$ExternalSyntheticLambda26
                        @Override // java.lang.Runnable
                        public final void run() {
                            LoadingStage.$r8$lambda$9HiNoI69LBqmWLh0444Ms_0GoAU(this.f$0, engine);
                        }
                    });
                    for (final Texture texture2 : this.textures) {
                        executeSyncJob(new Runnable() { // from class: info.flowersoft.theotown.stages.LoadingStage$$ExternalSyntheticLambda27
                            @Override // java.lang.Runnable
                            public final void run() {
                                engine.loadTexture(texture2);
                            }
                        });
                    }
                    Settings.useBigTextureIfPossible = false;
                    Settings.useLowColorDepth = z2;
                } else {
                    if (Gdx.app.getType() == Application.ApplicationType.Desktop && (e3 instanceof RuntimeException) && e3.getMessage().contains("8192") && Settings.useBigTextureIfPossible) {
                        Settings.useBigTextureIfPossible = false;
                        Settings.save();
                        throw new RuntimeException("Large textures could not be created. Compatibility mode enabled. Please restart the game.", e3);
                    }
                    throw e3;
                }
            }
            GLUtil.THROW_EXCEPTIONS = false;
            try {
                executeSyncJob(new Runnable() { // from class: info.flowersoft.theotown.stages.LoadingStage$$ExternalSyntheticLambda28
                    @Override // java.lang.Runnable
                    public final void run() {
                        LoadingStage.m2241$r8$lambda$3DXZX_byXy0raL_Ef9rKoo9BRM(engine);
                    }
                });
            } catch (Throwable th) {
                th.printStackTrace();
            }
            Settings.crashedWhileLoadingTexture = false;
            Settings.save();
        } catch (Throwable th2) {
            th2.printStackTrace();
            throw new IllegalStateException(th2);
        }
    }

    public static /* synthetic */ void $r8$lambda$91f1pW_qgFvDyuN4dIiiQVrIoA4(LoadingStage loadingStage, Engine engine, Texture texture) {
        loadingStage.getClass();
        engine.loadTexture(texture);
        loadingStage.pg.set(loadingStage.progressDone + 1, loadingStage.progressTotal);
    }

    public static /* synthetic */ void $r8$lambda$9HiNoI69LBqmWLh0444Ms_0GoAU(LoadingStage loadingStage, Engine engine) {
        Iterator<Texture> it = loadingStage.textures.iterator();
        while (it.hasNext()) {
            engine.releaseTexture(it.next());
        }
        Iterator<Texture> it2 = loadingStage.textures.iterator();
        while (it2.hasNext()) {
            it2.next().setColorDepth(16);
        }
    }

    /* JADX INFO: renamed from: $r8$lambda$3DX-ZX_byXy0raL_Ef9rKoo9BRM, reason: not valid java name */
    public static /* synthetic */ void m2241$r8$lambda$3DXZX_byXy0raL_Ef9rKoo9BRM(Engine engine) {
        engine.drawImage(Resources.IMAGE_WORLD, UnityAdsConstants.SafeGuards.InitRequestRetryPolicy.MIN_JITTER_PCT, UnityAdsConstants.SafeGuards.InitRequestRetryPolicy.MIN_JITTER_PCT, 1.0f, 1.0f, 0);
        engine.drawText(Resources.skin.fontDefault, "Hi", UnityAdsConstants.SafeGuards.InitRequestRetryPolicy.MIN_JITTER_PCT, UnityAdsConstants.SafeGuards.InitRequestRetryPolicy.MIN_JITTER_PCT);
        engine.flush();
    }

    public final void executeSyncJob(Runnable runnable) throws Throwable {
        FutureTask<?> futureTask = new FutureTask<>(runnable, null);
        synchronized (this.synchronizedTasks) {
            this.synchronizedTasks.add(futureTask);
        }
        try {
            futureTask.get();
        } catch (InterruptedException e) {
            throw e;
        } catch (ExecutionException e2) {
            throw e2.getCause();
        }
    }

    @Override // io.blueflower.stapel2d.gamestack.Stage
    public void drop() {
        this.startScreenDrawer.dispose();
        Future<?> future = this.taskFuture;
        if (future != null) {
            future.cancel(true);
            this.taskFuture = null;
        }
        this.executor.shutdown();
        super.drop();
        Settings.failedStartupCtr = 0;
        Settings.save();
    }

    @Override // io.blueflower.stapel2d.gamestack.Stage
    public void enter() {
        this.watchdog.start();
        CursorManager.INSTANCE.setCursor(CursorType.Wait, false);
    }

    @Override // io.blueflower.stapel2d.gamestack.Stage
    public void leave() {
        this.watchdog.stop();
        CursorManager.INSTANCE.setCursor(CursorType.Normal, false);
    }

    @Override // io.blueflower.stapel2d.gamestack.Stage
    public void update() {
        String str;
        FutureTask<?> futureTaskRemove;
        if (this.tasks.isEmpty()) {
            this.context.beginFrame();
            this.context.getEngine().clear(Colors.RED);
            this.context.endFrame();
            if (getGameStack().isEmpty()) {
                return;
            }
            getGameStack().update();
            return;
        }
        long jMillis = TimeUtils.millis();
        synchronized (this.pendingTasks) {
            try {
                if (!this.pendingTasks.isEmpty()) {
                    for (int i = 0; i < this.pendingTasks.size(); i++) {
                        this.pendingTasks.get(i).run();
                    }
                    this.pendingTasks.clear();
                    this.pendingTasks.notifyAll();
                }
            } finally {
            }
        }
        Task task = this.currentTask;
        if (task != null) {
            str = task.name;
            Future<?> future = this.taskFuture;
            if (future == null || future.isDone()) {
                Future<?> future2 = this.taskFuture;
                if (future2 != null) {
                    try {
                        future2.get();
                    } catch (InterruptedException e) {
                        e.printStackTrace();
                    } catch (ExecutionException e2) {
                        Throwable cause = e2.getCause();
                        if (cause instanceof RuntimeException) {
                            throw ((RuntimeException) cause);
                        }
                        throw new IllegalStateException(cause);
                    }
                    Gdx.app.debug("LoadingStage", "Task " + str + " took " + (jMillis - this.taskStartedMS) + " ms");
                    this.taskFuture = null;
                }
                this.currentTask = null;
                if (!this.tasks.isEmpty()) {
                    str = this.tasks.get(0).name;
                }
            } else {
                str = this.currentTask.name;
            }
        } else {
            this.taskStartedMS = jMillis;
            Task taskRemove = this.tasks.remove(0);
            this.currentTask = taskRemove;
            this.completedTasks.add(taskRemove);
            TheoTown.analytics.writeToLog("loading " + this.currentTask.name);
            this.watchdog.alive(this.currentTask.name);
            this.pg.set(0, 0);
            Task task2 = this.currentTask;
            if (task2.async) {
                str = task2.name;
                this.taskFuture = this.executor.submit(new Callable() { // from class: info.flowersoft.theotown.stages.LoadingStage$$ExternalSyntheticLambda0
                    @Override // java.util.concurrent.Callable
                    public final Object call() {
                        return LoadingStage.$r8$lambda$TkRXk68rQRXmHN_AuGzY4s5_aDc(this.f$0);
                    }
                });
            } else {
                if (!this.tasks.isEmpty()) {
                    str = this.tasks.get(0).name;
                } else {
                    str = this.currentTask.name;
                }
                this.currentTask.runnable.run();
                Gdx.app.debug("LoadingStage", "Task " + str + " took " + (jMillis - this.taskStartedMS));
                this.currentTask = null;
            }
        }
        synchronized (this.synchronizedTasks) {
            try {
                futureTaskRemove = this.synchronizedTasks.isEmpty() ? null : this.synchronizedTasks.remove(0);
            } finally {
            }
        }
        if (futureTaskRemove != null) {
            try {
                futureTaskRemove.run();
            } catch (Exception e3) {
                e3.printStackTrace();
            }
        }
        this.context.beginFrame();
        String str2 = "";
        int i2 = this.progressTotal;
        float fClamp = UnityAdsConstants.SafeGuards.InitRequestRetryPolicy.MIN_JITTER_PCT;
        if (i2 > 0) {
            str2 = this.progressDone + "/" + this.progressTotal;
            fClamp = MathUtils.clamp(this.progressDone / this.progressTotal, UnityAdsConstants.SafeGuards.InitRequestRetryPolicy.MIN_JITTER_PCT, 1.0f);
        }
        this.startScreenDrawer.drawBackground();
        this.startScreenDrawer.drawLogo();
        this.startScreenDrawer.drawBar((this.completedTasks.size() + fClamp) / (this.tasks.size() + this.completedTasks.size()));
        this.startScreenDrawer.drawText(str + "... " + str2);
        this.context.endFrame();
    }

    public static /* synthetic */ Object $r8$lambda$TkRXk68rQRXmHN_AuGzY4s5_aDc(LoadingStage loadingStage) {
        loadingStage.currentTask.runnable.run();
        return null;
    }

    public String toString() {
        return "LoadingStage";
    }

    public static class Task {
        public boolean async;
        public String name;
        public Runnable runnable;

        public Task(String str, Runnable runnable, boolean z) {
            this.name = str;
            this.runnable = runnable;
            this.async = z;
        }
    }
}
