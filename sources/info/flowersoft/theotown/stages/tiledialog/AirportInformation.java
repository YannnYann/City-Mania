package info.flowersoft.theotown.stages.tiledialog;

import info.flowersoft.theotown.city.City;
import info.flowersoft.theotown.city.Zones;
import info.flowersoft.theotown.city.objects.Building;
import info.flowersoft.theotown.city.objects.Road;
import info.flowersoft.theotown.draft.BuildingType;
import info.flowersoft.theotown.draft.ZoneDraft;
import info.flowersoft.theotown.stages.CityInfoStage;
import info.flowersoft.theotown.stages.cityinfo.AirportCityInfo;
import info.flowersoft.theotown.stages.cityinfo.CityInfo;
import io.blueflower.stapel2d.gamestack.Stage;
import io.blueflower.stapel2d.gamestack.Stapel2DGameContext;
import io.blueflower.stapel2d.util.Setter;

/* JADX INFO: loaded from: classes4.dex */
public class AirportInformation extends TileInformationProvider {
    public Building building;
    public Road road;
    public ZoneDraft zone;

    @Override // info.flowersoft.theotown.stages.tiledialog.TileInformationProvider
    public boolean isMutualExclusive() {
        return false;
    }

    @Override // info.flowersoft.theotown.stages.tiledialog.TileInformationProvider
    public void setContext(City city, int i, int i2) {
        super.setContext(city, i, i2);
        this.building = city.getTiles().getBuilding(i, i2);
        this.road = city.getTiles().getRoad(i, i2, 0);
        this.zone = city.getTiles().getZone(i, i2);
    }

    @Override // info.flowersoft.theotown.stages.tiledialog.TileInformationProvider
    public boolean canHandle() {
        Building building = this.building;
        if (building != null && building.getDraft().buildingType == BuildingType.AIRPORT) {
            return true;
        }
        if (this.zone == Zones.getInstance().AIRPORT) {
            return (this.building == null && this.road == null) ? false : true;
        }
        return false;
    }

    @Override // info.flowersoft.theotown.stages.tiledialog.TileInformationProvider
    public CityInfo[] getCityInfos() {
        return new CityInfo[]{new AirportCityInfo()};
    }

    @Override // info.flowersoft.theotown.stages.tiledialog.TileInformationProvider
    public Runnable finishImmediately(final Stapel2DGameContext stapel2DGameContext, final Setter<Stage> setter) {
        Building building = this.building;
        if (building == null || !building.getDraftId().equals("$ap_tower00")) {
            return null;
        }
        return new Runnable() { // from class: info.flowersoft.theotown.stages.tiledialog.AirportInformation$$ExternalSyntheticLambda0
            @Override // java.lang.Runnable
            public final void run() {
                AirportInformation.$r8$lambda$_0lDxQqjyxesSUM2vny1C1u9eLA(this.f$0, stapel2DGameContext, setter);
            }
        };
    }

    public static /* synthetic */ void $r8$lambda$_0lDxQqjyxesSUM2vny1C1u9eLA(AirportInformation airportInformation, Stapel2DGameContext stapel2DGameContext, Setter setter) {
        CityInfoStage cityInfoStage = new CityInfoStage(airportInformation.city, stapel2DGameContext);
        cityInfoStage.setOwnBackgroundCity(airportInformation.city);
        cityInfoStage.selectCityInfo(new AirportCityInfo());
        setter.set(cityInfoStage);
    }
}
