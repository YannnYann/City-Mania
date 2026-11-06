package info.flowersoft.theotown.ui.selectable;

import info.flowersoft.theotown.city.City;
import info.flowersoft.theotown.draft.CategoryDraft;
import info.flowersoft.theotown.ui.Selectable;
import java.util.ArrayList;
import java.util.Collection;
import java.util.Iterator;
import java.util.List;

/* JADX INFO: loaded from: classes4.dex */
public class SelectableCategory extends SelectableDraft {
    public final List<Selectable> children;
    public final CategoryDraft draft;
    public boolean markNewChildren;

    @Override // info.flowersoft.theotown.ui.selectable.SelectableDraft
    public long getPrice() {
        return 0L;
    }

    public SelectableCategory(City city, CategoryDraft categoryDraft) {
        super(city);
        this.children = new ArrayList();
        this.markNewChildren = true;
        if (categoryDraft == null) {
            throw new IllegalArgumentException("Category was not found");
        }
        this.draft = categoryDraft;
    }

    public void addChild(Selectable selectable) {
        this.children.add(selectable);
    }

    public <T extends Selectable> void addChildren(Collection<T> collection) {
        Iterator<T> it = collection.iterator();
        while (it.hasNext()) {
            addChild(it.next());
        }
    }

    public List<Selectable> getChildren() {
        return this.children;
    }

    @Override // info.flowersoft.theotown.ui.selectable.SelectableDraft
    public CategoryDraft getDraft() {
        return this.draft;
    }

    public boolean markNewChildren() {
        return this.markNewChildren;
    }

    public void setMarkNewChildren(boolean z) {
        this.markNewChildren = z;
    }
}
