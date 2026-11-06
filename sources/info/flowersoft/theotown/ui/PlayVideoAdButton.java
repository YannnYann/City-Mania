package info.flowersoft.theotown.ui;

import com.badlogic.gdx.utils.TimeUtils;
import info.flowersoft.theotown.crossplatform.TheoTown;
import info.flowersoft.theotown.crossplatform.VideoAdStage;
import info.flowersoft.theotown.drawing.Drawing;
import info.flowersoft.theotown.resources.Resources;
import io.blueflower.stapel2d.drawing.Colors;
import io.blueflower.stapel2d.drawing.Engine;
import io.blueflower.stapel2d.gamestack.Stage;
import io.blueflower.stapel2d.gamestack.Stapel2DGameContext;
import io.blueflower.stapel2d.gui.Gadget;
import io.blueflower.stapel2d.util.Setter;

/* JADX INFO: loaded from: classes4.dex */
public class PlayVideoAdButton extends GoldButton {
    public Runnable onClick;
    public Setter<Stage> stageVisitor;
    public VideoAdStage videoAdStage;

    public PlayVideoAdButton(String str, Gadget gadget, Runnable runnable, final Runnable runnable2, Setter<Stage> setter, String str2, Stapel2DGameContext stapel2DGameContext) {
        super(Resources.ICON_PLAY_AD_VIDEO, str, 0, 0, 0, gadget.getClientHeight(), gadget);
        VideoAdStage.VideoAdStageFactory videoAdStageFactory = TheoTown.videoAdStageFactory;
        if (videoAdStageFactory != null) {
            this.videoAdStage = videoAdStageFactory.create(stapel2DGameContext, str2, new VideoAdStage.AdResultHandler() { // from class: info.flowersoft.theotown.ui.PlayVideoAdButton$$ExternalSyntheticLambda0
                @Override // info.flowersoft.theotown.crossplatform.VideoAdStage.AdResultHandler
                public final void handle(int i) {
                    PlayVideoAdButton.$r8$lambda$Ul9ZnZCv_zxP5H0Vetd94qNQfPA(runnable2, i);
                }
            });
        }
        this.stageVisitor = setter;
        this.onClick = runnable;
    }

    public static /* synthetic */ void $r8$lambda$Ul9ZnZCv_zxP5H0Vetd94qNQfPA(Runnable runnable, int i) {
        if (i == 0) {
            runnable.run();
        }
    }

    @Override // io.blueflower.stapel2d.gui.Button, io.blueflower.stapel2d.gui.Gadget
    public void onClick() {
        super.onClick();
        VideoAdStage videoAdStage = this.videoAdStage;
        if (videoAdStage == null || !videoAdStage.isLoaded()) {
            return;
        }
        this.stageVisitor.set(this.videoAdStage);
        Runnable runnable = this.onClick;
        if (runnable != null) {
            runnable.run();
        }
    }

    @Override // io.blueflower.stapel2d.gui.Gadget
    public boolean isEnabled() {
        VideoAdStage videoAdStage = this.videoAdStage;
        return videoAdStage != null && videoAdStage.isLoaded();
    }

    @Override // info.flowersoft.theotown.ui.GoldButton, info.flowersoft.theotown.ui.IconButton, io.blueflower.stapel2d.gui.Button, io.blueflower.stapel2d.gui.Gadget
    public void draw(int i, int i2) {
        super.draw(i, i2);
        this.icon.setVisible(isEnabled());
        if (this.icon.isVisible()) {
            return;
        }
        Engine engine = this.skin.engine;
        float x = i + this.x + this.icon.getX();
        float y = i2 + this.y + this.icon.getY();
        float width = this.icon.getWidth();
        float height = this.icon.getHeight();
        float fMillis = ((TimeUtils.millis() % 1000) / 1000.0f) * 2.0f * 3.1415927f;
        float fMin = Math.min(width, height);
        engine.setColor(this.skin.cTextAccent);
        Drawing.getInstance().drawCircle(x + (width * 0.5f), y + (height * 0.5f), fMin * 0.2f, fMin * 0.3f, fMillis, fMillis + 1.5707964f, 1.0f, 1.0f, engine);
        engine.setColor(Colors.WHITE);
    }
}
