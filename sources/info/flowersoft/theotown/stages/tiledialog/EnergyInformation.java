package info.flowersoft.theotown.stages.tiledialog;

import info.flowersoft.theotown.city.objects.Building;
import info.flowersoft.theotown.components.DefaultPower;
import info.flowersoft.theotown.stages.cityinfo.CityInfo;
import info.flowersoft.theotown.stages.cityinfo.EnergyCityInfo;
import info.flowersoft.theotown.util.StringFormatter;

/* JADX INFO: loaded from: classes4.dex */
public class EnergyInformation extends AbstractBuildingInformation {
    @Override // info.flowersoft.theotown.stages.tiledialog.TileInformationProvider
    public boolean isMutualExclusive() {
        return false;
    }

    @Override // info.flowersoft.theotown.stages.tiledialog.TileInformationProvider
    public boolean canHandle() {
        Building building = this.building;
        return building != null && building.getPower() > 0;
    }

    @Override // info.flowersoft.theotown.stages.tiledialog.TileInformationProvider
    public String getText() {
        return ((("" + StringFormatter.format(this.translator.translate(2390), Long.valueOf(this.building.getPower()))) + "\n") + StringFormatter.format(this.translator.translate(3525), Float.valueOf(getPowerUsage(this.building) * 100.0f))) + "\n";
    }

    @Override // info.flowersoft.theotown.stages.tiledialog.TileInformationProvider
    public CityInfo[] getCityInfos() {
        return new CityInfo[]{new EnergyCityInfo()};
    }

    public final float getPowerUsage(Building building) {
        DefaultPower defaultPower = (DefaultPower) this.city.getComponent(5);
        return defaultPower.usageRatio(defaultPower.getNetwork(building));
    }
}
