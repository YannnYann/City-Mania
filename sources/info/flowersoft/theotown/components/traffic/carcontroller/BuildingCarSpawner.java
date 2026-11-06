package info.flowersoft.theotown.components.traffic.carcontroller;

import info.flowersoft.theotown.city.objects.Building;
import info.flowersoft.theotown.city.objects.Way;
import info.flowersoft.theotown.draft.CarDraft;

/* JADX INFO: loaded from: classes4.dex */
public interface BuildingCarSpawner {
    void spawn(CarDraft carDraft, int i, int i2, int i3, int i4, int i5, Way way, int i6);

    void spawn(CarDraft carDraft, int i, Building building, Building building2, int i2, int i3, int i4, int i5, int i6, int i7, int i8);
}
