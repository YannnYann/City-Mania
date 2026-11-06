package info.flowersoft.theotown.components.decoration;

import info.flowersoft.theotown.city.City;
import info.flowersoft.theotown.city.objects.Building;
import info.flowersoft.theotown.draft.BuildingDraft;
import info.flowersoft.theotown.draft.ZoneDraft;
import java.util.List;

/* JADX INFO: loaded from: classes4.dex */
public class GenericZoneDecorator extends Decorator {
    public final BuildingDraft decoration;
    public final List<ZoneDraft> zones;

    public GenericZoneDecorator(City city, BuildingDraft buildingDraft, List<ZoneDraft> list) {
        super(city);
        this.decoration = buildingDraft;
        this.zones = list;
    }

    @Override // info.flowersoft.theotown.components.decoration.Decorator
    public boolean canDecorate(Building building) {
        return this.zones.contains(building.getZone());
    }

    @Override // info.flowersoft.theotown.components.decoration.Decorator
    public boolean decorate(Building building) {
        ZoneDecorator zoneDecorator = new ZoneDecorator(this.city, this.zones);
        zoneDecorator.addDecorationDraft(this.decoration);
        return zoneDecorator.decorate(building);
    }

    @Override // info.flowersoft.theotown.components.decoration.Decorator
    public float getProbability() {
        return this.decoration.frames.length;
    }
}
