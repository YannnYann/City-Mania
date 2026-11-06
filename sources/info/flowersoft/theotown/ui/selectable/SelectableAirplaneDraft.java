package info.flowersoft.theotown.ui.selectable;

import info.flowersoft.theotown.components.DefaultBudget;
import info.flowersoft.theotown.components.airport.Airplane;
import info.flowersoft.theotown.components.airport.DefaultAirport;
import info.flowersoft.theotown.crossplatform.TheoTown;
import info.flowersoft.theotown.draft.Draft;
import info.flowersoft.theotown.draft.FlyingObjectDraft;
import info.flowersoft.theotown.resources.Resources;
import info.flowersoft.theotown.util.StringFormatter;
import io.blueflower.stapel2d.gui.Label;

/* JADX INFO: loaded from: classes4.dex */
public class SelectableAirplaneDraft extends SelectableDraft {
    public final DefaultAirport airport;
    public final DefaultBudget budget;
    public final FlyingObjectDraft draft;
    public int frame;

    public SelectableAirplaneDraft(DefaultAirport defaultAirport, FlyingObjectDraft flyingObjectDraft) {
        super(defaultAirport.getCity());
        this.budget = (DefaultBudget) this.city.getComponent(0);
        this.airport = defaultAirport;
        this.draft = flyingObjectDraft;
    }

    @Override // info.flowersoft.theotown.ui.selectable.DefaultSelectable, info.flowersoft.theotown.ui.Selectable
    public int countFrames() {
        int[] iArr = this.draft.frames;
        if (iArr != null) {
            return iArr.length / 4;
        }
        return 1;
    }

    @Override // info.flowersoft.theotown.ui.selectable.DefaultSelectable, info.flowersoft.theotown.ui.Selectable
    public int getFrame() {
        return this.frame;
    }

    @Override // info.flowersoft.theotown.ui.selectable.DefaultSelectable, info.flowersoft.theotown.ui.Selectable
    public void setFrame(int i) {
        this.frame = i;
    }

    @Override // info.flowersoft.theotown.ui.selectable.SelectableDraft
    public void buildLabels() {
        new Label(StringFormatter.format(SelectableDraft.context.getTranslator().translate(2971), Integer.valueOf(this.draft.capacity)), 0, 0, 0, getLabelHeight(), getLabelList()).setFont(Resources.skin.fontSmall);
        super.buildLabels();
    }

    @Override // info.flowersoft.theotown.ui.selectable.SelectableDraft
    public int getDiamondPrice() {
        if (TheoTown.PREMIUM) {
            return 0;
        }
        return this.draft.diamondPrice.get();
    }

    @Override // info.flowersoft.theotown.ui.selectable.SelectableDraft
    public long getPrice() {
        long price = this.budget.getPrice(this.draft, 1);
        return (!TheoTown.PREMIUM || this.draft.diamondPrice.get() <= 0) ? price : price + (((long) this.draft.diamondPrice.get()) * 100000);
    }

    @Override // info.flowersoft.theotown.ui.selectable.SelectableDraft
    public Draft getDraft() {
        return this.draft;
    }

    @Override // info.flowersoft.theotown.ui.selectable.SelectableDraft, info.flowersoft.theotown.ui.selectable.DefaultSelectable
    public int getPreviewFrame() {
        int[] iArr = this.draft.frames;
        if (iArr != null) {
            return iArr[this.frame * 4];
        }
        return 0;
    }

    @Override // info.flowersoft.theotown.ui.selectable.SelectableDraft, info.flowersoft.theotown.ui.selectable.DefaultSelectable
    public String getSelectText() {
        return this.city.getTranslator().translate(3277);
    }

    @Override // info.flowersoft.theotown.ui.selectable.SelectableDraft, info.flowersoft.theotown.ui.selectable.DefaultSelectable
    public int getSelectIcon() {
        return getDiamondPrice() > 0 ? Resources.ICON_DIAMOND : Resources.ICON_MONEY;
    }

    @Override // info.flowersoft.theotown.ui.selectable.SelectableDraft, info.flowersoft.theotown.ui.selectable.DefaultSelectable, info.flowersoft.theotown.ui.Selectable
    public boolean isSelectable() {
        return super.isSelectable() && this.budget.canSpend(getPrice());
    }

    @Override // info.flowersoft.theotown.ui.selectable.DefaultSelectable, info.flowersoft.theotown.ui.Selectable
    public void select() {
        Airplane airplaneAddAirplane = this.airport.addAirplane(this.draft, this.frame);
        if (airplaneAddAirplane != null) {
            this.budget.spend(getPrice(), "buy airplane " + airplaneAddAirplane.getId());
        }
        super.select();
    }
}
