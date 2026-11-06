package info.flowersoft.theotown.stages;

import com.badlogic.gdx.math.MathUtils;
import com.google.android.gms.ads.AdSize;
import com.unity3d.services.UnityAdsConstants;
import info.flowersoft.theotown.InAppHandler;
import info.flowersoft.theotown.draft.AnimationDraft;
import info.flowersoft.theotown.draft.BuildingDraft;
import info.flowersoft.theotown.draft.FeatureDraft;
import info.flowersoft.theotown.draft.requirement.FeatureRequirement;
import info.flowersoft.theotown.draft.requirement.SingleRequirement;
import info.flowersoft.theotown.drawing.Drawing;
import info.flowersoft.theotown.resources.Drafts;
import info.flowersoft.theotown.resources.Resources;
import info.flowersoft.theotown.resources.TaskManager;
import info.flowersoft.theotown.resources.TimeSpan;
import info.flowersoft.theotown.stages.BuildingPackOfferStage;
import info.flowersoft.theotown.ui.ColorRect;
import info.flowersoft.theotown.ui.Dialog;
import info.flowersoft.theotown.ui.GoldButton;
import info.flowersoft.theotown.util.DraftLocalizer;
import info.flowersoft.theotown.util.Localizer;
import info.flowersoft.theotown.util.StringFormatter;
import info.flowersoft.theotown.util.json.JSONObject;
import io.blueflower.stapel2d.drawing.Color;
import io.blueflower.stapel2d.drawing.Colors;
import io.blueflower.stapel2d.drawing.Engine;
import io.blueflower.stapel2d.drawing.Font;
import io.blueflower.stapel2d.gamestack.GameStack;
import io.blueflower.stapel2d.gamestack.Stapel2DGameContext;
import io.blueflower.stapel2d.gui.Gadget;
import io.blueflower.stapel2d.gui.Panel;
import io.blueflower.stapel2d.touch.TouchPoint;
import io.blueflower.stapel2d.util.IntList;
import io.blueflower.stapel2d.util.Setter;
import java.util.ArrayList;
import java.util.Arrays;
import java.util.Collections;
import java.util.Comparator;
import java.util.Iterator;
import java.util.List;

/* JADX INFO: loaded from: classes4.dex */
public class BuildingPackOfferStage extends BaseStage {
    public final AnimationDraft SHOW_INFO;
    public final List<BuildingDraft> buildings;
    public Dialog dialog;
    public final FeatureDraft feature;
    public final IntList frames;
    public final int icon;
    public FeatureDraft oldPriceFeature;
    public final TaskManager.Task task;
    public final int taskVanishSeconds;

    public BuildingPackOfferStage(int i, FeatureDraft featureDraft, TaskManager.Task task, int i2, Stapel2DGameContext stapel2DGameContext) {
        FeatureDraft feature;
        FeatureDraft[] featureDraftArr;
        JSONObject jSONObjectOptJSONObject;
        String strOptString;
        int i3;
        int i4;
        super(stapel2DGameContext);
        this.SHOW_INFO = (AnimationDraft) Drafts.get("$anim_toolbar_showinfo00", AnimationDraft.class);
        this.buildings = new ArrayList();
        this.frames = new IntList();
        this.icon = i;
        this.feature = featureDraft;
        this.task = task;
        this.taskVanishSeconds = i2;
        JSONObject jSONObject = featureDraft.meta;
        if (jSONObject != null && (jSONObjectOptJSONObject = jSONObject.optJSONObject("tags")) != null && (strOptString = jSONObjectOptJSONObject.optString("old price")) != null) {
            FeatureDraft featureDraft2 = (FeatureDraft) Drafts.ALL.get(strOptString);
            this.oldPriceFeature = featureDraft2;
            if (featureDraft2 != null && ((i3 = featureDraft.microPrice) == 0 || (i4 = featureDraft2.microPrice) == 0 || i4 <= i3)) {
                this.oldPriceFeature = null;
            }
        }
        for (BuildingDraft buildingDraft : Drafts.BUILDINGS) {
            if (buildingDraft.hasRequirement()) {
                SingleRequirement singleRequirement = buildingDraft.getRequirement().getSingleRequirements().get(0);
                if ((singleRequirement instanceof FeatureRequirement) && (feature = ((FeatureRequirement) singleRequirement).getFeature()) != null && (featureDraftArr = feature.unlockedBy) != null && Arrays.asList(featureDraftArr).contains(featureDraft)) {
                    this.buildings.add(buildingDraft);
                }
            }
        }
        Collections.sort(this.buildings, new Comparator() { // from class: info.flowersoft.theotown.stages.BuildingPackOfferStage$$ExternalSyntheticLambda0
            @Override // java.util.Comparator
            public final int compare(Object obj, Object obj2) {
                return BuildingPackOfferStage.m2205$r8$lambda$aneupWFOFCEWCRpu8ArIANR7Zo((BuildingDraft) obj, (BuildingDraft) obj2);
            }
        });
        Iterator<BuildingDraft> it = this.buildings.iterator();
        while (it.hasNext()) {
            this.frames.add(it.next().frames[0]);
        }
    }

    /* JADX INFO: renamed from: $r8$lambda$aneu-pWFOFCEWCRpu8ArIANR7Zo, reason: not valid java name */
    public static /* synthetic */ int m2205$r8$lambda$aneupWFOFCEWCRpu8ArIANR7Zo(BuildingDraft buildingDraft, BuildingDraft buildingDraft2) {
        return buildingDraft.buildHeight - buildingDraft2.buildHeight;
    }

    @Override // info.flowersoft.theotown.stages.BaseStage, io.blueflower.stapel2d.gamestack.Stage
    public void enter() {
        super.enter();
        InAppHandler.getInstance().fetch();
        TaskManager.Task task = this.task;
        if (task != null) {
            int i = this.taskVanishSeconds;
            if (i > 0) {
                task.completeForSeconds(i);
            } else {
                task.complete();
            }
        }
        DraftLocalizer draftLocalizer = new DraftLocalizer(this.context, "");
        Dialog dialog = new Dialog(this.icon, draftLocalizer.getTitle(this.feature), "", Math.min(this.gui.getWidth(), 600), Math.min(this.gui.getHeight(), 400), this.gui);
        this.dialog = dialog;
        Panel contentPane = dialog.getContentPane();
        int clientWidth = contentPane.getClientWidth();
        new ColorRect(Resources.skin.cMenuBg, this.dialog.getContentPane());
        new AnonymousClass1(0, 0, clientWidth, contentPane.getClientHeight(), contentPane, draftLocalizer);
        new GoldButton(Resources.ICON_LOAN, "?", 0, 0, AdSize.WIDE_SKYSCRAPER_WIDTH, this.dialog.getControlLine().getClientHeight(), this.dialog.getControlLine().getThirdPart()) { // from class: info.flowersoft.theotown.stages.BuildingPackOfferStage.2
            @Override // io.blueflower.stapel2d.gui.SensitiveGadget, io.blueflower.stapel2d.gui.Gadget
            public void onUpdate() {
                super.onUpdate();
                setText(StringFormatter.format(BuildingPackOfferStage.this.translator.translate(78), BuildingPackOfferStage.this.feature.formattedPrice));
            }

            @Override // io.blueflower.stapel2d.gui.Button, io.blueflower.stapel2d.gui.Gadget
            public void onClick() {
                super.onClick();
                InAppHandler.getInstance().requestPurchase(BuildingPackOfferStage.this.feature, new Setter<FeatureDraft>() { // from class: info.flowersoft.theotown.stages.BuildingPackOfferStage.2.1
                    @Override // io.blueflower.stapel2d.util.Setter
                    public void set(FeatureDraft featureDraft) {
                        BuildingPackOfferStage.this.dialog.setVisible(false);
                        GameStack gameStack = BuildingPackOfferStage.this.getGameStack();
                        if (gameStack == null || gameStack.isEmpty() || !(gameStack.get(gameStack.size() - 1) instanceof BuildingPackOfferStage)) {
                            return;
                        }
                        BuildingPackOfferStage.this.getGameStack().pop();
                    }
                }, false);
            }
        }.setGreen(true);
        this.dialog.addHiddenCancelButton();
        this.dialog.setVisible(true);
    }

    /* JADX INFO: renamed from: info.flowersoft.theotown.stages.BuildingPackOfferStage$1, reason: invalid class name */
    public class AnonymousClass1 extends Panel {
        public final /* synthetic */ DraftLocalizer val$localizer;

        public static /* synthetic */ void $r8$lambda$3Epn4u8mZSJ_9G9xgWK9_DknF6M() {
        }

        /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
        public AnonymousClass1(int i, int i2, int i3, int i4, Gadget gadget, DraftLocalizer draftLocalizer) {
            super(i, i2, i3, i4, gadget);
            this.val$localizer = draftLocalizer;
        }

        @Override // io.blueflower.stapel2d.gui.Panel, io.blueflower.stapel2d.gui.Gadget
        public void draw(int i, int i2) {
            int i3;
            BuildingDraft buildingDraft;
            int i4;
            char c;
            int i5;
            int i6;
            int i7;
            int i8 = i + this.x;
            int i9 = i2 + this.y;
            Engine engine = this.skin.engine;
            float f = i8;
            float f2 = i9;
            engine.setClipRect(f, f2, getClientWidth(), getClientHeight());
            engine.setColor(Colors.WHITE);
            engine.setTransparency(80);
            engine.drawImage(Resources.IMAGE_WORLD, f, f2, this.width, this.height, Resources.FRAME_SHOPITEM_BACKGROUND);
            float f3 = 2.0f;
            engine.setScale(2.0f, 2.0f);
            engine.setTransparency(40);
            int i10 = 1;
            engine.drawImage(Resources.IMAGE_WORLD, i8 - 128, this.height + i9, BuildingPackOfferStage.this.frames.get(BuildingPackOfferStage.this.frames.size() - 1));
            engine.setScale(8.0f, 8.0f);
            int i11 = 255;
            engine.setTransparency(255);
            int i12 = 0;
            while (i12 < BuildingPackOfferStage.this.buildings.size()) {
                BuildingDraft buildingDraft2 = (BuildingDraft) BuildingPackOfferStage.this.buildings.get(i12);
                int i13 = BuildingPackOfferStage.this.frames.get(i12);
                int size = (((((i12 * 2) + i10) * this.width) / BuildingPackOfferStage.this.buildings.size()) / 2) + i8;
                int i14 = (i9 + this.height) - 20;
                float width = buildingDraft2.getWidth(i13) * 32;
                Math.max(Resources.IMAGE_WORLD.getHeight(i13), buildingDraft2.buildHeight * 8);
                float f4 = f3;
                Engine engine2 = engine;
                if (((double) (buildingDraft2.buildHeight * 8)) * 0.5d > this.height) {
                    engine = engine2;
                    engine.setTransparency(80);
                    engine.setScale(0.5f, 0.5f);
                    int i15 = i12;
                    float f5 = size;
                    float f6 = i14;
                    i3 = i15;
                    buildingDraft = buildingDraft2;
                    i4 = size;
                    c = 0;
                    engine.drawImage(Resources.IMAGE_WORLD, f5, f6, UnityAdsConstants.SafeGuards.InitRequestRetryPolicy.MIN_JITTER_PCT, UnityAdsConstants.SafeGuards.InitRequestRetryPolicy.MIN_JITTER_PCT, 0.5f, 1.0f, i13);
                    if (buildingDraft.animationSpots != null) {
                        int i16 = 0;
                        while (i16 < buildingDraft.animationSpots.size()) {
                            int i17 = buildingDraft.animationSpots.get(i16).draft.frames[0];
                            if (i13 != i17) {
                                float f7 = -width;
                                engine.drawImage(Resources.IMAGE_WORLD, f5 + (((f7 / f4) + r8.x) * 0.5f), f6 + (((f7 / 4.0f) + r8.y) * 0.5f), i17);
                            }
                            i16++;
                            i11 = 255;
                        }
                    }
                    engine.setTransparency(i11);
                    engine.setScale(0.25f, 0.25f);
                    engine.drawImage(Resources.IMAGE_WORLD, f5, f6, UnityAdsConstants.SafeGuards.InitRequestRetryPolicy.MIN_JITTER_PCT, UnityAdsConstants.SafeGuards.InitRequestRetryPolicy.MIN_JITTER_PCT, 0.5f, 1.0f, i13);
                    if (buildingDraft.animationSpots != null) {
                        for (int i18 = 0; i18 < buildingDraft.animationSpots.size(); i18++) {
                            AnimationDraft animationDraft = buildingDraft.animationSpots.get(i18).draft;
                            int i19 = animationDraft.frames[0];
                            if (i13 != i19 && !animationDraft.lightSwitching) {
                                float f8 = -width;
                                engine.drawImage(Resources.IMAGE_WORLD, f5 + (((f8 / f4) + r8.x) * 0.25f), f6 + (((f8 / 4.0f) + r8.y) * 0.25f), i19);
                            }
                        }
                    }
                    i6 = i8;
                    i5 = i14;
                } else {
                    i3 = i12;
                    buildingDraft = buildingDraft2;
                    i4 = size;
                    engine = engine2;
                    c = 0;
                    engine.setScale(0.5f, 0.5f);
                    float f9 = i4;
                    i5 = i14;
                    float f10 = i5;
                    engine.drawImage(Resources.IMAGE_WORLD, f9, f10, UnityAdsConstants.SafeGuards.InitRequestRetryPolicy.MIN_JITTER_PCT, UnityAdsConstants.SafeGuards.InitRequestRetryPolicy.MIN_JITTER_PCT, 0.5f, 1.0f, i13);
                    if (buildingDraft.animationSpots != null) {
                        int i20 = 0;
                        while (i20 < buildingDraft.animationSpots.size()) {
                            AnimationDraft animationDraft2 = buildingDraft.animationSpots.get(i20).draft;
                            int i21 = animationDraft2.frames[0];
                            if (i13 == i21 || animationDraft2.lightSwitching) {
                                i7 = i8;
                            } else {
                                float f11 = -width;
                                i7 = i8;
                                engine.drawImage(Resources.IMAGE_WORLD, f9 + (((f11 / f4) + r8.x) * 0.5f), f10 + (((f11 / 4.0f) + r8.y) * 0.5f), i21);
                            }
                            i20++;
                            i8 = i7;
                        }
                    }
                    i6 = i8;
                }
                engine.setColor(Colors.WHITE);
                engine.setScale(1.0f, 1.0f);
                String title = this.val$localizer.getTitle(buildingDraft);
                float f12 = i4;
                engine.drawText(this.skin.fontSmall, title, f12, i5, UnityAdsConstants.SafeGuards.InitRequestRetryPolicy.MIN_JITTER_PCT, UnityAdsConstants.SafeGuards.InitRequestRetryPolicy.MIN_JITTER_PCT, 0.5f, UnityAdsConstants.SafeGuards.InitRequestRetryPolicy.MIN_JITTER_PCT);
                engine.drawImage(Resources.IMAGE_WORLD, f12 + (this.skin.fontSmall.getWidth(title) * 0.5f) + f4, r16 - 22, BuildingPackOfferStage.this.SHOW_INFO.frames[c]);
                i12 = i3 + 1;
                f3 = f4;
                i8 = i6;
                i10 = 1;
                i11 = 255;
            }
            int i22 = i8;
            if (BuildingPackOfferStage.this.oldPriceFeature != null) {
                String str = BuildingPackOfferStage.this.oldPriceFeature.formattedPrice;
                int i23 = (int) (100.0d - ((((double) BuildingPackOfferStage.this.feature.microPrice) * 100.0d) / ((double) BuildingPackOfferStage.this.oldPriceFeature.microPrice)));
                Font font = this.skin.fontBig;
                Color color = Colors.WHITE;
                engine.setColor(color);
                engine.drawText(font, str, (i22 + this.width) - 2, i9 + 2, UnityAdsConstants.SafeGuards.InitRequestRetryPolicy.MIN_JITTER_PCT, UnityAdsConstants.SafeGuards.InitRequestRetryPolicy.MIN_JITTER_PCT, 1.0f, UnityAdsConstants.SafeGuards.InitRequestRetryPolicy.MIN_JITTER_PCT);
                engine.setColor(color);
                Engine engine3 = engine;
                Drawing.getInstance().drawLine(((i22 + this.width) - 4) - font.getWidth(str), i9 + 18, (i22 + this.width) - 3, i9 + 6, 2.0f, engine3);
                engine3.setColor(Colors.GREEN);
                Drawing.getInstance().drawOutlinedText(StringFormatter.format(BuildingPackOfferStage.this.translator.translate(829), Integer.valueOf(i23)), (i22 + this.width) - 2, i9 + 20, this.skin.fontDefault, Colors.BLACK, engine3, 1.0f, UnityAdsConstants.SafeGuards.InitRequestRetryPolicy.MIN_JITTER_PCT);
                engine = engine3;
                engine.setColor(color);
            }
            Color color2 = Colors.WHITE;
            engine.setColor(color2);
            float f13 = i22 + 2;
            float f14 = i9 + 2;
            engine.drawText(this.skin.fontDefault, this.val$localizer.getText(BuildingPackOfferStage.this.feature), f13, f14);
            engine.drawText(this.skin.fontSmall, BuildingPackOfferStage.this.translator.translate(3415), f13, f14 + this.skin.fontDefault.getHeight());
            if (BuildingPackOfferStage.this.feature.diamonds.get() > 0) {
                engine.drawImage(Resources.IMAGE_WORLD, f13, i9 + 30, Resources.ICON_DIAMOND);
                engine.drawText(this.skin.fontBig, "+" + Localizer.localizeDiamonds(BuildingPackOfferStage.this.feature.diamonds.get()), i22 + 26, i9 + 32);
            }
            if (BuildingPackOfferStage.this.feature.isTimeConstraint()) {
                long remainingUnlockedSeconds = BuildingPackOfferStage.this.feature.getRemainingUnlockedSeconds();
                if (remainingUnlockedSeconds < 0) {
                    engine.setColor(Colors.RED);
                }
                engine.setBlending(1);
                String str2 = StringFormatter.format(BuildingPackOfferStage.this.translator.translate(1762), TimeSpan.localize(remainingUnlockedSeconds * 1000));
                Font font2 = this.skin.fontBig;
                engine.drawText(font2, str2, ((i22 + this.width) - 2) - font2.getWidth(str2), i9 + 72);
                engine.setBlending(0);
                engine.setColor(color2);
            }
            engine.resetClipping();
        }

        @Override // io.blueflower.stapel2d.gui.Gadget
        public void onClick() {
            super.onClick();
            TouchPoint touchPoint = this.tp;
            if (touchPoint == null) {
                return;
            }
            BuildingDraft buildingDraft = (BuildingDraft) BuildingPackOfferStage.this.buildings.get(MathUtils.clamp((BuildingPackOfferStage.this.buildings.size() * (Math.round(touchPoint.getX() * this.master.getWidthRatio()) - getAbsoluteX())) / getWidth(), 0, BuildingPackOfferStage.this.buildings.size() - 1));
            Dialog dialog = new Dialog(Resources.ICON_INFO, this.val$localizer.getTitle(buildingDraft), this.val$localizer.getText(buildingDraft), BuildingPackOfferStage.this.gui);
            GoldButton goldButtonAddButton = dialog.addButton(Resources.ICON_OK, BuildingPackOfferStage.this.translator.translate(2447), true, new Runnable() { // from class: info.flowersoft.theotown.stages.BuildingPackOfferStage$1$$ExternalSyntheticLambda0
                @Override // java.lang.Runnable
                public final void run() {
                    BuildingPackOfferStage.AnonymousClass1.$r8$lambda$3Epn4u8mZSJ_9G9xgWK9_DknF6M();
                }
            });
            goldButtonAddButton.setWidth(120);
            goldButtonAddButton.setGolden(true);
            goldButtonAddButton.addSensitiveKey(66);
            dialog.getControlLine().layout();
            dialog.setVisible(true);
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
        return "SpecialOfferStage:" + this.feature.id;
    }
}
