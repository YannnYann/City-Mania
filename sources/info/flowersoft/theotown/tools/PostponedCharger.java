package info.flowersoft.theotown.tools;

import info.flowersoft.theotown.city.objects.Building;
import io.blueflower.stapel2d.util.Getter;

/* JADX INFO: loaded from: classes4.dex */
public interface PostponedCharger {
    boolean canBeBuilt();

    void charge(Getter<Building> getter, Runnable runnable);
}
