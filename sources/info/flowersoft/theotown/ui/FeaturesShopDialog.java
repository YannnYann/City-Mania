package info.flowersoft.theotown.ui;

import com.badlogic.gdx.utils.TimeUtils;
import com.unity3d.services.UnityAdsConstants;
import com.vungle.ads.internal.protos.Sdk;
import info.flowersoft.theotown.crossplatform.TheoTown;
import info.flowersoft.theotown.draft.FeatureDraft;
import info.flowersoft.theotown.mechanics.GameHandler;
import info.flowersoft.theotown.resources.Drafts;
import info.flowersoft.theotown.resources.Resources;
import info.flowersoft.theotown.resources.TimeSpan;
import info.flowersoft.theotown.stages.FeaturesStage;
import info.flowersoft.theotown.store.StoreStage;
import info.flowersoft.theotown.ui.listitem.GroupItem;
import info.flowersoft.theotown.util.DraftLocalizer;
import info.flowersoft.theotown.util.StringFormatter;
import io.blueflower.stapel2d.drawing.Color;
import io.blueflower.stapel2d.drawing.Colors;
import io.blueflower.stapel2d.drawing.Engine;
import io.blueflower.stapel2d.gamestack.Stage;
import io.blueflower.stapel2d.gamestack.Stapel2DGameContext;
import io.blueflower.stapel2d.gamestack.TranslationManager;
import io.blueflower.stapel2d.gamestack.Translator;
import io.blueflower.stapel2d.gui.ListBox;
import io.blueflower.stapel2d.gui.ListItem;
import io.blueflower.stapel2d.gui.Master;
import io.blueflower.stapel2d.gui.Skin;
import io.blueflower.stapel2d.util.Getter;
import io.blueflower.stapel2d.util.Setter;
import io.blueflower.stapel2d.util.Tuple;
import java.util.ArrayList;

/* JADX INFO: loaded from: classes4.dex */
public class FeaturesShopDialog extends Dialog {
    public final Stapel2DGameContext context;
    public final Setter<Stage> stageVisitor;
    public final Translator translator;

    public FeaturesShopDialog(final Stapel2DGameContext stapel2DGameContext, Master master, final Setter<Stage> setter) {
        super(Resources.ICON_FEATURES, stapel2DGameContext.getTranslator().translate(1144), "", 300, 285, master);
        this.context = stapel2DGameContext;
        TranslationManager translator = stapel2DGameContext.getTranslator();
        this.translator = translator;
        this.stageVisitor = setter;
        removeControlLine();
        addHiddenCancelButton();
        setCanCloseViaBackground(false);
        new ColorRect(Resources.skin.cMenuBg, getContentPane());
        boolean zPrefersRTL = translator.prefersRTL();
        ListBox listBox = new ListBox(0, 0, 0, 0, getContentPane());
        listBox.fillParent();
        listBox.setShowBorder(false);
        ArrayList arrayList = new ArrayList();
        for (FeatureDraft featureDraft : Drafts.getDraftsWithTag("consumable", FeatureDraft.class)) {
            if (featureDraft.frames != null) {
                arrayList.add(featureDraft);
            }
        }
        for (int i = 0; i < arrayList.size(); i += 3) {
            GroupItem groupItem = new GroupItem();
            listBox.addItem(groupItem);
            for (int i2 = 0; i2 < Math.min(3, arrayList.size() - i); i2++) {
                groupItem.add(new Item((FeatureDraft) arrayList.get(i + i2), listBox));
            }
        }
        GroupItem groupItem2 = new GroupItem();
        listBox.addItem(groupItem2);
        groupItem2.add(new IconItem(Resources.ICON_PLUS, this.translator.translate(2373), new Runnable() { // from class: info.flowersoft.theotown.ui.FeaturesShopDialog.1
            @Override // java.lang.Runnable
            public void run() {
                FeaturesShopDialog.this.setVisible(false);
                Setter setter2 = setter;
                setter2.set(new FeaturesStage(stapel2DGameContext, setter2));
            }
        }, false, zPrefersRTL));
        groupItem2.add(new IconItem(StoreStage.getIcon(), this.translator.translate(2739), new Runnable() { // from class: info.flowersoft.theotown.ui.FeaturesShopDialog.2
            @Override // java.lang.Runnable
            public void run() {
                TheoTown.analytics.logEvent("Store", "Open", "Gamemmenu");
                setter.set(new StoreStage(stapel2DGameContext));
            }
        }, false, zPrefersRTL));
        setSize(getWidth(), (listBox.getContentHeight() + this.window.getHeight()) - listBox.getClientHeight());
    }

    public final void showDialog(final FeatureDraft featureDraft) {
        DraftLocalizer draftLocalizer = new DraftLocalizer(this.context, "");
        String title = draftLocalizer.getTitle(featureDraft);
        String text = draftLocalizer.getText(featureDraft);
        Tuple<Integer, String> extraInfo = getExtraInfo(featureDraft);
        if (extraInfo != null) {
            text = text + "\n\n" + StringFormatter.format(this.translator.translate(1882), extraInfo.getSecond());
        }
        int i = Resources.ICON_FEATURES;
        Master master = (Master) this.contentPane.getAbsoluteParent();
        long j = featureDraft.diamondPrice.get();
        Getter getter = new Getter() { // from class: info.flowersoft.theotown.ui.FeaturesShopDialog$$ExternalSyntheticLambda0
            @Override // io.blueflower.stapel2d.util.Getter
            public final Object get() {
                return FeaturesShopDialog.$r8$lambda$7xRgZIp6lwEBG0TTssE8rf_BeLs(this.f$0, featureDraft);
            }
        };
        new BuyOrVideoDialog(i, title, text, master, j, (Getter<Boolean>) getter, this.stageVisitor, this.context, featureDraft.id, "unlock feature " + featureDraft.id, false).setVisible(true);
    }

    public static /* synthetic */ Boolean $r8$lambda$7xRgZIp6lwEBG0TTssE8rf_BeLs(FeaturesShopDialog featuresShopDialog, FeatureDraft featureDraft) {
        featuresShopDialog.getClass();
        GameHandler.getInstance().buyFeature(featureDraft);
        featuresShopDialog.setVisible(false);
        return Boolean.TRUE;
    }

    public static Tuple<Integer, String> getExtraInfo(FeatureDraft featureDraft) {
        int i;
        int i2 = featureDraft.time;
        if (i2 > 0) {
            i = Resources.ICON_PLAYFASTFAST;
        } else {
            int i3 = featureDraft.shortBuildTimeMin;
            if (i3 > 0) {
                i = Resources.ICON_SHORT_BUILD_TIME;
                i2 = i3 * 60000;
            } else {
                int i4 = featureDraft.doubledIncomeTimeMin;
                if (i4 <= 0) {
                    return null;
                }
                i2 = i4 * 60000;
                i = Resources.ICON_MONEY;
            }
        }
        return new Tuple<>(Integer.valueOf(i), TimeSpan.localize(i2));
    }

    public class Item extends ListItem {
        public GoldButton cmd;
        public FeatureDraft featureDraft;
        public int icon;
        public String title;

        @Override // io.blueflower.stapel2d.gui.ListItem
        public int getHeight(boolean z) {
            return 96;
        }

        public Item(FeatureDraft featureDraft, ListBox listBox) {
            super(new DraftLocalizer(FeaturesShopDialog.this.context, "").getTitle(featureDraft));
            this.featureDraft = featureDraft;
            this.cmd = new GoldButton(Resources.ICON_DIAMOND_SMALL, "" + featureDraft.diamondPrice.get(), 0, 0, 88, 24, listBox);
            Tuple<Integer, String> extraInfo = FeaturesShopDialog.getExtraInfo(featureDraft);
            if (extraInfo != null) {
                this.icon = extraInfo.getFirst().intValue();
                this.title = extraInfo.getSecond();
            }
        }

        @Override // io.blueflower.stapel2d.gui.ListItem
        public void draw(boolean z, int i, int i2, int i3, int i4, int i5, Skin skin) {
            Engine engine = skin.engine;
            engine.setColor(skin.cMenuItem);
            engine.drawNinePatch(Resources.IMAGE_WORLD, i2, i3, i4, i5 - 1, skin.npWhiteRectBordered);
            engine.setTransparency(200);
            engine.setColor(skin.cTextAccent);
            float f = i2;
            float f2 = i3;
            float f3 = i4;
            engine.drawImage(Resources.IMAGE_WORLD, f, f2, f3, i5 - 1, Resources.FRAME_SHOPITEM_BACKGROUND);
            engine.reset();
            engine.drawImage(Resources.IMAGE_WORLD, f, f2, f3, 50.0f, 0.5f, 0.5f, this.featureDraft.frames[0]);
            int iMillis = (int) TimeUtils.millis();
            if (iMillis < 0) {
                iMillis -= Integer.MIN_VALUE;
            }
            engine.setTransparency(Math.round(((float) Math.pow((Math.sin(((double) (((((iMillis % Sdk.SDKError.Reason.VUNGLE_OIT_CREATION_ERROR_VALUE) + (i2 * 13)) + (i3 * 29)) / 4000.0f) * 2.0f)) * 3.141592653589793d) * 0.5d) + 0.5d, 2.0d)) * 60.0f));
            engine.setColor(Colors.YELLOW);
            engine.setAdditive(255);
            engine.drawImage(Resources.IMAGE_WORLD, f, f2, f3, 50.0f, 0.5f, 0.5f, this.featureDraft.frames[0]);
            engine.setAdditive(0);
            Color color = Colors.WHITE;
            engine.setColor(color);
            engine.setTransparency(255);
            engine.setColor(skin.cMenuText);
            int i6 = i3 + (i5 / 2);
            engine.drawText(Resources.skin.fontSmall, this.text, (i4 / 2) + i2, i6 - 5, UnityAdsConstants.SafeGuards.InitRequestRetryPolicy.MIN_JITTER_PCT, UnityAdsConstants.SafeGuards.InitRequestRetryPolicy.MIN_JITTER_PCT, 0.5f, UnityAdsConstants.SafeGuards.InitRequestRetryPolicy.MIN_JITTER_PCT);
            engine.drawText(Resources.skin.fontSmall, this.title, i2 + 32, i6 + 8, UnityAdsConstants.SafeGuards.InitRequestRetryPolicy.MIN_JITTER_PCT, UnityAdsConstants.SafeGuards.InitRequestRetryPolicy.MIN_JITTER_PCT, UnityAdsConstants.SafeGuards.InitRequestRetryPolicy.MIN_JITTER_PCT, UnityAdsConstants.SafeGuards.InitRequestRetryPolicy.MIN_JITTER_PCT);
            engine.setColor(color);
            engine.setScale(0.5f, 0.5f);
            engine.drawImage(Resources.IMAGE_WORLD, i2 + 18, i6 + 6, this.icon);
            engine.setScale(1.0f, 1.0f);
            GoldButton goldButton = this.cmd;
            goldButton.setX((i4 - goldButton.getWidth()) / 2);
            this.cmd.update();
            this.cmd.draw(i2, ((i3 + i5) - r3.getHeight()) - 4);
        }

        @Override // io.blueflower.stapel2d.gui.ListItem
        public void onClick(int i, int i2) {
            super.onClick(i, i2);
            FeaturesShopDialog.this.showDialog(this.featureDraft);
        }
    }
}
