package info.flowersoft.theotown.ui.selectable;

import com.unity3d.services.UnityAdsConstants;
import com.vungle.ads.internal.protos.Sdk;
import info.flowersoft.theotown.draft.FeatureDraft;
import info.flowersoft.theotown.resources.Resources;
import info.flowersoft.theotown.resources.TimeSpan;
import info.flowersoft.theotown.ui.GoldButton;
import info.flowersoft.theotown.util.DraftLocalizer;
import info.flowersoft.theotown.util.StringFormatter;
import io.blueflower.stapel2d.drawing.Color;
import io.blueflower.stapel2d.drawing.Engine;
import io.blueflower.stapel2d.gamestack.Stapel2DGameContext;
import io.blueflower.stapel2d.gamestack.Translator;
import io.blueflower.stapel2d.gui.Label;
import io.blueflower.stapel2d.gui.Panel;
import io.blueflower.stapel2d.util.Getter;

/* JADX INFO: loaded from: classes4.dex */
public class SelectableFeature extends DefaultSelectable {
    public final FeatureDraft featureDraft;
    public final DraftLocalizer localizer;
    public final String selectText;
    public final Translator translator;

    @Override // info.flowersoft.theotown.ui.selectable.DefaultSelectable, info.flowersoft.theotown.ui.Selectable
    public boolean allowEasySelect() {
        return false;
    }

    public SelectableFeature(Stapel2DGameContext stapel2DGameContext, FeatureDraft featureDraft, String str) {
        this.translator = stapel2DGameContext.getTranslator();
        this.localizer = new DraftLocalizer(stapel2DGameContext, "");
        this.featureDraft = featureDraft;
        this.selectText = str;
    }

    @Override // info.flowersoft.theotown.ui.selectable.DefaultSelectable, info.flowersoft.theotown.ui.Selectable
    public boolean isActive() {
        FeatureDraft featureDraft = this.featureDraft;
        return !featureDraft.hidden || featureDraft.isUnlocked();
    }

    @Override // info.flowersoft.theotown.ui.selectable.DefaultSelectable
    public String getSelectText() {
        return this.selectText;
    }

    @Override // info.flowersoft.theotown.ui.selectable.DefaultSelectable
    public int getSelectIcon() {
        return Resources.ICON_DIAMOND;
    }

    @Override // info.flowersoft.theotown.ui.Selectable
    public String getTitle() {
        return this.localizer.getTitle(this.featureDraft);
    }

    @Override // info.flowersoft.theotown.ui.selectable.DefaultSelectable
    public String getText() {
        return this.localizer.getText(this.featureDraft);
    }

    @Override // info.flowersoft.theotown.ui.selectable.DefaultSelectable, info.flowersoft.theotown.ui.Selectable
    public boolean isSelectable() {
        return !this.featureDraft.isPurchased();
    }

    @Override // info.flowersoft.theotown.ui.selectable.DefaultSelectable, info.flowersoft.theotown.ui.Selectable
    public void build(Panel panel) {
        super.build(panel);
        if (this.featureDraft.isPurchased()) {
            replaceBuildButton(this.translator.translate(726), Resources.skin.cTextGreen);
        } else if (this.featureDraft.isUnlocked()) {
            replaceBuildButton(StringFormatter.format(this.translator.translate(2874), this.localizer.getTitle(this.featureDraft.getUnlockedReason())), Resources.skin.cTextGreen);
        }
        if (this.featureDraft.time > 0) {
            new Label(StringFormatter.format(this.translator.translate(Sdk.SDKError.Reason.ASSET_FAILED_MAX_SPACE_EXCEEDED_VALUE), TimeSpan.localize(this.featureDraft.time)), 0, 0, 0, getLabelHeight(), getLabelList());
        }
        if (this.featureDraft.doubledIncomeTimeMin > 0) {
            new Label(StringFormatter.format(this.translator.translate(1671), TimeSpan.localize(((long) (this.featureDraft.doubledIncomeTimeMin * 60)) * 1000)), 0, 0, 0, getLabelHeight(), getLabelList());
        }
        if (this.featureDraft.shortBuildTimeMin > 0) {
            new Label(StringFormatter.format(this.translator.translate(1168), TimeSpan.localize(((long) (this.featureDraft.shortBuildTimeMin * 60)) * 1000)), 0, 0, 0, getLabelHeight(), getLabelList());
        }
    }

    public final void replaceBuildButton(String str, Color color) {
        Label label = new Label(str, this.cmdBuild.getX(), this.cmdBuild.getY(), this.cmdBuild.getClientWidth(), this.cmdBuild.getClientHeight(), this.cmdBuild.getParent());
        label.setAlignment(UnityAdsConstants.SafeGuards.InitRequestRetryPolicy.MIN_JITTER_PCT, 0.5f);
        label.setColor(color);
        this.cmdBuild.getParent().removeChild(this.cmdBuild);
    }

    @Override // info.flowersoft.theotown.ui.selectable.DefaultSelectable, info.flowersoft.theotown.ui.Selectable
    public void drawPreview(Engine engine, int i, int i2) {
        super.drawPreview(engine, i, i2);
        if (this.featureDraft.isUnlocked()) {
            engine.drawImage(Resources.IMAGE_WORLD, (i + getPreviewWidth()) - 26, (i2 + getPreviewHeight()) - 26, Resources.ICON_OK);
        }
    }

    @Override // info.flowersoft.theotown.ui.selectable.DefaultSelectable
    public int getPreviewFrame() {
        int[] iArr = this.featureDraft.frames;
        if (iArr != null) {
            return iArr[0];
        }
        return Resources.ICON_CANCEL;
    }

    @Override // info.flowersoft.theotown.ui.selectable.DefaultSelectable
    public GoldButton addButton(int i, String str, final Runnable runnable, final Getter<Boolean> getter) {
        return new GoldButton(i, str, 0, 0, 0, this.line.getFirstPart().getClientHeight(), this.line.getFirstPart()) { // from class: info.flowersoft.theotown.ui.selectable.SelectableFeature.1
            @Override // io.blueflower.stapel2d.gui.Button, io.blueflower.stapel2d.gui.Gadget
            public void onClick() {
                if (isVisible()) {
                    super.onClick();
                    runnable.run();
                }
            }

            @Override // io.blueflower.stapel2d.gui.Gadget
            public boolean isVisible() {
                return ((Boolean) getter.get()).booleanValue();
            }
        };
    }
}
