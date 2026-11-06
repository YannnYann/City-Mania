package info.flowersoft.theotown.stages.tiledialog;

import info.flowersoft.theotown.city.City;
import info.flowersoft.theotown.city.objects.Building;
import info.flowersoft.theotown.draft.BuildingDraft;

/* JADX INFO: loaded from: classes4.dex */
public abstract class AbstractBuildingInformation extends TileInformationProvider {
    public Building building;
    public BuildingDraft draft;

    @Override // info.flowersoft.theotown.stages.tiledialog.TileInformationProvider
    public void setContext(City city, int i, int i2) {
        super.setContext(city, i, i2);
        Building building = city.getTiles().getBuilding(i, i2);
        this.building = building;
        this.draft = building != null ? building.getDraft() : null;
    }
}
