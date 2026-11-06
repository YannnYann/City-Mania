package info.flowersoft.theotown.city.components;

import java.util.List;

/* JADX INFO: loaded from: classes4.dex */
public abstract class Catastrophe extends CityComponent {
    public abstract List<Disaster> getDisasters();

    @Override // info.flowersoft.theotown.city.components.CityComponent
    public int getType() {
        return 6;
    }

    public abstract void issueFlash();

    public abstract void issueQuake();
}
