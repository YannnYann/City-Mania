package info.flowersoft.theotown.ui.selectable;

import com.ironsource.mediationsdk.logger.IronSourceError;
import info.flowersoft.theotown.city.City;
import info.flowersoft.theotown.resources.Resources;
import info.flowersoft.theotown.tools.ToolResolver;

/* JADX INFO: loaded from: classes4.dex */
public class SelectableRemover extends DefaultSelectable {
    public City city;

    public SelectableRemover(City city) {
        this.city = city;
    }

    @Override // info.flowersoft.theotown.ui.selectable.DefaultSelectable
    public String getSelectId() {
        return "cmdSelectableSelect$Remove$All";
    }

    @Override // info.flowersoft.theotown.ui.selectable.DefaultSelectable
    public String getText() {
        return this.city.getTranslator().translate(101);
    }

    @Override // info.flowersoft.theotown.ui.selectable.DefaultSelectable
    public String getSelectText() {
        return this.city.getTranslator().translate(19);
    }

    @Override // info.flowersoft.theotown.ui.selectable.DefaultSelectable
    public int getSelectIcon() {
        return Resources.ICON_REMOVE;
    }

    @Override // info.flowersoft.theotown.ui.Selectable
    public String getTitle() {
        return this.city.getTranslator().translate(IronSourceError.ERROR_NO_INTERNET_CONNECTION);
    }

    @Override // info.flowersoft.theotown.ui.selectable.DefaultSelectable
    public int getPreviewFrame() {
        return Resources.ICON_REMOVE_ANY;
    }

    @Override // info.flowersoft.theotown.ui.selectable.DefaultSelectable, info.flowersoft.theotown.ui.Selectable
    public void select() {
        super.select();
        this.city.applyComponent(new ToolResolver(this.city).resolveRemove());
    }
}
