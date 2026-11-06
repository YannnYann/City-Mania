package info.flowersoft.theotown;

import com.badlogic.gdx.Application;
import com.badlogic.gdx.ApplicationListener;
import com.badlogic.gdx.Files;
import com.badlogic.gdx.Gdx;
import com.badlogic.gdx.Input;
import com.badlogic.gdx.InputMultiplexer;
import com.badlogic.gdx.InputProcessor;
import com.badlogic.gdx.files.FileHandle;
import com.badlogic.gdx.utils.Collections;
import com.badlogic.gdx.utils.TimeUtils;
import com.ironsource.mediationsdk.logger.IronSourceError;
import com.unity3d.services.UnityAdsConstants;
import info.flowersoft.theotown.backend.Backend;
import info.flowersoft.theotown.city.City;
import info.flowersoft.theotown.city.CityBackgroundTexture;
import info.flowersoft.theotown.city.Zones;
import info.flowersoft.theotown.city.objects.BuildingIcons;
import info.flowersoft.theotown.city.objects.Ground;
import info.flowersoft.theotown.city.objects.Road;
import info.flowersoft.theotown.cityloader.CityKeeper;
import info.flowersoft.theotown.creation.CityCreator;
import info.flowersoft.theotown.crossplatform.TheoTown;
import info.flowersoft.theotown.draftloader.Generator;
import info.flowersoft.theotown.draftloader.PluginHelper;
import info.flowersoft.theotown.drawing.Drawing;
import info.flowersoft.theotown.drawing.FontFactory;
import info.flowersoft.theotown.mechanics.GameHandler;
import info.flowersoft.theotown.resources.Drafts;
import info.flowersoft.theotown.resources.ExperimentManager;
import info.flowersoft.theotown.resources.Features;
import info.flowersoft.theotown.resources.FreeModeManager;
import info.flowersoft.theotown.resources.GlobalTransitionVariables;
import info.flowersoft.theotown.resources.ManagedCache;
import info.flowersoft.theotown.resources.MusicBox;
import info.flowersoft.theotown.resources.NewContentManager;
import info.flowersoft.theotown.resources.Resources;
import info.flowersoft.theotown.resources.Settings;
import info.flowersoft.theotown.resources.ShaderRepository;
import info.flowersoft.theotown.resources.SoundPlayer;
import info.flowersoft.theotown.resources.StaticFiles;
import info.flowersoft.theotown.resources.TaskManager;
import info.flowersoft.theotown.resources.TopicManager;
import info.flowersoft.theotown.resources.WinterManager;
import info.flowersoft.theotown.resources.WordFilter;
import info.flowersoft.theotown.scripting.ScriptingEnvironment;
import info.flowersoft.theotown.stages.BaseStage;
import info.flowersoft.theotown.stages.ReuseContextStage;
import info.flowersoft.theotown.stages.WaitingStage;
import info.flowersoft.theotown.stages.commandhandler.LuaHandler;
import info.flowersoft.theotown.store.ManagedPluginsController;
import info.flowersoft.theotown.store.PluginUnloader;
import info.flowersoft.theotown.tutorial.Tutorial;
import info.flowersoft.theotown.ui.CursorManager;
import info.flowersoft.theotown.ui.CursorType;
import info.flowersoft.theotown.ui.SuccessOverlay;
import info.flowersoft.theotown.util.AssetBasedTranslationManager;
import info.flowersoft.theotown.util.CityGenerator;
import info.flowersoft.theotown.util.Hex;
import info.flowersoft.theotown.util.ProgressProvider;
import info.flowersoft.theotown.util.ProgressVariable;
import info.flowersoft.theotown.util.ThemeManager;
import io.blueflower.stapel2d.drawing.Engine;
import io.blueflower.stapel2d.drawing.Image;
import io.blueflower.stapel2d.gamestack.GameStack;
import io.blueflower.stapel2d.gamestack.Stage;
import io.blueflower.stapel2d.gamestack.Stapel2DGameContext;
import io.blueflower.stapel2d.gui.Skin;
import io.blueflower.stapel2d.util.ValueProperty;
import java.io.UnsupportedEncodingException;
import java.nio.charset.Charset;
import java.security.MessageDigest;
import java.security.NoSuchAlgorithmException;
import java.util.Arrays;
import kotlin.Unit;
import kotlin.concurrent.ThreadsKt;
import kotlin.jvm.functions.Function0;
import kotlin.jvm.internal.DefaultConstructorMarker;
import kotlin.jvm.internal.Intrinsics;

/* JADX INFO: compiled from: TheoTownX.kt */
/* JADX INFO: loaded from: classes4.dex */
public class TheoTownX implements ApplicationListener {
    public static final Companion Companion = new Companion(null);
    public static Stapel2DGameContext context;
    public static GameStack stack;
    public float[] cutoutTopRightBottomLeft;
    public final String startStage;

    /* JADX WARN: Multi-variable type inference failed */
    public TheoTownX() {
        this(null, 1, 0 == true ? 1 : 0);
    }

    public TheoTownX(String str) {
        this.startStage = str;
    }

    public /* synthetic */ TheoTownX(String str, int i, DefaultConstructorMarker defaultConstructorMarker) {
        this((i & 1) != 0 ? null : str);
    }

    /* JADX INFO: compiled from: TheoTownX.kt */
    public static final class Companion {
        public /* synthetic */ Companion(DefaultConstructorMarker defaultConstructorMarker) {
            this();
        }

        public Companion() {
        }
    }

    public final void restart() throws Throwable {
        dispose();
        create();
        resize(Gdx.graphics.getWidth(), Gdx.graphics.getHeight());
    }

    @Override // com.badlogic.gdx.ApplicationListener
    public void create() throws Throwable {
        Collections.allocateIterators = true;
        GameStack gameStack = stack;
        if (gameStack == null || gameStack.isEmpty()) {
            GameStack gameStack2 = stack;
            if (gameStack2 != null && gameStack2.isEmpty()) {
                cleanUp();
            }
            init();
            buildContext();
            stack = buildGameStack();
        } else {
            GameStack gameStack3 = stack;
            Intrinsics.checkNotNull(gameStack3);
            reuseGameStack(gameStack3);
        }
        CursorManager.INSTANCE.setCursor(CursorType.Wait, false);
        TheoTown.analytics.writeToLog("create() finish");
        Gdx.app.setLogLevel(3);
        setupInput();
        TheoTown.analytics.writeToLog("create() end");
        GameStack gameStack4 = stack;
        if (gameStack4 != null) {
            gameStack4.onResumeApp();
        }
    }

    public final void reuseGameStack(GameStack gameStack) {
        Engine engine;
        TheoTown.analytics.writeToLog("create() reuse");
        Settings.startCounter++;
        Settings.save();
        Stapel2DGameContext stapel2DGameContext = context;
        if (stapel2DGameContext != null && (engine = stapel2DGameContext.getEngine()) != null) {
            engine.setUp();
            engine.resize(Gdx.graphics.getBackBufferWidth(), Gdx.graphics.getBackBufferHeight());
            engine.setVirtualSize(engine.getWidth(), engine.getHeight());
            engine.reset();
            engine.setShader(engine.getDefaultShader());
        }
        TheoTown.runtimeFeatures.showToast("Reuse previous state");
        gameStack.rebind();
        if (Resources.skin != null) {
            Stapel2DGameContext stapel2DGameContext2 = context;
            Intrinsics.checkNotNull(stapel2DGameContext2);
            gameStack.push(new ReuseContextStage(stapel2DGameContext2));
        }
    }

    public final Input setupInput() {
        Input input = Gdx.input;
        if (input == null) {
            return null;
        }
        input.setCatchKey(4, true);
        input.setCatchKey(82, true);
        Stapel2DGameContext stapel2DGameContext = context;
        Intrinsics.checkNotNull(stapel2DGameContext);
        InputProcessor inputProcessor = stapel2DGameContext.getTouch().processor;
        Stapel2DGameContext stapel2DGameContext2 = context;
        Intrinsics.checkNotNull(stapel2DGameContext2);
        input.setInputProcessor(new InputMultiplexer(inputProcessor, stapel2DGameContext2.getKey().processor));
        return input;
    }

    /* JADX WARN: Removed duplicated region for block: B:73:0x02df  */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct code enable 'Show inconsistent code' option in preferences
    */
    public final void init() throws java.security.NoSuchAlgorithmException, java.io.IOException, info.flowersoft.theotown.util.json.JSONException, java.security.KeyStoreException, java.security.cert.CertificateException, java.security.KeyManagementException {
        /*
            Method dump skipped, instruction units count: 880
            To view this dump change 'Code comments level' option to 'DEBUG'
        */
        throw new UnsupportedOperationException("Method not decompiled: info.flowersoft.theotown.TheoTownX.init():void");
    }

    public final void buildContext() throws Throwable {
        Engine engine;
        AssetBasedTranslationManager.FileResolver fileResolver = new AssetBasedTranslationManager.FileResolver() { // from class: info.flowersoft.theotown.TheoTownX$$ExternalSyntheticLambda4
            @Override // info.flowersoft.theotown.util.AssetBasedTranslationManager.FileResolver
            public final FileHandle resolve(String str) {
                return TheoTownX.buildContext$lambda$0(str);
            }
        };
        context = new Stapel2DGameContext(new AssetBasedTranslationManager(fileResolver.resolve("localization.json"), fileResolver));
        GameHandler.getInstance().init(context);
        ManagedPluginsController.getInstance().init(Gdx.app);
        Stapel2DGameContext stapel2DGameContext = context;
        if (stapel2DGameContext == null || (engine = stapel2DGameContext.getEngine()) == null) {
            return;
        }
        engine.setUp();
    }

    public static final FileHandle buildContext$lambda$0(String str) {
        String strBin2hex;
        byte[] bArrDigest;
        Files files = Gdx.files;
        Intrinsics.checkNotNull(str);
        String str2 = str + ":ae6bb9dcccb3ee65a2a5e1964c8ca37b";
        try {
            Charset charsetForName = Charset.forName("UTF-8");
            Intrinsics.checkNotNullExpressionValue(charsetForName, "forName(...)");
            byte[] bytes = str2.getBytes(charsetForName);
            Intrinsics.checkNotNullExpressionValue(bytes, "getBytes(...)");
            try {
                bArrDigest = MessageDigest.getInstance("md5").digest(bytes);
                Intrinsics.checkNotNullExpressionValue(bArrDigest, "digest(...)");
            } catch (NoSuchAlgorithmException e) {
                e.printStackTrace();
                bArrDigest = new byte[0];
            }
            strBin2hex = Hex.bin2hex(bArrDigest);
            Intrinsics.checkNotNullExpressionValue(strBin2hex, "bin2hex(...)");
        } catch (UnsupportedEncodingException e2) {
            e2.printStackTrace();
            strBin2hex = "";
        }
        return files.internal(strBin2hex);
    }

    /* JADX WARN: Can't fix incorrect switch cases order, some code will duplicate */
    /* JADX WARN: Failed to restore switch over string. Please report as a decompilation issue */
    /* JADX WARN: Removed duplicated region for block: B:55:0x013c  */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct code enable 'Show inconsistent code' option in preferences
    */
    public final io.blueflower.stapel2d.gamestack.GameStack buildGameStack() {
        /*
            Method dump skipped, instruction units count: 438
            To view this dump change 'Code comments level' option to 'DEBUG'
        */
        throw new UnsupportedOperationException("Method not decompiled: info.flowersoft.theotown.TheoTownX.buildGameStack():io.blueflower.stapel2d.gamestack.GameStack");
    }

    @Override // com.badlogic.gdx.ApplicationListener
    public void render() {
        GameStack gameStack;
        Engine engine;
        Stapel2DGameContext stapel2DGameContext = context;
        if (stapel2DGameContext != null && stapel2DGameContext.isRequestRestart()) {
            Stapel2DGameContext stapel2DGameContext2 = context;
            if (stapel2DGameContext2 != null && (engine = stapel2DGameContext2.getEngine()) != null) {
                engine.clear(0, 0, 0);
                Skin skin = Resources.skin;
                if ((skin != null ? skin.fontBig : null) != null) {
                    engine.drawText(skin.fontBig, "Restarting...", UnityAdsConstants.SafeGuards.InitRequestRetryPolicy.MIN_JITTER_PCT, UnityAdsConstants.SafeGuards.InitRequestRetryPolicy.MIN_JITTER_PCT, engine.getVirtualWidth(), engine.getVirtualHeight(), 0.5f, 0.5f);
                }
            }
            Gdx.app.postRunnable(new Runnable() { // from class: info.flowersoft.theotown.TheoTownX$$ExternalSyntheticLambda3
                @Override // java.lang.Runnable
                public final void run() throws Throwable {
                    this.f$0.restart();
                }
            });
            return;
        }
        GameStack gameStack2 = stack;
        if (gameStack2 != null && gameStack2.isEmpty()) {
            TheoTown.analytics.writeToLog("close app");
            TheoTown.runtimeFeatures.closeApp();
            return;
        }
        float[] insetsTRBL = TheoTown.runtimeFeatures.getInsetsTRBL();
        if (insetsTRBL != null && !Arrays.equals(insetsTRBL, this.cutoutTopRightBottomLeft)) {
            float[] fArrCopyOf = Arrays.copyOf(insetsTRBL, insetsTRBL.length);
            Intrinsics.checkNotNullExpressionValue(fArrCopyOf, "copyOf(...)");
            this.cutoutTopRightBottomLeft = fArrCopyOf;
            GameStack gameStack3 = stack;
            if (gameStack3 != null) {
                gameStack3.refreshCurrentStage();
            }
        }
        Stapel2DGameContext stapel2DGameContext3 = context;
        if (stapel2DGameContext3 != null) {
            stapel2DGameContext3.getTouch().update();
            stapel2DGameContext3.getKey().update();
        }
        if (Gdx.graphics.getBackBufferWidth() != 0 && Gdx.graphics.getBackBufferHeight() != 0 && (gameStack = stack) != null) {
            gameStack.update();
        }
        TheoTown.gamesService.runCallbacks();
    }

    @Override // com.badlogic.gdx.ApplicationListener
    public void dispose() {
        GameStack gameStack = stack;
        if (gameStack == null) {
            return;
        }
        if (gameStack != null) {
            gameStack.popAll();
        }
        GameStack gameStack2 = stack;
        if (gameStack2 != null) {
            gameStack2.update();
        }
        cleanUp();
    }

    public final void cleanUp() {
        ManagedPluginsController.getInstance().dispose();
        GameHandler.getInstance().dispose();
        Backend.getInstance().dispose();
        GlobalTransitionVariables.dispose();
        PluginHelper.dispose();
        PluginUnloader.getInstance().reuse();
        Drafts.dispose();
        Features.dispose();
        ScriptingEnvironment.getInstance().dispose();
        ExperimentManager.getInstance().dispose();
        NewContentManager.dispose();
        TaskManager.dispose();
        Generator.dispose();
        Drawing.dispose();
        Zones.dispose();
        Ground.resetDefaultWater();
        Road.deInit();
        Tutorial.dispose();
        BaseStage.dispose();
        StaticFiles.dispose();
        SoundPlayer.getInstance().dispose();
        MusicBox.getInstance().dispose();
        ShaderRepository.getInstance().dispose();
        FreeModeManager.dispose();
        TopicManager.dispose();
        WinterManager.dispose();
        WordFilter.dispose();
        ManagedCache.INSTANCE.dispose();
        BuildingIcons.INSTANCE.dispose();
        LuaHandler.reset();
        CityKeeper.reset();
        CityBackgroundTexture.INSTANCE.dispose();
        ThemeManager.INSTANCE.reset();
        SuccessOverlay.dispose();
        TheoTown.socialManager.dispose();
        TheoTown.gamesService.dispose();
        Stapel2DGameContext stapel2DGameContext = context;
        if (stapel2DGameContext != null) {
            FontFactory fontFactory = Resources.fontFactory;
            if (fontFactory != null) {
                fontFactory.dispose();
            }
            Resources.fontFactory = null;
            Image image = Resources.IMAGE_WORLD;
            if (image != null) {
                int iCountTextureIds = image.countTextureIds();
                for (int i = 0; i < iCountTextureIds; i++) {
                    Engine engine = stapel2DGameContext.getEngine();
                    if (engine != null) {
                        engine.releaseTexture(Resources.IMAGE_WORLD.getTextureOfId(i));
                    }
                }
            }
            Engine engine2 = stapel2DGameContext.getEngine();
            if (engine2 != null) {
                engine2.releaseShader(stapel2DGameContext.getEngine().getDefaultShader());
            }
            if (Resources.SHADER_FONT != null) {
                Engine engine3 = stapel2DGameContext.getEngine();
                if (engine3 != null) {
                    engine3.releaseShader(Resources.SHADER_FONT);
                }
                Resources.SHADER_FONT = null;
            }
            if (Resources.SHADER_BLITTING_DEFAULT != null) {
                Engine engine4 = stapel2DGameContext.getEngine();
                if (engine4 != null) {
                    engine4.releaseShader(Resources.SHADER_BLITTING_DEFAULT);
                }
                Resources.SHADER_BLITTING_DEFAULT = null;
            }
            Resources.IMAGE_WORLD = null;
            Resources.TEXTURE_WORLD = null;
            Resources.skin = null;
            Resources.KEYS = null;
        }
        this.cutoutTopRightBottomLeft = null;
        stack = null;
        context = null;
    }

    @Override // com.badlogic.gdx.ApplicationListener
    public void resize(int i, int i2) {
        Stapel2DGameContext stapel2DGameContext = context;
        if (stapel2DGameContext == null) {
            return;
        }
        int backBufferWidth = Gdx.graphics.getBackBufferWidth();
        int backBufferHeight = Gdx.graphics.getBackBufferHeight();
        if (backBufferWidth == 0 || backBufferHeight == 0) {
            return;
        }
        if (!Settings.fullscreen) {
            Settings.windowWidth = i;
            Settings.windowHeight = i2;
        }
        stapel2DGameContext.getKey().flush();
        stapel2DGameContext.getTouch().flush();
        if (stapel2DGameContext.getWidth() == backBufferWidth && stapel2DGameContext.getHeight() == backBufferHeight) {
            return;
        }
        stapel2DGameContext.onSizeChange(backBufferWidth, backBufferHeight);
        float[] insetsTRBL = TheoTown.runtimeFeatures.getInsetsTRBL();
        Intrinsics.checkNotNullExpressionValue(insetsTRBL, "getInsetsTRBL(...)");
        float[] fArrCopyOf = Arrays.copyOf(insetsTRBL, insetsTRBL.length);
        Intrinsics.checkNotNullExpressionValue(fArrCopyOf, "copyOf(...)");
        this.cutoutTopRightBottomLeft = fArrCopyOf;
        GameStack gameStack = stack;
        if (gameStack != null) {
            gameStack.refreshCurrentStage();
        }
    }

    @Override // com.badlogic.gdx.ApplicationListener
    public void pause() {
        if (Gdx.app.getType() == Application.ApplicationType.Desktop) {
            return;
        }
        GameStack gameStack = stack;
        if (gameStack != null) {
            gameStack.onPauseApp();
        }
        Backend backend = Backend.getInstance();
        if (backend != null) {
            backend.onPause();
        }
    }

    @Override // com.badlogic.gdx.ApplicationListener
    public void resume() {
        if (Gdx.app.getType() == Application.ApplicationType.Desktop) {
            return;
        }
        if (Settings.fullyLoaded) {
            Settings.save();
            Settings.startCounter++;
        }
        GameStack gameStack = stack;
        if (gameStack != null) {
            gameStack.onResumeApp();
        }
        Backend backend = Backend.getInstance();
        if (backend != null) {
            backend.onResume();
        }
    }

    public final WaitingStage testWaitingStage() {
        return new WaitingStage(context, Resources.FRAME_AIRPORT_ZONE, "Loading something", ThreadsKt.thread$default(false, false, null, null, 0, new Function0() { // from class: info.flowersoft.theotown.TheoTownX$$ExternalSyntheticLambda5
            @Override // kotlin.jvm.functions.Function0
            public final Object invoke() {
                return TheoTownX.testWaitingStage$lambda$0();
            }
        }, 30, null), null, new ProgressProvider() { // from class: info.flowersoft.theotown.TheoTownX$$ExternalSyntheticLambda6
            @Override // info.flowersoft.theotown.util.ProgressProvider
            public final float getProgress() {
                return TheoTownX.testWaitingStage$lambda$1();
            }
        }, null);
    }

    public static final Unit testWaitingStage$lambda$0() {
        try {
            Thread.sleep(200000L);
        } catch (Exception e) {
            e.printStackTrace();
        }
        return Unit.INSTANCE;
    }

    public static final float testWaitingStage$lambda$1() {
        return (TimeUtils.millis() % ((long) IronSourceError.ERROR_CAPPING_VALIDATION_FAILED)) / 3000.0f;
    }

    public final WaitingStage testExceptionStage() {
        return new WaitingStage(context, Resources.FRAME_AIRPORT_ZONE, "Loading something", ThreadsKt.thread$default(false, false, null, null, 0, new Function0() { // from class: info.flowersoft.theotown.TheoTownX$$ExternalSyntheticLambda0
            @Override // kotlin.jvm.functions.Function0
            public final Object invoke() {
                return TheoTownX.testExceptionStage$lambda$0();
            }
        }, 30, null), new Runnable() { // from class: info.flowersoft.theotown.TheoTownX$$ExternalSyntheticLambda1
            @Override // java.lang.Runnable
            public final void run() {
                TheoTownX.testExceptionStage$lambda$1();
            }
        }, new ProgressProvider() { // from class: info.flowersoft.theotown.TheoTownX$$ExternalSyntheticLambda2
            @Override // info.flowersoft.theotown.util.ProgressProvider
            public final float getProgress() {
                return TheoTownX.testExceptionStage$lambda$2();
            }
        }, null);
    }

    public static final Unit testExceptionStage$lambda$0() {
        try {
            Thread.sleep(100L);
        } catch (Exception e) {
            e.printStackTrace();
        }
        return Unit.INSTANCE;
    }

    public static final void testExceptionStage$lambda$1() {
        throw new IllegalStateException("test");
    }

    public static final float testExceptionStage$lambda$2() {
        return (TimeUtils.millis() % ((long) IronSourceError.ERROR_CAPPING_VALIDATION_FAILED)) / 3000.0f;
    }

    public final void testTerrainGen(GameStack gameStack) {
        gameStack.push(new Stage() { // from class: info.flowersoft.theotown.TheoTownX.testTerrainGen.1
            @Override // io.blueflower.stapel2d.gamestack.Stage
            public void leave() {
            }

            @Override // io.blueflower.stapel2d.gamestack.Stage
            public void prepare() {
            }

            @Override // io.blueflower.stapel2d.gamestack.Stage
            public void update() {
            }

            @Override // io.blueflower.stapel2d.gamestack.Stage
            public void enter() {
                CityGenerator cityGenerator = new CityGenerator(TheoTownX.context, false);
                cityGenerator.setSeed("easterisland#91040");
                ProgressVariable progressVariable = new ProgressVariable(UnityAdsConstants.SafeGuards.InitRequestRetryPolicy.MIN_JITTER_PCT);
                ValueProperty valueProperty = new ValueProperty("");
                CityCreator.CityData cityDataGenerate = cityGenerator.generate(progressVariable, valueProperty);
                for (int i = 0; i < 1000; i++) {
                    City city = cityGenerator.generate(progressVariable, valueProperty).city;
                    City city2 = cityDataGenerate.city;
                    Intrinsics.checkNotNullExpressionValue(city2, "city");
                    Intrinsics.checkNotNull(city);
                    if (enter$heightDiff(cityDataGenerate, city2, city) != 0) {
                        throw new IllegalStateException("Check failed.");
                    }
                    if (!enter$checkLevels(city)) {
                        throw new IllegalStateException("Check failed.");
                    }
                }
                TheoTown.runtimeFeatures.closeApp();
            }

            public static final int enter$heightDiff(CityCreator.CityData cityData, City city, City city2) {
                int height = cityData.city.getHeight();
                int iMax = 0;
                for (int i = 0; i < height; i++) {
                    int width = cityData.city.getWidth();
                    for (int i2 = 0; i2 < width; i2++) {
                        iMax = Math.max(iMax, Math.abs(city.getTiles().getBaseTerrainHeight(i2, i) - city2.getTiles().getBaseTerrainHeight(i2, i)));
                    }
                }
                return iMax;
            }

            public static final boolean enter$checkLevels(City city) {
                int height = city.getHeight() - 1;
                for (int i = 0; i < height; i++) {
                    int width = city.getWidth() - 1;
                    int i2 = 0;
                    while (i2 < width) {
                        int baseTerrainHeight = city.getTiles().getBaseTerrainHeight(i2, i);
                        int i3 = i2 + 1;
                        int baseTerrainHeight2 = city.getTiles().getBaseTerrainHeight(i3, i);
                        int baseTerrainHeight3 = city.getTiles().getBaseTerrainHeight(i2, i + 1);
                        if (Math.abs(baseTerrainHeight2 - baseTerrainHeight) >= 2 || Math.abs(baseTerrainHeight3 - baseTerrainHeight) >= 2) {
                            return false;
                        }
                        i2 = i3;
                    }
                }
                return true;
            }
        });
    }
}
