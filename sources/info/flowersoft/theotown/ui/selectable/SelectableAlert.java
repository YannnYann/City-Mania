package info.flowersoft.theotown.ui.selectable;

import info.flowersoft.theotown.city.City;
import info.flowersoft.theotown.draft.Draft;
import info.flowersoft.theotown.resources.Resources;
import info.flowersoft.theotown.tools.AlertTool;

/* JADX INFO: loaded from: classes4.dex */
public abstract class SelectableAlert extends SelectableDraft {
    public Draft draft;

    public abstract AlertTool getAlertTool();

    @Override // info.flowersoft.theotown.ui.selectable.SelectableDraft
    public long getPrice() {
        return 0L;
    }

    @Override // info.flowersoft.theotown.ui.selectable.SelectableDraft, info.flowersoft.theotown.ui.selectable.DefaultSelectable
    public boolean hasRequirement() {
        return true;
    }

    @Override // info.flowersoft.theotown.ui.selectable.SelectableDraft, info.flowersoft.theotown.ui.selectable.DefaultSelectable, info.flowersoft.theotown.ui.Selectable
    public boolean isActive() {
        return true;
    }

    @Override // info.flowersoft.theotown.ui.selectable.SelectableDraft, info.flowersoft.theotown.ui.selectable.DefaultSelectable
    public abstract boolean isUnlocked();

    public SelectableAlert(City city) {
        super(city);
        Draft draft = new Draft();
        this.draft = draft;
        draft.id = "no draft set";
    }

    @Override // info.flowersoft.theotown.ui.selectable.SelectableDraft, info.flowersoft.theotown.ui.selectable.DefaultSelectable
    public int getSelectIcon() {
        return Resources.ICON_LOCATE;
    }

    @Override // info.flowersoft.theotown.ui.selectable.SelectableDraft
    public Draft getDraft() {
        return this.draft;
    }

    @Override // info.flowersoft.theotown.ui.selectable.SelectableDraft, info.flowersoft.theotown.ui.selectable.DefaultSelectable
    public String getSelectText() {
        return this.city.getTranslator().translate(896);
    }

    @Override // info.flowersoft.theotown.ui.selectable.DefaultSelectable, info.flowersoft.theotown.ui.Selectable
    public void select() {
        super.select();
        this.city.applyComponent(getAlertTool());
    }
}
