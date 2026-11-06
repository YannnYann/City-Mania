package info.flowersoft.theotown.ui.selectable;

import info.flowersoft.theotown.city.City;
import info.flowersoft.theotown.draft.Draft;
import info.flowersoft.theotown.draft.FenceDraft;
import info.flowersoft.theotown.tools.FenceTool;

/* JADX INFO: loaded from: classes4.dex */
public class SelectableFenceDraft extends SelectableDraft {
    public final FenceDraft draft;

    public SelectableFenceDraft(City city, FenceDraft fenceDraft) {
        super(city);
        this.draft = fenceDraft;
    }

    @Override // info.flowersoft.theotown.ui.selectable.SelectableDraft
    public long getPrice() {
        return this.draft.price;
    }

    @Override // info.flowersoft.theotown.ui.selectable.SelectableDraft
    public Draft getDraft() {
        return this.draft;
    }

    @Override // info.flowersoft.theotown.ui.selectable.DefaultSelectable, info.flowersoft.theotown.ui.Selectable
    public void select() {
        super.select();
        this.city.applyComponent(new FenceTool(this.draft));
    }
}
