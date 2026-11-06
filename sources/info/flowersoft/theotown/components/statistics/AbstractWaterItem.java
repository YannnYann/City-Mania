package info.flowersoft.theotown.components.statistics;

import info.flowersoft.theotown.city.City;
import info.flowersoft.theotown.components.DefaultWater;

/* JADX INFO: loaded from: classes4.dex */
public abstract class AbstractWaterItem extends LocalizedStatisticsItem {
    public City city;
    public DefaultWater water;

    @Override // info.flowersoft.theotown.components.statistics.StatisticsItem
    public void bind(City city) {
        this.city = city;
        this.water = (DefaultWater) city.getComponent(8);
    }
}
