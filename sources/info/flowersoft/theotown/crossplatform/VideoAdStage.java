package info.flowersoft.theotown.crossplatform;

import com.badlogic.gdx.utils.TimeUtils;
import info.flowersoft.theotown.stages.BaseStage;
import info.flowersoft.theotown.util.Loadable;
import io.blueflower.stapel2d.gamestack.Stapel2DGameContext;
import io.blueflower.stapel2d.util.SessionLogger;

/* JADX INFO: loaded from: classes4.dex */
public abstract class VideoAdStage extends BaseStage implements Loadable {
    public AdResultHandler handler;
    public String placement;
    public long startMs;

    public interface AdResultHandler {
        void handle(int i);
    }

    public interface VideoAdStageFactory {
        VideoAdStage create(Stapel2DGameContext stapel2DGameContext, String str, AdResultHandler adResultHandler);
    }

    public VideoAdStage(Stapel2DGameContext stapel2DGameContext, String str, AdResultHandler adResultHandler) {
        super(stapel2DGameContext);
        this.placement = str;
        this.handler = adResultHandler;
    }

    public void handleStart() {
        this.startMs = TimeUtils.millis();
    }

    public void handleSuccess() {
        SessionLogger.logAd(this.placement, (int) ((TimeUtils.millis() - this.startMs) / 1000));
    }
}
