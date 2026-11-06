package info.flowersoft.theotown.components.statistics;

import info.flowersoft.theotown.city.City;
import info.flowersoft.theotown.city.components.People;
import info.flowersoft.theotown.components.management.DefaultManagement;

/* JADX INFO: loaded from: classes4.dex */
public abstract class AbstractPopulationItem extends LocalizedStatisticsItem {
    public City city;
    public DefaultManagement management;
    public People people;

    @Override // info.flowersoft.theotown.components.statistics.StatisticsItem
    public void bind(City city) {
        this.city = city;
        this.management = (DefaultManagement) city.getComponent(3);
        this.people = (People) city.getComponent(9);
    }
}
