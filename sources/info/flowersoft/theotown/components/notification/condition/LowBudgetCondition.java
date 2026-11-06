package info.flowersoft.theotown.components.notification.condition;

import info.flowersoft.theotown.city.City;
import info.flowersoft.theotown.components.DefaultBudget;

/* JADX INFO: loaded from: classes4.dex */
public class LowBudgetCondition extends Condition {
    public int thresold;

    public LowBudgetCondition(int i, City city) {
        super(city);
        this.thresold = i;
    }

    @Override // info.flowersoft.theotown.components.notification.condition.Condition, info.flowersoft.theotown.city.components.AbstractCondition
    public boolean evaluate() {
        DefaultBudget defaultBudget = (DefaultBudget) this.city.getComponent(0);
        return !this.city.getGameMode().hasInfinityMoney() && defaultBudget.getEstate() <= ((double) this.thresold) && defaultBudget.getMonthlyIncome() <= 0.0d;
    }
}
