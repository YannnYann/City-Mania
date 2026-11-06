package info.flowersoft.theotown.components.notification.task;

import info.flowersoft.theotown.city.City;
import info.flowersoft.theotown.components.DefaultBudget;

/* JADX INFO: loaded from: classes4.dex */
public class BudgetTask extends DefaultTask {
    public long amount;
    public DefaultBudget budget;
    public int factor;

    public BudgetTask(int i, String str, int i2, long j, City city) {
        super(i, str, city);
        this.factor = i2;
        this.amount = j;
        this.budget = (DefaultBudget) city.getComponent(0);
    }

    @Override // info.flowersoft.theotown.components.notification.task.DefaultTask
    public long getRawValue() {
        return Math.round(((double) this.factor) * this.budget.getEstate());
    }

    @Override // info.flowersoft.theotown.components.notification.task.Task
    public long getTargetValue() {
        return getRawValue() + ((this.amount * ((long) (getLevel() + 4))) / 4);
    }
}
