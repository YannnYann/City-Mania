package info.flowersoft.theotown.components.transportationsystem;

import com.badlogic.gdx.math.MathUtils;
import info.flowersoft.theotown.city.City;
import info.flowersoft.theotown.city.Tiles;
import info.flowersoft.theotown.city.Zones;
import info.flowersoft.theotown.city.objects.Building;
import info.flowersoft.theotown.draft.BuildingType;
import info.flowersoft.theotown.draft.ZoneDraft;
import info.flowersoft.theotown.resources.Resources;

/* JADX INFO: loaded from: classes4.dex */
class CityTileSampler {
    public int airportZoneCount;
    public int commercialZoneCount;
    public int farmZoneCount;
    public int harborZoneCount;
    public int industrialZoneCount;
    public int militaryZoneCount;
    public int parkCount;
    public int residentialZoneCount;
    public int sampleCount;
    public int waterCount;

    public final void reset() {
        this.sampleCount = 0;
        this.waterCount = 0;
        this.residentialZoneCount = 0;
        this.commercialZoneCount = 0;
        this.industrialZoneCount = 0;
        this.harborZoneCount = 0;
        this.farmZoneCount = 0;
        this.airportZoneCount = 0;
        this.militaryZoneCount = 0;
        this.parkCount = 0;
    }

    public void sample(City city, int i, int i2, int i3) {
        reset();
        Tiles tiles = city.getTiles();
        int iClamp = MathUtils.clamp(i - i3, 0, city.getWidth() - 1);
        int iClamp2 = MathUtils.clamp(i + i3, 0, city.getWidth() - 1);
        int iClamp3 = MathUtils.clamp(i2 + i3, 0, city.getHeight() - 1);
        for (int iClamp4 = MathUtils.clamp(i2 - i3, 0, city.getHeight() - 1); iClamp4 <= iClamp3; iClamp4++) {
            int iNextInt = Resources.RND.nextInt((iClamp2 - iClamp) + 1) + iClamp;
            this.sampleCount++;
            ZoneDraft zone = tiles.getZone(iNextInt, iClamp4);
            ZoneDraft zoneDraft = zone != null ? zone.base : null;
            Building building = tiles.getBuilding(iNextInt, iClamp4);
            if (city.getTiles().isGroundWater(iNextInt, iClamp4)) {
                this.waterCount++;
            }
            if (zoneDraft != null) {
                if (zoneDraft == Zones.getInstance().RESIDENTIAL0) {
                    this.residentialZoneCount++;
                } else if (zoneDraft == Zones.getInstance().COMMERCIAL0) {
                    this.commercialZoneCount++;
                } else if (zoneDraft == Zones.getInstance().INDUSTRIAL0) {
                    this.industrialZoneCount++;
                } else if (zoneDraft == Zones.getInstance().AIRPORT) {
                    this.airportZoneCount++;
                } else if (zoneDraft == Zones.getInstance().MILITARY) {
                    this.militaryZoneCount++;
                }
                if (zone == Zones.getInstance().FARM) {
                    this.farmZoneCount++;
                } else if (zone == Zones.getInstance().HARBOR) {
                    this.harborZoneCount++;
                }
            }
            if (building != null && AnonymousClass1.$SwitchMap$info$flowersoft$theotown$draft$BuildingType[building.getBuildingType().ordinal()] == 1) {
                this.parkCount++;
            }
        }
    }

    /* JADX INFO: renamed from: info.flowersoft.theotown.components.transportationsystem.CityTileSampler$1, reason: invalid class name */
    public static /* synthetic */ class AnonymousClass1 {
        public static final /* synthetic */ int[] $SwitchMap$info$flowersoft$theotown$draft$BuildingType;

        static {
            int[] iArr = new int[BuildingType.values().length];
            $SwitchMap$info$flowersoft$theotown$draft$BuildingType = iArr;
            try {
                iArr[BuildingType.PARK.ordinal()] = 1;
            } catch (NoSuchFieldError unused) {
            }
        }
    }
}
