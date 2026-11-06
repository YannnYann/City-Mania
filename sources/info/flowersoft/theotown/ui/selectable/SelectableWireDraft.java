package info.flowersoft.theotown.ui.selectable;

import info.flowersoft.theotown.city.City;
import info.flowersoft.theotown.components.DefaultBudget;
import info.flowersoft.theotown.draft.Draft;
import info.flowersoft.theotown.draft.WireDraft;
import info.flowersoft.theotown.tools.WireTool;

/* JADX INFO: loaded from: classes4.dex */
public class SelectableWireDraft extends SelectableDraft {
    public DefaultBudget budget;
    public WireDraft draft;

    public SelectableWireDraft(City city, WireDraft wireDraft) {
        super(city);
        this.budget = (DefaultBudget) city.getComponent(0);
        this.draft = wireDraft;
    }

    @Override // info.flowersoft.theotown.ui.selectable.SelectableDraft
    public long getPrice() {
        return this.budget.getPrice(this.draft, 1);
    }

    @Override // info.flowersoft.theotown.ui.selectable.SelectableDraft
    public Draft getDraft() {
        return this.draft;
    }

    @Override // info.flowersoft.theotown.ui.selectable.DefaultSelectable, info.flowersoft.theotown.ui.Selectable
    public void select() {
        super.select();
        this.city.applyComponent(new WireTool(this.draft));
    }
}
