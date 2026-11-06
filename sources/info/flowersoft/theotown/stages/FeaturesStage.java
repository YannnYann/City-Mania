package info.flowersoft.theotown.stages;

import info.flowersoft.theotown.draft.FeatureDraft;
import info.flowersoft.theotown.mechanics.GameHandler;
import info.flowersoft.theotown.resources.Drafts;
import info.flowersoft.theotown.resources.Resources;
import info.flowersoft.theotown.ui.BuyOrVideoDialog;
import info.flowersoft.theotown.ui.Page;
import info.flowersoft.theotown.ui.Selectable;
import info.flowersoft.theotown.ui.Selector;
import info.flowersoft.theotown.ui.selectable.SelectableFeature;
import info.flowersoft.theotown.ui.selectable.Separator;
import info.flowersoft.theotown.util.DraftLocalizer;
import info.flowersoft.theotown.util.Localizer;
import io.blueflower.stapel2d.gamestack.Stage;
import io.blueflower.stapel2d.gamestack.Stapel2DGameContext;
import io.blueflower.stapel2d.gui.Master;
import io.blueflower.stapel2d.gui.Panel;
import io.blueflower.stapel2d.util.Getter;
import io.blueflower.stapel2d.util.Setter;
import java.util.ArrayList;

/* JADX INFO: loaded from: classes4.dex */
public class FeaturesStage extends BaseStage {
    public FeatureDraft focus;
    public int selectedIndex;
    public Selector selector;
    public float shiftY;
    public final Setter<Stage> stageVisitor;

    public FeaturesStage(Stapel2DGameContext stapel2DGameContext, Setter<Stage> setter) {
        this(stapel2DGameContext, null, setter);
    }

    public FeaturesStage(Stapel2DGameContext stapel2DGameContext, FeatureDraft featureDraft, Setter<Stage> setter) {
        super(stapel2DGameContext);
        this.selectedIndex = -1;
        this.focus = featureDraft;
        this.stageVisitor = setter;
    }

    @Override // info.flowersoft.theotown.stages.BaseStage, io.blueflower.stapel2d.gamestack.Stage
    public void enter() {
        int[] iArr;
        super.enter();
        Page page = new Page(this.context, this.translator.translate(1144), Resources.ICON_FEATURES, this.gui);
        ArrayList<FeatureDraft> arrayList = new ArrayList();
        ArrayList<FeatureDraft> arrayList2 = new ArrayList();
        ArrayList<FeatureDraft> arrayList3 = new ArrayList();
        ArrayList arrayList4 = new ArrayList();
        for (FeatureDraft featureDraft : Drafts.FEATURES) {
            if (!featureDraft.cityBound && featureDraft.diamonds.get() == 0 && (iArr = featureDraft.frames) != null && iArr.length >= 1 && iArr[0] != 0) {
                if (featureDraft.consumable) {
                    arrayList.add(featureDraft);
                } else if (featureDraft.isUnlocked()) {
                    arrayList2.add(featureDraft);
                } else {
                    arrayList3.add(featureDraft);
                }
            }
        }
        Selectable selectable = null;
        for (FeatureDraft featureDraft2 : arrayList) {
            Selectable selectable2 = getSelectable(featureDraft2, page.getContentPanel());
            arrayList4.add(selectable2);
            if (featureDraft2 == this.focus) {
                selectable = selectable2;
            }
        }
        arrayList4.add(new Separator());
        for (FeatureDraft featureDraft3 : arrayList3) {
            Selectable selectable3 = getSelectable(featureDraft3, page.getContentPanel());
            arrayList4.add(selectable3);
            if (featureDraft3 == this.focus) {
                selectable = selectable3;
            }
        }
        arrayList4.add(new Separator());
        for (FeatureDraft featureDraft4 : arrayList2) {
            Selectable selectable4 = getSelectable(featureDraft4, page.getContentPanel());
            arrayList4.add(selectable4);
            if (featureDraft4 == this.focus) {
                selectable = selectable4;
            }
        }
        Selector selector = new Selector(null, page.getContentPanel(), arrayList4, true);
        this.selector = selector;
        if (selectable != null) {
            selector.focus(selectable);
            this.focus = null;
        }
        page.addButton(Resources.ICON_BACKWARD, this.translator.translate(2416), true, false, new Runnable() { // from class: info.flowersoft.theotown.stages.FeaturesStage$$ExternalSyntheticLambda0
            @Override // java.lang.Runnable
            public final void run() {
                this.f$0.getGameStack().pop();
            }
        });
        page.setOnBackgroundClick(new Runnable() { // from class: info.flowersoft.theotown.stages.FeaturesStage$$ExternalSyntheticLambda1
            @Override // java.lang.Runnable
            public final void run() {
                this.f$0.getGameStack().pop();
            }
        });
        restoreState();
    }

    public final Selectable getSelectable(final FeatureDraft featureDraft, final Panel panel) {
        final Stapel2DGameContext stapel2DGameContext = this.context;
        SelectableFeature selectableFeature = new SelectableFeature(stapel2DGameContext, featureDraft, Localizer.localizeDiamonds(featureDraft.diamondPrice.get()));
        selectableFeature.setOnSelect(new Runnable() { // from class: info.flowersoft.theotown.stages.FeaturesStage$$ExternalSyntheticLambda2
            @Override // java.lang.Runnable
            public final void run() {
                FeaturesStage.m2224$r8$lambda$Nwla3Bals8MlhVV7MWeP_Qobsk(this.f$0, stapel2DGameContext, featureDraft, panel);
            }
        });
        return selectableFeature;
    }

    /* JADX INFO: renamed from: $r8$lambda$Nwla3Bals8MlhVV7M-WeP_Qobsk, reason: not valid java name */
    public static /* synthetic */ void m2224$r8$lambda$Nwla3Bals8MlhVV7MWeP_Qobsk(final FeaturesStage featuresStage, Stapel2DGameContext stapel2DGameContext, final FeatureDraft featureDraft, Panel panel) {
        featuresStage.getClass();
        DraftLocalizer draftLocalizer = new DraftLocalizer(stapel2DGameContext, "");
        String title = draftLocalizer.getTitle(featureDraft);
        String text = draftLocalizer.getText(featureDraft);
        int i = Resources.ICON_FEATURES;
        Master master = (Master) panel.getAbsoluteParent();
        long j = featureDraft.diamondPrice.get();
        Getter getter = new Getter() { // from class: info.flowersoft.theotown.stages.FeaturesStage$$ExternalSyntheticLambda3
            @Override // io.blueflower.stapel2d.util.Getter
            public final Object get() {
                return FeaturesStage.$r8$lambda$brJz3U_bRiawLP0ZPUs_mnDMyyk(this.f$0, featureDraft);
            }
        };
        new BuyOrVideoDialog(i, title, text, master, j, (Getter<Boolean>) getter, featuresStage.stageVisitor, featuresStage.context, featureDraft.id, "unlock feature " + featureDraft.id, false).setVisible(true);
    }

    public static /* synthetic */ Boolean $r8$lambda$brJz3U_bRiawLP0ZPUs_mnDMyyk(FeaturesStage featuresStage, FeatureDraft featureDraft) {
        featuresStage.saveState();
        GameHandler.getInstance().buyFeature(featureDraft);
        featuresStage.getGameStack().refreshCurrentStage();
        return Boolean.TRUE;
    }

    public final void saveState() {
        this.selectedIndex = this.selector.getListBox().getSelectedItemIndex();
        this.shiftY = this.selector.getListBox().getShiftY();
    }

    public final void restoreState() {
        if (this.selectedIndex >= 0) {
            this.selector.getListBox().selectItemIndex(this.selectedIndex);
            this.selector.getListBox().setShiftY(this.shiftY);
            this.selector.rebuild();
        }
    }

    @Override // info.flowersoft.theotown.stages.BaseStage
    public void onUpdate() {
        drawBackground();
    }

    public String toString() {
        return "FeaturesStage";
    }
}
