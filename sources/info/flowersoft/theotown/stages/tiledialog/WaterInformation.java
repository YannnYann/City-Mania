package info.flowersoft.theotown.stages.tiledialog;

import com.unity3d.services.UnityAdsConstants;
import info.flowersoft.theotown.city.objects.Building;
import info.flowersoft.theotown.components.DefaultWater;
import info.flowersoft.theotown.stages.cityinfo.CityInfo;
import info.flowersoft.theotown.stages.cityinfo.WaterCityInfo;
import info.flowersoft.theotown.util.StringFormatter;

/* JADX INFO: loaded from: classes4.dex */
public class WaterInformation extends AbstractBuildingInformation {
    @Override // info.flowersoft.theotown.stages.tiledialog.TileInformationProvider
    public boolean isMutualExclusive() {
        return false;
    }

    @Override // info.flowersoft.theotown.stages.tiledialog.TileInformationProvider
    public boolean canHandle() {
        Building building = this.building;
        if (building != null) {
            return building.getWater() > 0 || this.draft.waterWaste < UnityAdsConstants.SafeGuards.InitRequestRetryPolicy.MIN_JITTER_PCT;
        }
        return false;
    }

    @Override // info.flowersoft.theotown.stages.tiledialog.TileInformationProvider
    public String getText() {
        String str = "";
        if (this.building.getWater() > 0) {
            str = ((("" + StringFormatter.format(this.translator.translate(2982), Long.valueOf(this.building.getWater()))) + "\n") + StringFormatter.format(this.translator.translate(2476), Float.valueOf(getWaterUsage(this.building) * 100.0f))) + "\n";
        }
        return (str + StringFormatter.format(this.translator.translate(2742), Float.valueOf(getWaterWaste(this.building) * 100.0f))) + "\n";
    }

    @Override // info.flowersoft.theotown.stages.tiledialog.TileInformationProvider
    public CityInfo[] getCityInfos() {
        return new CityInfo[]{new WaterCityInfo()};
    }

    public final float getWaterUsage(Building building) {
        DefaultWater defaultWater = (DefaultWater) this.city.getComponent(8);
        return defaultWater.usageRatio(defaultWater.getNetwork(building));
    }

    public final float getWaterWaste(Building building) {
        DefaultWater defaultWater = (DefaultWater) this.city.getComponent(8);
        return defaultWater.getWaterWaste(defaultWater.getNetwork(building));
    }
}
