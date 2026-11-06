package info.flowersoft.theotown.city.components;

/* JADX INFO: loaded from: classes4.dex */
public abstract class SoundManager extends CityComponent {
    @Override // info.flowersoft.theotown.city.components.CityComponent
    public int getType() {
        return 15;
    }

    public abstract void pause();

    public abstract void resume();
}
