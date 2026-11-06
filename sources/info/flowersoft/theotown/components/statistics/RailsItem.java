package info.flowersoft.theotown.components.statistics;

import info.flowersoft.theotown.city.City;
import io.blueflower.stapel2d.drawing.Color;
import io.blueflower.stapel2d.drawing.Colors;

/* JADX INFO: loaded from: classes4.dex */
public class RailsItem extends LocalizedStatisticsItem {
    public City city;

    @Override // info.flowersoft.theotown.components.statistics.LocalizedStatisticsItem
    public int getNameId() {
        return 1482;
    }

    @Override // info.flowersoft.theotown.components.statistics.StatisticsItem
    public String getTag() {
        return "rails";
    }

    @Override // info.flowersoft.theotown.components.statistics.StatisticsItem
    public void bind(City city) {
        this.city = city;
    }

    @Override // info.flowersoft.theotown.components.statistics.StatisticsItem
    public int evaluate() {
        return this.city.getRails().size() + this.city.getRoads().getRailRoads().size();
    }

    @Override // info.flowersoft.theotown.components.statistics.StatisticsItem
    public Color getColor() {
        return Colors.DARK_RED;
    }
}
