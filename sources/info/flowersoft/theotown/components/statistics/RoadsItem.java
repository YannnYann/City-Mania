package info.flowersoft.theotown.components.statistics;

import info.flowersoft.theotown.city.City;
import io.blueflower.stapel2d.drawing.Color;
import io.blueflower.stapel2d.drawing.Colors;

/* JADX INFO: loaded from: classes4.dex */
public class RoadsItem extends LocalizedStatisticsItem {
    public City city;

    @Override // info.flowersoft.theotown.components.statistics.LocalizedStatisticsItem
    public int getNameId() {
        return 1266;
    }

    @Override // info.flowersoft.theotown.components.statistics.StatisticsItem
    public String getTag() {
        return "roads";
    }

    @Override // info.flowersoft.theotown.components.statistics.StatisticsItem
    public void bind(City city) {
        this.city = city;
    }

    @Override // info.flowersoft.theotown.components.statistics.StatisticsItem
    public int evaluate() {
        return this.city.getRoads().size() - this.city.getRoads().getRailRoads().size();
    }

    @Override // info.flowersoft.theotown.components.statistics.StatisticsItem
    public Color getColor() {
        return Colors.DARK_GREEN;
    }
}
