package info.flowersoft.theotown.components.statistics;

import info.flowersoft.theotown.city.City;
import info.flowersoft.theotown.components.DefaultTraffic;
import io.blueflower.stapel2d.drawing.Color;
import io.blueflower.stapel2d.drawing.Colors;

/* JADX INFO: loaded from: classes4.dex */
public class CarsItem extends LocalizedStatisticsItem {
    public DefaultTraffic traffic;

    @Override // info.flowersoft.theotown.components.statistics.LocalizedStatisticsItem
    public int getNameId() {
        return 1204;
    }

    @Override // info.flowersoft.theotown.components.statistics.StatisticsItem
    public String getTag() {
        return "cars";
    }

    @Override // info.flowersoft.theotown.components.statistics.StatisticsItem
    public void bind(City city) {
        this.traffic = (DefaultTraffic) city.getComponent(7);
    }

    @Override // info.flowersoft.theotown.components.statistics.StatisticsItem
    public int evaluate() {
        return this.traffic.countCars();
    }

    @Override // info.flowersoft.theotown.components.statistics.StatisticsItem
    public Color getColor() {
        return Colors.GREEN;
    }
}
