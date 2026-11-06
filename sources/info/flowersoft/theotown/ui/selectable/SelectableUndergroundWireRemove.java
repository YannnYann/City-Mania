package info.flowersoft.theotown.ui.selectable;

import com.ironsource.InterfaceC3676je;
import info.flowersoft.theotown.city.City;
import info.flowersoft.theotown.resources.Resources;
import info.flowersoft.theotown.tools.ToolResolver;

/* JADX INFO: loaded from: classes4.dex */
public class SelectableUndergroundWireRemove extends SelectableRemover {
    public SelectableUndergroundWireRemove(City city) {
        super(city);
    }

    @Override // info.flowersoft.theotown.ui.selectable.SelectableRemover, info.flowersoft.theotown.ui.selectable.DefaultSelectable
    public String getText() {
        return this.city.getTranslator().translate(InterfaceC3676je.a.k);
    }

    @Override // info.flowersoft.theotown.ui.selectable.SelectableRemover, info.flowersoft.theotown.ui.selectable.DefaultSelectable
    public String getSelectId() {
        return "cmdSelectableSelect$Remove$UndergroundWire";
    }

    @Override // info.flowersoft.theotown.ui.selectable.SelectableRemover, info.flowersoft.theotown.ui.Selectable
    public String getTitle() {
        return this.city.getTranslator().translate(398);
    }

    @Override // info.flowersoft.theotown.ui.selectable.SelectableRemover, info.flowersoft.theotown.ui.selectable.DefaultSelectable
    public int getPreviewFrame() {
        return Resources.ICON_REMOVE_UNDERGROUND_WIRE;
    }

    @Override // info.flowersoft.theotown.ui.selectable.SelectableRemover, info.flowersoft.theotown.ui.selectable.DefaultSelectable, info.flowersoft.theotown.ui.Selectable
    public void select() {
        super.select();
        this.city.applyComponent(new ToolResolver(this.city).resolveRemoveUndergroundWireTool());
    }
}
