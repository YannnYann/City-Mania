package info.flowersoft.theotown.stages;

import com.badlogic.gdx.math.Interpolation;
import com.badlogic.gdx.math.MathUtils;
import com.badlogic.gdx.utils.TimeUtils;
import com.unity3d.ads.core.domain.WebViewScreenCapture;
import com.unity3d.services.UnityAdsConstants;
import info.flowersoft.theotown.city.PreviewCreator;
import info.flowersoft.theotown.crossplatform.TheoTown;
import info.flowersoft.theotown.resources.ConfigManager;
import info.flowersoft.theotown.resources.Resources;
import info.flowersoft.theotown.resources.Settings;
import info.flowersoft.theotown.resources.TopicManager;
import info.flowersoft.theotown.ui.CursorType;
import info.flowersoft.theotown.ui.ProgressBar;
import info.flowersoft.theotown.ui.ShadowedLabel;
import info.flowersoft.theotown.util.DraftLocalizer;
import info.flowersoft.theotown.util.Hashing;
import info.flowersoft.theotown.util.ProgressProvider;
import io.blueflower.stapel2d.drawing.Color;
import io.blueflower.stapel2d.drawing.Colors;
import io.blueflower.stapel2d.drawing.Font;
import io.blueflower.stapel2d.gamestack.Stapel2DGameContext;
import io.blueflower.stapel2d.gui.Button;
import io.blueflower.stapel2d.gui.Label;
import io.blueflower.stapel2d.gui.Panel;
import io.blueflower.stapel2d.util.Getter;
import java.util.ArrayList;
import java.util.List;

/* JADX INFO: loaded from: classes4.dex */
public class WaitingStage extends BaseStage {
    public final long HELPFUL_TARGET_TIME;
    public Runnable aborted;
    public PreviewCreator.SteppedTask<?> currentSteppedTask;
    public int currentSteppedTaskTotal;
    public boolean done;
    public int doneTasks;
    public Runnable finished;
    public List<String> infos;
    public boolean isHelpfulTopic;
    public List<Getter<? extends PreviewCreator.SteppedTask<?>>> postponedSteppedTasks;
    public ProgressProvider progress;
    public boolean started;
    public Getter<String> stateProvider;
    public List<PreviewCreator.SteppedTask<?>> steppedTasks;
    public String text;
    public long timeStartedMS;
    public int totalTasks;
    public Thread worker;

    @Override // info.flowersoft.theotown.stages.BaseStage
    public boolean allowTracking() {
        return false;
    }

    public WaitingStage(Stapel2DGameContext stapel2DGameContext, int i, String str, Thread thread, Runnable runnable, ProgressProvider progressProvider, Getter<String> getter) {
        super(stapel2DGameContext);
        this.HELPFUL_TARGET_TIME = (WebViewScreenCapture.CACHE_TTL_MS / ((Settings.playTimeSeconds / 600) + 1)) + WebViewScreenCapture.CACHE_TTL_MS;
        this.infos = new ArrayList();
        this.steppedTasks = new ArrayList();
        this.postponedSteppedTasks = new ArrayList();
        this.doneTasks = 0;
        this.totalTasks = 0;
        this.text = str;
        this.worker = thread;
        this.finished = runnable;
        if (thread != null) {
            this.totalTasks = 1;
        }
        this.progress = progressProvider;
        this.stateProvider = getter;
    }

    public void append(PreviewCreator.SteppedTask<?> steppedTask) {
        this.steppedTasks.add(steppedTask);
        this.totalTasks++;
    }

    public void append(Getter<? extends PreviewCreator.SteppedTask<?>> getter) {
        if (getter == null) {
            return;
        }
        this.postponedSteppedTasks.add(getter);
        this.totalTasks++;
    }

    public WaitingStage setAborted(Runnable runnable) {
        this.aborted = runnable;
        return this;
    }

    @Override // info.flowersoft.theotown.stages.BaseStage, io.blueflower.stapel2d.gamestack.Stage
    public void enter() {
        String strTranslate;
        super.enter();
        int width = this.gui.getWidth();
        int height = this.gui.getHeight();
        Panel panel = new Panel(-this.gui.getPaddingLeft(), -this.gui.getPaddingTop(), width, height, this.gui) { // from class: info.flowersoft.theotown.stages.WaitingStage.1
            @Override // io.blueflower.stapel2d.gui.Panel, io.blueflower.stapel2d.gui.Gadget
            public void draw(int i, int i2) {
                drawChildren(i, i2);
            }
        };
        Font font = Resources.skin.fontDefault;
        String str = this.text;
        int i = height / 2;
        ShadowedLabel shadowedLabel = new ShadowedLabel(str, Math.round(width - font.getWidth(str)) / 2, i + 16, 0, 0, panel) { // from class: info.flowersoft.theotown.stages.WaitingStage.2
            @Override // info.flowersoft.theotown.ui.ShadowedLabel, io.blueflower.stapel2d.gui.Label
            public void drawText(Font font2, Color color, String str2, float f, float f2, float f3, float f4, float f5, float f6) {
                float width2 = font2.getWidth(str2);
                float height2 = font2.getHeight(str2);
                color.setAlpha(80);
                super.drawText(font2, color, str2, f, f2, f3, f4, f5, f6);
                color.setAlpha(255);
                WaitingStage waitingStage = WaitingStage.this;
                waitingStage.engine.setClipRect((int) (((f3 - width2) * f5) + f), (int) (((f4 - height2) * f6) + f2), waitingStage.getProgress() * width2, height2);
                super.drawText(font2, color, str2, f, f2, f3, f4, f5, f6);
                WaitingStage.this.engine.resetClipping();
            }
        };
        shadowedLabel.setFont(font);
        Color color = Colors.WHITE;
        shadowedLabel.setColor(color);
        int iMax = Math.max((int) shadowedLabel.getTextWidth(), 60);
        new ProgressBar((width / 2) - (iMax / 2), i + 26, iMax, 1, panel) { // from class: info.flowersoft.theotown.stages.WaitingStage.3
            @Override // info.flowersoft.theotown.ui.ProgressBar, io.blueflower.stapel2d.gui.Gadget
            public void draw(int i2, int i3) {
                WaitingStage.this.engine.setColor(this.color);
                WaitingStage.this.engine.setTransparency(80);
                WaitingStage.this.engine.drawImage(Resources.IMAGE_WORLD, this.x + i2, this.y + i3, this.width, this.height, Resources.FRAME_RECT);
                WaitingStage.this.engine.setTransparency(255);
                WaitingStage.this.engine.drawImage(Resources.IMAGE_WORLD, this.x + i2, this.y + i3, this.progress * this.width, this.height, Resources.FRAME_RECT);
                WaitingStage.this.engine.setColor(Colors.WHITE);
            }

            @Override // io.blueflower.stapel2d.gui.Gadget
            public void onUpdate() {
                super.onUpdate();
                setProgress(WaitingStage.this.getProgress());
            }
        }.setColor(color);
        TopicManager topicManager = TopicManager.getInstance();
        topicManager.pickRandomTopic();
        this.isHelpfulTopic = topicManager.isHelpful();
        if (topicManager.getTopicDraft() != null) {
            strTranslate = new DraftLocalizer(this.context, "").getTitle(topicManager.getTopicDraft());
        } else {
            strTranslate = this.translator.translate(topicManager.getTopicId());
        }
        ShadowedLabel shadowedLabel2 = new ShadowedLabel(strTranslate, -this.gui.getPaddingLeft(), (-this.gui.getPaddingTop()) + i + 52, this.gui.getWidth(), 0, this.gui);
        shadowedLabel2.setAlignment(0.5f, 0.5f);
        shadowedLabel2.setColor(topicManager.getTopicColor());
        String str2 = "v" + TheoTown.VERSION_NAME + " (" + TheoTown.VERSION_CODE + "), c" + Resources.CONFIG.optInt("version");
        if (ConfigManager.getInstance().isUpToDate()) {
            str2 = str2 + "*";
        }
        Label label = new Label(str2, 0, this.gui.getClientHeight(), 0, 0, this.gui);
        label.setFont(this.gui.getSkin().fontSmall);
        label.setAlignment(UnityAdsConstants.SafeGuards.InitRequestRetryPolicy.MIN_JITTER_PCT, 1.0f);
        label.setColor(color);
        Label label2 = new Label("", 0, 0, this.gui.getClientWidth(), this.gui.getClientHeight(), this.gui) { // from class: info.flowersoft.theotown.stages.WaitingStage.4
            @Override // io.blueflower.stapel2d.gui.Gadget
            public void onUpdate() {
                super.onUpdate();
                Getter<String> getter = WaitingStage.this.stateProvider;
                if (getter != null) {
                    setText(getter.get());
                } else {
                    setText("");
                }
            }
        };
        label2.setAlignment(1.0f, 1.0f);
        label2.setColor(255, 255, 255, 80);
        label2.setFont(Resources.skin.fontSmall);
        drawBackground();
        if (!this.started) {
            Thread thread = this.worker;
            if (thread != null) {
                thread.start();
            }
            this.started = true;
        }
        new Button(this.gui.getClientWidth() - 30, 0, 30, 30, this.gui) { // from class: info.flowersoft.theotown.stages.WaitingStage.5
            @Override // io.blueflower.stapel2d.gui.Button, io.blueflower.stapel2d.gui.Gadget
            public void draw(int i2, int i3) {
            }

            @Override // io.blueflower.stapel2d.gui.Button, io.blueflower.stapel2d.gui.Gadget
            public void onClick() {
                super.onClick();
                WaitingStage.this.onBack();
            }
        };
        this.timeStartedMS = TimeUtils.millis();
        work();
    }

    public final float getProgress() {
        float fRemainingSteps;
        if (this.worker != null) {
            fRemainingSteps = this.progress.getProgress();
        } else {
            fRemainingSteps = this.currentSteppedTask != null ? (this.currentSteppedTaskTotal - r0.remainingSteps()) / this.currentSteppedTaskTotal : 0.0f;
        }
        float f = (fRemainingSteps + this.doneTasks) / this.totalTasks;
        if (this.isHelpfulTopic) {
            return Math.min(f, Interpolation.smooth2.apply(MathUtils.clamp((TimeUtils.millis() - this.timeStartedMS) / this.HELPFUL_TARGET_TIME, UnityAdsConstants.SafeGuards.InitRequestRetryPolicy.MIN_JITTER_PCT, 1.0f)));
        }
        return f;
    }

    @Override // info.flowersoft.theotown.stages.BaseStage
    public void onUpdate() {
        work();
        drawBackground();
        draw();
        setPreferredCursor(CursorType.Wait);
    }

    public final void draw() {
        int i;
        float f;
        float f2;
        float f3;
        float f4;
        Font font = Resources.skin.fontSmall;
        for (int i2 = 0; i2 < this.infos.size(); i2++) {
            this.engine.drawText(font, this.infos.get(i2), this.gui.getPaddingLeft(), (i2 * font.getHeight()) + this.gui.getPaddingTop());
        }
        int i3 = Resources.FRAME_LOGO_THEOTOWN;
        int iRound = Math.round(Resources.IMAGE_WORLD.getWidth(i3));
        int iRound2 = Math.round(Resources.IMAGE_WORLD.getHeight(i3));
        int virtualWidth = this.engine.getVirtualWidth() / 2;
        int virtualHeight = this.engine.getVirtualHeight() / 2;
        int iMillis = (int) (TimeUtils.millis() - this.timeStartedMS);
        float[] uVStream = Resources.IMAGE_WORLD.getUVStream();
        int uVStreamPos = Resources.IMAGE_WORLD.getUVStreamPos(i3);
        float f5 = uVStream[uVStreamPos];
        float f6 = uVStream[uVStreamPos + 1];
        float f7 = uVStream[uVStreamPos + 2];
        int i4 = 3;
        float f8 = uVStream[uVStreamPos + 3];
        float f9 = virtualWidth;
        float f10 = 1.0f;
        float f11 = iRound * 0.5f * 1.0f;
        float f12 = f9 - f11;
        float f13 = virtualHeight;
        float f14 = f13 - (iRound2 * 1.0f);
        float f15 = f9 + f11;
        int i5 = 0;
        while (true) {
            int i6 = 9;
            if (i5 >= 9) {
                return;
            }
            int i7 = i4;
            int i8 = 0;
            while (i8 < 36) {
                int i9 = i8 + (i5 * 36);
                float f16 = f10;
                float f17 = 36;
                float f18 = i8 / f17;
                float f19 = i5;
                int i10 = i5;
                float f20 = i6;
                float f21 = f19 / f20;
                int i11 = i8 + 1;
                float f22 = i11 / f17;
                float f23 = (i10 + 1) / f20;
                float f24 = ((iMillis % 6000) / 6000.0f) * 16.0f;
                int i12 = iMillis;
                float fApply = f16 - Interpolation.smooth2.apply(MathUtils.clamp(((f24 + ((f21 - f16) * 6.0f)) + (((Hashing.hash(i8) & 255) * 6.0f) / 255.0f)) - 5.0f, UnityAdsConstants.SafeGuards.InitRequestRetryPolicy.MIN_JITTER_PCT, f16));
                this.engine.setTransparency((int) (255.0f - (Interpolation.smooth.apply(MathUtils.clamp((((f24 - 15.0f) + (i10 + (-1) < 4 ? 1 : 0)) + (((Hashing.hash(i9) & 255) * 2.0f) / 255.0f)) + ((Hashing.hash(i8) & 255) / 255.0f), UnityAdsConstants.SafeGuards.InitRequestRetryPolicy.MIN_JITTER_PCT, 1.0f)) * 255.0f)));
                int iHash = Hashing.hash(i9) % 3;
                if (iHash != 0) {
                    if (iHash == 1) {
                        i = i7;
                        f = f21 + (fApply / f20);
                        f4 = f18;
                        f3 = f23;
                        f2 = f22;
                    } else if (iHash != 2) {
                        i = i7;
                        if (iHash == i) {
                            f3 = f23 - (fApply / f20);
                            f4 = f18;
                        }
                        f2 = f22;
                        f = f21;
                    } else {
                        i = i7;
                        float f25 = f22 - (fApply / f17);
                        f4 = f18;
                        f = f21;
                        f2 = f25;
                        f3 = f23;
                    }
                    this.engine.drawTextureRect(Resources.IMAGE_WORLD.getTexture(i3), MathUtils.lerp(f12, f15, f4), MathUtils.lerp(f14, f13, f), MathUtils.lerp(f12, f15, f2), MathUtils.lerp(f14, f13, f3), MathUtils.lerp(f5, f7, f4), MathUtils.lerp(f6, f8, f), MathUtils.lerp(f5, f7, f2), MathUtils.lerp(f6, f8, f3), 1);
                    i7 = i;
                    f10 = 1.0f;
                    i5 = i10;
                    i8 = i11;
                    iMillis = i12;
                    i6 = 9;
                } else {
                    i = i7;
                    f18 += fApply / f17;
                }
                f4 = f18;
                f3 = f23;
                f2 = f22;
                f = f21;
                this.engine.drawTextureRect(Resources.IMAGE_WORLD.getTexture(i3), MathUtils.lerp(f12, f15, f4), MathUtils.lerp(f14, f13, f), MathUtils.lerp(f12, f15, f2), MathUtils.lerp(f14, f13, f3), MathUtils.lerp(f5, f7, f4), MathUtils.lerp(f6, f8, f), MathUtils.lerp(f5, f7, f2), MathUtils.lerp(f6, f8, f3), 1);
                i7 = i;
                f10 = 1.0f;
                i5 = i10;
                i8 = i11;
                iMillis = i12;
                i6 = 9;
            }
            i5++;
            i4 = i7;
            iMillis = iMillis;
        }
    }

    public final void work() {
        if (this.worker == null && this.currentSteppedTask == null) {
            if (!this.steppedTasks.isEmpty()) {
                this.currentSteppedTask = this.steppedTasks.remove(0);
            } else if (!this.postponedSteppedTasks.isEmpty()) {
                this.currentSteppedTask = this.postponedSteppedTasks.remove(0).get();
            }
            PreviewCreator.SteppedTask<?> steppedTask = this.currentSteppedTask;
            if (steppedTask != null) {
                this.currentSteppedTaskTotal = steppedTask.remainingSteps();
            }
        }
        PreviewCreator.SteppedTask<?> steppedTask2 = this.currentSteppedTask;
        if (steppedTask2 != null) {
            if (steppedTask2.remainingSteps() > 0) {
                this.currentSteppedTask.run();
            } else {
                this.currentSteppedTask = null;
                this.currentSteppedTaskTotal = 0;
                this.doneTasks++;
            }
        }
        Thread thread = this.worker;
        if (thread != null && !thread.isAlive()) {
            this.worker = null;
            this.doneTasks++;
        }
        if (this.doneTasks < this.totalTasks || !reachedTargetTime()) {
            return;
        }
        this.done = true;
        getGameStack().pop();
        Runnable runnable = this.finished;
        if (runnable != null) {
            runnable.run();
        }
    }

    public final boolean reachedTargetTime() {
        return !this.isHelpfulTopic || TimeUtils.millis() - this.timeStartedMS >= this.HELPFUL_TARGET_TIME;
    }

    @Override // info.flowersoft.theotown.stages.BaseStage, io.blueflower.stapel2d.gamestack.Stage
    public void drop() {
        super.drop();
        if (this.done) {
            return;
        }
        Thread thread = this.worker;
        if (thread != null) {
            try {
                thread.interrupt();
                this.worker.join();
                this.worker = null;
            } catch (InterruptedException e) {
                e.printStackTrace();
            }
        }
        Runnable runnable = this.aborted;
        if (runnable != null) {
            runnable.run();
        }
    }

    public String toString() {
        return "WaitingStage";
    }
}
