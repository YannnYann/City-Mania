package info.flowersoft.theotown.stages;

import com.google.android.gms.ads.AdSize;
import com.unity3d.services.UnityAdsConstants;
import info.flowersoft.theotown.InAppHandler;
import info.flowersoft.theotown.draft.AnimationDraft;
import info.flowersoft.theotown.draft.FeatureDraft;
import info.flowersoft.theotown.resources.Drafts;
import info.flowersoft.theotown.resources.Resources;
import info.flowersoft.theotown.ui.ColorRect;
import info.flowersoft.theotown.ui.Dialog;
import info.flowersoft.theotown.ui.FeaturesShopDialog;
import info.flowersoft.theotown.ui.GoldButton;
import info.flowersoft.theotown.util.DraftLocalizer;
import info.flowersoft.theotown.util.Localizer;
import info.flowersoft.theotown.util.StringFormatter;
import io.blueflower.stapel2d.drawing.Color;
import io.blueflower.stapel2d.drawing.Colors;
import io.blueflower.stapel2d.drawing.Engine;
import io.blueflower.stapel2d.drawing.Image;
import io.blueflower.stapel2d.gamestack.GameStack;
import io.blueflower.stapel2d.gamestack.Stapel2DGameContext;
import io.blueflower.stapel2d.gui.Panel;
import io.blueflower.stapel2d.util.Setter;
import io.blueflower.stapel2d.util.Tuple;

/* JADX INFO: loaded from: classes4.dex */
public class StarterPackOfferStage extends BaseStage {
    public final AnimationDraft SHOW_INFO;
    public Dialog dialog;
    public final FeatureDraft feature;
    public final int icon;

    public StarterPackOfferStage(int i, FeatureDraft featureDraft, Stapel2DGameContext stapel2DGameContext) {
        super(stapel2DGameContext);
        this.SHOW_INFO = (AnimationDraft) Drafts.get("$anim_toolbar_showinfo00", AnimationDraft.class);
        this.icon = i;
        this.feature = featureDraft;
    }

    @Override // info.flowersoft.theotown.stages.BaseStage, io.blueflower.stapel2d.gamestack.Stage
    public void prepare() {
        super.prepare();
        InAppHandler.getInstance().fetch();
    }

    @Override // info.flowersoft.theotown.stages.BaseStage, io.blueflower.stapel2d.gamestack.Stage
    public void enter() {
        super.enter();
        final DraftLocalizer draftLocalizer = new DraftLocalizer(this.context, "");
        Dialog dialog = new Dialog(this.icon, draftLocalizer.getTitle(this.feature), "", Math.min(this.gui.getWidth(), 600), Math.min(this.gui.getHeight(), 400), this.gui);
        this.dialog = dialog;
        Panel contentPane = dialog.getContentPane();
        final int clientWidth = contentPane.getClientWidth();
        final int clientHeight = contentPane.getClientHeight();
        new ColorRect(Resources.skin.cMenuBg, this.dialog.getContentPane());
        new Panel(0, 0, clientWidth, clientHeight, contentPane) { // from class: info.flowersoft.theotown.stages.StarterPackOfferStage.1
            @Override // io.blueflower.stapel2d.gui.Gadget
            public void onClick() {
                FeatureDraft featureDraft = StarterPackOfferStage.this.feature.unlocks[Math.max(Math.min(((int) (((getTouchPoint().getY() * StarterPackOfferStage.this.gui.getHeightRatio()) - getAbsoluteY()) - 60.0f)) / ((clientHeight - 60) / StarterPackOfferStage.this.feature.unlocks.length), StarterPackOfferStage.this.feature.unlocks.length - 1), 0)];
                String title = draftLocalizer.getTitle(featureDraft);
                String text = draftLocalizer.getText(featureDraft);
                Tuple<Integer, String> extraInfo = FeaturesShopDialog.getExtraInfo(featureDraft);
                if (extraInfo != null) {
                    text = text + "\n\n" + StringFormatter.format(StarterPackOfferStage.this.translator.translate(1882), extraInfo.getSecond());
                }
                if (!featureDraft.consumable && featureDraft.isUnlocked()) {
                    text = "*" + StarterPackOfferStage.this.translator.translate(1983) + "\n\n" + text;
                }
                Dialog dialog2 = new Dialog(Resources.ICON_INFO, title, text, StarterPackOfferStage.this.gui);
                GoldButton goldButtonAddCancelButton = dialog2.addCancelButton(Resources.ICON_OK, StarterPackOfferStage.this.translator.translate(2447));
                goldButtonAddCancelButton.setGolden(true);
                goldButtonAddCancelButton.setWidth(120);
                goldButtonAddCancelButton.addSensitiveKey(66);
                dialog2.getControlLine().layout();
                dialog2.setVisible(true);
            }

            @Override // io.blueflower.stapel2d.gui.Panel, io.blueflower.stapel2d.gui.Gadget
            public void draw(int i, int i2) {
                int i3 = i + this.x;
                int i4 = i2 + this.y;
                Engine engine = this.skin.engine;
                float f = i3;
                float f2 = i4;
                engine.setClipRect(f, f2, getClientWidth(), getClientHeight());
                engine.setColor(Colors.MARINE_BLUE);
                Color color = Colors.WHITE;
                engine.setColor(color);
                engine.setTransparency(80);
                engine.drawImage(Resources.IMAGE_WORLD, f, f2, this.width, this.height, Resources.FRAME_SHOPITEM_BACKGROUND);
                float f3 = f;
                char c = 0;
                int i5 = StarterPackOfferStage.this.feature.unlocks[StarterPackOfferStage.this.feature.unlocks.length - 1].frames[0];
                float f4 = 10.0f;
                engine.setScale(10.0f, 10.0f);
                engine.setTransparency(30);
                engine.drawImage(Resources.IMAGE_WORLD, f3, f2, i5);
                int i6 = 255;
                engine.setTransparency(255);
                char c2 = 0;
                engine.setScale(1.0f, 1.0f);
                engine.setColor(color);
                float f5 = i3 + 4;
                engine.drawText(this.skin.fontDefault, draftLocalizer.getText(StarterPackOfferStage.this.feature), f5, i4 + 2);
                if (StarterPackOfferStage.this.feature.diamonds.get() > 0) {
                    engine.drawImage(Resources.IMAGE_WORLD, f5, i4 + 20, Resources.ICON_DIAMOND);
                    engine.drawText(this.skin.fontBig, "+" + Localizer.localizeDiamonds(StarterPackOfferStage.this.feature.diamonds.get()), i3 + 28, i4 + 22);
                }
                int i7 = 0;
                while (i7 < StarterPackOfferStage.this.feature.unlocks.length) {
                    FeatureDraft featureDraft = StarterPackOfferStage.this.feature.unlocks[i7];
                    int i8 = featureDraft.frames[c];
                    String title = draftLocalizer.getTitle(featureDraft);
                    if (!featureDraft.consumable && featureDraft.isUnlocked()) {
                        title = title + "*";
                    }
                    String str = title;
                    float length = (clientHeight - 60) / StarterPackOfferStage.this.feature.unlocks.length;
                    float f6 = (i7 * length) + i4 + 60;
                    engine.setColor(this.skin.cMenuItem);
                    engine.setTransparency(AdSize.WIDE_SKYSCRAPER_WIDTH);
                    char c3 = c;
                    float f7 = f4;
                    engine.drawNinePatch(Resources.IMAGE_WORLD, f3 + 2.0f, f6, clientWidth - 4, length - 2.0f, Resources.skin.npWhiteRectBordered);
                    engine.setTransparency(i6);
                    Color color2 = Colors.WHITE;
                    engine.setColor(color2);
                    Image image = Resources.IMAGE_WORLD;
                    float f8 = f6 + (0.5f * length);
                    engine.drawImage(image, f3 + f7, (f8 - 32.0f) + ((image.getHandleY(i8) * 64.0f) / Resources.IMAGE_WORLD.getHeight(i8)), 128.0f, 64.0f, i8);
                    engine.setColor(Colors.BLACK);
                    engine.setTransparency(80);
                    float f9 = f3;
                    engine.drawImage(Resources.IMAGE_WORLD, f9, f8, 143.0f, length * (-0.5f), Resources.FRAME_GRADIENT_Y);
                    engine.setColor(color2);
                    engine.setTransparency(i6);
                    float width = this.skin.fontDefault.getWidth(str);
                    float fMin = Math.min(((clientWidth - f9) - 143.0f) / width, 1.0f);
                    engine.setScale(fMin, fMin);
                    float f10 = f9 + 143.0f;
                    engine.drawText(this.skin.fontDefault, str, f10, f6, UnityAdsConstants.SafeGuards.InitRequestRetryPolicy.MIN_JITTER_PCT, length, UnityAdsConstants.SafeGuards.InitRequestRetryPolicy.MIN_JITTER_PCT, 0.2f);
                    Image image2 = Resources.IMAGE_WORLD;
                    engine.drawImage(image2, f10 + (fMin * width), (f6 + (length * 0.2f)) - (image2.getHeight(StarterPackOfferStage.this.SHOW_INFO.frames[c3]) * 0.25f), StarterPackOfferStage.this.SHOW_INFO.frames[c3]);
                    engine.setScale(1.0f, 1.0f);
                    i7++;
                    f4 = f7;
                    i6 = i6;
                    c2 = 0;
                    f3 = f9;
                    c = c3;
                }
                engine.resetClipping();
            }
        };
        new GoldButton(Resources.ICON_LOAN, "?", 0, 0, AdSize.WIDE_SKYSCRAPER_WIDTH, this.dialog.getControlLine().getClientHeight(), this.dialog.getControlLine().getThirdPart()) { // from class: info.flowersoft.theotown.stages.StarterPackOfferStage.2
            @Override // io.blueflower.stapel2d.gui.SensitiveGadget, io.blueflower.stapel2d.gui.Gadget
            public void onUpdate() {
                super.onUpdate();
                setText(StringFormatter.format(StarterPackOfferStage.this.translator.translate(78), StarterPackOfferStage.this.feature.formattedPrice));
            }

            @Override // io.blueflower.stapel2d.gui.Button, io.blueflower.stapel2d.gui.Gadget
            public void onClick() {
                super.onClick();
                StarterPackOfferStage.this.purchase();
            }
        }.setGreen(true);
        this.dialog.addHiddenCancelButton();
        this.dialog.setCanCloseViaBackground(false);
        this.dialog.setVisible(true);
    }

    public final void purchase() {
        final InAppHandler inAppHandler = InAppHandler.getInstance();
        final Runnable runnable = new Runnable() { // from class: info.flowersoft.theotown.stages.StarterPackOfferStage.3
            @Override // java.lang.Runnable
            public void run() {
                GameStack gameStack = StarterPackOfferStage.this.getGameStack();
                if (gameStack == null || gameStack.isEmpty() || !(gameStack.get(gameStack.size() - 1) instanceof StarterPackOfferStage)) {
                    return;
                }
                gameStack.pop();
            }
        };
        if (this.feature.isPurchased() && this.feature.consumable) {
            runnable.run();
        } else {
            if (this.feature.isPurchased()) {
                return;
            }
            inAppHandler.requestPurchase(this.feature, new Setter<FeatureDraft>() { // from class: info.flowersoft.theotown.stages.StarterPackOfferStage.4
                @Override // io.blueflower.stapel2d.util.Setter
                public void set(FeatureDraft featureDraft) {
                    if (featureDraft == StarterPackOfferStage.this.feature) {
                        if (!StarterPackOfferStage.this.feature.consumable || inAppHandler.consume(StarterPackOfferStage.this.feature)) {
                            runnable.run();
                        }
                    }
                }
            }, false);
        }
    }

    @Override // info.flowersoft.theotown.stages.BaseStage
    public void onUpdate() {
        drawBackground();
        if (!this.dialog.isVisible() || this.feature.isUnlocked()) {
            getGameStack().pop();
        }
    }

    public String toString() {
        return "FullPageOfferStage";
    }
}
