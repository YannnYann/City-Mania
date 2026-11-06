package info.flowersoft.theotown.city.components;

/* JADX INFO: loaded from: classes4.dex */
public abstract class BuildMask extends CityComponent {
    public abstract boolean accessGranted(int i, int i2);

    public abstract int[] correct(int i, int i2);

    @Override // info.flowersoft.theotown.city.components.CityComponent
    public int getType() {
        return 14;
    }

    public abstract boolean isClickable(int i, int i2);
}
