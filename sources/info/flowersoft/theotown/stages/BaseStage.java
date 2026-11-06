package info.flowersoft.theotown.stages;

import com.badlogic.gdx.Gdx;
import com.badlogic.gdx.utils.Base64Coder;
import com.badlogic.gdx.utils.TimeUtils;
import com.unity3d.services.UnityAdsConstants;
import info.flowersoft.theotown.city.City;
import info.flowersoft.theotown.city.GameMode;
import info.flowersoft.theotown.city.SmoothCityZoomDrawer;
import info.flowersoft.theotown.components.DefaultWeather;
import info.flowersoft.theotown.creation.CityCreator;
import info.flowersoft.theotown.crossplatform.TheoTown;
import info.flowersoft.theotown.drawing.BlurScreen;
import info.flowersoft.theotown.input.KeyAction;
import info.flowersoft.theotown.resources.ConfigManager;
import info.flowersoft.theotown.resources.ResolutionManager;
import info.flowersoft.theotown.resources.Resources;
import info.flowersoft.theotown.resources.Settings;
import info.flowersoft.theotown.resources.ShaderConfig;
import info.flowersoft.theotown.resources.ShaderRepository;
import info.flowersoft.theotown.resources.SoundPlayer;
import info.flowersoft.theotown.resources.SoundType;
import info.flowersoft.theotown.resources.WinterManager;
import info.flowersoft.theotown.scripting.LuaLibrary;
import info.flowersoft.theotown.scripting.MethodCluster;
import info.flowersoft.theotown.scripting.ScriptingEnvironment;
import info.flowersoft.theotown.scripting.libraries.GUILibrary;
import info.flowersoft.theotown.scripting.libraries.RuntimeLibrary;
import info.flowersoft.theotown.tutorial.Tutorial;
import info.flowersoft.theotown.ui.CursorManager;
import info.flowersoft.theotown.ui.CursorType;
import info.flowersoft.theotown.ui.Dialog;
import info.flowersoft.theotown.ui.SuccessOverlay;
import info.flowersoft.theotown.util.ProgressVariable;
import info.flowersoft.theotown.util.ScreenRecorder;
import info.flowersoft.theotown.util.ThemeManager;
import info.flowersoft.theotown.util.TimeLog;
import io.blueflower.stapel2d.drawing.Colors;
import io.blueflower.stapel2d.drawing.Engine;
import io.blueflower.stapel2d.drawing.Font;
import io.blueflower.stapel2d.drawing.Shader;
import io.blueflower.stapel2d.gamestack.Stage;
import io.blueflower.stapel2d.gamestack.Stapel2DGameContext;
import io.blueflower.stapel2d.gamestack.Translator;
import io.blueflower.stapel2d.gui.Gadget;
import io.blueflower.stapel2d.gui.Master;
import io.blueflower.stapel2d.gui.Skin;
import io.blueflower.stapel2d.key.KeyMapper;
import io.blueflower.stapel2d.touch.TouchPoint;
import io.blueflower.stapel2d.util.ValueProperty;
import java.lang.reflect.Field;
import java.nio.charset.Charset;
import java.nio.charset.StandardCharsets;
import java.util.ArrayList;
import java.util.Iterator;
import java.util.List;
import java.util.Objects;
import vm2.LuaValue;

/* JADX INFO: loaded from: classes4.dex */
public abstract class BaseStage extends Stage {
    public static City staticBackgroundCity;
    public BlurScreen blurScreen;
    public Stapel2DGameContext context;
    public int delimitedMS;
    public Engine engine;
    public double enteredTime;
    public Master gui;
    public long lastRenderMS;
    public int lastRenderTime;
    public Dialog openDialog;
    public MethodCluster overlayMethods;
    public City ownBackgroundCity;
    public DefaultWeather ownWeather;
    public int stillInputActiveCount;
    public Field tampered;
    public Translator translator;
    public SmoothCityZoomDrawer cityZoomDrawer = null;
    public CursorType preferredCursor = null;
    public int performanceLevel = 1;
    public boolean useBackground = true;
    public final List<LuaLibrary> luaLibraries = new ArrayList();
    public final List<Runnable> tasks = new ArrayList();

    public boolean allowTracking() {
        return true;
    }

    public abstract void onUpdate();

    public void onUpdateWhileDialogIsOpen() {
    }

    @Override // io.blueflower.stapel2d.gamestack.Stage
    public void prepare() {
    }

    public boolean shouldRenderFullspeed() {
        return false;
    }

    public BaseStage(Stapel2DGameContext stapel2DGameContext) {
        this.context = stapel2DGameContext;
        this.translator = stapel2DGameContext.getTranslator();
        try {
            byte[] bArrDecode = Base64Coder.decode("VkVSRMOEQ0hUSUc=");
            Charset charset = StandardCharsets.UTF_8;
            this.tampered = getClass().getClassLoader().loadClass(new String(Base64Coder.decode("aW5mby5mbG93ZXJzb2Z0LnRoZW90b3duLnJlc291cmNlcy5Db25zdGFudHM="), charset)).getDeclaredField(new String(bArrDecode, charset));
        } catch (Exception unused) {
            System.exit(1);
        }
    }

    public void setPreferredCursor(CursorType cursorType) {
        if (cursorType == null) {
            return;
        }
        this.preferredCursor = cursorType;
    }

    public void callOverlayMethods() {
        MethodCluster methodCluster = this.overlayMethods;
        if (methodCluster != null) {
            methodCluster.invoke();
        }
    }

    @Override // io.blueflower.stapel2d.gamestack.Stage
    public void enter() {
        CursorManager.INSTANCE.setCursor(CursorType.Normal, false);
        this.enteredTime = 0.0d;
        TheoTown.gamesService.visitStage(this);
        this.openDialog = null;
        trackScreen();
        this.engine = this.context.getEngine();
        prepareShader();
        prepareResolution();
        prepareGUI();
        ScreenRecorder.getInstance().setUp(this.engine);
        this.luaLibraries.add(new GUILibrary(this.gui, this.context));
        Iterator<LuaLibrary> it = this.luaLibraries.iterator();
        while (it.hasNext()) {
            ScriptingEnvironment.getInstance().loadLibrary(it.next());
        }
        ((RuntimeLibrary) ScriptingEnvironment.getInstance().getLibrary(RuntimeLibrary.class)).updateGui(this.gui);
        this.overlayMethods = ScriptingEnvironment.getInstance().getMethodClusterOrNull("overlay");
        addTask(new Runnable() { // from class: info.flowersoft.theotown.stages.BaseStage$$ExternalSyntheticLambda0
            @Override // java.lang.Runnable
            public final void run() {
                BaseStage.$r8$lambda$ZrtnGcuJSlZxuk2VnPMFBETBkZo(this.f$0);
            }
        });
    }

    public static /* synthetic */ void $r8$lambda$ZrtnGcuJSlZxuk2VnPMFBETBkZo(BaseStage baseStage) {
        baseStage.getClass();
        MethodCluster methodClusterOrNull = ScriptingEnvironment.getInstance().getMethodClusterOrNull("enterStage");
        if (methodClusterOrNull != null) {
            methodClusterOrNull.invoke((LuaValue) LuaValue.valueOf(baseStage.getName()));
        }
    }

    public final void prepareGUI() {
        ThemeManager.INSTANCE.update();
        Skin skin = Resources.skin;
        Engine engine = this.engine;
        skin.engine = engine;
        Master master = new Master(Resources.skin, ((100 - Settings.uiSize) * engine.getVirtualWidth()) / 100, ((100 - Settings.uiSize) * this.engine.getVirtualHeight()) / 100);
        this.gui = master;
        master.addClickListener(new Master.ClickListener() { // from class: info.flowersoft.theotown.stages.BaseStage.1
            @Override // io.blueflower.stapel2d.gui.Master.ClickListener
            public void onClick(Gadget gadget) {
                SoundPlayer.getInstance().play(Resources.SOUND_CLICK, SoundType.UI);
            }
        });
        float[] insetsTRBL = TheoTown.runtimeFeatures.getInsetsTRBL();
        if (insetsTRBL != null) {
            Master master2 = this.gui;
            master2.setPadding((int) (insetsTRBL[3] * master2.getWidthRatio()), (int) (insetsTRBL[0] * this.gui.getHeightRatio()), (int) (insetsTRBL[1] * this.gui.getWidthRatio()), (int) (insetsTRBL[2] * this.gui.getHeightRatio()));
        }
    }

    public final void prepareResolution() {
        ResolutionManager resolutionManager = new ResolutionManager(this.engine.getWidth(), this.engine.getHeight());
        int width = resolutionManager.getWidth(Settings.displayResolution);
        int height = resolutionManager.getHeight(Settings.displayResolution);
        this.engine.setVirtualSize(width, height);
        if (width <= 0 || height <= 0) {
            return;
        }
        Engine engine = this.engine;
        engine.resize(width * (engine.getWidth() / width), height * (this.engine.getHeight() / height));
    }

    public final void prepareShader() {
        if (Resources.SHADER_BLITTING_DEFAULT == null) {
            Resources.SHADER_BLITTING_DEFAULT = ShaderRepository.getInstance().getShader(Settings.shader, Settings.shaderId).build();
        }
        try {
            this.engine.loadShader(Resources.SHADER_BLITTING_DEFAULT);
        } catch (Exception e) {
            SuccessOverlay.getInstance().addToast(e.getMessage());
            TheoTown.analytics.logException(e);
            Settings.shader = 0;
            Settings.shaderId = null;
            Settings.save();
            Shader shaderBuild = ShaderRepository.getInstance().getShader(Settings.shader, Settings.shaderId).build();
            Resources.SHADER_BLITTING_DEFAULT = shaderBuild;
            this.engine.loadShader(shaderBuild);
        }
        if (!Resources.SHADER_BLITTING_DEFAULT.isUseable()) {
            Shader defaultShader = this.engine.getDefaultShader();
            Resources.SHADER_BLITTING_DEFAULT = defaultShader;
            this.engine.loadShader(defaultShader);
            RuntimeException runtimeException = new RuntimeException("Shader may not be compiled/linked!");
            TheoTown.analytics.logException(runtimeException);
            runtimeException.printStackTrace();
        }
        this.engine.setShader(Resources.SHADER_BLITTING_DEFAULT);
        Settings.shaderConfig.apply(this.engine.getShader());
        Settings.shaderConfig.apply(Resources.SHADER_FONT);
    }

    @Override // io.blueflower.stapel2d.gamestack.Stage
    public final void update() {
        int i;
        this.preferredCursor = null;
        synchronized (this.tasks) {
            int i2 = 0;
            for (int i3 = 0; i3 < this.tasks.size(); i3++) {
                try {
                    try {
                        i2++;
                        this.tasks.get(i3).run();
                    } catch (Throwable th) {
                        if (i2 != this.tasks.size()) {
                            while (i2 > 0) {
                                this.tasks.remove(0);
                                i2--;
                            }
                        } else {
                            this.tasks.clear();
                        }
                        throw th;
                    }
                } catch (Throwable th2) {
                    throw th2;
                }
            }
            if (i2 == this.tasks.size()) {
                this.tasks.clear();
            } else {
                while (i2 > 0) {
                    this.tasks.remove(0);
                    i2--;
                }
            }
        }
        this.engine.resetDrawCounter();
        this.engine.resetBatchCounter();
        runPostponedTasks();
        if (this.context.getKey().keyHit(141) && TheoTown.runtimeFeatures.supportsFullscreen()) {
            Settings.fullscreen = !Settings.fullscreen;
            TheoTown.runtimeFeatures.setFullscreen(Settings.fullscreen, Settings.fullscreenWidth, Settings.fullscreenHeight);
        }
        if (Settings.experimentalFeatures && keyHit(KeyAction.RESTART)) {
            this.context.requestRestart();
        }
        if (Settings.experimentalFeatures && keyHit(KeyAction.TOGGLE_DARK_MODE)) {
            Settings.theme = Settings.theme == 0 ? 1 : 0;
            Settings.themeId = null;
            getGameStack().refreshCurrentStage();
        }
        CursorType cursorTypeUpdateTouchInput = this.gui.updateTouchInput(this.context.getTouch().getTouchUpdate());
        this.gui.updateKeyInput(this.context.getKey());
        if (this.context.getKey().keyHit(111) || this.context.getKey().keyHit(4)) {
            onBack();
        }
        ScreenRecorder.getInstance().processFrame();
        this.engine.clear(Colors.BLACK);
        TimeLog.log(5);
        if (!isDialogOpen() || this.openDialog.needsBackground()) {
            if (this.useBackground && isDialogOpen() && !isBackgroundFinished()) {
                this.openDialog.setVisible(false, false);
                this.openDialog.setVisible(true, false);
            }
            this.useBackground = false;
            onUpdate();
            this.engine.setType(1);
            drawGui();
        } else {
            onUpdateWhileDialogIsOpen();
            this.engine.setType(1);
            drawGui();
        }
        this.engine.reset();
        SuccessOverlay.getInstance().draw(this.engine);
        if (Settings.showTouchPoints) {
            drawTouchPoints();
        }
        callOverlayMethods();
        indicateCompromised();
        indicateVersion();
        indicateDebugBuild();
        indicateRecoveryMode();
        ScreenRecorder.getInstance().takeFrame();
        ConfigManager.getInstance().fetchOnline();
        TimeLog.log(2);
        try {
            this.context.endFrame();
        } catch (RuntimeException e) {
            TheoTown.analytics.logException("EndFrame", e);
        }
        TimeLog.log(3);
        int iMillis = (int) (TimeUtils.millis() - this.lastRenderMS);
        this.lastRenderTime = iMillis;
        CursorManager cursorManager = CursorManager.INSTANCE;
        if (cursorTypeUpdateTouchInput == null && (cursorTypeUpdateTouchInput = this.preferredCursor) == null) {
            cursorTypeUpdateTouchInput = CursorType.Normal;
        }
        cursorManager.setCursor(cursorTypeUpdateTouchInput, Gdx.input.isTouched());
        Settings.screenTaps += this.context.getTouch().getTouchUpdate().getAddedTouchPoint() != null ? 1 : 0;
        isInputActive();
        int targetTotalFrameTime = getTargetTotalFrameTime();
        if (iMillis < 0) {
            iMillis = targetTotalFrameTime;
        }
        int i4 = Settings.targetFps;
        if (i4 == 0) {
            this.delimitedMS = Math.max(0, targetTotalFrameTime - iMillis);
            while (iMillis < targetTotalFrameTime - 4) {
                try {
                    Thread.sleep(Math.min((targetTotalFrameTime - iMillis) - 4, 8));
                } catch (InterruptedException e2) {
                    Gdx.app.error("FPS DELIMITER", e2.toString());
                }
                iMillis = (int) (TimeUtils.millis() - this.lastRenderMS);
                isInputActive();
                targetTotalFrameTime = getTargetTotalFrameTime();
                if (iMillis < 0) {
                    iMillis = targetTotalFrameTime;
                }
            }
            int iMax = Math.max(this.stillInputActiveCount - 1, 0);
            this.stillInputActiveCount = iMax;
            if (iMax == 0 && (i = this.performanceLevel) < 4) {
                this.performanceLevel = Math.min(i + 1, 4);
                this.stillInputActiveCount = 30;
            }
        } else {
            int i5 = (1000 / i4) - iMillis;
            this.delimitedMS = i5;
            if (i5 > 0) {
                try {
                    Thread.sleep(i5);
                } catch (InterruptedException e3) {
                    Gdx.app.error("FPS DELIMITER", e3.toString());
                }
            }
        }
        this.lastRenderMS = TimeUtils.millis();
        TimeLog.log(4);
        this.context.beginFrame();
        this.enteredTime += (double) this.context.getDeltaTime();
    }

    public void runPostponedTasks() {
        ScriptingEnvironment.getInstance().runPostponedTasks();
    }

    public final void drawTouchPoints() {
        this.engine.setColor(Colors.WHITE);
        this.engine.setTransparency(255);
        this.engine.setScale(2.0f, 2.0f);
        for (int i = 0; i < this.context.getTouch().getActivePoints().size(); i++) {
            TouchPoint touchPoint = this.context.getTouch().getActivePoints().get(i);
            this.engine.drawImage(Resources.IMAGE_WORLD, touchPoint.getX() * this.engine.getWidthRatio(), touchPoint.getY() * this.engine.getHeightRatio(), Resources.FRAME_TOUCH_POINT);
        }
        this.engine.setScale(1.0f, 1.0f);
    }

    public final int getTargetTotalFrameTime() {
        if (Tutorial.getInstance().isActive()) {
            return 2;
        }
        if (Settings.energySavingPlus) {
            return this.performanceLevel * 32;
        }
        if (Settings.energySaving) {
            return this.performanceLevel * 16;
        }
        return 2;
    }

    public void onBack() {
        if (!isDialogOpen()) {
            getGameStack().pop();
        } else {
            this.openDialog.cancel();
        }
    }

    public final void indicateCompromised() {
        try {
            int iIntValue = ((Integer) this.tampered.get(null)).intValue();
            if (iIntValue != 0) {
                String str = Base64Coder.encodeString("gfsT0h0is v0er0sio0n ", true) + ";" + Base64Coder.encodeString("69w0ha0s b0e0e0n ha0c0k0ed!", true);
                StringBuilder sb = new StringBuilder();
                byte[] bArrDecode = Base64Coder.decode(str.substring(0, str.indexOf(59)));
                Charset charset = StandardCharsets.UTF_8;
                sb.append(new String(bArrDecode, charset).substring(3).replace("0", ""));
                sb.append(new String(Base64Coder.decode(str.substring(str.indexOf(59) + 1)), charset).substring(3).replace("0", ""));
                sb.append(iIntValue);
                String string = sb.toString();
                this.engine.setColor(Colors.BLACK);
                this.engine.drawText(Resources.skin.fontDefault, string, 1.0f, 1.0f);
                this.engine.setColor(Colors.RED);
                this.engine.drawText(Resources.skin.fontDefault, string, UnityAdsConstants.SafeGuards.InitRequestRetryPolicy.MIN_JITTER_PCT, UnityAdsConstants.SafeGuards.InitRequestRetryPolicy.MIN_JITTER_PCT);
                this.engine.setColor(Colors.WHITE);
            }
        } catch (Exception unused) {
        }
    }

    public final void indicateVersion() {
        this.engine.setTransparency(255);
        this.engine.setColor(Resources.VERSION_COLOR);
        float f = 1;
        this.engine.drawImage(Resources.IMAGE_WORLD, r3.getVirtualWidth() - 1, UnityAdsConstants.SafeGuards.InitRequestRetryPolicy.MIN_JITTER_PCT, f, f, Resources.FRAME_RECT);
        this.engine.setColor(Colors.WHITE);
        this.engine.setTransparency(255);
    }

    public final void indicateDebugBuild() {
        if (TheoTown.DEBUG) {
            Font font = Resources.skin.fontSmall;
            this.engine.setTransparency(100);
            this.engine.setColor(Colors.BLACK);
            float f = 1;
            this.engine.drawText(font, "Debug Build ㄓㄨㄥ ㄨㄣˊ ㄗͲ₮", f, f);
            this.engine.setColor(Colors.GREEN);
            float f2 = 0;
            this.engine.drawText(font, "Debug Build ㄓㄨㄥ ㄨㄣˊ ㄗͲ₮", f2, f2);
            this.engine.setColor(Colors.WHITE);
            this.engine.setTransparency(255);
        }
    }

    public final void indicateRecoveryMode() {
        if (RecoveryMode.INSTANCE.getActive()) {
            Font font = Resources.skin.fontSmall;
            int virtualWidth = this.engine.getVirtualWidth() - ((int) font.getWidth("Recovery Mode"));
            this.engine.setTransparency(255);
            this.engine.setColor(Colors.BLACK);
            this.engine.drawText(font, "Recovery Mode", virtualWidth + 1, 1);
            this.engine.setColor(Colors.WHITE);
            this.engine.drawText(font, "Recovery Mode", virtualWidth, 0);
            this.engine.setTransparency(255);
        }
    }

    @Override // io.blueflower.stapel2d.gamestack.Stage
    public void leave() {
        MethodCluster methodClusterOrNull = ScriptingEnvironment.getInstance().getMethodClusterOrNull("leaveStage");
        if (methodClusterOrNull != null) {
            methodClusterOrNull.invoke();
        }
        Iterator<LuaLibrary> it = this.luaLibraries.iterator();
        while (it.hasNext()) {
            ScriptingEnvironment.getInstance().unloadLibrary(it.next());
        }
        this.luaLibraries.clear();
        Master master = this.gui;
        if (master != null) {
            master.free();
        }
        this.openDialog = null;
        BlurScreen blurScreen = this.blurScreen;
        if (blurScreen != null) {
            blurScreen.release();
            this.blurScreen = null;
        }
        SmoothCityZoomDrawer smoothCityZoomDrawer = this.cityZoomDrawer;
        if (smoothCityZoomDrawer != null) {
            smoothCityZoomDrawer.dispose();
            this.cityZoomDrawer = null;
        }
        ScreenRecorder.getInstance().setDown();
        CursorManager.INSTANCE.setCursor(CursorType.Normal, false);
    }

    @Override // io.blueflower.stapel2d.gamestack.Stage
    public void drop() {
        super.drop();
        SmoothCityZoomDrawer smoothCityZoomDrawer = this.cityZoomDrawer;
        if (smoothCityZoomDrawer != null) {
            smoothCityZoomDrawer.dispose();
            this.cityZoomDrawer = null;
        }
    }

    public final boolean isInputActive() {
        boolean z = this.context.getTouch().getActivePoints().size() > 0 || this.context.getTouch().countActualActivePoints() > 0 || this.context.getKey().getActualActiveKeys() > 0 || SuccessOverlay.getInstance().isActive() || shouldRenderFullspeed();
        if (z) {
            this.performanceLevel = 1;
            this.stillInputActiveCount = 30;
            return z;
        }
        if (this.stillInputActiveCount > 0) {
            return true;
        }
        return z;
    }

    public final boolean isBackgroundFinished() {
        BlurScreen blurScreen = this.blurScreen;
        return blurScreen != null && blurScreen.isFinished();
    }

    public void drawBackground() {
        this.useBackground = true;
        try {
            if (this.blurScreen == null) {
                BlurScreen blurScreen = new BlurScreen(this.engine);
                this.blurScreen = blurScreen;
                blurScreen.prepare();
                this.blurScreen.beginFilling();
                this.engine.clear(Colors.BLACK);
                drawFancyBackground();
                this.blurScreen.endFilling();
            }
            this.blurScreen.iterate();
            this.engine.flush();
            ShaderConfig.UNCHANGED.apply(this.engine.getShader());
            this.engine.setColor(180, 180, 180);
            this.engine.drawImage(this.blurScreen.getImage(), UnityAdsConstants.SafeGuards.InitRequestRetryPolicy.MIN_JITTER_PCT, UnityAdsConstants.SafeGuards.InitRequestRetryPolicy.MIN_JITTER_PCT, 0);
            this.engine.setColor(Colors.WHITE);
            this.engine.flush();
            Settings.shaderConfig.apply(this.engine.getShader());
        } catch (RuntimeException e) {
            e.printStackTrace();
            TheoTown.analytics.logException("Flush", e);
            this.engine.removeFramebuffer();
        }
        if (this.ownBackgroundCity == null && WinterManager.getInstance().isWinter()) {
            if (this.ownWeather == null) {
                this.ownWeather = new DefaultWeather();
            }
            this.ownWeather.drawDownfall(this.engine, (int) (TimeUtils.millis() % 1000000), UnityAdsConstants.SafeGuards.InitRequestRetryPolicy.MIN_JITTER_PCT, UnityAdsConstants.SafeGuards.InitRequestRetryPolicy.MIN_JITTER_PCT, 1.0f, UnityAdsConstants.SafeGuards.InitRequestRetryPolicy.MIN_JITTER_PCT, 0.2f, 1.0f, this.engine.getVirtualWidth(), this.engine.getVirtualHeight());
        }
    }

    public void drawSimpleBackground(int i, int i2, int i3, int i4) {
        int i5;
        int i6;
        Math.sqrt((i3 * i3) + (i4 * i4));
        int i7 = 0;
        int i8 = 0;
        boolean z = true;
        do {
            int i9 = i7;
            int i10 = i8;
            do {
                i5 = ((((i9 + i10) * 32) / 2) - (i % 32)) - 32;
                i6 = ((((i9 - i10) * 16) / 2) - (i2 % 16)) - 16;
                Math.sqrt((i5 * i5) + (i6 * i6));
                this.engine.setColor(Colors.WHITE);
                this.engine.drawImage(Resources.IMAGE_WORLD, i5, i6, Resources.FRAME_BLANK_TILE);
                i9++;
                i10++;
            } while (i5 < i3);
            if (z) {
                i8--;
            } else {
                i7++;
            }
            z = !z;
        } while (i6 < i4);
    }

    public final void drawFancyBackground() {
        City city = this.ownBackgroundCity;
        if (city == null) {
            if (staticBackgroundCity == null) {
                createBGCity(this.context);
            }
            city = staticBackgroundCity;
        }
        city.getView().setWidth(this.engine.getVirtualWidth());
        city.getView().setHeight(this.engine.getVirtualHeight());
        if (this.cityZoomDrawer == null) {
            this.cityZoomDrawer = new SmoothCityZoomDrawer(this.context);
        }
        this.cityZoomDrawer.draw(city, true);
    }

    public static void createBGCity(Stapel2DGameContext stapel2DGameContext) {
        CityCreator cityCreator = new CityCreator(stapel2DGameContext);
        CityCreator.CityData cityDataGenerate = cityCreator.generate("bg", 64, 64, GameMode.SANDBOX, "" + Resources.RND.nextInt(), "", true, true, true, 0, new ProgressVariable(UnityAdsConstants.SafeGuards.InitRequestRetryPolicy.MIN_JITTER_PCT), new ValueProperty(""), CityCreator.collectAvailableBiomes(null), null);
        Objects.requireNonNull(cityDataGenerate);
        City city = cityDataGenerate.city;
        staticBackgroundCity = city;
        cityCreator.prepareDummyCity(city);
    }

    public void showDialog(Dialog dialog) {
        dialog.setVisible(true);
        this.openDialog = dialog;
    }

    public boolean isDialogOpen() {
        if (this.gui.countChildren() == 0) {
            return false;
        }
        Master master = this.gui;
        Gadget child = master.getChild(master.countChildren() - 1);
        if (child instanceof Dialog.Background) {
            this.openDialog = ((Dialog.Background) child).getDialog();
        }
        Dialog dialog = this.openDialog;
        return dialog != null && dialog.isVisible();
    }

    public final void trackScreen() {
        if (allowTracking()) {
            TheoTown.analytics.logStage(this);
        }
    }

    public void setOwnBackgroundCity(City city) {
        this.ownBackgroundCity = city;
    }

    public void addTask(Runnable runnable) {
        synchronized (this.tasks) {
            this.tasks.add(runnable);
        }
    }

    public void drawGui() {
        this.gui.draw();
    }

    public boolean keyDown(KeyAction keyAction) {
        KeyMapper key = this.context.getKey();
        int[] keys = keyAction.getKeys();
        int[] modifiers = keyAction.getModifiers();
        for (int i = 0; i < keys.length; i++) {
            if (key.keyDown(keys[i], modifiers[i])) {
                return true;
            }
        }
        return false;
    }

    public boolean keyHit(KeyAction keyAction) {
        KeyMapper key = this.context.getKey();
        int[] keys = keyAction.getKeys();
        int[] modifiers = keyAction.getModifiers();
        for (int i = 0; i < keys.length; i++) {
            if (key.keyHit(keys[i], modifiers[i])) {
                if (!Settings.debugHotkeys) {
                    return true;
                }
                TheoTown.runtimeFeatures.showToast("Issued " + keyAction.name() + " via " + keyAction);
                return true;
            }
        }
        return false;
    }

    public static void dispose() {
        staticBackgroundCity = null;
    }
}
