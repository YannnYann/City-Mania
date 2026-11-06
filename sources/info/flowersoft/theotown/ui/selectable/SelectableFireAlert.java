package info.flowersoft.theotown.ui.selectable;

import info.flowersoft.theotown.city.City;
import info.flowersoft.theotown.draft.BuildingType;
import info.flowersoft.theotown.resources.Resources;
import info.flowersoft.theotown.tools.AlertTool;
import info.flowersoft.theotown.tools.FireBrigadeAlertTool;

/* JADX INFO: loaded from: classes4.dex */
public class SelectableFireAlert extends SelectableAlert {
    public SelectableFireAlert(City city) {
        super(city);
        this.draft.id = FireBrigadeAlertTool.getAlertId();
    }

    @Override // info.flowersoft.theotown.ui.selectable.SelectableDraft, info.flowersoft.theotown.ui.selectable.DefaultSelectable
    public int getPreviewFrame() {
        return Resources.FRAME_LOCATE_FIRE_ALERT;
    }

    @Override // info.flowersoft.theotown.ui.selectable.SelectableAlert, info.flowersoft.theotown.ui.selectable.SelectableDraft, info.flowersoft.theotown.ui.selectable.DefaultSelectable
    public boolean isUnlocked() {
        return !this.city.getBuildings().getBuildingsOfType(BuildingType.FIRE_BRIGADE).isEmpty();
    }

    @Override // info.flowersoft.theotown.ui.selectable.SelectableAlert
    public AlertTool getAlertTool() {
        return new FireBrigadeAlertTool();
    }
}
