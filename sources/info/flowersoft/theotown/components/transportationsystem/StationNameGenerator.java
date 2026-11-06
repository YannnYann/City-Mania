package info.flowersoft.theotown.components.transportationsystem;

import com.ironsource.M9;
import com.ironsource.mediationsdk.logger.IronSourceError;
import com.vungle.ads.internal.protos.Sdk;
import info.flowersoft.theotown.city.City;
import info.flowersoft.theotown.city.objects.Building;
import info.flowersoft.theotown.components.DefaultTSComponent;
import info.flowersoft.theotown.draft.BuildingType;
import info.flowersoft.theotown.resources.Resources;
import info.flowersoft.theotown.util.DraftLocalizer;
import info.flowersoft.theotown.util.NameGenerator;
import info.flowersoft.theotown.util.SortedList;
import info.flowersoft.theotown.util.StringFormatter;
import info.flowersoft.theotown.util.TileSet;
import io.bidmachine.protobuf.EventTypeExtended;
import io.blueflower.stapel2d.gamestack.Translator;
import io.blueflower.stapel2d.util.Predicate;
import java.util.List;

/* JADX INFO: loaded from: classes4.dex */
class StationNameGenerator {
    public final Predicate<String> nameAvailablePredicate;
    public final Translator translator;
    public final int[] RESIDENTIAL_NAMES = {EventTypeExtended.EVENT_TYPE_EXTENDED_CUSTOM_VALUE, 3081, 2001, 2897};
    public final int[] COMMERCIAL_NAMES = {2152, Sdk.SDKError.Reason.SILENT_MODE_MONITOR_ERROR_VALUE, IronSourceError.ERROR_IS_INSTANCE_INIT_EXCEPTION, 394, 2795};
    public final int[] INDUSTRIAL_NAMES = {2871, 363, 3401, 2989, 503};
    public final int[] HARBOR_NAMES = {1981, Sdk.SDKError.Reason.MRAID_DOWNLOAD_JS_ERROR_VALUE, 2143, 1236};
    public final int[] FARM_NAMES = {59, 1533, 869, 3107, 3434, 2595};
    public final int[] PARK_NAMES = {3280, 833, 177};
    public final int[] AIRPORT_NAMES = {1840, 2278, 393, 3349, 2995};
    public final int[] MILITARY_NAMES = {487, 3423, M9.a.e, 3153, 2547};
    public final int[] WATER_NAMES = {212, 1545, 508, 1364, 1483};
    public final CityTileSampler tileSampler = new CityTileSampler();

    public StationNameGenerator(Translator translator, Predicate<String> predicate) {
        this.translator = translator;
        this.nameAvailablePredicate = predicate;
    }

    public final boolean isNameAvailable(String str) {
        if (str == null) {
            return false;
        }
        return this.nameAvailablePredicate.apply(str);
    }

    public final int sample(int[] iArr) {
        return iArr[Resources.RND.nextInt(iArr.length)];
    }

    public String generate(City city, int i, int i2, TSSystemDraft tSSystemDraft) {
        int iSample;
        TSStation closestStation = getClosestStation(city, i, i2, 8, tSSystemDraft);
        if (closestStation != null && !closestStation.getName().isEmpty() && isNameAvailable(closestStation.getName())) {
            return closestStation.getName();
        }
        Building closestLandmark = getClosestLandmark(city, i, i2, 8);
        if (closestLandmark != null) {
            String title = new DraftLocalizer(city).getTitle(closestLandmark.getDraft());
            if (isNameAvailable(title)) {
                return title;
            }
        }
        this.tileSampler.sample(city, i, i2, 6);
        CityTileSampler cityTileSampler = this.tileSampler;
        float f = cityTileSampler.harborZoneCount;
        int i3 = cityTileSampler.sampleCount;
        if (f / i3 > 0.2f) {
            iSample = sample(this.HARBOR_NAMES);
        } else if (cityTileSampler.farmZoneCount / i3 > 0.3f) {
            iSample = sample(this.FARM_NAMES);
        } else if (cityTileSampler.militaryZoneCount / i3 > 0.3f) {
            iSample = sample(this.MILITARY_NAMES);
        } else if (cityTileSampler.airportZoneCount / i3 > 0.3f) {
            iSample = sample(this.AIRPORT_NAMES);
        } else if (cityTileSampler.parkCount / i3 > 0.3f) {
            iSample = sample(this.PARK_NAMES);
        } else if (cityTileSampler.waterCount / i3 >= 0.3f) {
            iSample = sample(this.WATER_NAMES);
        } else if (cityTileSampler.residentialZoneCount / i3 > 0.4f) {
            iSample = sample(this.RESIDENTIAL_NAMES);
        } else if (cityTileSampler.commercialZoneCount / i3 > 0.4f) {
            iSample = sample(this.COMMERCIAL_NAMES);
        } else {
            iSample = ((float) cityTileSampler.industrialZoneCount) / ((float) i3) > 0.4f ? sample(this.INDUSTRIAL_NAMES) : 0;
        }
        if (iSample > 0) {
            String strTranslate = this.translator.translate(iSample);
            if (isNameAvailable(strTranslate)) {
                return strTranslate;
            }
        }
        String strTranslate2 = this.translator.translate(getLocationFormat(city, i, i2));
        if (strTranslate2 == null) {
            strTranslate2 = "%s";
        }
        String str = StringFormatter.format(strTranslate2, city.getName());
        return isNameAvailable(str) ? str : StringFormatter.format(strTranslate2, NameGenerator.generateFiltered());
    }

    public final int getLocationFormat(City city, int i, int i2) {
        float width = ((i * 2.0f) / city.getWidth()) - 1.0f;
        float height = ((i2 * 2.0f) / city.getHeight()) - 1.0f;
        if (width < -0.5f && height < -0.5f) {
            return 440;
        }
        if (width > 0.5f && height < -0.5f) {
            return 66;
        }
        if (width < -0.5f && height > 0.5f) {
            return 30;
        }
        if (width > 0.5f && height > 0.5f) {
            return 619;
        }
        float fMax = Math.max(Math.abs(width), Math.abs(height));
        if (fMax < 0.3f) {
            return 297;
        }
        if (fMax < 0.6f) {
            return 759;
        }
        return fMax < 0.8f ? 2768 : 3518;
    }

    public final TSStation getClosestStation(City city, int i, int i2, int i3, TSSystemDraft tSSystemDraft) {
        TSStation tSStation;
        int iAbs;
        List<TSSystem> systems = ((DefaultTSComponent) city.getComponent(22)).getSystems();
        TSStation tSStation2 = null;
        for (int i4 = 0; i4 < systems.size(); i4++) {
            TSSystem tSSystem = systems.get(i4);
            if (tSSystem.getDraft() != tSSystemDraft) {
                List<TSStation> stations = tSSystem.getStations();
                for (int i5 = 0; i5 < stations.size() && (tSStation = stations.get(i5)) != null; i5++) {
                    TileSet tiles = tSStation.getTiles();
                    if (tiles != null && (iAbs = Math.abs(tiles.getMeanX() - i) + Math.abs(tiles.getMeanY() - i2)) < i3) {
                        tSStation2 = tSStation;
                        i3 = iAbs;
                    }
                }
            }
        }
        return tSStation2;
    }

    public final Building getClosestLandmark(City city, int i, int i2, int i3) {
        Building building;
        SortedList<Building> buildingsOfType = city.getBuildings().getBuildingsOfType(BuildingType.LANDMARK);
        Building building2 = null;
        for (int i4 = 0; i4 < buildingsOfType.size() && (building = buildingsOfType.get(i4)) != null; i4++) {
            int iMax = Math.max(0, Math.max(building.getX() - i, ((i - building.getX()) - building.getWidth()) + 1)) + Math.max(0, Math.max(building.getY() - i2, ((i2 - building.getY()) - building.getHeight()) + 1));
            if (iMax < i3) {
                building2 = building;
                i3 = iMax;
            }
        }
        return building2;
    }
}
