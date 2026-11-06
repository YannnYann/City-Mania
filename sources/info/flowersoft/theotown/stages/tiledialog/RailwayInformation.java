package info.flowersoft.theotown.stages.tiledialog;

import info.flowersoft.theotown.city.objects.Building;
import info.flowersoft.theotown.draft.BuildingType;
import info.flowersoft.theotown.util.StringFormatter;

/* JADX INFO: loaded from: classes4.dex */
public class RailwayInformation extends AbstractBuildingInformation {
    @Override // info.flowersoft.theotown.stages.tiledialog.TileInformationProvider
    public boolean isMutualExclusive() {
        return false;
    }

    @Override // info.flowersoft.theotown.stages.tiledialog.TileInformationProvider
    public boolean canHandle() {
        Building building = this.building;
        return building != null && building.getBuildingType() == BuildingType.RAILWAY_STATION;
    }

    @Override // info.flowersoft.theotown.stages.tiledialog.TileInformationProvider
    public String getText() {
        String str = StringFormatter.format(this.translator.translate(3163), Float.valueOf(this.building.getOverallUsage() * 100.0f), Integer.valueOf(this.building.getWaiting()), Integer.valueOf(this.building.getDraft().capacity));
        if (this.building.getTotalTransferred() <= 0) {
            return str;
        }
        return str + "\n" + StringFormatter.format(this.translator.translate(2104), Integer.valueOf(this.building.getTotalTransferred()));
    }
}
