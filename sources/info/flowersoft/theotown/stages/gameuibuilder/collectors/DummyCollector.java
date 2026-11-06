package info.flowersoft.theotown.stages.gameuibuilder.collectors;

import info.flowersoft.theotown.city.City;
import info.flowersoft.theotown.ui.Selectable;
import java.util.List;

/* JADX INFO: loaded from: classes4.dex */
public class DummyCollector extends SelectableCollector {
    @Override // info.flowersoft.theotown.stages.gameuibuilder.collectors.SelectableCollector
    public void collect(List<Selectable> list) {
    }

    @Override // info.flowersoft.theotown.stages.gameuibuilder.collectors.SelectableCollector
    public int getIconId() {
        return 0;
    }

    @Override // info.flowersoft.theotown.stages.gameuibuilder.collectors.SelectableCollector
    public int getNameId() {
        return 0;
    }

    public DummyCollector(City city) {
        super(city);
    }

    @Override // info.flowersoft.theotown.stages.gameuibuilder.collectors.SelectableCollector
    public String getTag() {
        return "DummyCollector";
    }
}
