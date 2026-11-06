package info.flowersoft.theotown.ui.selectable;

import info.flowersoft.theotown.city.City;
import info.flowersoft.theotown.draft.BuildingType;
import info.flowersoft.theotown.resources.Resources;
import info.flowersoft.theotown.tools.AlertTool;
import info.flowersoft.theotown.tools.GarbageAlertTool;

/* JADX INFO: loaded from: classes4.dex */
public class SelectableGarbageAlert extends SelectableAlert {
    public SelectableGarbageAlert(City city) {
        super(city);
        this.draft.id = GarbageAlertTool.getAlertId();
    }

    @Override // info.flowersoft.theotown.ui.selectable.SelectableDraft, info.flowersoft.theotown.ui.selectable.DefaultSelectable
    public int getPreviewFrame() {
        return Resources.FRAME_LOCATE_GARBAGE_ALERT;
    }

    @Override // info.flowersoft.theotown.ui.selectable.SelectableAlert, info.flowersoft.theotown.ui.selectable.SelectableDraft, info.flowersoft.theotown.ui.selectable.DefaultSelectable
    public boolean isUnlocked() {
        return !this.city.getBuildings().getBuildingsOfType(BuildingType.WASTE_DISPOSAL).isEmpty();
    }

    @Override // info.flowersoft.theotown.ui.selectable.SelectableAlert
    public AlertTool getAlertTool() {
        return new GarbageAlertTool();
    }
}
