package info.flowersoft.theotown.minigame;

import com.google.android.gms.ads.AdSize;
import com.unity3d.services.UnityAdsConstants;
import info.flowersoft.theotown.city.City;
import info.flowersoft.theotown.crossplatform.TheoTown;
import info.flowersoft.theotown.mechanics.GameHandler;
import info.flowersoft.theotown.minigame.IdleGame;
import info.flowersoft.theotown.resources.Resources;
import info.flowersoft.theotown.ui.Dialog;
import info.flowersoft.theotown.ui.GoldButton;
import info.flowersoft.theotown.ui.IconLabel;
import info.flowersoft.theotown.ui.ProgressBar;
import info.flowersoft.theotown.util.Localizer;
import info.flowersoft.theotown.util.StringFormatter;
import io.blueflower.stapel2d.drawing.Colors;
import io.blueflower.stapel2d.drawing.Engine;
import io.blueflower.stapel2d.drawing.Font;
import io.blueflower.stapel2d.gamestack.Translator;
import io.blueflower.stapel2d.gui.Label;
import io.blueflower.stapel2d.gui.ListBox;
import io.blueflower.stapel2d.gui.ListItem;
import io.blueflower.stapel2d.gui.Master;
import io.blueflower.stapel2d.gui.Skin;

/* JADX INFO: loaded from: classes4.dex */
public class IdleGameStageDialogBuilder {
    public City city;
    public Currency currency;
    public Dialog dialog;
    public IdleGame game;
    public IconLabel lblDiamonds;
    public Label lblMajor;
    public int level;
    public ListBox listBox;
    public String majorEventName;
    public long priceForUpgrade;
    public ProgressBar progressBar;
    public int stage;
    public Translator translator;
    public final int DIAMONDS_PER_MAJOR = 2;
    public int upgradeLevels = 1;
    public int[] majorLevelRange = new int[2];

    public IdleGameStageDialogBuilder(City city, Translator translator, IdleGame idleGame, int i, Currency currency) {
        this.city = city;
        this.translator = translator;
        this.game = idleGame;
        this.stage = i;
        this.level = idleGame.getLevel(i);
        this.currency = currency;
    }

    public Dialog build(Master master) {
        Dialog dialog = new Dialog(Resources.ICON_UPGRADE, this.game.getStageTitle(this.stage), "", 330, AdSize.WIDE_SKYSCRAPER_WIDTH, master);
        this.dialog = dialog;
        dialog.addHiddenCancelButton();
        new GoldButton(Resources.ICON_UPGRADE, "", 0, 0, 0, this.dialog.getControlLine().getClientHeight(), this.dialog.getControlLine().getThirdPart()) { // from class: info.flowersoft.theotown.minigame.IdleGameStageDialogBuilder.1
            @Override // io.blueflower.stapel2d.gui.Button, io.blueflower.stapel2d.gui.Gadget
            public void onClick() {
                super.onClick();
                IdleGameStageDialogBuilder.this.upgrade();
            }

            @Override // io.blueflower.stapel2d.gui.SensitiveGadget, io.blueflower.stapel2d.gui.Gadget
            public void onUpdate() {
                super.onUpdate();
                setText(Localizer.localizeBigNumber(IdleGameStageDialogBuilder.this.priceForUpgrade, false) + IdleGameStageDialogBuilder.this.currency.getUnit());
                this.parent.layout();
                boolean zCanSpend = IdleGameStageDialogBuilder.this.currency.canSpend((double) IdleGameStageDialogBuilder.this.priceForUpgrade);
                if (zCanSpend) {
                    this.text.setColor(this.skin.cTextGreen);
                } else {
                    this.text.setColor(this.skin.cTextRed);
                }
                setGolden(zCanSpend);
                setEnabled(zCanSpend);
            }
        };
        this.dialog.setDrawBackground(true);
        Label label = new Label("", 0, 6, 0, 0, this.dialog.getControlLine().getFirstPart());
        this.lblMajor = label;
        label.setFont(Resources.skin.fontSmall);
        this.progressBar = new ProgressBar(0, 14, 100, this.dialog.getControlLine().getFirstPart());
        IconLabel iconLabel = new IconLabel(Resources.ICON_DIAMOND_SMALL, "+2", 0, 6, this.dialog.getControlLine().getFirstPart());
        this.lblDiamonds = iconLabel;
        iconLabel.getLabel().setFont(Resources.skin.fontSmall);
        ListBox listBox = new ListBox(0, 0, 0, 0, this.dialog.getContentPane());
        this.listBox = listBox;
        listBox.fillParent();
        update();
        return this.dialog;
    }

    public final void update() {
        this.level = this.game.getLevel(this.stage);
        this.priceForUpgrade = 0L;
        for (int i = 0; i < this.upgradeLevels; i++) {
            this.priceForUpgrade = (long) (this.priceForUpgrade + this.game.priceOfUpgrade(this.stage, this.level + i));
        }
        this.dialog.setTitle(this.game.getStageTitle(this.stage));
        rebuildList();
        this.dialog.setVisible(false);
        this.dialog.setVisible(true, false);
        this.game.getMajorLevelRange(this.stage, this.level, this.majorLevelRange);
        this.majorEventName = this.city.getId() + ":" + this.game.getId() + ":" + this.stage + ":" + (this.majorLevelRange[1] + 1);
        this.lblDiamonds.setVisible((GameHandler.getInstance().isEventRedeemed(this.majorEventName) || this.city.getGameMode().hasInfiniteIdleMoney() || TheoTown.PREMIUM || this.city.isReadonly()) ? false : true);
        ProgressBar progressBar = this.progressBar;
        int i2 = this.level;
        int i3 = this.majorLevelRange[0];
        progressBar.setProgress((i2 - i3) / (r4[1] - i3));
        this.lblMajor.setText(StringFormatter.format(this.translator.translate(1862), Integer.valueOf(this.majorLevelRange[1] + 2)));
    }

    public final void upgrade() {
        if (this.game.getLevel(this.stage) + this.upgradeLevels > this.majorLevelRange[1] && !this.city.getGameMode().hasInfiniteIdleMoney() && !TheoTown.PREMIUM && !this.city.isReadonly()) {
            GameHandler.getInstance().earnDiamondsEvent(2, this.majorEventName, "idle upgrade " + this.majorEventName, true);
        }
        this.currency.spend(this.priceForUpgrade);
        this.game.upgrade(this.stage, this.upgradeLevels);
        update();
    }

    public final void rebuildList() {
        double dNormalizeToThreeDigits;
        double dNormalizeToThreeDigits2;
        this.listBox.removeAllItems();
        int rank = this.game.getRank();
        for (int i = 0; i < this.game.countSpecs(); i++) {
            IdleGame.Spec spec = this.game.getSpec(i);
            String name = spec.getName();
            String unit = spec.getUnit();
            double value = spec.getValue(this.stage, this.level, rank);
            double value2 = spec.getValue(this.stage, this.level + this.upgradeLevels, rank);
            if (spec.isInt()) {
                dNormalizeToThreeDigits = Math.round(value);
                dNormalizeToThreeDigits2 = Math.round(Math.round(value2) - dNormalizeToThreeDigits);
            } else {
                dNormalizeToThreeDigits = normalizeToThreeDigits(value);
                dNormalizeToThreeDigits2 = normalizeToThreeDigits(dNormalizeToThreeDigits) - dNormalizeToThreeDigits;
            }
            this.listBox.addItem(new SpecListItem(name, Localizer.localizeBigNumber(dNormalizeToThreeDigits, false) + unit, Localizer.localizeBigNumber(dNormalizeToThreeDigits2, true) + unit));
        }
        this.listBox.addItem(new SpecListItem(this.game.getIncomeTitle(), Localizer.localizeBigNumber(this.game.income(this.stage, this.level), false) + this.currency.getUnit(), Localizer.localizeBigNumber(this.game.income(this.stage, this.level + this.upgradeLevels) - this.game.income(this.stage, this.level), true) + this.currency.getUnit()));
    }

    public final double normalizeToThreeDigits(double d) {
        if (d == 0.0d) {
            return d;
        }
        return Math.pow(10.0d, Math.round((float) Math.floor(Math.max(Math.log10(d) - 2.0d, 0.0d)))) * Math.round(d / r0);
    }

    public class SpecListItem extends ListItem {
        public String dValue;
        public String name;
        public String value;

        @Override // io.blueflower.stapel2d.gui.ListItem
        public int getHeight(boolean z) {
            return 24;
        }

        public SpecListItem(String str, String str2, String str3) {
            super("");
            this.name = str;
            this.value = str2;
            this.dValue = str3;
        }

        @Override // io.blueflower.stapel2d.gui.ListItem
        public void draw(boolean z, int i, int i2, int i3, int i4, int i5, Skin skin) {
            drawBackground(false, i, i2, i3, i4, i5, skin);
            Font font = skin.fontDefault;
            Engine engine = skin.engine;
            engine.setColor(skin.cText);
            float f = i2 + 8;
            float f2 = i3;
            float f3 = i4 - 16;
            float f4 = i5;
            engine.drawText(font, this.name, f, f2, f3, f4, UnityAdsConstants.SafeGuards.InitRequestRetryPolicy.MIN_JITTER_PCT, 0.5f);
            engine.drawText(font, this.value, f, f2, (r1 * 2) / 3, f4, 1.0f, 0.5f);
            engine.setColor(skin.cTextGreen);
            engine.drawText(font, this.dValue, f, f2, f3, f4, 1.0f, 0.5f);
            engine.setColor(Colors.WHITE);
        }
    }
}
