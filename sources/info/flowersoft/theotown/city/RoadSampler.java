package info.flowersoft.theotown.city;

import info.flowersoft.theotown.city.objects.Road;
import info.flowersoft.theotown.resources.Resources;
import info.flowersoft.theotown.util.SortedList;
import io.bidmachine.protobuf.EventTypeExtended;
import io.blueflower.stapel2d.util.ProbabilitySelector;
import java.util.Random;

/* JADX INFO: loaded from: classes4.dex */
public class RoadSampler {
    public final SortedList<Road> roads;
    public final ProbabilitySelector<Road> selector = new ProbabilitySelector<>(new Random());

    public RoadSampler(City city) {
        this.roads = city.getRoads().getSorted();
    }

    public Road sample(int i, int i2, int i3) {
        int i4;
        int i5 = i3 * i3;
        int indexOfValue = this.roads.getIndexOfValue(i - i3);
        int indexOfValue2 = this.roads.getIndexOfValue(i3 + i);
        int i6 = indexOfValue2 - indexOfValue;
        if (i6 > 512) {
            i4 = (i6 + 511) / EventTypeExtended.EVENT_TYPE_EXTENDED_CONTAINER_ADDED_VALUE;
            indexOfValue += Resources.RND.nextInt(i4);
        } else {
            i4 = 1;
        }
        while (indexOfValue < indexOfValue2) {
            Road road = this.roads.get(indexOfValue);
            if (road == null) {
                break;
            }
            int x = road.getX() - i;
            int y = road.getY() - i2;
            if ((x * x) + (y * y) <= i5) {
                this.selector.insert(road, 1.0f);
            }
            indexOfValue += i4;
        }
        return this.selector.clear();
    }
}
