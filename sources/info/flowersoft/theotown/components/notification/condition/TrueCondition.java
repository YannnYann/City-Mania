package info.flowersoft.theotown.components.notification.condition;

import info.flowersoft.theotown.city.City;

/* JADX INFO: loaded from: classes4.dex */
public class TrueCondition extends Condition {
    @Override // info.flowersoft.theotown.components.notification.condition.Condition, info.flowersoft.theotown.city.components.AbstractCondition
    public boolean evaluate() {
        return true;
    }

    public TrueCondition(City city) {
        super(city);
    }
}
