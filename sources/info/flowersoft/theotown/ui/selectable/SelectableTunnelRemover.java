package info.flowersoft.theotown.ui.selectable;

import info.flowersoft.theotown.city.City;
import info.flowersoft.theotown.resources.Resources;
import info.flowersoft.theotown.tools.ToolResolver;

/* JADX INFO: loaded from: classes4.dex */
public class SelectableTunnelRemover extends SelectableRemover {
    public SelectableTunnelRemover(City city) {
        super(city);
    }

    @Override // info.flowersoft.theotown.ui.selectable.SelectableRemover, info.flowersoft.theotown.ui.selectable.DefaultSelectable
    public String getText() {
        return this.city.getTranslator().translate(1758);
    }

    @Override // info.flowersoft.theotown.ui.selectable.SelectableRemover, info.flowersoft.theotown.ui.selectable.DefaultSelectable
    public String getSelectId() {
        return "cmdSelectableSelect$Remove$Tunnel";
    }

    @Override // info.flowersoft.theotown.ui.selectable.SelectableRemover, info.flowersoft.theotown.ui.Selectable
    public String getTitle() {
        return this.city.getTranslator().translate(2045);
    }

    @Override // info.flowersoft.theotown.ui.selectable.SelectableRemover, info.flowersoft.theotown.ui.selectable.DefaultSelectable
    public int getPreviewFrame() {
        return Resources.ICON_REMOVE_TUNNEL;
    }

    @Override // info.flowersoft.theotown.ui.selectable.SelectableRemover, info.flowersoft.theotown.ui.selectable.DefaultSelectable, info.flowersoft.theotown.ui.Selectable
    public void select() {
        super.select();
        this.city.applyComponent(new ToolResolver(this.city).resolveRemoveTunnelTool());
    }
}
