package info.flowersoft.theotown.stages.gameuibuilder.collectors;

import info.flowersoft.theotown.city.City;
import info.flowersoft.theotown.ui.Selectable;
import java.util.ArrayList;
import java.util.List;

/* JADX INFO: loaded from: classes4.dex */
public abstract class SelectableCollector {
    public City city;

    public abstract void collect(List<Selectable> list);

    public abstract int getIconId();

    public int getNameId() {
        return 0;
    }

    public abstract String getTag();

    public boolean isVisible() {
        return true;
    }

    public SelectableCollector(City city) {
        this.city = city;
    }

    public String getName() {
        return this.city.getTranslator().translate(getNameId());
    }

    public List<Selectable> collect() {
        ArrayList arrayList = new ArrayList();
        collect(arrayList);
        return arrayList;
    }
}
