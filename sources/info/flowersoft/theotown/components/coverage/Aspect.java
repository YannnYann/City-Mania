package info.flowersoft.theotown.components.coverage;

import info.flowersoft.theotown.city.City;
import info.flowersoft.theotown.city.neighbors.NeighborCity;
import info.flowersoft.theotown.city.objects.Building;
import java.util.List;

/* JADX INFO: loaded from: classes4.dex */
public interface Aspect {
    List<Building> getNeeders(City city);

    long getNeighborTrading(NeighborCity neighborCity);

    List<Building> getProviders(City city);

    boolean hasInfiniteRadius();

    int neededAmount(Building building);

    void prepare();

    int providedAmount(Building building);

    int providedRadius(Building building);

    int reachedAmount(Building building);

    void setNeighborTrading(NeighborCity neighborCity, long j);
}
