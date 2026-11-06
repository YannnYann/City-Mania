package info.flowersoft.theotown.components.statistics;

import info.flowersoft.theotown.city.City;
import info.flowersoft.theotown.components.DefaultPower;

/* JADX INFO: loaded from: classes4.dex */
public abstract class AbstractEnergyItem extends LocalizedStatisticsItem {
    public City city;
    public DefaultPower power;

    @Override // info.flowersoft.theotown.components.statistics.StatisticsItem
    public void bind(City city) {
        this.city = city;
        this.power = (DefaultPower) city.getComponent(5);
    }
}
