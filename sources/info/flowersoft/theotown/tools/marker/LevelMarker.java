package info.flowersoft.theotown.tools.marker;

import com.unity3d.services.UnityAdsConstants;
import com.vungle.ads.internal.protos.Sdk;
import info.flowersoft.theotown.city.City;
import info.flowersoft.theotown.city.objects.Building;
import info.flowersoft.theotown.draft.BuildingType;
import info.flowersoft.theotown.resources.Resources;
import io.blueflower.stapel2d.drawing.Colors;

/* JADX INFO: loaded from: classes4.dex */
public class LevelMarker extends BuildingMarker {
    public LevelMarker(City city) {
        super(city);
        this.legend.add(new LegendEntry(city.getTranslator().translate(1342), Colors.RED));
        this.legend.add(new LegendEntry(city.getTranslator().translate(3319), Colors.YELLOW));
        this.legend.add(new LegendEntry(city.getTranslator().translate(Sdk.SDKError.Reason.PRIVACY_URL_ERROR_VALUE), Colors.GREEN));
    }

    @Override // info.flowersoft.theotown.tools.marker.BuildingMarker
    public boolean buildingIsInvolved(Building building) {
        return building.getBuildingType().isRCIOrDeco() && building.getBuildingType() != BuildingType.DECORATION;
    }

    @Override // info.flowersoft.theotown.tools.marker.BuildingMarker
    public float getInvolvedIntensity(Building building) {
        int level = building.getLevel();
        if (level == 1) {
            return 0.5f;
        }
        if (level != 2) {
            return UnityAdsConstants.SafeGuards.InitRequestRetryPolicy.MIN_JITTER_PCT;
        }
        return 1.0f;
    }

    @Override // info.flowersoft.theotown.tools.marker.BuildingMarker, info.flowersoft.theotown.tools.marker.BuildToolMarker
    public int getIcon() {
        return Resources.ICON_LEVEL;
    }

    @Override // info.flowersoft.theotown.tools.marker.BuildToolMarker
    public String getTag() {
        return "LevelMarker";
    }
}
