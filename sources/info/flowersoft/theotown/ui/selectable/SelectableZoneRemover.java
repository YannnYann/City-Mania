package info.flowersoft.theotown.ui.selectable;

import info.flowersoft.theotown.city.City;
import info.flowersoft.theotown.resources.Resources;
import info.flowersoft.theotown.tools.ToolResolver;

/* JADX INFO: loaded from: classes4.dex */
public class SelectableZoneRemover extends SelectableRemover {
    public SelectableZoneRemover(City city) {
        super(city);
    }

    @Override // info.flowersoft.theotown.ui.selectable.SelectableRemover, info.flowersoft.theotown.ui.selectable.DefaultSelectable
    public String getText() {
        return this.city.getTranslator().translate(1593);
    }

    @Override // info.flowersoft.theotown.ui.selectable.SelectableRemover, info.flowersoft.theotown.ui.selectable.DefaultSelectable
    public String getSelectId() {
        return "cmdSelectableSelect$Remove$Zone";
    }

    @Override // info.flowersoft.theotown.ui.selectable.SelectableRemover, info.flowersoft.theotown.ui.Selectable
    public String getTitle() {
        return this.city.getTranslator().translate(884);
    }

    @Override // info.flowersoft.theotown.ui.selectable.SelectableRemover, info.flowersoft.theotown.ui.selectable.DefaultSelectable
    public int getPreviewFrame() {
        return Resources.ICON_REMOVE_ZONE;
    }

    @Override // info.flowersoft.theotown.ui.selectable.SelectableRemover, info.flowersoft.theotown.ui.selectable.DefaultSelectable, info.flowersoft.theotown.ui.Selectable
    public void select() {
        super.select();
        this.city.applyComponent(new ToolResolver(this.city).resolveRemoveZone());
    }
}
