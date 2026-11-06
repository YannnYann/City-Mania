package info.flowersoft.theotown.ui.selectable;

import info.flowersoft.theotown.city.City;
import info.flowersoft.theotown.draft.Draft;
import info.flowersoft.theotown.draft.ToolDraft;
import info.flowersoft.theotown.tools.GenericTool;
import info.flowersoft.theotown.util.DraftLocalizer;

/* JADX INFO: loaded from: classes4.dex */
public class SelectableGenericTool extends SelectableDraft {
    public String cmdText;
    public ToolDraft draft;

    public SelectableGenericTool(City city, ToolDraft toolDraft) {
        super(city);
        this.draft = toolDraft;
        String str = toolDraft.cmdText;
        if (str != null && !str.isEmpty()) {
            this.cmdText = toolDraft.cmdText;
        }
        String str2 = toolDraft.cmdId;
        if (str2 == null || str2.isEmpty()) {
            return;
        }
        this.cmdText = new DraftLocalizer(city).localizeKey(toolDraft.cmdId, "CMD");
    }

    @Override // info.flowersoft.theotown.ui.selectable.SelectableDraft, info.flowersoft.theotown.ui.selectable.DefaultSelectable
    public String getSelectText() {
        String str = this.cmdText;
        return str != null ? str : super.getSelectText();
    }

    @Override // info.flowersoft.theotown.ui.selectable.SelectableDraft, info.flowersoft.theotown.ui.selectable.DefaultSelectable
    public int getSelectIcon() {
        int[] iArr = this.draft.iconFrames;
        return iArr != null ? iArr[0] : super.getSelectIcon();
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
        this.city.applyComponent(new GenericTool(this.draft));
    }
}
