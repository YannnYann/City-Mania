package info.flowersoft.theotown.tools.marker;

import info.flowersoft.theotown.city.City;
import info.flowersoft.theotown.city.objects.Building;

/* JADX INFO: loaded from: classes4.dex */
public class TicketMarker extends BuildingMarker {
    public TicketMarker(City city) {
        super(city);
    }

    @Override // info.flowersoft.theotown.tools.marker.BuildingMarker
    public boolean buildingIsInvolved(Building building) {
        return building.getCurrentPeople() > 0;
    }

    @Override // info.flowersoft.theotown.tools.marker.BuildingMarker
    public float getInvolvedIntensity(Building building) {
        return building.getReachability();
    }

    @Override // info.flowersoft.theotown.tools.marker.BuildToolMarker
    public String getTag() {
        return "TicketMarker";
    }
}
