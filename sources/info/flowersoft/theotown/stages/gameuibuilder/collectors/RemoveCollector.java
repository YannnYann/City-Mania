package info.flowersoft.theotown.stages.gameuibuilder.collectors;

import info.flowersoft.theotown.city.City;
import info.flowersoft.theotown.resources.Resources;
import info.flowersoft.theotown.ui.Selectable;
import info.flowersoft.theotown.ui.selectable.SelectableFenceRemover;
import info.flowersoft.theotown.ui.selectable.SelectableMetroRemover;
import info.flowersoft.theotown.ui.selectable.SelectablePipeRemover;
import info.flowersoft.theotown.ui.selectable.SelectableRemover;
import info.flowersoft.theotown.ui.selectable.SelectableRoadDecorationRemover;
import info.flowersoft.theotown.ui.selectable.SelectableTunnelRemover;
import info.flowersoft.theotown.ui.selectable.SelectableUndergroundWireRemove;
import info.flowersoft.theotown.ui.selectable.SelectableZoneRemover;
import java.util.List;

/* JADX INFO: loaded from: classes4.dex */
public class RemoveCollector extends SelectableCollector {
    @Override // info.flowersoft.theotown.stages.gameuibuilder.collectors.SelectableCollector
    public int getNameId() {
        return 1341;
    }

    public RemoveCollector(City city) {
        super(city);
    }

    @Override // info.flowersoft.theotown.stages.gameuibuilder.collectors.SelectableCollector
    public int getIconId() {
        return Resources.ICON_REMOVE;
    }

    @Override // info.flowersoft.theotown.stages.gameuibuilder.collectors.SelectableCollector
    public void collect(List<Selectable> list) {
        list.add(new SelectableRemover(this.city));
        list.add(new SelectableZoneRemover(this.city));
        list.add(new SelectablePipeRemover(this.city));
        list.add(new SelectableTunnelRemover(this.city));
        list.add(new SelectableUndergroundWireRemove(this.city));
        list.add(new SelectableRoadDecorationRemover(this.city));
        list.add(new SelectableMetroRemover(this.city));
        list.add(new SelectableFenceRemover(this.city));
    }

    @Override // info.flowersoft.theotown.stages.gameuibuilder.collectors.SelectableCollector
    public String getTag() {
        return "RemoveCollector";
    }
}
