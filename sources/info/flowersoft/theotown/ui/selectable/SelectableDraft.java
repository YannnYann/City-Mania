package info.flowersoft.theotown.ui.selectable;

import com.unity3d.services.UnityAdsConstants;
import info.flowersoft.theotown.city.City;
import info.flowersoft.theotown.city.Direction;
import info.flowersoft.theotown.components.DefaultBudget;
import info.flowersoft.theotown.components.DefaultRequirement;
import info.flowersoft.theotown.crossplatform.TheoTown;
import info.flowersoft.theotown.draft.AnimationDraft;
import info.flowersoft.theotown.draft.AnimationSpot;
import info.flowersoft.theotown.draft.BuildingDraft;
import info.flowersoft.theotown.draft.BusStopDraft;
import info.flowersoft.theotown.draft.Draft;
import info.flowersoft.theotown.draft.FeatureDraft;
import info.flowersoft.theotown.draft.RoadDecorationDraft;
import info.flowersoft.theotown.draft.RoadDraft;
import info.flowersoft.theotown.draft.ViewportDraft;
import info.flowersoft.theotown.draft.requirement.FeatureRequirement;
import info.flowersoft.theotown.draft.requirement.RankRequirement;
import info.flowersoft.theotown.draft.requirement.SingleRequirement;
import info.flowersoft.theotown.mechanics.GameHandler;
import info.flowersoft.theotown.resources.Features;
import info.flowersoft.theotown.resources.Resources;
import info.flowersoft.theotown.resources.Settings;
import info.flowersoft.theotown.stages.FeaturesStage;
import info.flowersoft.theotown.stages.RankStage;
import info.flowersoft.theotown.store.ManagedPluginFile;
import info.flowersoft.theotown.store.ManagedPluginsController;
import info.flowersoft.theotown.ui.BuyOrVideoDialog;
import info.flowersoft.theotown.ui.GoldButton;
import info.flowersoft.theotown.ui.IconButton;
import info.flowersoft.theotown.ui.selectable.SelectableDraft;
import info.flowersoft.theotown.util.DraftLocalizer;
import info.flowersoft.theotown.util.Localizer;
import info.flowersoft.theotown.util.StringFormatter;
import io.bidmachine.protobuf.EventTypeExtended;
import io.blueflower.stapel2d.drawing.Color;
import io.blueflower.stapel2d.drawing.Colors;
import io.blueflower.stapel2d.drawing.Engine;
import io.blueflower.stapel2d.drawing.Font;
import io.blueflower.stapel2d.drawing.Image;
import io.blueflower.stapel2d.gamestack.Stage;
import io.blueflower.stapel2d.gamestack.Stapel2DGameContext;
import io.blueflower.stapel2d.gamestack.Translator;
import io.blueflower.stapel2d.gui.Gadget;
import io.blueflower.stapel2d.gui.Label;
import io.blueflower.stapel2d.gui.Master;
import io.blueflower.stapel2d.gui.Panel;
import io.blueflower.stapel2d.gui.TextFrame;
import io.blueflower.stapel2d.util.Getter;
import io.blueflower.stapel2d.util.Setter;
import io.blueflower.stapel2d.util.StaticGetter;
import java.util.List;
import java.util.Objects;

/* JADX INFO: loaded from: classes4.dex */
public abstract class SelectableDraft extends DefaultSelectable {
    public static Stapel2DGameContext context;
    public static Setter<Stage> stageSetter;
    public final City city;
    public final DraftLocalizer localizer;

    public boolean chargeDiamondsImmediately() {
        return true;
    }

    public int getActualCount() {
        return 0;
    }

    public int getDiamondPrice() {
        return 0;
    }

    public abstract Draft getDraft();

    public int getMaxCount() {
        return -1;
    }

    public long getMonthlyPrice() {
        return 0L;
    }

    public long getPower() {
        return 0L;
    }

    public abstract long getPrice();

    public Object getReqContext() {
        return null;
    }

    public int getUpgrades() {
        return 0;
    }

    public long getWater() {
        return 0L;
    }

    @Override // info.flowersoft.theotown.ui.selectable.DefaultSelectable, info.flowersoft.theotown.ui.Selectable
    public boolean isMarkable() {
        return true;
    }

    public SelectableDraft(City city) {
        this.city = city;
        this.localizer = new DraftLocalizer(city);
    }

    @Override // info.flowersoft.theotown.ui.selectable.DefaultSelectable, info.flowersoft.theotown.ui.Selectable
    public String getId() {
        return getDraft().id;
    }

    @Override // info.flowersoft.theotown.ui.selectable.DefaultSelectable
    public boolean hasRequirement() {
        return getDraft().hasRequirement();
    }

    @Override // info.flowersoft.theotown.ui.selectable.DefaultSelectable
    public boolean isUnlocked() {
        return getDraft().isUnlocked();
    }

    @Override // info.flowersoft.theotown.ui.Selectable
    public String getTitle() {
        return this.localizer.getTitle(getDraft());
    }

    @Override // info.flowersoft.theotown.ui.selectable.DefaultSelectable
    public String getText() {
        return this.localizer.getText(getDraft());
    }

    @Override // info.flowersoft.theotown.ui.selectable.DefaultSelectable, info.flowersoft.theotown.ui.Selectable
    public boolean isActive() {
        Draft draft = getDraft();
        if ((draft.plugin && draft.hidden) || !draft.active || (!TheoTown.DEBUG && draft.dev && !this.city.getGameMode().hasInfinityMoney())) {
            return false;
        }
        if (!draft.hasRequirement()) {
            return true;
        }
        SingleRequirement singleRequirement = draft.getRequirement().getSingleRequirements().get(0);
        if (!(singleRequirement instanceof FeatureRequirement)) {
            return true;
        }
        FeatureDraft feature = ((FeatureRequirement) singleRequirement).getFeature();
        if (feature == null) {
            return false;
        }
        if (feature.buyable) {
            return true;
        }
        return singleRequirement.isFulfilled(this.city);
    }

    @Override // info.flowersoft.theotown.ui.selectable.DefaultSelectable, info.flowersoft.theotown.ui.Selectable
    public boolean isSelectable() {
        return super.isSelectable() || getDiamondPrice() > 0;
    }

    @Override // info.flowersoft.theotown.ui.selectable.DefaultSelectable
    public String getSelectText() {
        return this.city.getTranslator().translate(2563);
    }

    @Override // info.flowersoft.theotown.ui.selectable.DefaultSelectable
    public int getSelectIcon() {
        return Resources.ICON_BUILD;
    }

    @Override // info.flowersoft.theotown.ui.selectable.DefaultSelectable
    public String getSelectId() {
        return super.getSelectId() + getDraft().id;
    }

    public void buildLabels() {
        final Translator translator;
        ManagedPluginFile managedPluginFile;
        Translator translator2 = this.city.getTranslator();
        final int maxCount = getMaxCount();
        Draft draft = getDraft();
        Font font = Resources.skin.fontSmall;
        if (maxCount >= 0) {
            TextFrame textFrame = new TextFrame(StringFormatter.format(translator2.translate(maxCount == 1 ? 1112 : EventTypeExtended.EVENT_TYPE_EXTENDED_AD_UNIT_LOSS_VALUE), Integer.valueOf(maxCount)), 0, 0, getLabelList().getClientWidth(), 0, getLabelList()) { // from class: info.flowersoft.theotown.ui.selectable.SelectableDraft.1
                @Override // io.blueflower.stapel2d.gui.Label
                public Color getColor() {
                    return maxCount > SelectableDraft.this.getActualCount() ? this.skin.cTextGreen : this.skin.cTextRed;
                }
            };
            textFrame.setFont(font);
            textFrame.setSize(getLabelList().getClientWidth(), textFrame.calculateTextHeight());
            getLabelList().layout();
        }
        if (getUpgrades() > 0) {
            new Label(StringFormatter.format(this.city.getTranslator().translate(2381), Integer.valueOf(getUpgrades())), 0, 0, 0, getLabelHeight(), getLabelList()).setFont(font);
        }
        if (getPower() > 0) {
            new Label(StringFormatter.format(this.city.getTranslator().translate(2390), Long.valueOf(getPower())), 0, 0, 0, getLabelHeight(), getLabelList()).setFont(font);
        }
        if (getWater() > 0) {
            new Label(StringFormatter.format(this.city.getTranslator().translate(2982), Long.valueOf(getWater())), 0, 0, 0, getLabelHeight(), getLabelList()).setFont(font);
        }
        if (getPrice() <= 0 || this.city.getGameMode().hasInfinityMoney()) {
            translator = translator2;
        } else {
            translator = translator2;
            new Label("", 0, 0, 0, getLabelHeight(), getLabelList()) { // from class: info.flowersoft.theotown.ui.selectable.SelectableDraft.2
                public DefaultBudget budget;
                public long lastPrice;
                public long price;

                {
                    long price = SelectableDraft.this.getPrice();
                    this.price = price;
                    this.lastPrice = price - 1;
                    this.budget = (DefaultBudget) SelectableDraft.this.city.getComponent(0);
                }

                @Override // io.blueflower.stapel2d.gui.Gadget
                public void onUpdate() {
                    super.onUpdate();
                    long price = SelectableDraft.this.getPrice();
                    this.price = price;
                    if (this.lastPrice != price) {
                        this.lastPrice = price;
                        setText(StringFormatter.format(translator.translate(1470), Localizer.localizeMoney(this.price)));
                    }
                }

                @Override // io.blueflower.stapel2d.gui.Label, io.blueflower.stapel2d.gui.Gadget
                public void draw(int i, int i2) {
                    if (this.budget.canSpend(this.price)) {
                        this.color = this.skin.cTextGreen;
                    } else {
                        this.color = this.skin.cTextRed;
                    }
                    super.draw(i, i2);
                }
            }.setFont(font);
        }
        if (getDiamondPrice() > 0 && !chargeDiamondsImmediately()) {
            this.cmdBuild.setGolden(true);
            new Label("" + getDiamondPrice(), 0, 0, 0, getLabelHeight(), getLabelList()) { // from class: info.flowersoft.theotown.ui.selectable.SelectableDraft.3
                @Override // io.blueflower.stapel2d.gui.Label, io.blueflower.stapel2d.gui.Gadget
                public void draw(int i, int i2) {
                    this.color = GameHandler.getInstance().getDiamonds() >= SelectableDraft.this.getDiamondPrice() ? this.skin.cTextGreen : this.skin.cTextRed;
                    super.draw(i, i2);
                    Engine engine = this.skin.engine;
                    Color color = Colors.WHITE;
                    engine.setColor(color);
                    engine.drawImage(Resources.IMAGE_WORLD, i + this.x + Math.round(this.skin.fontSmall.getWidth(this.text)) + 2, i2 + this.y, UnityAdsConstants.SafeGuards.InitRequestRetryPolicy.MIN_JITTER_PCT, this.height, UnityAdsConstants.SafeGuards.InitRequestRetryPolicy.MIN_JITTER_PCT, 0.5f, Resources.ICON_DIAMOND_SMALL);
                    engine.setColor(color);
                }
            }.setFont(font);
        }
        if (!this.city.getGameMode().hasInfinityMoney()) {
            long monthlyPrice = getMonthlyPrice();
            if (monthlyPrice > 0) {
                new Label(StringFormatter.format(this.city.getTranslator().translate(176), Localizer.localizeMoney(monthlyPrice)), 0, 0, 0, getLabelHeight(), getLabelList()).setFont(font);
            } else if (monthlyPrice < 0) {
                new Label(StringFormatter.format(this.city.getTranslator().translate(174), Localizer.localizeMoney(-monthlyPrice)), 0, 0, 0, getLabelHeight(), getLabelList()).setFont(font);
            }
        }
        if (draft == null || draft.pluginId <= 0 || (managedPluginFile = ManagedPluginsController.getInstance().getManagedPluginFile(draft.pluginId)) == null || managedPluginFile.isPermanent()) {
            return;
        }
        Label label = new Label(StringFormatter.format(translator.translate(2786), this.localizer.localizePacked(managedPluginFile.getTranslatedTitle())), 0, 0, 0, getLabelHeight(), getLabelList());
        label.setFont(font);
        label.setColor(Colors.MARINE_BLUE);
    }

    @Override // info.flowersoft.theotown.ui.selectable.DefaultSelectable, info.flowersoft.theotown.ui.Selectable
    public void build(Panel panel) {
        int size;
        String str;
        super.build(panel);
        Translator translator = this.city.getTranslator();
        Draft draft = getDraft();
        buildLabels();
        if ((Settings.debugMode && Settings.experimentalFeatures && isUnlocked() && !draft.hideId) || TheoTown.DEBUG) {
            if (draft instanceof BuildingDraft) {
                size = this.city.getBuildings().getBuildingsOfDraft((BuildingDraft) draft).size();
            } else {
                size = draft instanceof RoadDraft ? this.city.getRoads().getRoadsOfDraft((RoadDraft) draft).size() : -1;
            }
            StringBuilder sb = new StringBuilder();
            sb.append("#");
            sb.append(draft.ordinal);
            sb.append(":");
            sb.append(draft.id);
            if (size >= 0) {
                str = " (" + size + ")";
            } else {
                str = "";
            }
            sb.append(str);
            Label label = new Label(sb.toString(), 0, 0, 0, 6, getLabelList());
            label.setColor(Colors.LIGHT_GRAY);
            label.setFont(Resources.skin.fontSmall);
        }
        buildLocked(draft, panel, translator);
        if (getDiamondPrice() <= 0 || !chargeDiamondsImmediately()) {
            return;
        }
        buildBuyWithDiamondsButton(panel, translator);
    }

    public void buildLocked(Draft draft, Panel panel, Translator translator) {
        if (draft.hasRequirement()) {
            List<SingleRequirement> singleRequirements = draft.getRequirement().getSingleRequirements();
            final Object reqContext = getReqContext();
            RankRequirement rankRequirement = null;
            for (int i = 0; i < singleRequirements.size(); i++) {
                final SingleRequirement singleRequirement = singleRequirements.get(i);
                singleRequirement.setContext(reqContext);
                boolean zHasRequirements = this.city.getGameMode().hasRequirements();
                boolean zIsFulfilled = singleRequirement.isFulfilled(this.city);
                boolean z = singleRequirement instanceof FeatureRequirement;
                if ((!z || !zIsFulfilled) && (!singleRequirement.autoFulfilledInSandboxMode() || zHasRequirements)) {
                    if ((!z || i != 0 || getDiamondPrice() <= 0) && ((!zIsFulfilled || !singleRequirement.hideIfFulfilled()) && (zIsFulfilled || !singleRequirement.hideIfNotFulfilled()))) {
                        new Label(singleRequirement.localize(translator, this.city), 0, 0, 0, getLabelHeight(), getLabelList()) { // from class: info.flowersoft.theotown.ui.selectable.SelectableDraft.4
                            @Override // io.blueflower.stapel2d.gui.Label
                            public Color getColor() {
                                singleRequirement.setContext(reqContext);
                                return singleRequirement.isFulfilled(SelectableDraft.this.city) ? this.skin.cTextGreen : this.skin.cTextRed;
                            }
                        }.setFont(Resources.skin.fontSmall);
                    }
                    if (singleRequirement.isImportant()) {
                        break;
                    } else if ((singleRequirement instanceof RankRequirement) && !singleRequirement.isFulfilled(this.city)) {
                        rankRequirement = (RankRequirement) singleRequirement;
                    }
                }
            }
            if (draft.isUnlocked()) {
                return;
            }
            if (rankRequirement != null && !Settings.hideRankFeature && !TheoTown.PREMIUM) {
                new AnonymousClass5(Resources.ICON_DIAMOND, translator.translate(1700), 0, 0, 0, this.cmdBuild.getHeight(), this.line.getThirdPart(), rankRequirement, translator, panel).setId("cmdGetRank");
            }
            SingleRequirement singleRequirement2 = draft.getRequirement().getSingleRequirements().get(0);
            if (singleRequirement2 instanceof FeatureRequirement) {
                buildBuyFeatureButton(((FeatureRequirement) singleRequirement2).getFeature(), panel, translator, true);
            }
        }
    }

    /* JADX INFO: renamed from: info.flowersoft.theotown.ui.selectable.SelectableDraft$5, reason: invalid class name */
    public class AnonymousClass5 extends IconButton {
        public final /* synthetic */ Panel val$panel;
        public final /* synthetic */ RankRequirement val$r;
        public final /* synthetic */ Translator val$translator;

        /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
        public AnonymousClass5(int i, String str, int i2, int i3, int i4, int i5, Gadget gadget, RankRequirement rankRequirement, Translator translator, Panel panel) {
            super(i, str, i2, i3, i4, i5, gadget);
            this.val$r = rankRequirement;
            this.val$translator = translator;
            this.val$panel = panel;
        }

        @Override // io.blueflower.stapel2d.gui.Button, io.blueflower.stapel2d.gui.Gadget
        public void onClick() {
            if (isVisible()) {
                FeatureDraft unlockRankFeature = Features.getInstance().getUnlockRankFeature(SelectableDraft.this.city, this.val$r.getRank());
                if (unlockRankFeature != null) {
                    final Setter<Stage> setter = SelectableDraft.stageSetter;
                    int i = Resources.ICON_RANK;
                    String strTranslate = this.val$translator.translate(1700);
                    String strTranslate2 = this.val$translator.translate(1274);
                    Master master = (Master) this.val$panel.getAbsoluteParent();
                    long j = unlockRankFeature.diamondPrice.get();
                    final RankRequirement rankRequirement = this.val$r;
                    new BuyOrVideoDialog(i, strTranslate, strTranslate2, master, j, (Getter<Boolean>) new Getter() { // from class: info.flowersoft.theotown.ui.selectable.SelectableDraft$5$$ExternalSyntheticLambda0
                        @Override // io.blueflower.stapel2d.util.Getter
                        public final Object get() {
                            return SelectableDraft.AnonymousClass5.$r8$lambda$KkzpZ2OkJ4y9wCkZkPZL_Q8YXJQ(this.f$0, rankRequirement, setter);
                        }
                    }, SelectableDraft.stageSetter, SelectableDraft.context, unlockRankFeature.id, "Get_Rank", false).setVisible(true);
                    return;
                }
                SelectableDraft.stageSetter.set(new RankStage(SelectableDraft.context, SelectableDraft.this.city));
            }
        }

        public static /* synthetic */ Boolean $r8$lambda$KkzpZ2OkJ4y9wCkZkPZL_Q8YXJQ(AnonymousClass5 anonymousClass5, RankRequirement rankRequirement, Setter setter) {
            ((DefaultRequirement) SelectableDraft.this.city.getComponent(11)).setNewRank(rankRequirement.getRank());
            setter.set(new RankStage(SelectableDraft.context, SelectableDraft.this.city));
            return Boolean.TRUE;
        }

        @Override // info.flowersoft.theotown.ui.IconButton, io.blueflower.stapel2d.gui.Button, io.blueflower.stapel2d.gui.Gadget
        public void draw(int i, int i2) {
            super.draw(i, i2);
        }

        @Override // io.blueflower.stapel2d.gui.Gadget
        public boolean isVisible() {
            return !this.val$r.isFulfilled(SelectableDraft.this.city) && Features.getInstance().canUnlockRank(SelectableDraft.this.city, this.val$r.getRank());
        }
    }

    public void buildBuyWithDiamondsButton(Panel panel, Translator translator) {
        this.line.getThirdPart().removeAllChildren();
        int diamondPrice = getDiamondPrice();
        AnonymousClass6 anonymousClass6 = new AnonymousClass6(Resources.ICON_DIAMOND, Localizer.localizeDiamonds(diamondPrice), 0, 0, 0, this.line.getThirdPart().getClientHeight(), this.line.getThirdPart(), panel, diamondPrice);
        this.cmdBuild = anonymousClass6;
        anonymousClass6.setId("cmdGetDraft ");
    }

    /* JADX INFO: renamed from: info.flowersoft.theotown.ui.selectable.SelectableDraft$6, reason: invalid class name */
    public class AnonymousClass6 extends GoldButton {
        public final /* synthetic */ Panel val$panel;
        public final /* synthetic */ int val$price;

        /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
        public AnonymousClass6(int i, String str, int i2, int i3, int i4, int i5, Gadget gadget, Panel panel, int i6) {
            super(i, str, i2, i3, i4, i5, gadget);
            this.val$panel = panel;
            this.val$price = i6;
        }

        @Override // io.blueflower.stapel2d.gui.Button, io.blueflower.stapel2d.gui.Gadget
        public void onClick() {
            if (isVisible()) {
                super.onClick();
                Draft draft = SelectableDraft.this.getDraft();
                String title = SelectableDraft.this.localizer.getTitle(draft);
                String text = SelectableDraft.this.localizer.getText(draft);
                int i = Resources.ICON_FEATURES;
                Master master = (Master) this.val$panel.getAbsoluteParent();
                long j = this.val$price;
                final Panel panel = this.val$panel;
                new BuyOrVideoDialog(i, title, text, master, j, (Getter<Boolean>) new Getter() { // from class: info.flowersoft.theotown.ui.selectable.SelectableDraft$6$$ExternalSyntheticLambda0
                    @Override // io.blueflower.stapel2d.util.Getter
                    public final Object get() {
                        return SelectableDraft.AnonymousClass6.$r8$lambda$y5JQI_IDB60g5j6rRLDNptlc_pM(this.f$0, panel);
                    }
                }, (Setter<Stage>) null, SelectableDraft.context, draft.id, (String) null, false).setVisible(true);
            }
        }

        public static /* synthetic */ Boolean $r8$lambda$y5JQI_IDB60g5j6rRLDNptlc_pM(AnonymousClass6 anonymousClass6, Panel panel) {
            SelectableDraft.this.select();
            panel.removeAllChildren();
            SelectableDraft.this.build(panel);
            return Boolean.TRUE;
        }
    }

    public void buildBuyFeatureButton(final FeatureDraft featureDraft, final Panel panel, Translator translator, boolean z) {
        if (featureDraft.isUnlocked() || !featureDraft.buyable) {
            return;
        }
        if (getDiamondPrice() == 0) {
            this.line.getThirdPart().removeAllChildren();
        }
        if (!z || featureDraft.hidden) {
            return;
        }
        addButton(Resources.ICON_FEATURES, "", new Runnable() { // from class: info.flowersoft.theotown.ui.selectable.SelectableDraft.7
            @Override // java.lang.Runnable
            public void run() {
                Setter<Stage> setter = SelectableDraft.stageSetter;
                setter.set(new FeaturesStage(SelectableDraft.context, featureDraft, setter));
                panel.removeAllChildren();
                SelectableDraft.this.build(panel);
            }
        }, new StaticGetter(Boolean.TRUE)).setId("cmdGetFeature");
    }

    @Override // info.flowersoft.theotown.ui.selectable.DefaultSelectable
    public int getPreviewFrame() {
        int[] iArr;
        Draft draft = getDraft();
        int[] iArr2 = draft.previewFrames;
        if (iArr2 != null && iArr2.length >= 1) {
            return iArr2[0];
        }
        if ((draft instanceof ViewportDraft) && (iArr = ((ViewportDraft) draft).frames) != null && iArr.length >= 1) {
            return iArr[0];
        }
        return super.getPreviewFrame();
    }

    @Override // info.flowersoft.theotown.ui.selectable.DefaultSelectable
    public int getPreviewFrame2() {
        int[] iArr = getDraft().previewFrames;
        if (iArr != null && iArr.length >= 2) {
            return iArr[1];
        }
        return super.getPreviewFrame2();
    }

    @Override // info.flowersoft.theotown.ui.selectable.DefaultSelectable
    public int hashCode() {
        return getDraft().hashCode();
    }

    public boolean equals(Object obj) {
        if (obj instanceof SelectableDraft) {
            return Objects.equals(getDraft(), ((SelectableDraft) obj).getDraft());
        }
        return false;
    }

    public void drawRoad(Engine engine, int i, int i2, int i3, RoadDraft roadDraft, float f, float f2, int i4, int i5, int i6, int i7, int i8, int i9, int i10, RoadDecorationDraft roadDecorationDraft, BusStopDraft busStopDraft) {
        float f3;
        float f4;
        float f5;
        BusStopDraft busStopDraft2;
        Engine engine2;
        float f6;
        BusStopDraft busStopDraft3;
        Image image = Resources.IMAGE_WORLD;
        float scaleX = engine.getScaleX();
        int i11 = ((-(i10 % 4)) + 4) % 4;
        if (i == 0) {
            int iRotateCW = Direction.rotateCW(i2, i6);
            int i12 = ((((i3 + 4) - i11) % 4) * 16) + iRotateCW;
            float f7 = scaleX * i4 * 12.0f;
            float f8 = f2 - f7;
            float f9 = i7;
            float f10 = i8;
            drawAnimationSpots(roadDraft.animationSpots, roadDraft.animationSpotIndices, f, f8, f9, f10, engine, i9, i12, false, i10);
            float f11 = f + f9;
            float f12 = (f2 + f10) - f7;
            engine.drawImage(image, f11, f12, roadDraft.frames[iRotateCW]);
            if (roadDecorationDraft != null) {
                f3 = f11;
                f4 = f12;
                drawAnimationSpots(roadDecorationDraft.animationSpots, roadDecorationDraft.animationSpotIndices, f, f8, f9, f10, engine, i9, i12, false, i10);
            } else {
                f3 = f11;
                f4 = f12;
            }
            if (busStopDraft != null) {
                if (Direction.isIn(2, iRotateCW)) {
                    busStopDraft3 = busStopDraft;
                } else {
                    busStopDraft3 = busStopDraft;
                    engine.drawImage(Resources.IMAGE_WORLD, f3, f4, busStopDraft3.frames[1]);
                }
                if (!Direction.isIn(4, iRotateCW)) {
                    engine.drawImage(Resources.IMAGE_WORLD, f3, f4, busStopDraft3.frames[2]);
                }
                f5 = f4;
                busStopDraft2 = busStopDraft3;
                drawAnimationSpots(busStopDraft3.animationSpots, busStopDraft3.animationSpotIndices, f, f8, f9, f10, engine, i9, i12, false, i10);
            } else {
                f5 = f4;
                busStopDraft2 = busStopDraft;
            }
            drawAnimationSpots(roadDraft.animationFGSpots, roadDraft.animationFGSpotIndices, f, f8, f9, f10, engine, i9, i12, false, i10);
            if (roadDecorationDraft != null) {
                engine2 = engine;
                drawAnimationSpots(roadDecorationDraft.animationFGSpots, roadDecorationDraft.animationFGSpotIndices, f, f8, f9, f10, engine2, i9, i12, false, i10);
            } else {
                engine2 = engine;
            }
            if (busStopDraft2 != null) {
                if (Direction.isIn(8, iRotateCW)) {
                    f6 = f5;
                } else {
                    f6 = f5;
                    engine2.drawImage(Resources.IMAGE_WORLD, f3, f6, busStopDraft2.frames[3]);
                }
                if (!Direction.isIn(1, iRotateCW)) {
                    engine2.drawImage(Resources.IMAGE_WORLD, f3, f6, busStopDraft2.frames[0]);
                }
                drawAnimationSpots(busStopDraft2.animationFGSpots, busStopDraft2.animationFGSpotIndices, f, f8, f9, f10, engine2, i9, i12, false, i10);
                return;
            }
            return;
        }
        int iRotateCW2 = Direction.rotateCW(i5, i6);
        int i13 = roadDraft.bridgeFrames[Direction.toIndex(iRotateCW2)];
        if (i4 == 0 && roadDraft.framesPerBridge >= 16) {
            engine.drawImage(image, f + i7, (f2 + i8) - ((i4 * scaleX) * 12.0f), roadDraft.bridgeFrames[Direction.toIndex(iRotateCW2) + 12]);
        }
        engine.drawImage(image, f + i7, (f2 + i8) - ((scaleX * i4) * 12.0f), i13);
    }

    public void drawBuilding(float f, float f2, float f3, float f4, BuildingDraft buildingDraft, int i, Engine engine, int i2, int i3) {
        engine.drawImage(Resources.IMAGE_WORLD, f + f3, f2 + f4, buildingDraft.frames[i]);
        drawAnimationSpots(buildingDraft.animationSpots, buildingDraft.animationSpotIndices, f, f2, f3, f4, engine, i2, i, buildingDraft.rotationAware, i3);
        drawAnimationSpots(buildingDraft.animationFGSpots, buildingDraft.animationFGSpotIndices, f, f2, f3, f4, engine, i2, i, buildingDraft.rotationAware, i3);
    }

    public void drawAnimationSpots(List<AnimationSpot> list, int[][] iArr, float f, float f2, float f3, float f4, Engine engine, int i, int i2, boolean z, int i3) {
        Image image = Resources.IMAGE_WORLD;
        if (list != null) {
            if (iArr == null) {
                for (int i4 = 0; i4 < list.size(); i4++) {
                    AnimationSpot animationSpot = list.get(i4);
                    if (animationSpot.isTargeted(animationSpot.rotationAware ? i3 : i2) && !animationSpot.draft.lightSwitching) {
                        drawAnimationSpot(image, f, f2, f3, f4, animationSpot, engine, i, z, i3);
                    }
                }
                return;
            }
            for (int i5 : iArr[i2 % iArr.length]) {
                AnimationSpot animationSpot2 = list.get(i5);
                if (animationSpot2.isTargeted(animationSpot2.rotationAware ? i3 : i2) && !animationSpot2.draft.lightSwitching) {
                    drawAnimationSpot(image, f, f2, f3, f4, animationSpot2, engine, i, z, i3);
                }
            }
        }
    }

    public void drawAnimationSpot(Image image, float f, float f2, float f3, float f4, AnimationSpot animationSpot, Engine engine, int i, boolean z, int i2) {
        AnimationDraft animationDraft = animationSpot.draft;
        if (animationSpot.flags != 0 || animationDraft.frames.length <= 0) {
            return;
        }
        int iRound = Math.round((animationDraft.speed * i) + animationSpot.shift);
        int[] iArr = animationDraft.frames;
        int length = iRound % iArr.length;
        if (animationDraft.rotationAware && z) {
            length = (iArr.length / 4) * (i2 % 4);
        }
        Color[] colorArr = animationDraft.colors;
        if (colorArr != null) {
            engine.setColor(colorArr[0]);
        } else {
            Color color = animationSpot.color;
            if (color != null) {
                engine.setColor(color);
            }
        }
        float scaleX = engine.getScaleX();
        engine.drawImage(image, f + (animationSpot.x * scaleX) + f3, f2 + (animationSpot.y * scaleX) + f4, animationDraft.frames[length]);
        engine.setColor(Colors.WHITE);
    }
}
