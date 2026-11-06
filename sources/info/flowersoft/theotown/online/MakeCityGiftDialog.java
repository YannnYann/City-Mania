package info.flowersoft.theotown.online;

import com.ironsource.C3844t;
import com.vungle.ads.internal.protos.Sdk;
import info.flowersoft.theotown.backend.Backend;
import info.flowersoft.theotown.backend.User;
import info.flowersoft.theotown.city.City;
import info.flowersoft.theotown.components.DefaultBudget;
import info.flowersoft.theotown.crossplatform.TheoTown;
import info.flowersoft.theotown.resources.Resources;
import info.flowersoft.theotown.ui.BuyOrVideoDialog;
import info.flowersoft.theotown.ui.Dialog;
import info.flowersoft.theotown.ui.IconLabel;
import info.flowersoft.theotown.ui.SpendDiamondsButton;
import info.flowersoft.theotown.ui.settings.SettingsListbox;
import info.flowersoft.theotown.util.Localizer;
import info.flowersoft.theotown.util.StringFormatter;
import io.blueflower.stapel2d.gamestack.Stage;
import io.blueflower.stapel2d.gamestack.Stapel2DGameContext;
import io.blueflower.stapel2d.gamestack.TranslationManager;
import io.blueflower.stapel2d.gamestack.Translator;
import io.blueflower.stapel2d.gui.Master;
import io.blueflower.stapel2d.util.IntList;
import io.blueflower.stapel2d.util.Setter;
import java.util.ArrayList;
import java.util.Iterator;
import java.util.List;

/* JADX INFO: loaded from: classes4.dex */
public class MakeCityGiftDialog extends Dialog {
    public List<String> amountNames;
    public IntList amountPrices;
    public List<Double> amounts;
    public final City city;
    public final Stapel2DGameContext context;
    public final CityGiftManager giftManager;
    public final IconLabel lblPrice;
    public final SettingsListbox listBox;
    public final GiftPrototype prototype;
    public final Setter<Stage> stageVisitor;
    public final Translator translator;
    public List<String> typeNames;
    public List<GiftType> types;

    public static class GiftPrototype {
        public double amount;
        public String message;
        public boolean priv;
        public GiftType type;
    }

    public MakeCityGiftDialog(CityGiftManager cityGiftManager, City city, Setter<Stage> setter, Master master, Stapel2DGameContext stapel2DGameContext) {
        super(Resources.ICON_NEXT, city.getTranslator().translate(666), "", 300, Sdk.SDKError.Reason.INVALID_ADUNIT_BID_PAYLOAD_VALUE, master);
        this.types = new ArrayList();
        this.typeNames = new ArrayList();
        this.amounts = new ArrayList();
        this.amountNames = new ArrayList();
        this.amountPrices = new IntList();
        this.giftManager = cityGiftManager;
        this.city = city;
        this.stageVisitor = setter;
        this.context = stapel2DGameContext;
        TranslationManager translator = stapel2DGameContext.getTranslator();
        this.translator = translator;
        addHiddenCancelButton();
        addButton(Resources.ICON_OK, translator.translate(1357), new Runnable() { // from class: info.flowersoft.theotown.online.MakeCityGiftDialog.1
            @Override // java.lang.Runnable
            public void run() {
                MakeCityGiftDialog.this.buy();
            }
        }).setGolden(true);
        IconLabel iconLabel = new IconLabel(TheoTown.PREMIUM ? Resources.ICON_ONLINE_REGION_COIN : Resources.ICON_DIAMOND, "283", 0, 0, getControlLine().getFirstPart());
        this.lblPrice = iconLabel;
        iconLabel.getLabel().setFont(Resources.skin.fontDefault);
        collectTypes();
        GiftPrototype giftPrototype = new GiftPrototype();
        this.prototype = giftPrototype;
        giftPrototype.type = GiftType.TEXT;
        giftPrototype.message = "";
        giftPrototype.priv = false;
        SettingsListbox settingsListbox = new SettingsListbox(translator.prefersRTL(), 0, 0, 0, 0, getContentPane());
        this.listBox = settingsListbox;
        settingsListbox.fillParent();
        settingsListbox.setTargetObject(giftPrototype);
        settingsListbox.setRebuildFunction(new Runnable() { // from class: info.flowersoft.theotown.online.MakeCityGiftDialog.2
            @Override // java.lang.Runnable
            public void run() {
                MakeCityGiftDialog.this.buildContent();
            }
        });
        buildContent();
    }

    public final void collectTypes() {
        this.types.clear();
        this.typeNames.clear();
        this.types.add(GiftType.TEXT);
        this.typeNames.add(this.translator.translate(1469));
        if (!this.city.getGameMode().hasInfinityMoney()) {
            this.types.add(GiftType.CASH);
            this.typeNames.add(this.translator.translate(320));
        }
        User user = Backend.getInstance().getUser();
        if (user.isValid() && user.isForumConnected() && user.getAdmin() != 0) {
            this.types.add(GiftType.DIAMOND);
            this.typeNames.add(this.translator.translate(1610));
        }
    }

    public final void collectAmounts() {
        this.amounts.clear();
        this.amountNames.clear();
        this.amountPrices.clear();
        GiftType giftType = this.prototype.type;
        if (giftType == GiftType.CASH) {
            this.amountPrices.add(20);
            this.amountPrices.add(40);
            this.amountPrices.add(90);
            for (int i = 0; i < this.amountPrices.size(); i++) {
                double moneyForDiamonds = ((DefaultBudget) this.city.getComponent(0)).getMoneyForDiamonds(this.amountPrices.get(i) + 10);
                this.amounts.add(Double.valueOf(moneyForDiamonds));
                this.amountNames.add(Localizer.localizeMoney(moneyForDiamonds));
            }
            return;
        }
        if (giftType == GiftType.DIAMOND) {
            this.amounts.add(Double.valueOf(10.0d));
            this.amounts.add(Double.valueOf(30.0d));
            this.amounts.add(Double.valueOf(100.0d));
            Iterator<Double> it = this.amounts.iterator();
            while (it.hasNext()) {
                double dDoubleValue = it.next().doubleValue();
                this.amountNames.add(Localizer.localizeDiamonds((long) dDoubleValue));
                this.amountPrices.add(((int) dDoubleValue) * 2);
            }
        }
    }

    public final void buildContent() {
        this.listBox.removeAllItems();
        collectAmounts();
        this.lblPrice.getLabel().setText("" + getPrice());
        try {
            this.listBox.addValueSettingsItem(this.translator.translate(2315), (String[]) this.typeNames.toArray(new String[0]), (GiftType[]) this.types.toArray(new GiftType[0]), GiftPrototype.class.getDeclaredField("type"), true);
            if (!this.amounts.isEmpty()) {
                this.listBox.addValueSettingsItem(this.translator.translate(86), (String[]) this.amountNames.toArray(new String[0]), (Double[]) this.amounts.toArray(new Double[0]), GiftPrototype.class.getDeclaredField(C3844t.l), true);
            }
            this.listBox.addEditableTextItem(this.translator.translate(432), this.translator.translate(2853), GiftPrototype.class.getDeclaredField("message"), true, this.context);
            this.listBox.addBinarySettingsItem(this.translator.translate(1927), GiftPrototype.class.getDeclaredField("priv"), true);
        } catch (NoSuchFieldException e) {
            e.printStackTrace();
        }
    }

    public final int getPrice() {
        int i;
        boolean z;
        int i2 = 0;
        if (!this.amounts.isEmpty()) {
            int i3 = 0;
            while (true) {
                if (i3 >= this.amounts.size()) {
                    i = 0;
                    z = false;
                    break;
                }
                if (this.amounts.get(i3).doubleValue() == this.prototype.amount) {
                    i = this.amountPrices.get(i3);
                    z = true;
                    break;
                }
                i3++;
            }
            if (z) {
                i2 = i;
            } else {
                this.prototype.amount = this.amounts.get(0).doubleValue();
                i2 = this.amountPrices.get(0);
            }
        }
        return i2 + 10;
    }

    public final void buy() {
        int price = getPrice();
        Master master = (Master) getContentPane().getAbsoluteParent();
        String authorName = this.city.getAuthorName();
        SpendDiamondsButton.SuccessHandler successHandler = new SpendDiamondsButton.SuccessHandler() { // from class: info.flowersoft.theotown.online.MakeCityGiftDialog.3
            @Override // info.flowersoft.theotown.ui.SpendDiamondsButton.SuccessHandler
            public void handle(final SpendDiamondsButton.HandlerReporter handlerReporter) {
                MakeCityGiftDialog.this.giftManager.createGift(MakeCityGiftDialog.this.prototype.type, MakeCityGiftDialog.this.prototype.amount, MakeCityGiftDialog.this.prototype.message, MakeCityGiftDialog.this.prototype.priv, new Runnable() { // from class: info.flowersoft.theotown.online.MakeCityGiftDialog.3.1
                    @Override // java.lang.Runnable
                    public void run() {
                        handlerReporter.report(true);
                        MakeCityGiftDialog.this.giftManager.fetch(true);
                    }
                }, new Setter<String>() { // from class: info.flowersoft.theotown.online.MakeCityGiftDialog.3.2
                    @Override // io.blueflower.stapel2d.util.Setter
                    public void set(String str) {
                        handlerReporter.report(false);
                    }
                });
            }
        };
        if (TheoTown.PREMIUM) {
            new BuyOrVideoDialog(Resources.ICON_PLUS, StringFormatter.format(this.translator.translate(2909), authorName), StringFormatter.format(this.translator.translate(269), authorName), master, BuyOrVideoDialog.combinePriceAndFlags(price, SpendDiamondsButton.FLAG_REGION_COIN), successHandler, this.stageVisitor, this.context, "make gift", (String) null, false).setVisible(true);
        } else {
            new BuyOrVideoDialog(Resources.ICON_PLUS, StringFormatter.format(this.translator.translate(2909), authorName), StringFormatter.format(this.translator.translate(269), authorName), master, price, successHandler, this.stageVisitor, this.context, "make gift", (String) null, false).setVisible(true);
        }
    }
}
