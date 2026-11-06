package info.flowersoft.theotown.city;

import info.flowersoft.theotown.city.objects.Building;
import info.flowersoft.theotown.resources.Resources;
import info.flowersoft.theotown.util.SortedList;
import io.bidmachine.protobuf.EventTypeExtended;
import io.blueflower.stapel2d.util.ProbabilitySelector;
import java.util.ArrayList;
import java.util.List;
import java.util.Random;

/* JADX INFO: loaded from: classes4.dex */
public class BuildingSampler {
    public final List<SortedList<Building>> buildings;
    public final City city;
    public boolean favorNear;
    public int maxRadius;
    public final int minRadius;
    public final Random rnd;
    public final ProbabilitySelector<Building> selector;
    public final Tiles tiles;
    public int x;
    public int y;

    public BuildingSampler(City city, int i, int i2, int i3) {
        this(city, 0, i, i2, i3);
    }

    public BuildingSampler(City city, int i, int i2, int i3, int i4) {
        ArrayList arrayList = new ArrayList();
        this.buildings = arrayList;
        this.selector = new ProbabilitySelector<>(new Random());
        this.city = city;
        this.tiles = city.getTiles();
        arrayList.add(city.getBuildings().getSorted());
        this.minRadius = i;
        this.maxRadius = i2;
        this.x = i3;
        this.y = i4;
        this.rnd = new Random();
    }

    public void setBuildings(SortedList<Building> sortedList) {
        this.buildings.clear();
        this.buildings.add(sortedList);
    }

    public void clearBuildings() {
        this.buildings.clear();
    }

    public void addBuildings(SortedList<Building> sortedList) {
        this.buildings.add(sortedList);
    }

    public int getMaxRadius() {
        return this.maxRadius;
    }

    public void setMaxRadius(int i) {
        this.maxRadius = i;
    }

    public int getX() {
        return this.x;
    }

    public void setX(int i) {
        this.x = i;
    }

    public int getY() {
        return this.y;
    }

    public void setY(int i) {
        this.y = i;
    }

    public boolean isFavorNear() {
        return this.favorNear;
    }

    public void setFavorNear(boolean z) {
        this.favorNear = z;
    }

    public Building sample() {
        int i;
        int i2 = this.minRadius;
        int i3 = i2 * i2;
        int i4 = this.maxRadius;
        int i5 = i4 * i4;
        for (int i6 = 0; i6 < this.buildings.size(); i6++) {
            SortedList<Building> sortedList = this.buildings.get(i6);
            int indexOfValue = sortedList.getIndexOfValue(this.x - this.maxRadius);
            int indexOfValue2 = sortedList.getIndexOfValue(this.x + this.maxRadius);
            int i7 = indexOfValue2 - indexOfValue;
            if (i7 > 512) {
                i = (i7 + 511) / EventTypeExtended.EVENT_TYPE_EXTENDED_CONTAINER_ADDED_VALUE;
                indexOfValue += Resources.RND.nextInt(i);
            } else {
                i = 1;
            }
            while (indexOfValue < indexOfValue2) {
                Building building = sortedList.get(indexOfValue);
                if (building == null || building.getX() - this.x > this.maxRadius) {
                    break;
                }
                int x = building.getX() - this.x;
                int y = building.getY() - this.y;
                int i8 = (x * x) + (y * y);
                if (i3 <= i8 && i8 <= i5) {
                    this.selector.insert(building, this.favorNear ? i5 - i8 : 1.0f);
                }
                indexOfValue += i;
            }
        }
        return this.selector.clear();
    }

    public List<Building> sampleAll() {
        Building building;
        ArrayList arrayList = new ArrayList();
        int i = -this.maxRadius;
        while (true) {
            int i2 = this.maxRadius;
            if (i > i2) {
                return arrayList;
            }
            int i3 = -i2;
            while (true) {
                int i4 = this.maxRadius;
                if (i3 <= i4) {
                    if ((i3 * i3) + (i * i) <= i4 * i4 && this.city.isValid(this.x + i3, this.y + i) && (building = this.tiles.getBuilding(this.x + i3, this.y + i)) != null && this.x + i3 == building.getX() + (building.getWidth() / 2) && this.y + i == building.getY() + (building.getHeight() / 2)) {
                        arrayList.add(building);
                    }
                    i3++;
                }
            }
            i++;
        }
    }

    public List<Building> sample(int i) {
        List<Building> listSampleAll = sampleAll();
        if (listSampleAll.size() <= i) {
            return listSampleAll;
        }
        ArrayList arrayList = new ArrayList(i);
        int i2 = 0;
        for (int i3 = 0; i3 < listSampleAll.size() && arrayList.size() < i; i3++) {
            float size = (i - arrayList.size()) / ((listSampleAll.size() - arrayList.size()) - i2);
            if (size >= 1.0f || size > this.rnd.nextFloat()) {
                arrayList.add(listSampleAll.get(i3));
            } else {
                i2++;
            }
        }
        return arrayList;
    }
}
