package info.flowersoft.theotown.components.notification.condition;

/* JADX INFO: loaded from: classes4.dex */
public abstract class ConditionDecorator extends Condition {
    public Condition condition;

    public ConditionDecorator(Condition condition) {
        super(condition.getCity());
        this.condition = condition;
    }
}
