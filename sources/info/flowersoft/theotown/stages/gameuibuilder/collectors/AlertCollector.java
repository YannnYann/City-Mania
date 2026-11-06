package info.flowersoft.theotown.stages.gameuibuilder.collectors;

import info.flowersoft.theotown.city.City;
import info.flowersoft.theotown.resources.Resources;
import info.flowersoft.theotown.ui.Selectable;
import info.flowersoft.theotown.ui.selectable.SelectableFireAlert;
import info.flowersoft.theotown.ui.selectable.SelectableGarbageAlert;
import info.flowersoft.theotown.ui.selectable.SelectableMedicAlert;
import info.flowersoft.theotown.ui.selectable.SelectablePoliceAlert;
import info.flowersoft.theotown.ui.selectable.SelectableRocketTool;
import info.flowersoft.theotown.ui.selectable.SelectableSWATAlert;
import java.util.List;

/* JADX INFO: loaded from: classes4.dex */
public class AlertCollector extends SelectableCollector {
    public List<Selectable> list;

    @Override // info.flowersoft.theotown.stages.gameuibuilder.collectors.SelectableCollector
    public int getNameId() {
        return 1268;
    }

    public AlertCollector(City city) {
        super(city);
    }

    @Override // info.flowersoft.theotown.stages.gameuibuilder.collectors.SelectableCollector
    public int getIconId() {
        return Resources.ICON_ALERT;
    }

    @Override // info.flowersoft.theotown.stages.gameuibuilder.collectors.SelectableCollector
    public void collect(List<Selectable> list) {
        list.add(new SelectablePoliceAlert(this.city));
        list.add(new SelectableFireAlert(this.city));
        list.add(new SelectableMedicAlert(this.city));
        list.add(new SelectableSWATAlert(this.city));
        list.add(new SelectableGarbageAlert(this.city));
        list.add(new SelectableRocketTool(this.city));
        this.list = list;
    }

    @Override // info.flowersoft.theotown.stages.gameuibuilder.collectors.SelectableCollector
    public String getTag() {
        return "AlertCollector";
    }

    @Override // info.flowersoft.theotown.stages.gameuibuilder.collectors.SelectableCollector
    public boolean isVisible() {
        if (this.list != null) {
            for (int i = 0; i < this.list.size(); i++) {
                if (this.list.get(i).isSelectable()) {
                    return true;
                }
            }
        }
        return false;
    }
}
