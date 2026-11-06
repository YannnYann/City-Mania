package info.flowersoft.theotown.ui.selectable;

import info.flowersoft.theotown.city.City;
import info.flowersoft.theotown.draft.Draft;
import info.flowersoft.theotown.resources.Resources;
import info.flowersoft.theotown.tools.MarkTool;
import info.flowersoft.theotown.tools.ToolResolver;
import info.flowersoft.theotown.tools.marker.BuildToolMarker;
import io.blueflower.stapel2d.util.Getter;
import java.util.Locale;

/* JADX INFO: loaded from: classes4.dex */
public class SelectableMarker extends SelectableDraft {
    public String id;
    public final BuildToolMarker marker;
    public Getter<String> name;

    @Override // info.flowersoft.theotown.ui.selectable.SelectableDraft
    public long getPrice() {
        return 0L;
    }

    public SelectableMarker(City city, BuildToolMarker buildToolMarker) {
        super(city);
        this.marker = buildToolMarker;
    }

    public void setName(Getter<String> getter) {
        this.name = getter;
    }

    @Override // info.flowersoft.theotown.ui.selectable.SelectableDraft
    public Draft getDraft() {
        Draft draft = new Draft();
        String str = this.id;
        if (str == null) {
            draft.id = "$marker_" + this.marker.getTag().toLowerCase(Locale.ENGLISH);
            return draft;
        }
        draft.id = str;
        return draft;
    }

    public void setDraftId(String str) {
        this.id = str;
    }

    @Override // info.flowersoft.theotown.ui.selectable.SelectableDraft, info.flowersoft.theotown.ui.selectable.DefaultSelectable
    public String getSelectText() {
        return this.city.getTranslator().translate(3212);
    }

    @Override // info.flowersoft.theotown.ui.selectable.SelectableDraft, info.flowersoft.theotown.ui.selectable.DefaultSelectable
    public int getSelectIcon() {
        return Resources.ICON_EYE;
    }

    @Override // info.flowersoft.theotown.ui.selectable.SelectableDraft, info.flowersoft.theotown.ui.selectable.DefaultSelectable
    public int getPreviewFrame() {
        return this.marker.getIcon();
    }

    @Override // info.flowersoft.theotown.ui.selectable.DefaultSelectable, info.flowersoft.theotown.ui.Selectable
    public void select() {
        super.select();
        MarkTool markToolResolve = new ToolResolver(this.city).resolve(this.marker);
        Getter<String> getter = this.name;
        if (getter != null) {
            markToolResolve.setName(getter);
        }
        this.city.applyComponent(markToolResolve);
    }
}
