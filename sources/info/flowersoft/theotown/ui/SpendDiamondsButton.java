package info.flowersoft.theotown.ui;

import com.ironsource.mediationsdk.logger.IronSourceError;
import com.vungle.ads.internal.protos.Sdk;
import info.flowersoft.theotown.crossplatform.TheoTown;
import info.flowersoft.theotown.mechanics.GameHandler;
import info.flowersoft.theotown.resources.Resources;
import info.flowersoft.theotown.util.Localizer;
import info.flowersoft.theotown.util.StringFormatter;
import io.blueflower.stapel2d.gamestack.Stage;
import io.blueflower.stapel2d.gamestack.Stapel2DGameContext;
import io.blueflower.stapel2d.gamestack.Translator;
import io.blueflower.stapel2d.gui.Gadget;
import io.blueflower.stapel2d.gui.Master;
import io.blueflower.stapel2d.util.Getter;
import io.blueflower.stapel2d.util.Setter;

/* JADX INFO: loaded from: classes4.dex */
public class SpendDiamondsButton extends GoldButton {
    public static int FLAG_REGION_COIN = 1;
    public final int amount;
    public final Stapel2DGameContext context;
    public final String diamondId;
    public final int flags;
    public final SuccessHandler onSuccess;
    public final Setter<Stage> stageVisitor;
    public final Translator translator;

    public interface HandlerReporter {
        void report(boolean z);
    }

    public interface SuccessHandler {
        void handle(HandlerReporter handlerReporter);
    }

    public SpendDiamondsButton(int i, int i2, Gadget gadget, Stapel2DGameContext stapel2DGameContext, final Getter<Boolean> getter, int i3, int i4, Setter<Stage> setter, String str) {
        this(i, i2, gadget, stapel2DGameContext, new SuccessHandler() { // from class: info.flowersoft.theotown.ui.SpendDiamondsButton.1
            @Override // info.flowersoft.theotown.ui.SpendDiamondsButton.SuccessHandler
            public void handle(HandlerReporter handlerReporter) {
                handlerReporter.report(((Boolean) getter.get()).booleanValue());
            }
        }, i3, i4, setter, str);
    }

    public SpendDiamondsButton(int i, int i2, Gadget gadget, Stapel2DGameContext stapel2DGameContext, SuccessHandler successHandler, int i3, int i4, Setter<Stage> setter, String str) {
        super(getFlagsIcon(i4), "", i, i2, 0, gadget.getClientHeight(), gadget);
        this.context = stapel2DGameContext;
        this.translator = stapel2DGameContext.getTranslator();
        this.onSuccess = successHandler;
        this.amount = i3;
        this.flags = i4;
        this.stageVisitor = setter;
        this.diamondId = str;
    }

    @Override // io.blueflower.stapel2d.gui.SensitiveGadget, io.blueflower.stapel2d.gui.Gadget
    public void onUpdate() {
        boolean z;
        String str;
        super.onUpdate();
        if (isRegionCoinFlagSet(this.flags)) {
            int regionCoins = GameHandler.getInstance().getRegionCoins();
            z = regionCoins >= this.amount;
            str = StringFormatter.format(this.translator.translate(Sdk.SDKError.Reason.MRAID_UNRECOGNIZED_COMMAND_VALUE), Localizer.localizeDiamonds(this.amount), Localizer.localizeDiamonds(regionCoins));
        } else {
            int diamonds = GameHandler.getInstance().getDiamonds();
            z = diamonds >= this.amount;
            str = StringFormatter.format(this.translator.translate(Sdk.SDKError.Reason.MRAID_UNRECOGNIZED_COMMAND_VALUE), Localizer.localizeDiamonds(this.amount), Localizer.localizeDiamonds(diamonds));
        }
        String str2 = StringFormatter.format(this.translator.translate(z ? IronSourceError.ERROR_IS_LOAD_DURING_SHOW : 339), str);
        String text = getText();
        setText(str2);
        if (str2.equals(text)) {
            return;
        }
        this.parent.layout();
    }

    @Override // io.blueflower.stapel2d.gui.Button, io.blueflower.stapel2d.gui.Gadget
    public void onClick() {
        super.onClick();
        final GameHandler gameHandler = GameHandler.getInstance();
        if (isRegionCoinFlagSet(this.flags)) {
            if (gameHandler.getRegionCoins() >= this.amount) {
                this.onSuccess.handle(new HandlerReporter() { // from class: info.flowersoft.theotown.ui.SpendDiamondsButton.2
                    @Override // info.flowersoft.theotown.ui.SpendDiamondsButton.HandlerReporter
                    public void report(boolean z) {
                        if (z) {
                            gameHandler.spendRegionCoins(SpendDiamondsButton.this.amount);
                            TheoTown.analytics.logEvent("Spend region coins", SpendDiamondsButton.this.diamondId, "" + SpendDiamondsButton.this.amount);
                        }
                    }
                });
                return;
            }
            TheoTown.analytics.logEvent("Not enough region coins", this.diamondId, "" + this.amount);
            new RegionCoinDialog(this.translator, (Master) getAbsoluteParent()).setVisible(true);
            return;
        }
        if (gameHandler.getDiamonds() >= this.amount) {
            TheoTown.analytics.logEvent("Spend diamonds", this.diamondId, "" + this.amount);
            gameHandler.spendDiamonds(this.amount, "diamond button " + this.diamondId);
            this.onSuccess.handle(new HandlerReporter() { // from class: info.flowersoft.theotown.ui.SpendDiamondsButton.3
                @Override // info.flowersoft.theotown.ui.SpendDiamondsButton.HandlerReporter
                public void report(boolean z) {
                    if (z) {
                        return;
                    }
                    gameHandler.earnDiamonds(SpendDiamondsButton.this.amount, false, "cancel diamond button " + SpendDiamondsButton.this.diamondId);
                }
            });
            return;
        }
        TheoTown.analytics.logEvent("Not enough diamonds", this.diamondId, "" + this.amount);
        TheoTown.analytics.logEvent("Shop", "Open", this.diamondId);
        new DiamondShopDialog((Master) getAbsoluteParent(), this.context, this.stageVisitor).setVisible(true);
    }

    public static boolean isRegionCoinFlagSet(int i) {
        return (i & FLAG_REGION_COIN) != 0;
    }

    public static int getFlagsIcon(int i) {
        if (isRegionCoinFlagSet(i)) {
            return Resources.ICON_ONLINE_REGION_COIN;
        }
        return Resources.ICON_DIAMOND;
    }
}
