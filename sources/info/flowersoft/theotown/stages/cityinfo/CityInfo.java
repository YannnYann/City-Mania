package info.flowersoft.theotown.stages.cityinfo;

import info.flowersoft.theotown.city.City;
import info.flowersoft.theotown.resources.Resources;
import io.blueflower.stapel2d.gamestack.GameStack;
import io.blueflower.stapel2d.gamestack.Stapel2DGameContext;
import io.blueflower.stapel2d.gui.Gadget;
import io.blueflower.stapel2d.gui.Icon;

/* JADX INFO: loaded from: classes4.dex */
public abstract class CityInfo {
    public abstract void build(City city, Gadget gadget, Stapel2DGameContext stapel2DGameContext, GameStack gameStack);

    public abstract String getHelpText(City city);

    public abstract String getTag();

    public abstract int getTitleId(City city);

    public boolean isAvailable(City city) {
        return true;
    }

    public int getIcon() {
        return Resources.ICON_CANCEL;
    }

    public Icon createIcon(City city, Gadget gadget, boolean z) {
        Icon icon = new Icon(getIcon(), 0, 0, 0, 0, gadget);
        icon.fillParent();
        return icon;
    }

    public boolean equals(Object obj) {
        return getClass().equals(obj.getClass());
    }
}
