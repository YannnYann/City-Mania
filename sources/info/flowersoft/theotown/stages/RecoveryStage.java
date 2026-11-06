package info.flowersoft.theotown.stages;

import com.vungle.ads.internal.protos.Sdk;
import info.flowersoft.theotown.resources.ResolutionManager;
import info.flowersoft.theotown.resources.Resources;
import info.flowersoft.theotown.resources.Settings;
import info.flowersoft.theotown.ui.Dialog;
import info.flowersoft.theotown.ui.StartScreenDrawer;
import io.blueflower.stapel2d.drawing.Colors;
import io.blueflower.stapel2d.drawing.Engine;
import io.blueflower.stapel2d.gamestack.Stage;
import io.blueflower.stapel2d.gamestack.Stapel2DGameContext;
import io.blueflower.stapel2d.gui.Master;
import io.blueflower.stapel2d.gui.Skin;
import kotlin.jvm.internal.Intrinsics;

/* JADX INFO: compiled from: RecoveryStage.kt */
/* JADX INFO: loaded from: classes4.dex */
public final class RecoveryStage extends Stage {
    public final Stapel2DGameContext context;
    public Engine engine;
    public Master gui;
    public final StartScreenDrawer startScreen;

    public RecoveryStage(Stapel2DGameContext context, StartScreenDrawer startScreen) {
        Intrinsics.checkNotNullParameter(context, "context");
        Intrinsics.checkNotNullParameter(startScreen, "startScreen");
        this.context = context;
        this.startScreen = startScreen;
    }

    @Override // io.blueflower.stapel2d.gamestack.Stage
    public void prepare() {
        Engine engine = this.context.getEngine();
        Intrinsics.checkNotNullExpressionValue(engine, "getEngine(...)");
        this.engine = engine;
    }

    @Override // io.blueflower.stapel2d.gamestack.Stage
    public void enter() {
        Engine engine = this.engine;
        Engine engine2 = null;
        if (engine == null) {
            Intrinsics.throwUninitializedPropertyAccessException("engine");
            engine = null;
        }
        int width = engine.getWidth();
        Engine engine3 = this.engine;
        if (engine3 == null) {
            Intrinsics.throwUninitializedPropertyAccessException("engine");
            engine3 = null;
        }
        ResolutionManager resolutionManager = new ResolutionManager(width, engine3.getHeight());
        int width2 = resolutionManager.getWidth(Settings.displayResolution);
        int height = resolutionManager.getHeight(Settings.displayResolution);
        Engine engine4 = this.engine;
        if (engine4 == null) {
            Intrinsics.throwUninitializedPropertyAccessException("engine");
            engine4 = null;
        }
        engine4.setVirtualSize(width2, height);
        Skin skin = Resources.skin;
        Engine engine5 = this.engine;
        if (engine5 == null) {
            Intrinsics.throwUninitializedPropertyAccessException("engine");
            engine5 = null;
        }
        skin.engine = engine5;
        Skin skin2 = Resources.skin;
        Engine engine6 = this.engine;
        if (engine6 == null) {
            Intrinsics.throwUninitializedPropertyAccessException("engine");
            engine6 = null;
        }
        int virtualWidth = engine6.getVirtualWidth();
        Engine engine7 = this.engine;
        if (engine7 == null) {
            Intrinsics.throwUninitializedPropertyAccessException("engine");
        } else {
            engine2 = engine7;
        }
        this.gui = new Master(skin2, virtualWidth, engine2.getVirtualHeight());
        Dialog dialog = new Dialog(Resources.ICON_ALERT, this.context.getTranslator().translate(Sdk.SDKError.Reason.PRIVACY_ICON_FALLBACK_ERROR_VALUE), this.context.getTranslator().translate(1064), 300, 210, this.gui);
        dialog.addButton(Resources.ICON_OK, this.context.getTranslator().translate(605), new Runnable() { // from class: info.flowersoft.theotown.stages.RecoveryStage$$ExternalSyntheticLambda0
            @Override // java.lang.Runnable
            public final void run() {
                RecoveryStage.enter$lambda$0(this.f$0);
            }
        });
        dialog.addButton(Resources.ICON_MEDIC, this.context.getTranslator().translate(1012), new Runnable() { // from class: info.flowersoft.theotown.stages.RecoveryStage$$ExternalSyntheticLambda1
            @Override // java.lang.Runnable
            public final void run() {
                RecoveryStage.enter$lambda$1(this.f$0);
            }
        });
        dialog.distributeButtons();
        dialog.setDrawBackground(true);
        dialog.setVisible(true);
    }

    public static final void enter$lambda$0(RecoveryStage recoveryStage) {
        RecoveryMode.INSTANCE.setActive(false);
        recoveryStage.getGameStack().pop();
    }

    public static final void enter$lambda$1(RecoveryStage recoveryStage) {
        RecoveryMode.INSTANCE.setActive(true);
        recoveryStage.getGameStack().pop();
    }

    @Override // io.blueflower.stapel2d.gamestack.Stage
    public void leave() {
        Master master = this.gui;
        Intrinsics.checkNotNull(master);
        master.free();
    }

    @Override // io.blueflower.stapel2d.gamestack.Stage
    public void drop() {
        super.drop();
        Engine engine = this.engine;
        Engine engine2 = null;
        if (engine == null) {
            Intrinsics.throwUninitializedPropertyAccessException("engine");
            engine = null;
        }
        Engine engine3 = this.engine;
        if (engine3 == null) {
            Intrinsics.throwUninitializedPropertyAccessException("engine");
            engine3 = null;
        }
        int width = engine3.getWidth();
        Engine engine4 = this.engine;
        if (engine4 == null) {
            Intrinsics.throwUninitializedPropertyAccessException("engine");
        } else {
            engine2 = engine4;
        }
        engine.setVirtualSize(width, engine2.getHeight());
    }

    @Override // io.blueflower.stapel2d.gamestack.Stage
    public void update() {
        Master master = this.gui;
        Intrinsics.checkNotNull(master);
        master.updateTouchInput(this.context.getTouch().getTouchUpdate());
        Master master2 = this.gui;
        Intrinsics.checkNotNull(master2);
        master2.updateKeyInput(this.context.getKey());
        Master master3 = this.gui;
        Intrinsics.checkNotNull(master3);
        master3.update();
        Engine engine = this.engine;
        Engine engine2 = null;
        if (engine == null) {
            Intrinsics.throwUninitializedPropertyAccessException("engine");
            engine = null;
        }
        int virtualWidth = engine.getVirtualWidth();
        Engine engine3 = this.engine;
        if (engine3 == null) {
            Intrinsics.throwUninitializedPropertyAccessException("engine");
            engine3 = null;
        }
        int virtualHeight = engine3.getVirtualHeight();
        Engine engine4 = this.engine;
        if (engine4 == null) {
            Intrinsics.throwUninitializedPropertyAccessException("engine");
            engine4 = null;
        }
        engine4.clear(Colors.BLACK);
        Engine engine5 = this.engine;
        if (engine5 == null) {
            Intrinsics.throwUninitializedPropertyAccessException("engine");
            engine5 = null;
        }
        Engine engine6 = this.engine;
        if (engine6 == null) {
            Intrinsics.throwUninitializedPropertyAccessException("engine");
            engine6 = null;
        }
        int width = engine6.getWidth();
        Engine engine7 = this.engine;
        if (engine7 == null) {
            Intrinsics.throwUninitializedPropertyAccessException("engine");
            engine7 = null;
        }
        engine5.setVirtualSize(width, engine7.getHeight());
        this.startScreen.drawBackground();
        Engine engine8 = this.engine;
        if (engine8 == null) {
            Intrinsics.throwUninitializedPropertyAccessException("engine");
            engine8 = null;
        }
        engine8.flush();
        Engine engine9 = this.engine;
        if (engine9 == null) {
            Intrinsics.throwUninitializedPropertyAccessException("engine");
            engine9 = null;
        }
        engine9.setVirtualSize(virtualWidth, virtualHeight);
        Engine engine10 = this.engine;
        if (engine10 == null) {
            Intrinsics.throwUninitializedPropertyAccessException("engine");
            engine10 = null;
        }
        engine10.reset();
        Master master4 = this.gui;
        Intrinsics.checkNotNull(master4);
        master4.draw();
        Engine engine11 = this.engine;
        if (engine11 == null) {
            Intrinsics.throwUninitializedPropertyAccessException("engine");
        } else {
            engine2 = engine11;
        }
        engine2.flush();
        try {
            Thread.sleep(30L);
        } catch (InterruptedException e) {
            e.printStackTrace();
        }
    }

    public String toString() {
        return "RecoveryStage";
    }
}
