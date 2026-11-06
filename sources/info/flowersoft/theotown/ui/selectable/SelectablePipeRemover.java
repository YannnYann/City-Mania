package info.flowersoft.theotown.ui.selectable;

import com.ironsource.M9;
import info.flowersoft.theotown.city.City;
import info.flowersoft.theotown.resources.Resources;
import info.flowersoft.theotown.tools.ToolResolver;

/* JADX INFO: loaded from: classes4.dex */
public class SelectablePipeRemover extends SelectableRemover {
    public SelectablePipeRemover(City city) {
        super(city);
    }

    @Override // info.flowersoft.theotown.ui.selectable.SelectableRemover, info.flowersoft.theotown.ui.selectable.DefaultSelectable
    public String getText() {
        return this.city.getTranslator().translate(M9.a.g);
    }

    @Override // info.flowersoft.theotown.ui.selectable.SelectableRemover, info.flowersoft.theotown.ui.selectable.DefaultSelectable
    public String getSelectId() {
        return "cmdSelectableSelect$Remove$Pipe";
    }

    @Override // info.flowersoft.theotown.ui.selectable.SelectableRemover, info.flowersoft.theotown.ui.Selectable
    public String getTitle() {
        return this.city.getTranslator().translate(2643);
    }

    @Override // info.flowersoft.theotown.ui.selectable.SelectableRemover, info.flowersoft.theotown.ui.selectable.DefaultSelectable
    public int getPreviewFrame() {
        return Resources.ICON_REMOVE_PIPE;
    }

    @Override // info.flowersoft.theotown.ui.selectable.SelectableRemover, info.flowersoft.theotown.ui.selectable.DefaultSelectable, info.flowersoft.theotown.ui.Selectable
    public void select() {
        super.select();
        this.city.applyComponent(new ToolResolver(this.city).resolveRemovePipe());
    }
}
