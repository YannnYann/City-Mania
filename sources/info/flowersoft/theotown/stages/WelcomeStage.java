package info.flowersoft.theotown.stages;

import com.badlogic.gdx.Application;
import com.badlogic.gdx.Gdx;
import com.ironsource.mediationsdk.logger.IronSourceError;
import com.unity3d.services.UnityAdsConstants;
import com.vungle.ads.internal.protos.Sdk;
import info.flowersoft.theotown.components.firework.Firework;
import info.flowersoft.theotown.crossplatform.TheoTown;
import info.flowersoft.theotown.draft.AnimationDraft;
import info.flowersoft.theotown.draft.BuildingDraft;
import info.flowersoft.theotown.mechanics.GameHandler;
import info.flowersoft.theotown.resources.Constants;
import info.flowersoft.theotown.resources.Drafts;
import info.flowersoft.theotown.resources.InternetTime;
import info.flowersoft.theotown.resources.Resources;
import info.flowersoft.theotown.resources.Settings;
import info.flowersoft.theotown.resources.ShaderRepository;
import info.flowersoft.theotown.resources.TaskManager;
import info.flowersoft.theotown.ui.Dialog;
import info.flowersoft.theotown.ui.ReturningPlayerDialog;
import info.flowersoft.theotown.util.OSUtil;
import info.flowersoft.theotown.util.StringFormatter;
import info.flowersoft.theotown.util.json.JSONObject;
import io.blueflower.stapel2d.drawing.Colors;
import io.blueflower.stapel2d.drawing.Engine;
import io.blueflower.stapel2d.drawing.Shader;
import io.blueflower.stapel2d.gamestack.Stapel2DGameContext;
import io.blueflower.stapel2d.gui.Button;
import io.blueflower.stapel2d.gui.ElementLine;
import java.io.File;
import java.util.Random;

/* JADX INFO: loaded from: classes4.dex */
public class WelcomeStage extends BaseStage {
    public long fireworkStartTime;
    public long lastFireworkTime;
    public long nextFireworkTime;
    public ReturningPlayerDialog returningPlayerDialog;
    public int returningRewardDays;
    public boolean returningRewardPending;
    public final Firework welcomeFireworks;

    public WelcomeStage(Stapel2DGameContext stapel2DGameContext) {
        super(stapel2DGameContext);
        this.welcomeFireworks = new Firework();
    }

    @Override // info.flowersoft.theotown.stages.BaseStage, io.blueflower.stapel2d.gamestack.Stage
    public void enter() {
        JSONObject jSONObjectOptJSONObject;
        String str;
        WelcomeStage welcomeStage = this;
        super.enter();
        welcomeStage.returningPlayerDialog = null;
        welcomeStage.welcomeFireworks.clear();
        welcomeStage.lastFireworkTime = 0L;
        welcomeStage.nextFireworkTime = 0L;
        welcomeStage.fireworkStartTime = 0L;
        try {
            File theoTownDir = Resources.getTheoTownDir();
            if (!theoTownDir.exists()) {
                theoTownDir.mkdirs();
            }
            long remainingStorage = (TheoTown.runtimeFeatures.getRemainingStorage(theoTownDir) / 1024) / 1024;
            int iOptInt = Resources.CONFIG.optInt("min space warning");
            boolean z = Gdx.app.getType() == Application.ApplicationType.Android;
            Gdx.app.debug("Space left", "" + remainingStorage + "mb");
            if (remainingStorage < iOptInt) {
                int i = Resources.FRAME_ZONE_OVERLOADED;
                String strTranslate = welcomeStage.translator.translate(3017);
                StringBuilder sb = new StringBuilder();
                sb.append(StringFormatter.format(welcomeStage.translator.translate(1366), Long.valueOf(remainingStorage)));
                if (!z) {
                    str = "";
                } else {
                    str = "\n\n" + welcomeStage.translator.translate(2998);
                }
                sb.append(str);
                Dialog dialog = new Dialog(i, strTranslate, sb.toString(), welcomeStage.gui);
                dialog.addCancelButton(Resources.ICON_FORWARD, welcomeStage.translator.translate(242));
                dialog.setVisible(true);
            }
        } catch (Exception e) {
            TheoTown.analytics.logException("Space", e);
        }
        TaskManager.Task task = TaskManager.getInstance().TASK_PRIVACY_POLICY_REVIEW;
        if (!task.isCompleted() && (jSONObjectOptJSONObject = Resources.CONFIG.optJSONObject("privacy")) != null && Settings.firstVersion <= jSONObjectOptJSONObject.optInt("max start version")) {
            Dialog dialog2 = new Dialog(Resources.ICON_PUBLIC, welcomeStage.translator.translate(Sdk.SDKError.Reason.JSON_ENCODE_ERROR_VALUE), welcomeStage.translator.translate(2089), Sdk.SDKError.Reason.AD_LOAD_FAIL_PLACEMENT_ID_MISMATCH_VALUE, 120, welcomeStage.gui);
            task.complete();
            dialog2.addButton(Resources.ICON_EYE, welcomeStage.translator.translate(3481), false, new Runnable() { // from class: info.flowersoft.theotown.stages.WelcomeStage$$ExternalSyntheticLambda0
                @Override // java.lang.Runnable
                public final void run() {
                    WelcomeStage.$r8$lambda$haq3_kmR4XSWFGiuPjwjGsMH2Fs();
                }
            });
            dialog2.addButton(Resources.ICON_OK, welcomeStage.translator.translate(480), false, new Runnable() { // from class: info.flowersoft.theotown.stages.WelcomeStage$$ExternalSyntheticLambda1
                @Override // java.lang.Runnable
                public final void run() {
                    TheoTown.analytics.logEvent("Privacy", "Later", "");
                }
            });
            dialog2.setVisible(true);
        }
        TaskManager.Task task2 = TaskManager.getInstance().TASK_CHOSE_SHADER;
        if (!task2.isCompleted()) {
            task2.complete();
            if (Gdx.app.getVersion() < 21 || Gdx.app.getType() != Application.ApplicationType.Android || Constants.MAX_TEXTURE_SIZE < 8192) {
                TheoTown.analytics.logEvent("Shader selection", "Not supported", "");
            } else {
                try {
                    final int i2 = ((BuildingDraft) Drafts.ALL.get("$res13")).frames[0];
                    final int iCountShaders = ShaderRepository.getInstance().countShaders() - 1;
                    final Shader shaderBuild = ShaderRepository.getInstance().getShader(iCountShaders, null).build();
                    welcomeStage.engine.loadShader(shaderBuild);
                    welcomeStage.engine.setShader(shaderBuild);
                    Settings.shaderConfig.apply(shaderBuild);
                    welcomeStage.engine.setShader(Resources.SHADER_BLITTING_DEFAULT);
                    final Dialog dialog3 = new Dialog(Resources.PEOPLE_TEACHER1, welcomeStage.translator.translate(2137), welcomeStage.translator.translate(3287), 300, 200, welcomeStage.gui);
                    dialog3.getContentPane().setHeight(dialog3.getContentPane().getHeight() - 42);
                    dialog3.getContentPane().getChild(0).setHeight(dialog3.getContentPane().getClientHeight());
                    ElementLine controlLine = dialog3.getControlLine();
                    controlLine.setY(controlLine.getY() - 42);
                    controlLine.setHeight(controlLine.getHeight() + 42);
                    int i3 = 72;
                    new Button(0, 0, i3, i3, controlLine.getThirdPart()) { // from class: info.flowersoft.theotown.stages.WelcomeStage.1
                        @Override // io.blueflower.stapel2d.gui.Button, io.blueflower.stapel2d.gui.Gadget
                        public void draw(int i4, int i5) {
                            super.draw(i4, i5);
                            Engine engine = this.skin.engine;
                            int i6 = this.x + i4;
                            int i7 = this.y + i5;
                            engine.setColor(Colors.BLACK);
                            float f = i6;
                            float f2 = i7;
                            engine.drawText(this.skin.fontSmall, WelcomeStage.this.translator.translate(50), f, f2, this.width, this.height, 0.5f, 0.95f);
                            engine.setColor(Colors.WHITE);
                            engine.drawImage(Resources.IMAGE_WORLD, f, f2, this.width, this.height, 0.5f, -1.0f, i2);
                        }

                        @Override // io.blueflower.stapel2d.gui.Button, io.blueflower.stapel2d.gui.Gadget
                        public void onClick() {
                            super.onClick();
                            TheoTown.analytics.logEvent("Shader selection", "Selected classic", "");
                            Settings.shader = 0;
                            Resources.SHADER_BLITTING_DEFAULT = null;
                            dialog3.setVisible(false);
                        }
                    };
                    try {
                        welcomeStage = this;
                        new Button(0, 0, i3, i3, controlLine.getThirdPart()) { // from class: info.flowersoft.theotown.stages.WelcomeStage.2
                            @Override // io.blueflower.stapel2d.gui.Button, io.blueflower.stapel2d.gui.Gadget
                            public void draw(int i4, int i5) {
                                super.draw(i4, i5);
                                Engine engine = this.skin.engine;
                                int i6 = this.x + i4;
                                int i7 = this.y + i5;
                                engine.setColor(Colors.BLACK);
                                float f = i6;
                                float f2 = i7;
                                engine.drawText(this.skin.fontSmall, WelcomeStage.this.translator.translate(2540), f, f2, this.width, this.height, 0.5f, 0.95f);
                                engine.setColor(Colors.WHITE);
                                engine.setShader(shaderBuild);
                                engine.drawImage(Resources.IMAGE_WORLD, f, f2, this.width, this.height, 0.5f, -1.1f, i2);
                                engine.setShader(Resources.SHADER_BLITTING_DEFAULT);
                            }

                            @Override // io.blueflower.stapel2d.gui.Button, io.blueflower.stapel2d.gui.Gadget
                            public void onClick() {
                                super.onClick();
                                TheoTown.analytics.logEvent("Shader selection", "Selected smooth", "");
                                Settings.shader = iCountShaders;
                                Resources.SHADER_BLITTING_DEFAULT = shaderBuild;
                                Settings.save();
                                dialog3.setVisible(false);
                            }
                        };
                        dialog3.setVisible(true);
                    } catch (Exception e2) {
                        e = e2;
                        welcomeStage = this;
                        e.printStackTrace();
                    }
                } catch (Exception e3) {
                    e = e3;
                }
            }
        }
        if (Settings.isFirstStart && GameHandler.getInstance().getDiamonds() == 0 && !TheoTown.PREMIUM) {
            GameHandler.getInstance().earnDiamonds(Resources.CONFIG.optInt("start diamonds"), false, "welcome present");
        }
        JSONObject config = ReturningPlayerDialog.Companion.getConfig();
        welcomeStage.returningRewardPending = false;
        if (config.optBoolean("enabled", false) && !TheoTown.PREMIUM && GameHandler.getInstance().canEarnDiamonds()) {
            int iOptInt2 = config.optInt("min days", 14);
            int iOptInt3 = config.optInt("max days", IronSourceError.ERROR_CAPPING_VALIDATION_FAILED);
            welcomeStage.returningRewardDays = 0;
            long lastSaveTime = GameHandler.getInstance().getLastSaveTime();
            if (lastSaveTime > 0) {
                long time = InternetTime.getInstance().getTime() - lastSaveTime;
                int i4 = (int) (time / 86400000);
                welcomeStage.returningRewardDays = i4;
                if (time > 0 && iOptInt2 <= i4 && i4 <= iOptInt3) {
                    welcomeStage.returningRewardPending = true;
                }
            }
        }
        if (welcomeStage.isDialogOpen() || welcomeStage.returningRewardPending) {
            return;
        }
        welcomeStage.getGameStack().pop();
    }

    public static /* synthetic */ void $r8$lambda$haq3_kmR4XSWFGiuPjwjGsMH2Fs() {
        TheoTown.analytics.logEvent("Privacy", "Open", "");
        OSUtil.openPolicy();
    }

    @Override // info.flowersoft.theotown.stages.BaseStage
    public void onUpdate() {
        drawBackground();
        if (!isDialogOpen()) {
            if (this.returningRewardPending) {
                this.returningRewardPending = false;
                this.returningPlayerDialog = new ReturningPlayerDialog(this.gui, this.translator, this.returningRewardDays);
                this.welcomeFireworks.clear();
                this.lastFireworkTime = 0L;
                this.nextFireworkTime = 0L;
                this.fireworkStartTime = System.currentTimeMillis();
                this.returningPlayerDialog.setVisible(true);
            } else {
                getGameStack().pop();
            }
        }
        drawReturningFireworks();
    }

    public final void drawReturningFireworks() {
        ReturningPlayerDialog returningPlayerDialog = this.returningPlayerDialog;
        if (returningPlayerDialog == null || !returningPlayerDialog.isVisible() || !isDialogOpen()) {
            this.welcomeFireworks.clear();
            this.lastFireworkTime = 0L;
            this.nextFireworkTime = 0L;
            this.fireworkStartTime = 0L;
            return;
        }
        long jCurrentTimeMillis = System.currentTimeMillis();
        long j = this.lastFireworkTime;
        int iMin = j == 0 ? 0 : (int) Math.min(50L, Math.max(0L, jCurrentTimeMillis - j));
        this.lastFireworkTime = jCurrentTimeMillis;
        this.welcomeFireworks.update(iMin);
        if (jCurrentTimeMillis - this.fireworkStartTime < 4000 && jCurrentTimeMillis >= this.nextFireworkTime) {
            AnimationDraft animationDraft = (AnimationDraft) Drafts.ALL.get("$firework20");
            if (animationDraft != null) {
                int virtualWidth = this.engine.getVirtualWidth();
                int virtualHeight = this.engine.getVirtualHeight();
                Random random = Resources.RND;
                this.welcomeFireworks.emit(animationDraft, (int) (((int) (virtualWidth * ((random.nextFloat() * 0.7f) + 0.15f))) / 12.0f), (int) (((int) (virtualHeight * ((random.nextFloat() * 0.4f) + 0.4f))) / 12.0f), UnityAdsConstants.SafeGuards.InitRequestRetryPolicy.MIN_JITTER_PCT);
            }
            this.nextFireworkTime = jCurrentTimeMillis + 650;
        }
        this.welcomeFireworks.drawScreen(this.engine, 12.0f);
    }

    public String toString() {
        return "WelcomeStage";
    }
}
