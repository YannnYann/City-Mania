package info.flowersoft.theotown.components.traffic;

import info.flowersoft.theotown.city.City;
import info.flowersoft.theotown.city.objects.Car;
import info.flowersoft.theotown.city.objects.Road;
import info.flowersoft.theotown.util.SafeListAccessor;
import io.blueflower.stapel2d.util.CyclicWorker;
import io.blueflower.stapel2d.util.MinimumSelector;

/* JADX INFO: loaded from: classes4.dex */
public class TrafficAmountWorker extends CyclicWorker implements Runnable {
    public Road badRoad;
    public final City city;
    public final MinimumSelector<Road> minimumSelector = new MinimumSelector<>();

    public TrafficAmountWorker(City city) {
        this.city = city;
        setTask(this);
    }

    @Override // java.lang.Runnable
    public void run() {
        Car car;
        this.minimumSelector.clear();
        for (Road road : new SafeListAccessor(this.city.getRoads())) {
            Car[] carArr = road.CarArray;
            int i = 0;
            int i2 = 0;
            int i3 = 0;
            int i4 = 0;
            for (int i5 = 0; i5 < 4 && i == 0; i5++) {
                if (carArr != null && (car = carArr[i5]) != null && !car.paused && !car.invalid) {
                    i++;
                    int i6 = car.wealthLevel;
                    if (i6 == 1) {
                        i2++;
                    } else if (i6 == 2) {
                        i3++;
                    } else if (i6 == 3) {
                        i4++;
                    }
                }
            }
            float f = road.trafficAmount;
            float f2 = i;
            float f3 = f2 > f ? 0.025f : 0.1f;
            float f4 = 1.0f - f3;
            road.trafficAmount = Math.min((f * f4) + (f2 * f3), 1.0f);
            road.trafficAmountLevel1 = Math.min((road.trafficAmountLevel1 * f4) + (i2 * f3), 1.0f);
            road.trafficAmountLevel2 = Math.min((road.trafficAmountLevel2 * f4) + (i3 * f3), 1.0f);
            road.trafficAmountLevel3 = Math.min((f4 * road.trafficAmountLevel3) + (f3 * i4), 1.0f);
            if ((road.draft.flags & 8388832) != 0) {
                this.minimumSelector.assume(road, 1.0f - road.trafficAmount);
            }
        }
        if (this.minimumSelector.hasResult()) {
            this.badRoad = this.minimumSelector.getMinimum();
        } else {
            this.badRoad = null;
        }
    }

    public Road getBadRoad() {
        return this.badRoad;
    }
}
