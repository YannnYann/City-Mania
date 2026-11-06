package info.flowersoft.theotown.ui.selectable;

import info.flowersoft.theotown.city.City;
import info.flowersoft.theotown.draft.BuildingType;
import info.flowersoft.theotown.resources.Resources;
import info.flowersoft.theotown.tools.AlertTool;
import info.flowersoft.theotown.tools.SWATAlertTool;

/* JADX INFO: loaded from: classes4.dex */
public class SelectableSWATAlert extends SelectableAlert {
    public SelectableSWATAlert(City city) {
        super(city);
        this.draft.id = SWATAlertTool.getAlertId();
    }

    @Override // info.flowersoft.theotown.ui.selectable.SelectableDraft, info.flowersoft.theotown.ui.selectable.DefaultSelectable
    public int getPreviewFrame() {
        return Resources.FRAME_LOCATE_SWAT_ALERT;
    }

    @Override // info.flowersoft.theotown.ui.selectable.SelectableAlert, info.flowersoft.theotown.ui.selectable.SelectableDraft, info.flowersoft.theotown.ui.selectable.DefaultSelectable
    public boolean isUnlocked() {
        return !this.city.getBuildings().getBuildingsOfType(BuildingType.SWAT).isEmpty();
    }

    @Override // info.flowersoft.theotown.ui.selectable.SelectableAlert
    public AlertTool getAlertTool() {
        return new SWATAlertTool();
    }
}
