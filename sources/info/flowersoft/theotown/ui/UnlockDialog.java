package info.flowersoft.theotown.ui;

import info.flowersoft.theotown.crossplatform.TheoTown;
import info.flowersoft.theotown.crossplatform.VideoAdStage;
import info.flowersoft.theotown.resources.Resources;
import info.flowersoft.theotown.resources.TimeSpan;
import info.flowersoft.theotown.util.StringFormatter;
import info.flowersoft.theotown.util.TimeUnlockable;
import io.blueflower.stapel2d.gamestack.Stage;
import io.blueflower.stapel2d.gamestack.Stapel2DGameContext;
import io.blueflower.stapel2d.gui.Master;
import io.blueflower.stapel2d.util.Getter;
import io.blueflower.stapel2d.util.Setter;

/* JADX INFO: loaded from: classes4.dex */
public class UnlockDialog extends BuyOrVideoDialog {
    public UnlockDialog(final TimeUnlockable timeUnlockable, Master master, final Setter<Stage> setter, Stapel2DGameContext stapel2DGameContext, String str, String str2) {
        super(Resources.ICON_CLOCK, stapel2DGameContext.getTranslator().translate(981), StringFormatter.format(stapel2DGameContext.getTranslator().translate(2339), TimeSpan.localize(timeUnlockable.getRemainingTimeMS())), master, Math.max((int) ((((timeUnlockable.getRemainingTimeMS() / 1000.0f) / 60.0f) + 1.0f) * 1.2f), 10), new Getter<Boolean>() { // from class: info.flowersoft.theotown.ui.UnlockDialog.1
            /* JADX WARN: Can't rename method to resolve collision */
            @Override // io.blueflower.stapel2d.util.Getter
            public Boolean get() {
                timeUnlockable.unlockImmediately();
                return Boolean.TRUE;
            }
        }, (Setter<Stage>) null, stapel2DGameContext, str, (String) null, false);
        getDiamondButton().setGolden(false);
        final long remainingTimeMS = timeUnlockable.getRemainingTimeMS();
        final long jMin = Math.min(remainingTimeMS, 1800000L);
        VideoAdStage.VideoAdStageFactory videoAdStageFactory = TheoTown.videoAdStageFactory;
        if (videoAdStageFactory != null) {
            final VideoAdStage videoAdStageCreate = videoAdStageFactory.create(stapel2DGameContext, str2, new VideoAdStage.AdResultHandler() { // from class: info.flowersoft.theotown.ui.UnlockDialog$$ExternalSyntheticLambda0
                @Override // info.flowersoft.theotown.crossplatform.VideoAdStage.AdResultHandler
                public final void handle(int i) {
                    UnlockDialog.$r8$lambda$usJgKw3EDfBKFkhp8bduvFepv5A(this.f$0, remainingTimeMS, timeUnlockable, jMin, i);
                }
            });
            new GoldButton(Resources.ICON_PLAY_AD_VIDEO, StringFormatter.format("-%s", TimeSpan.localize(jMin)), 0, 0, 0, getControlLine().getClientHeight(), getControlLine().getThirdPart()) { // from class: info.flowersoft.theotown.ui.UnlockDialog.2
                @Override // io.blueflower.stapel2d.gui.Button, io.blueflower.stapel2d.gui.Gadget
                public void onClick() {
                    super.onClick();
                    setter.set(videoAdStageCreate);
                }

                @Override // io.blueflower.stapel2d.gui.Gadget
                public boolean isEnabled() {
                    return videoAdStageCreate.isLoaded();
                }
            }.setMarked(true);
        }
    }

    public static /* synthetic */ void $r8$lambda$usJgKw3EDfBKFkhp8bduvFepv5A(UnlockDialog unlockDialog, long j, TimeUnlockable timeUnlockable, long j2, int i) {
        unlockDialog.getClass();
        if (i == 0) {
            TheoTown.analytics.logEvent("Video skip" + ((j / 1000) / 60) + "m", "wachted ad", "");
            timeUnlockable.reduceWaitingTime(j2);
            unlockDialog.setVisible(false);
        }
    }
}
