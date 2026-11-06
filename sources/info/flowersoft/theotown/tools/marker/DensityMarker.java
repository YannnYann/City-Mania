package info.flowersoft.theotown.tools.marker;

import info.flowersoft.theotown.city.City;
import info.flowersoft.theotown.city.objects.Building;
import info.flowersoft.theotown.draft.BuildingType;
import info.flowersoft.theotown.resources.Resources;
import io.blueflower.stapel2d.drawing.Colors;

/* JADX INFO: loaded from: classes4.dex */
public class DensityMarker extends BuildingMarker {
    public DensityMarker(City city) {
        super(city);
        this.legend.add(new LegendEntry(city.getTranslator().translate(2663), Colors.GREEN));
        this.legend.add(new LegendEntry(city.getTranslator().translate(300), Colors.RED));
    }

    @Override // info.flowersoft.theotown.tools.marker.BuildingMarker
    public boolean buildingIsInvolved(Building building) {
        return building.getBuildingType().isRCIOrDeco() && building.getBuildingType() != BuildingType.DECORATION;
    }

    @Override // info.flowersoft.theotown.tools.marker.BuildingMarker
    public float getInvolvedIntensity(Building building) {
        return (float) Math.exp(building.getOverallPeople() * (-0.01f));
    }

    @Override // info.flowersoft.theotown.tools.marker.BuildingMarker, info.flowersoft.theotown.tools.marker.BuildToolMarker
    public int getIcon() {
        return Resources.ICON_DENSITY;
    }

    @Override // info.flowersoft.theotown.tools.marker.BuildToolMarker
    public String getTag() {
        return "DensityMarker";
    }
}
