package info.flowersoft.theotown.components.statistics;

import info.flowersoft.theotown.city.City;
import info.flowersoft.theotown.components.DefaultBudget;

/* JADX INFO: loaded from: classes4.dex */
public abstract class AbstractBudgetItem extends LocalizedStatisticsItem {
    public DefaultBudget budget;
    public City city;

    @Override // info.flowersoft.theotown.components.statistics.StatisticsItem
    public void bind(City city) {
        this.city = city;
        this.budget = (DefaultBudget) city.getComponent(0);
    }
}
