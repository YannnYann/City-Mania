package info.flowersoft.theotown.components.traffic.carcontroller;

import info.flowersoft.theotown.city.MapArea;
import info.flowersoft.theotown.city.objects.Car;
import info.flowersoft.theotown.city.objects.Way;
import info.flowersoft.theotown.draft.CarDraft;

/* JADX INFO: loaded from: classes4.dex */
public interface CarSpawner {
    void driveTo(Car car, MapArea mapArea);

    void spawn(MapArea mapArea, MapArea mapArea2, CarController carController, CarDraft carDraft, int i, long j, int i2);

    void spawn(MapArea mapArea, MapArea mapArea2, CarController carController, CarDraft carDraft, long j, int i);

    void spawn(CarController carController, CarDraft carDraft, int i, long j, Way way, int i2);

    void wait(Car car);
}
