package info.flowersoft.theotown.tools.marker;

import info.flowersoft.theotown.city.City;
import info.flowersoft.theotown.city.objects.Building;
import info.flowersoft.theotown.draft.BuildingType;
import info.flowersoft.theotown.resources.Resources;
import io.blueflower.stapel2d.drawing.Color;
import io.blueflower.stapel2d.drawing.Colors;

/* JADX INFO: loaded from: classes4.dex */
public class ProtectedMarker extends BuildingMarker {
    @Override // info.flowersoft.theotown.tools.marker.BuildingMarker
    public float getInvolvedIntensity(Building building) {
        return 1.0f;
    }

    public ProtectedMarker(City city) {
        super(city);
        this.legend.add(new LegendEntry(city.getTranslator().translate(1987), Colors.BLUE));
    }

    @Override // info.flowersoft.theotown.tools.marker.BuildingMarker, info.flowersoft.theotown.tools.marker.BuildToolMarker
    public Color getColor(int i, int i2, Color color) {
        return Colors.BLUE;
    }

    @Override // info.flowersoft.theotown.tools.marker.BuildingMarker
    public boolean buildingIsInvolved(Building building) {
        return building.isUntouchable() && building.getBuildingType().isRCIOrDeco() && building.getBuildingType() != BuildingType.DECORATION;
    }

    @Override // info.flowersoft.theotown.tools.marker.BuildingMarker, info.flowersoft.theotown.tools.marker.BuildToolMarker
    public boolean markBuilding(int i, int i2) {
        Building building = this.tiles.getBuilding(i, i2);
        return building != null && buildingIsInvolved(building) && building.isUntouchable();
    }

    @Override // info.flowersoft.theotown.tools.marker.BuildingMarker, info.flowersoft.theotown.tools.marker.BuildToolMarker
    public int getIcon() {
        return Resources.ICON_UNTOUCHABLE;
    }

    @Override // info.flowersoft.theotown.tools.marker.BuildToolMarker
    public String getTag() {
        return "ProtectedMarker";
    }
}
