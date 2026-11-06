package info.flowersoft.theotown.minigame;

import info.flowersoft.theotown.util.Saveable;

/* JADX INFO: loaded from: classes4.dex */
public interface Currency extends Saveable {
    boolean canSpend(double d);

    double getEstate();

    String getTag();

    String getUnit();

    void spend(double d);
}
