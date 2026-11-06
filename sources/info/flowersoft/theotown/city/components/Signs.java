package info.flowersoft.theotown.city.components;

import info.flowersoft.theotown.city.objects.Sign;
import io.blueflower.stapel2d.drawing.Engine;

/* JADX INFO: loaded from: classes4.dex */
public abstract class Signs extends CityComponent {
    public abstract void addSign(Sign sign);

    public abstract void drawSigns(Engine engine, boolean z);

    public abstract Sign getSignAt(int i, int i2);

    @Override // info.flowersoft.theotown.city.components.CityComponent
    public int getType() {
        return 18;
    }

    public abstract void removeSign(Sign sign);
}
