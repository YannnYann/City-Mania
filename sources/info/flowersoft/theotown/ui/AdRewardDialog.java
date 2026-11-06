package info.flowersoft.theotown.ui;

import com.vungle.ads.internal.protos.Sdk;
import info.flowersoft.theotown.crossplatform.TheoTown;
import info.flowersoft.theotown.mechanics.GameHandler;
import info.flowersoft.theotown.mechanics.RewardManager;
import info.flowersoft.theotown.resources.Resources;
import info.flowersoft.theotown.util.Localizer;
import info.flowersoft.theotown.util.SpecialInt;
import io.blueflower.stapel2d.gamestack.Stage;
import io.blueflower.stapel2d.gamestack.Stapel2DGameContext;
import io.blueflower.stapel2d.gui.Master;
import io.blueflower.stapel2d.util.Setter;

/* JADX INFO: loaded from: classes4.dex */
public class AdRewardDialog extends Dialog {
    public AdRewardDialog(Setter<Stage> setter, Master master, Stapel2DGameContext stapel2DGameContext) {
        super(Resources.ICON_PLAY_AD_VIDEO, stapel2DGameContext.getTranslator().translate(495), stapel2DGameContext.getTranslator().translate(453), Sdk.SDKError.Reason.AD_LOAD_FAIL_PLACEMENT_ID_MISMATCH_VALUE, 120, master);
        final GameHandler gameHandler = GameHandler.getInstance();
        final RewardManager rewardManager = gameHandler.getRewardManager();
        final SpecialInt specialInt = new SpecialInt(Resources.CONFIG.optJSONObject("ad reward").optInt("diamonds"));
        TheoTown.analytics.logEvent("Ad Reward " + rewardManager.getAdRewardCount(), "Open", "");
        new IconLabel(Resources.ICON_DIAMOND, "+" + Localizer.localizeDiamonds(specialInt.get()), 0, 0, getControlLine().getFirstPart());
        Runnable runnable = new Runnable() { // from class: info.flowersoft.theotown.ui.AdRewardDialog$$ExternalSyntheticLambda0
            @Override // java.lang.Runnable
            public final void run() {
                AdRewardDialog.$r8$lambda$ex_iNvu4Gu0IpgWGYMSfMKvraeA(rewardManager, specialInt, gameHandler);
            }
        };
        addHiddenCancelButton();
        setCanCloseViaBackground(false);
        new PlayVideoAdButton(stapel2DGameContext.getTranslator().translate(1570), getControlLine().getThirdPart(), new Runnable() { // from class: info.flowersoft.theotown.ui.AdRewardDialog$$ExternalSyntheticLambda1
            @Override // java.lang.Runnable
            public final void run() {
                this.f$0.setVisible(false);
            }
        }, runnable, setter, "Ad_Award_Diamonds", stapel2DGameContext).setMarked(true);
    }

    public static /* synthetic */ void $r8$lambda$ex_iNvu4Gu0IpgWGYMSfMKvraeA(RewardManager rewardManager, SpecialInt specialInt, GameHandler gameHandler) {
        rewardManager.rewardPlayerForAd(specialInt.get(), "ad reward " + rewardManager.getAdRewardCount());
        TheoTown.analytics.logEvent("Ad Reward " + rewardManager.getAdRewardCount(), "Get " + specialInt.get() + " diamonds", "Have " + gameHandler.getDiamonds() + " diamonds now");
    }
}
