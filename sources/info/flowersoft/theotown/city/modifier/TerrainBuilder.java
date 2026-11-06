package info.flowersoft.theotown.city.modifier;

import com.badlogic.gdx.utils.IntIntMap;
import com.badlogic.gdx.utils.IntSet;
import info.flowersoft.theotown.city.City;
import info.flowersoft.theotown.city.Tiles;
import info.flowersoft.theotown.city.objects.Building;
import info.flowersoft.theotown.city.objects.Ground;
import info.flowersoft.theotown.city.objects.Tree;
import info.flowersoft.theotown.util.PackedInt2;
import io.blueflower.stapel2d.util.IntQueue;
import java.util.Iterator;

/* JADX INFO: loaded from: classes4.dex */
public class TerrainBuilder {
    public boolean buildable;
    public boolean calculated;
    public final City city;
    public final CityModifier modifier;
    public int movedEarth;
    public final Tiles tiles;
    public final IntIntMap targetHeights = new IntIntMap();
    public final IntQueue xyQueue = new IntQueue();
    public final IntSet xySet = new IntSet();

    public final void postProcessTile(int i, int i2) {
    }

    public TerrainBuilder(CityModifier cityModifier) {
        City city = cityModifier.city;
        this.city = city;
        this.tiles = city.getTiles();
        this.modifier = cityModifier;
        clear();
    }

    public void clear() {
        this.targetHeights.clear();
        this.movedEarth = 0;
        this.calculated = false;
        this.buildable = true;
    }

    public void addTarget(int i, int i2, int i3) {
        if (this.calculated) {
            throw new IllegalStateException("You have to apply or clear after calculation is done");
        }
        setTargetHeight(i, i2, i3);
        int i4 = i + 1;
        setTargetHeight(i4, i2, i3);
        int i5 = i2 + 1;
        setTargetHeight(i, i5, i3);
        setTargetHeight(i4, i5, i3);
    }

    public void addTargetShifted(int i, int i2, int i3) {
        if (this.calculated) {
            throw new IllegalStateException("You have to apply or clear after calculation is done");
        }
        if (this.city.isValid(i, i2)) {
            float terrainAvgHeight = this.city.getTiles().getTerrainAvgHeight(i, i2);
            if (i3 > 0) {
                int iFloor = ((int) Math.floor(terrainAvgHeight)) + i3;
                setTargetHeight(i, i2, Math.max(getActualHeight(i, i2), iFloor));
                int i4 = i + 1;
                setTargetHeight(i4, i2, Math.max(getActualHeight(i4, i2), iFloor));
                int i5 = i2 + 1;
                setTargetHeight(i, i5, Math.max(getActualHeight(i, i5), iFloor));
                setTargetHeight(i4, i5, Math.max(getActualHeight(i4, i5), iFloor));
                return;
            }
            if (i3 < 0) {
                int iCeil = ((int) Math.ceil(terrainAvgHeight)) + i3;
                setTargetHeight(i, i2, Math.min(getActualHeight(i, i2), iCeil));
                int i6 = i + 1;
                setTargetHeight(i6, i2, Math.min(getActualHeight(i6, i2), iCeil));
                int i7 = i2 + 1;
                setTargetHeight(i, i7, Math.min(getActualHeight(i, i7), iCeil));
                setTargetHeight(i6, i7, Math.min(getActualHeight(i6, i7), iCeil));
            }
        }
    }

    public final int getTargetHeight(int i, int i2) {
        int iPack = PackedInt2.pack(i, i2);
        if (this.targetHeights.containsKey(iPack)) {
            return this.targetHeights.get(iPack, 0);
        }
        return getActualHeight(i, i2);
    }

    public final void setTargetHeight(int i, int i2, int i3) {
        int iMin = Math.min(Math.max(i3, 0), 15);
        if (i < 0 || i2 < 0 || i > this.city.getWidth() || i2 > this.city.getHeight()) {
            return;
        }
        this.targetHeights.put(PackedInt2.pack(i, i2), iMin);
    }

    public final int getActualHeight(int i, int i2) {
        if (this.city.isValid(i, i2)) {
            return this.city.getTiles().getGround(i, i2).getTerrainHeight(0, 0);
        }
        int i3 = i - 1;
        int i4 = i2 - 1;
        if (this.city.isValid(i3, i4)) {
            return this.city.getTiles().getGround(i3, i4).getTerrainHeight(1, 1);
        }
        if (this.city.isValid(i3, i2)) {
            return this.city.getTiles().getGround(i3, i2).getTerrainHeight(1, 0);
        }
        if (this.city.isValid(i, i4)) {
            return this.city.getTiles().getGround(i, i4).getTerrainHeight(0, 1);
        }
        return 0;
    }

    public final boolean canModify(int i, int i2) {
        if (!this.city.isValid(i, i2)) {
            return false;
        }
        Ground ground = this.city.getTiles().getGround(i, i2);
        if (ground.isWater() || (ground.isBorder() && ground.getBorderFrame() != 0)) {
            return false;
        }
        Building building = this.tiles.getBuilding(i, i2);
        if (building != null && !building.getDraft().supportsSlope) {
            return false;
        }
        Tree tree = this.tiles.getTree(i, i2);
        return (tree == null || tree.getDraft().supportsSlope) && !this.tiles.hasRoad(i, i2) && !this.tiles.hasOvergroundWire(i, i2) && this.tiles.getRail(i, i2) == null;
    }

    public void calculate() {
        int i;
        if (this.calculated) {
            throw new IllegalStateException("Already calculated");
        }
        Iterator<IntIntMap.Entry> it = this.targetHeights.iterator();
        while (true) {
            if (!it.hasNext()) {
                break;
            }
            IntIntMap.Entry next = it.next();
            int iUnpackX = PackedInt2.unpackX(next.key);
            int iUnpackY = PackedInt2.unpackY(next.key);
            int i2 = next.value;
            if (i2 != getActualHeight(iUnpackX, iUnpackY)) {
                if (i2 < 0 || i2 > 15) {
                    break;
                }
                int iPack = PackedInt2.pack(iUnpackX, iUnpackY);
                this.xyQueue.add(iPack);
                this.xySet.add(iPack);
            }
        }
        this.buildable = false;
        while (!this.xyQueue.isEmpty() && this.buildable) {
            int iRemove = this.xyQueue.remove();
            this.xySet.remove(iRemove);
            int iUnpackX2 = PackedInt2.unpackX(iRemove);
            int iUnpackY2 = PackedInt2.unpackY(iRemove);
            int targetHeight = getTargetHeight(iUnpackX2, iUnpackY2);
            if (targetHeight == getActualHeight(iUnpackX2, iUnpackY2)) {
                break;
            }
            if (this.city.isValid(iUnpackX2, iUnpackY2)) {
                this.buildable &= canModify(iUnpackX2, iUnpackY2);
            }
            int i3 = iUnpackX2 - 1;
            if (this.city.isValid(i3, iUnpackY2)) {
                this.buildable &= canModify(i3, iUnpackY2);
            }
            int i4 = iUnpackY2 - 1;
            if (this.city.isValid(iUnpackX2, i4)) {
                this.buildable &= canModify(iUnpackX2, i4);
            }
            if (this.city.isValid(i3, i4)) {
                this.buildable &= canModify(i3, i4);
            }
            for (int i5 = 0; i5 < 8; i5++) {
                int i6 = i5 - 1;
                if (i5 >= 3 && i5 < 5) {
                    i = i5 - 3;
                    i6 = 1;
                } else if (i5 < 5 || i5 >= 7) {
                    i = -1;
                    if (i5 == 7) {
                        i6 = -1;
                        i = 0;
                    }
                } else {
                    i6 = 5 - i5;
                    i = 1;
                }
                int i7 = i6 + iUnpackX2;
                int i8 = i + iUnpackY2;
                if (i7 >= 0 && i8 >= 0 && i7 <= this.city.getWidth() && i8 <= this.city.getHeight()) {
                    int targetHeight2 = getTargetHeight(i7, i8);
                    if (Math.abs(targetHeight - targetHeight2) > 1) {
                        setTargetHeight(i7, i8, targetHeight > targetHeight2 ? targetHeight - 1 : targetHeight + 1);
                        int iPack2 = PackedInt2.pack(i7, i8);
                        if (!this.xySet.contains(iPack2)) {
                            this.xyQueue.add(iPack2);
                            this.xySet.add(iPack2);
                        }
                    }
                }
            }
        }
        this.xyQueue.clear();
        this.xySet.clear();
        for (IntIntMap.Entry entry : this.targetHeights) {
            this.movedEarth += Math.abs(getActualHeight(PackedInt2.unpackX(entry.key), PackedInt2.unpackY(entry.key)) - entry.value);
        }
        this.buildable &= this.movedEarth > 0;
        this.calculated = true;
    }

    public boolean isBuildable() {
        return this.buildable && this.calculated;
    }

    public int getMovedEarth() {
        return this.movedEarth;
    }

    public void apply() {
        if (!this.calculated) {
            throw new IllegalStateException("You have to calculate it first");
        }
        if (!this.buildable) {
            throw new IllegalStateException("Not buildable");
        }
        if (this.movedEarth > 0) {
            IntSet intSet = new IntSet();
            for (IntIntMap.Entry entry : this.targetHeights) {
                int iUnpackX = PackedInt2.unpackX(entry.key);
                int iUnpackY = PackedInt2.unpackY(entry.key);
                int i = entry.value;
                if (this.city.isValid(iUnpackX, iUnpackY)) {
                    this.city.getTiles().getGround(iUnpackX, iUnpackY).setTerrainHeight(0, 0, (byte) i);
                    intSet.add(PackedInt2.pack(iUnpackX, iUnpackY));
                }
                int i2 = iUnpackX - 1;
                if (this.city.isValid(i2, iUnpackY)) {
                    this.city.getTiles().getGround(i2, iUnpackY).setTerrainHeight(1, 0, (byte) i);
                    intSet.add(PackedInt2.pack(i2, iUnpackY));
                }
                int i3 = iUnpackY - 1;
                if (this.city.isValid(iUnpackX, i3)) {
                    this.city.getTiles().getGround(iUnpackX, i3).setTerrainHeight(0, 1, (byte) i);
                    intSet.add(PackedInt2.pack(iUnpackX, i3));
                }
                if (this.city.isValid(i2, i3)) {
                    this.city.getTiles().getGround(i2, i3).setTerrainHeight(1, 1, (byte) i);
                    intSet.add(PackedInt2.pack(i2, i3));
                }
            }
            IntSet.IntSetIterator it = intSet.iterator();
            while (it.hasNext) {
                int next = it.next();
                postProcessTile(PackedInt2.unpackX(next), PackedInt2.unpackY(next));
            }
        }
        clear();
    }
}
