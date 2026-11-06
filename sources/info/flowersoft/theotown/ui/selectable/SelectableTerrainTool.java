package info.flowersoft.theotown.ui.selectable;

import info.flowersoft.theotown.city.City;
import info.flowersoft.theotown.draft.Draft;
import info.flowersoft.theotown.draft.ToolDraft;
import info.flowersoft.theotown.tools.TerrainHillTool;

/* JADX INFO: loaded from: classes4.dex */
public class SelectableTerrainTool extends SelectableDraft {
    public final ToolDraft draft;

    @Override // info.flowersoft.theotown.ui.selectable.SelectableDraft
    public long getPrice() {
        return 0L;
    }

    public SelectableTerrainTool(City city, ToolDraft toolDraft) {
        super(city);
        this.draft = toolDraft;
    }

    @Override // info.flowersoft.theotown.ui.selectable.SelectableDraft
    public Draft getDraft() {
        return this.draft;
    }

    @Override // info.flowersoft.theotown.ui.selectable.DefaultSelectable, info.flowersoft.theotown.ui.Selectable
    public void select() {
        super.select();
        this.city.applyComponent(new TerrainHillTool(this.draft));
    }
}
