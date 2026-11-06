package info.flowersoft.theotown.ui.selectable;

import info.flowersoft.theotown.city.City;
import info.flowersoft.theotown.city.components.InfluenceType;
import info.flowersoft.theotown.resources.Resources;
import info.flowersoft.theotown.tools.ToolResolver;
import io.blueflower.stapel2d.gui.Panel;

/* JADX INFO: loaded from: classes4.dex */
public class SelectableInfluence extends DefaultSelectable {
    public City city;
    public InfluenceType influenceType;

    public SelectableInfluence(City city, InfluenceType influenceType) {
        this.city = city;
        this.influenceType = influenceType;
    }

    @Override // info.flowersoft.theotown.ui.selectable.DefaultSelectable, info.flowersoft.theotown.ui.Selectable
    public void build(Panel panel) {
        super.build(panel);
    }

    @Override // info.flowersoft.theotown.ui.selectable.DefaultSelectable
    public String getText() {
        int textId = this.influenceType.getTextId();
        if (textId != 0) {
            return this.city.getTranslator().translate(textId);
        }
        return "Some text...";
    }

    @Override // info.flowersoft.theotown.ui.selectable.DefaultSelectable
    public String getSelectText() {
        return this.city.getTranslator().translate(3212);
    }

    @Override // info.flowersoft.theotown.ui.selectable.DefaultSelectable
    public int getSelectIcon() {
        return Resources.ICON_EYE;
    }

    @Override // info.flowersoft.theotown.ui.selectable.DefaultSelectable
    public int getPreviewFrame() {
        int iconId = this.influenceType.getIconId();
        return iconId == 0 ? Resources.ICON_CANCEL : iconId;
    }

    @Override // info.flowersoft.theotown.ui.Selectable
    public String getTitle() {
        int nameId = this.influenceType.getNameId();
        if (nameId != 0) {
            return this.city.getTranslator().translate(nameId);
        }
        return this.influenceType.name();
    }

    @Override // info.flowersoft.theotown.ui.selectable.DefaultSelectable, info.flowersoft.theotown.ui.Selectable
    public void select() {
        super.select();
        this.city.applyComponent(new ToolResolver(this.city).resolve(this.influenceType));
    }
}
