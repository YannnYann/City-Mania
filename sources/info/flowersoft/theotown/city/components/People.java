package info.flowersoft.theotown.city.components;

/* JADX INFO: loaded from: classes4.dex */
public abstract class People extends CityComponent {
    public abstract int getPeople(int i);

    public abstract float getPeopleNeededSpace(int i);

    @Override // info.flowersoft.theotown.city.components.CityComponent
    public int getType() {
        return 9;
    }

    public int getPeople() {
        return getPeople(0) + getPeople(1) + getPeople(2);
    }
}
