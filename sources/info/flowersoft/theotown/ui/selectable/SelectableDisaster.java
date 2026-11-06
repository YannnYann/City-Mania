package info.flowersoft.theotown.ui.selectable;

import info.flowersoft.theotown.city.City;
import info.flowersoft.theotown.city.components.Disaster;
import info.flowersoft.theotown.draft.Draft;
import info.flowersoft.theotown.draft.ToolDraft;
import info.flowersoft.theotown.resources.Resources;
import info.flowersoft.theotown.tools.ToolResolver;
import info.flowersoft.theotown.util.DraftLocalizer;

/* JADX INFO: loaded from: classes4.dex */
public class SelectableDisaster extends SelectableDraft {
    public String cmdText;
    public Class<? extends Disaster> disasterType;
    public ToolDraft draft;
    public int icon;
    public String text;
    public String title;

    @Override // info.flowersoft.theotown.ui.selectable.SelectableDraft
    public long getPrice() {
        return 0L;
    }

    public SelectableDisaster(City city, ToolDraft toolDraft, Class<? extends Disaster> cls) {
        super(city);
        this.icon = toolDraft.frames[0];
        this.draft = toolDraft;
        DraftLocalizer draftLocalizer = new DraftLocalizer(city);
        this.title = draftLocalizer.getTitle(toolDraft);
        this.cmdText = draftLocalizer.localizeKey(toolDraft.cmdId, "CMD");
        this.text = draftLocalizer.getText(toolDraft);
        this.disasterType = cls;
        ToolResolver.setDisasterName(cls, this.title);
    }

    @Override // info.flowersoft.theotown.ui.selectable.SelectableDraft
    public Draft getDraft() {
        return this.draft;
    }

    @Override // info.flowersoft.theotown.ui.selectable.SelectableDraft, info.flowersoft.theotown.ui.selectable.DefaultSelectable
    public String getText() {
        return this.text;
    }

    @Override // info.flowersoft.theotown.ui.selectable.SelectableDraft, info.flowersoft.theotown.ui.selectable.DefaultSelectable
    public String getSelectText() {
        return this.cmdText;
    }

    @Override // info.flowersoft.theotown.ui.selectable.SelectableDraft, info.flowersoft.theotown.ui.selectable.DefaultSelectable
    public int getSelectIcon() {
        return Resources.ICON_LOCATE;
    }

    @Override // info.flowersoft.theotown.ui.selectable.SelectableDraft, info.flowersoft.theotown.ui.Selectable
    public String getTitle() {
        return this.title;
    }

    @Override // info.flowersoft.theotown.ui.selectable.SelectableDraft, info.flowersoft.theotown.ui.selectable.DefaultSelectable
    public int getPreviewFrame() {
        return this.icon;
    }

    @Override // info.flowersoft.theotown.ui.selectable.DefaultSelectable, info.flowersoft.theotown.ui.Selectable
    public void select() {
        super.select();
        this.city.applyComponent(new ToolResolver(this.city).resolve(this.disasterType));
    }
}
