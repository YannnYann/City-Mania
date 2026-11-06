package info.flowersoft.theotown.ui.selectable;

import info.flowersoft.theotown.city.City;
import info.flowersoft.theotown.components.DefaultBudget;
import info.flowersoft.theotown.draft.Draft;
import info.flowersoft.theotown.draft.PipeDraft;
import info.flowersoft.theotown.tools.PipeTool;

/* JADX INFO: loaded from: classes4.dex */
public class SelectablePipeDraft extends SelectableDraft {
    public DefaultBudget budget;
    public PipeDraft draft;

    public SelectablePipeDraft(City city, PipeDraft pipeDraft) {
        super(city);
        this.budget = (DefaultBudget) city.getComponent(0);
        this.draft = pipeDraft;
    }

    @Override // info.flowersoft.theotown.ui.selectable.SelectableDraft
    public Draft getDraft() {
        return this.draft;
    }

    @Override // info.flowersoft.theotown.ui.selectable.SelectableDraft
    public long getPrice() {
        return this.budget.getPrice(this.draft, 1);
    }

    @Override // info.flowersoft.theotown.ui.selectable.DefaultSelectable, info.flowersoft.theotown.ui.Selectable
    public void select() {
        super.select();
        this.city.applyComponent(new PipeTool(this.draft));
    }
}
