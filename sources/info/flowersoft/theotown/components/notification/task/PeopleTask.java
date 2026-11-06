package info.flowersoft.theotown.components.notification.task;

import info.flowersoft.theotown.city.City;
import info.flowersoft.theotown.components.DefaultPeople;

/* JADX INFO: loaded from: classes4.dex */
public class PeopleTask extends DefaultTask {
    public int amount;
    public int[] mask;
    public DefaultPeople people;

    public PeopleTask(int i, String str, int[] iArr, int i2, City city) {
        super(i, str, city);
        this.mask = iArr;
        if (iArr == null) {
            this.mask = new int[]{1, 1, 1};
        }
        this.amount = i2;
        this.people = (DefaultPeople) city.getComponent(9);
    }

    @Override // info.flowersoft.theotown.components.notification.task.DefaultTask
    public long getRawValue() {
        int people = 0;
        for (int i = 0; i < this.mask.length; i++) {
            people += this.people.getPeople(i) * this.mask[i];
        }
        return people;
    }

    @Override // info.flowersoft.theotown.components.notification.task.Task
    public long getTargetValue() {
        return getRawValue() + ((long) ((this.amount * (getLevel() + 3)) / 3));
    }
}
