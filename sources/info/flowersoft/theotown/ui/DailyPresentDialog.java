package info.flowersoft.theotown.ui;

import com.google.android.gms.ads.AdSize;
import info.flowersoft.theotown.crossplatform.TheoTown;
import info.flowersoft.theotown.mechanics.GameHandler;
import info.flowersoft.theotown.mechanics.RewardManager;
import info.flowersoft.theotown.resources.Resources;
import info.flowersoft.theotown.util.Localizer;
import info.flowersoft.theotown.util.SpecialInt;
import info.flowersoft.theotown.util.StringFormatter;
import info.flowersoft.theotown.util.json.JSONArray;
import io.blueflower.stapel2d.drawing.Colors;
import io.blueflower.stapel2d.drawing.Engine;
import io.blueflower.stapel2d.gamestack.Stage;
import io.blueflower.stapel2d.gamestack.Stapel2DGameContext;
import io.blueflower.stapel2d.gamestack.Translator;
import io.blueflower.stapel2d.gui.Master;
import io.blueflower.stapel2d.gui.Panel;
import io.blueflower.stapel2d.util.Setter;

/* JADX INFO: loaded from: classes4.dex */
public class DailyPresentDialog extends Dialog {
    public DailyPresentDialog(final int i, Master master, final Translator translator, Setter<Stage> setter, Stapel2DGameContext stapel2DGameContext) {
        super(Resources.ICON_DAILY_AWARD, translator.translate(1401), translator.translate(3164), master);
        JSONArray jSONArrayOptJSONArray = Resources.CONFIG.optJSONObject("daily reward").optJSONArray("diamonds");
        JSONArray jSONArrayOptJSONArray2 = Resources.CONFIG.optJSONObject("daily reward").optJSONArray("ad diamonds");
        final int length = jSONArrayOptJSONArray.length();
        final SpecialInt[] specialIntArr = new SpecialInt[length];
        SpecialInt[] specialIntArr2 = new SpecialInt[jSONArrayOptJSONArray2.length()];
        for (int i2 = 0; i2 < jSONArrayOptJSONArray.length(); i2++) {
            specialIntArr[i2] = new SpecialInt(jSONArrayOptJSONArray.optInt(i2));
        }
        for (int i3 = 0; i3 < jSONArrayOptJSONArray2.length(); i3++) {
            specialIntArr2[i3] = new SpecialInt(jSONArrayOptJSONArray2.optInt(i3));
        }
        int i4 = i % length;
        final SpecialInt specialInt = specialIntArr[i4];
        final SpecialInt specialInt2 = specialIntArr2[i4];
        if (specialInt.get() > 1000 || specialInt2.get() > 1000) {
            return;
        }
        final GameHandler gameHandler = GameHandler.getInstance();
        final RewardManager rewardManager = gameHandler.getRewardManager();
        getTextFrame().setSize(getTextFrame().getWidth(), getTextFrame().getHeight() - 40);
        getTextFrame().setPosition(0, 40);
        new Panel(0, 0, getContentPane().getClientWidth(), 40, getContentPane()) { // from class: info.flowersoft.theotown.ui.DailyPresentDialog.1
            @Override // io.blueflower.stapel2d.gui.Panel, io.blueflower.stapel2d.gui.Gadget
            public void draw(int i5, int i6) {
                int i7;
                Engine engine = this.skin.engine;
                int i8 = i5 + this.x;
                int i9 = i6 + this.y;
                engine.setColor(Colors.WHITE);
                int i10 = 0;
                while (true) {
                    int i11 = length;
                    if (i10 >= i11) {
                        return;
                    }
                    int i12 = this.width;
                    int i13 = i8 + ((i12 / i11) * i10);
                    int i14 = i10 == i11 + (-1) ? (i12 - i13) + i8 : (i12 / i11) - 1;
                    int i15 = this.height;
                    boolean z = i10 == i % i11;
                    if (z) {
                        i7 = 255;
                        engine.drawNinePatch(Resources.IMAGE_WORLD, i13 - 5, i9 - 5, i14 + 10, i15 + 10, this.skin.npRectShadow);
                        engine.setColor(255, 253, 149);
                    } else {
                        i7 = 255;
                    }
                    engine.setTransparency(i10 <= i % length ? i7 : 80);
                    engine.setColor(this.skin.cMenuItem);
                    float f = i13;
                    float f2 = i9;
                    float f3 = i14;
                    float f4 = i15;
                    engine.drawNinePatch(Resources.IMAGE_WORLD, f, f2, f3, f4, this.skin.npWhiteRectBordered);
                    if (z) {
                        engine.setColor(this.skin.cTextAccent);
                        engine.drawNinePatch(Resources.IMAGE_WORLD, f, f2, f3, f4, this.skin.npWhiteRectEmpty);
                    }
                    engine.setTransparency(AdSize.WIDE_SKYSCRAPER_WIDTH);
                    engine.setColor(this.skin.cTextAccent);
                    if (i10 < i % length) {
                        engine.setColor(this.skin.cTextGreen);
                    }
                    engine.drawImage(Resources.IMAGE_WORLD, f, f2, f3, f4, Resources.FRAME_SHOPITEM_BACKGROUND);
                    if (z) {
                        engine.setTransparency(i7);
                    }
                    engine.setColor(this.skin.cMenuText);
                    engine.drawText(Resources.skin.fontDefault, Localizer.localizeDiamonds(specialIntArr[i10].get()), f, f2, f3, f4, 0.5f, 0.5f);
                    int i16 = i10 + 1;
                    engine.drawText(Resources.skin.fontSmall, StringFormatter.format(translator.translate(3462), Integer.valueOf(i16)), f, f2, f3, f4, 0.5f, 0.05f);
                    engine.setColor(Colors.WHITE);
                    for (int i17 = 0; i17 <= i10; i17++) {
                        engine.drawImage(Resources.IMAGE_WORLD, f, i9 - ((Math.min(i17, i10 - i17) % 2) * 3), f3, f4, (((i17 - (i10 / 2.0f)) * 0.8f) / i16) + 0.5f, 0.95f, Resources.ICON_DIAMOND_SMALL);
                    }
                    engine.setTransparency(i7);
                    if (i10 < i % length) {
                        engine.drawImage(Resources.IMAGE_WORLD, f, f2, f3, f4, 0.5f, 0.95f, Resources.ICON_OK);
                    }
                    i10 = i16;
                }
            }
        };
        new IconLabel(Resources.ICON_DIAMOND, "+" + Localizer.localizeDiamonds(specialInt.get()), 0, 0, getControlLine().getFirstPart());
        addHiddenCancelButton();
        setCanCloseViaBackground(false);
        new GoldButton(Resources.ICON_OK, translator.translate(3353), 0, 0, 0, getControlLine().getClientHeight(), getControlLine().getThirdPart()) { // from class: info.flowersoft.theotown.ui.DailyPresentDialog.2
            @Override // io.blueflower.stapel2d.gui.Button, io.blueflower.stapel2d.gui.Gadget
            public void onClick() {
                super.onClick();
                rewardManager.rewardPlayer(specialInt.get(), "daily present day " + i);
                TheoTown.analytics.logEvent("Daily Present", "Get " + specialInt.get() + " diamonds", "Have " + gameHandler.getDiamonds() + " diamonds now");
                DailyPresentDialog.this.setVisible(false);
            }
        }.setGolden(setter == null || specialInt2.get() <= 0);
        if (setter == null || specialInt2.get() <= 0) {
            return;
        }
        new PlayVideoAdButton("+" + (specialInt2.get() + specialInt.get()), getControlLine().getThirdPart(), new Runnable() { // from class: info.flowersoft.theotown.ui.DailyPresentDialog$$ExternalSyntheticLambda1
            @Override // java.lang.Runnable
            public final void run() {
                this.f$0.setVisible(false);
            }
        }, new Runnable() { // from class: info.flowersoft.theotown.ui.DailyPresentDialog$$ExternalSyntheticLambda0
            @Override // java.lang.Runnable
            public final void run() {
                DailyPresentDialog.m2368$r8$lambda$vqHQ21A8S3iLzP54GjZ6TzGZGw(rewardManager, specialInt, specialInt2, i, gameHandler);
            }
        }, setter, "Daily_Award_Diamonds", stapel2DGameContext).setMarked(true);
    }

    /* JADX INFO: renamed from: $r8$lambda$vqHQ21A8S3iLzP54Gj-Z6TzGZGw, reason: not valid java name */
    public static /* synthetic */ void m2368$r8$lambda$vqHQ21A8S3iLzP54GjZ6TzGZGw(RewardManager rewardManager, SpecialInt specialInt, SpecialInt specialInt2, int i, GameHandler gameHandler) {
        rewardManager.rewardPlayer(specialInt.get() + specialInt2.get(), "daily present + ad day " + i);
        TheoTown.analytics.logEvent("Daily Present", "Get " + specialInt.get() + "+" + specialInt2.get() + " diamonds", "Have " + gameHandler.getDiamonds() + " diamonds now");
    }
}
