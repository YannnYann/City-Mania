package info.flowersoft.theotown.ui.selectable;

import info.flowersoft.theotown.city.City;
import info.flowersoft.theotown.draft.Draft;
import info.flowersoft.theotown.draft.ToolDraft;
import info.flowersoft.theotown.resources.Drafts;
import info.flowersoft.theotown.resources.Resources;
import info.flowersoft.theotown.tools.EyeDropperTool;
import info.flowersoft.theotown.ui.toolbar.ToolBar;
import io.blueflower.stapel2d.gui.Gadget;
import io.blueflower.stapel2d.gui.Master;
import io.blueflower.stapel2d.util.Setter;

/* JADX INFO: loaded from: classes4.dex */
public class SelectableEyedropper extends SelectableDraft {
    public final ToolDraft draft;
    public final Setter<SelectableDraft> onSelect;

    @Override // info.flowersoft.theotown.ui.selectable.SelectableDraft
    public long getPrice() {
        return 0L;
    }

    public final void addToHistory(SelectableDraft selectableDraft) {
        Master master = getMaster();
        if (master != null) {
            Gadget gadgetFindChildWithId = master.findChildWithId("roottoolbar");
            if (gadgetFindChildWithId instanceof ToolBar) {
                ((ToolBar) gadgetFindChildWithId).registerForUse(selectableDraft.getDraft().id);
            }
        }
    }

    public SelectableEyedropper(City city) {
        super(city);
        this.draft = (ToolDraft) Drafts.ALL.get("$tool_eyedropper00");
        this.onSelect = new Setter<SelectableDraft>() { // from class: info.flowersoft.theotown.ui.selectable.SelectableEyedropper.1
            @Override // io.blueflower.stapel2d.util.Setter
            public void set(SelectableDraft selectableDraft) {
                SelectableEyedropper.this.addToHistory(selectableDraft);
            }
        };
    }

    @Override // info.flowersoft.theotown.ui.selectable.DefaultSelectable, info.flowersoft.theotown.ui.Selectable
    public void select() {
        super.select();
        this.city.applyComponent(new EyeDropperTool(this.onSelect));
    }

    @Override // info.flowersoft.theotown.ui.selectable.SelectableDraft
    public Draft getDraft() {
        return this.draft;
    }

    @Override // info.flowersoft.theotown.ui.selectable.SelectableDraft, info.flowersoft.theotown.ui.selectable.DefaultSelectable
    public int getSelectIcon() {
        return Resources.ICON_EYE_DROPPER;
    }

    @Override // info.flowersoft.theotown.ui.selectable.SelectableDraft, info.flowersoft.theotown.ui.selectable.DefaultSelectable
    public String getSelectText() {
        return SelectableDraft.context.getTranslator().translate(2181);
    }
}
