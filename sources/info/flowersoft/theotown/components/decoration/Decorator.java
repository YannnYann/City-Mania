package info.flowersoft.theotown.components.decoration;

import info.flowersoft.theotown.city.City;
import info.flowersoft.theotown.city.Tiles;
import info.flowersoft.theotown.city.modifier.CityModifier;
import info.flowersoft.theotown.city.objects.Building;

/* JADX INFO: loaded from: classes4.dex */
public abstract class Decorator {
    public final City city;
    public final CityModifier modifier;
    public final Tiles tiles;

    public abstract boolean canDecorate(Building building);

    public abstract boolean decorate(Building building);

    public float getProbability() {
        return 1.0f;
    }

    public Decorator(City city) {
        this.city = city;
        this.tiles = city.getTiles();
        this.modifier = new CityModifier(city, true);
    }
}
