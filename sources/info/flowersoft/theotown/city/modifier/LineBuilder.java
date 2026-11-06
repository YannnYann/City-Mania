package info.flowersoft.theotown.city.modifier;

import info.flowersoft.theotown.city.City;
import info.flowersoft.theotown.city.Direction;
import info.flowersoft.theotown.city.Tiles;
import info.flowersoft.theotown.city.objects.Ground;
import io.blueflower.stapel2d.util.IntList;
import java.util.ArrayDeque;

/* JADX INFO: loaded from: classes4.dex */
public abstract class LineBuilder {
    public City city;
    public int diamondPrice;
    public int dir;
    public int dirIndex;
    public int dx;
    public int dy;
    public int length;
    public CityModifier modifier;
    public long price;
    public int sx;
    public int sy;
    public Tiles tiles;
    public int tx;
    public int ty;
    public boolean valid;
    public int minLevel = 0;
    public int maxLevel = 1;
    public IntList absoluteLevels = new IntList();
    public IntList relativeLevels = new IntList();

    public interface NeighborHandler {
        void process(int i, int i2, int i3, int i4, int i5, int i6, int i7, int i8);
    }

    public interface TileHandler {
        void process(int i, int i2, int i3, int i4, int i5);
    }

    public abstract long afterPriceCalculation();

    public abstract void beforePriceCalculation();

    public abstract void beginBuild();

    public abstract void beginDestroy();

    public abstract void buildOnTile(int i, int i2, int i3, int i4, int i5);

    public abstract boolean canBuildOnTile(int i, int i2, int i3, int i4, int i5);

    public abstract void destroyTile(int i, int i2, int i3);

    public abstract void endBuild();

    public abstract void endDestroy();

    public abstract long getDiamondPriceForTile(int i, int i2, int i3, int i4, int i5);

    public abstract long getPriceForTile(int i, int i2, int i3, int i4, int i5);

    public abstract void processBuiltTile(int i, int i2, int i3, int i4, int i5);

    public abstract void processNeighborOfBuiltTile(int i, int i2, int i3, int i4, int i5, int i6, int i7, int i8);

    public abstract boolean processNeighborOfDestroyedTile(int i, int i2, int i3, int i4, int i5, int i6, int i7);

    /* JADX WARN: Type inference failed for: r2v2, types: [boolean, byte] */
    public static /* synthetic */ boolean access$072(LineBuilder lineBuilder, int i) {
        ?? r2 = (byte) (i & (lineBuilder.valid ? 1 : 0));
        lineBuilder.valid = r2;
        return r2;
    }

    public static /* synthetic */ long access$114(LineBuilder lineBuilder, long j) {
        long j2 = lineBuilder.price + j;
        lineBuilder.price = j2;
        return j2;
    }

    public static /* synthetic */ int access$214(LineBuilder lineBuilder, long j) {
        int i = (int) (((long) lineBuilder.diamondPrice) + j);
        lineBuilder.diamondPrice = i;
        return i;
    }

    public LineBuilder(CityModifier cityModifier) {
        City city = cityModifier.city;
        this.city = city;
        this.tiles = city.getTiles();
        this.modifier = cityModifier;
    }

    public void setTile(int i, int i2) {
        setLine(i, i2, i, i2);
    }

    public void setLine(int i, int i2, int i3, int i4) {
        int i5;
        this.valid = false;
        if ((i != i3 && i2 != i4) || !this.city.isValid(i, i2) || !this.city.isValid(i3, i4)) {
            this.valid = false;
            return;
        }
        this.sx = i;
        this.sy = i2;
        this.tx = i3;
        this.ty = i4;
        int i6 = i3 - i;
        this.dx = i6;
        this.dy = i4 - i2;
        this.length = Math.max(Math.abs(i6), Math.abs(this.dy)) + 1;
        int iFromDifferential = Direction.fromDifferential(this.dx, this.dy);
        this.dir = iFromDifferential;
        int index = Direction.toIndex(iFromDifferential);
        this.dirIndex = index;
        int iFromIndex = Direction.fromIndex(index);
        this.dir = iFromIndex;
        this.dx = Direction.differenceX(iFromIndex);
        this.dy = Direction.differenceY(this.dir);
        this.absoluteLevels.clear();
        this.relativeLevels.clear();
        int i7 = 0;
        while (true) {
            i5 = this.length;
            if (i7 >= i5) {
                break;
            }
            this.absoluteLevels.add(0);
            this.relativeLevels.add(0);
            i7++;
        }
        this.price = 0L;
        this.diamondPrice = 0;
        if (i5 == 1 && this.city.isValid(i, i2)) {
            int upDirs = this.city.getTiles().getUpDirs(i, i2);
            this.dir = upDirs;
            if (Direction.countDirections(upDirs) != 1) {
                this.dir = 1;
            }
        }
        this.valid = true;
    }

    public void setLevels(int i) {
        for (int i2 = 0; i2 < this.length; i2++) {
            setRelativeLevel(i, i2);
        }
    }

    public void setAbsoluteLevels(int i) {
        for (int i2 = 0; i2 < this.length; i2++) {
            setAbsoluteLevel(i, i2);
        }
    }

    public void setInnerLevels(int i, int i2) {
        for (int i3 = i2; i3 < this.length - i2; i3++) {
            setRelativeLevel(i, i3);
        }
    }

    public void setMinLevel(int i) {
        this.minLevel = i;
    }

    public void setMaxLevel(int i) {
        this.maxLevel = i;
    }

    public void setRelativeLevelStartTarget(int i, int i2, boolean z) {
        int i3 = i2 - i;
        int i4 = i < i2 ? 1 : 0;
        for (int i5 = 0; i5 < this.absoluteLevels.size(); i5++) {
            setRelativeLevel((Math.min(Math.max(i5 - i4, 0), Math.abs(i3)) * (i3 / Math.max(Math.abs(i3), 1))) + i, z ? (this.absoluteLevels.size() - 1) - i5 : i5);
        }
    }

    public void setRelativeLevel(int i, int i2) {
        int iMax = Math.max(Math.min(i, this.maxLevel), this.minLevel);
        this.relativeLevels.set(i2, iMax);
        this.absoluteLevels.set(i2, this.city.getTiles().getBaseTerrainHeight(this.sx + (this.dx * i2), this.sy + (this.dy * i2)) + iMax);
    }

    public void setAbsoluteLevel(int i, int i2) {
        setRelativeLevel(i - this.city.getTiles().getBaseTerrainHeight(this.sx + (this.dx * i2), this.sy + (this.dy * i2)), i2);
    }

    public void setRelativeLevelRaw(int i, int i2) {
        this.relativeLevels.set(i2, i);
        this.absoluteLevels.set(i2, this.city.getTiles().getBaseTerrainHeight(this.sx + (this.dx * i2), this.sy + (this.dy * i2)) + i);
    }

    public void setAbsoluteLevelRaw(int i, int i2) {
        setRelativeLevelRaw(i - this.city.getTiles().getBaseTerrainHeight(this.sx + (this.dx * i2), this.sy + (this.dy * i2)), i2);
    }

    public int getRelativeLevel(int i) {
        return this.relativeLevels.get(i);
    }

    public int getAbsoluteLevel(int i) {
        return this.absoluteLevels.get(i);
    }

    public int getLength() {
        return this.length;
    }

    public int getDir() {
        return this.dir;
    }

    public boolean isBuildable() {
        adjustLevels();
        calculatePrice();
        return this.valid;
    }

    public long getPrice() {
        return this.price;
    }

    public int getDiamondPrice() {
        return this.diamondPrice;
    }

    public void build() {
        checkSetup();
        beginBuild();
        adjustLevels();
        calculatePrice();
        finallyBuild();
        endBuild();
    }

    public void remove(int i, int i2, int i3) {
        beginDestroy();
        destroySingleTile(i, i2, i3);
        endDestroy();
    }

    public final void destroySingleTile(int i, int i2, int i3) {
        ArrayDeque arrayDeque = new ArrayDeque();
        arrayDeque.push(new Location(i, i2, i3));
        while (!arrayDeque.isEmpty()) {
            Location location = (Location) arrayDeque.pop();
            int i4 = location.x;
            int i5 = location.y;
            int i6 = location.level;
            Ground ground = this.city.getTiles().getGround(i4, i5);
            destroyTile(i4, i5, i6);
            for (int i7 = 1; i7 <= 8; i7 *= 2) {
                int iDifferenceX = i4 + Direction.differenceX(i7);
                int iDifferenceY = i5 + Direction.differenceY(i7);
                if (this.city.isValid(iDifferenceX, iDifferenceY)) {
                    for (int i8 = this.minLevel; i8 <= this.maxLevel; i8++) {
                        if (!processNeighborOfDestroyedTile(i4, i5, i6, iDifferenceX, iDifferenceY, i8, ground.getBaseTerrainHeight() + i6)) {
                            arrayDeque.push(new Location(iDifferenceX, iDifferenceY, i8));
                        }
                    }
                }
            }
        }
    }

    public final void checkSetup() {
        if (!this.valid) {
            throw new IllegalStateException("Road builder is not properly set up");
        }
    }

    public final void adjustLevels() {
        TileHandler tileHandler = new TileHandler() { // from class: info.flowersoft.theotown.city.modifier.LineBuilder.1
            @Override // info.flowersoft.theotown.city.modifier.LineBuilder.TileHandler
            public void process(int i, int i2, int i3, int i4, int i5) {
                Ground ground = LineBuilder.this.city.getTiles().getGround(i2, i3);
                LineBuilder lineBuilder = LineBuilder.this;
                lineBuilder.absoluteLevels.set(i, lineBuilder.relativeLevels.get(i) + ground.getBaseTerrainHeight());
                LineBuilder lineBuilder2 = LineBuilder.this;
                if (lineBuilder2.canBuildOnTile(i, i2, i3, lineBuilder2.absoluteLevels.get(i) - ground.getBaseTerrainHeight(), LineBuilder.this.getDLevel(i))) {
                    return;
                }
                IntList intList = LineBuilder.this.relativeLevels;
                intList.set(i, Math.min(intList.get(i) + 1, LineBuilder.this.maxLevel));
                LineBuilder lineBuilder3 = LineBuilder.this;
                lineBuilder3.absoluteLevels.set(i, lineBuilder3.relativeLevels.get(i) + ground.getBaseTerrainHeight());
                LineBuilder lineBuilder4 = LineBuilder.this;
                LineBuilder.access$072(lineBuilder4, lineBuilder4.canBuildOnTile(i, i2, i3, lineBuilder4.absoluteLevels.get(i), 0) ? 1 : 0);
                LineBuilder lineBuilder5 = LineBuilder.this;
                LineBuilder.access$072(lineBuilder5, lineBuilder5.modifier.haveAccess(i2, i3) ? 1 : 0);
            }
        };
        iterateOverLine(tileHandler);
        iterateOverLine(tileHandler);
        final boolean[] zArr = {true};
        int i = 0;
        while (zArr[0] && this.valid) {
            zArr[0] = false;
            i++;
            int i2 = 0;
            while (true) {
                if (i2 >= this.length) {
                    break;
                }
                if (this.relativeLevels.get(i2) > this.maxLevel) {
                    this.valid = false;
                    break;
                }
                i2++;
            }
            int i3 = 3;
            while (true) {
                if (i3 >= this.length) {
                    break;
                }
                if (this.absoluteLevels.get(i3 - 3) == this.absoluteLevels.get(i3)) {
                    int i4 = i3 - 1;
                    if ((this.absoluteLevels.get(i3) > this.absoluteLevels.get(i4) || this.absoluteLevels.get(i3) > this.absoluteLevels.get(i3 - 2)) && this.relativeLevels.get(i4) >= 0) {
                        int i5 = i3 - 2;
                        if (this.relativeLevels.get(i5) >= 0) {
                            setAbsoluteLevelRaw(this.absoluteLevels.get(i3), i5);
                            setAbsoluteLevelRaw(this.absoluteLevels.get(i3), i4);
                            zArr[0] = true;
                            break;
                        }
                    }
                }
                i3++;
            }
            int i6 = 2;
            while (true) {
                if (i6 >= this.length) {
                    break;
                }
                if (this.absoluteLevels.get(i6 - 2) == this.absoluteLevels.get(i6)) {
                    int i7 = i6 - 1;
                    if (this.absoluteLevels.get(i6) > this.absoluteLevels.get(i7)) {
                        setAbsoluteLevelRaw(this.absoluteLevels.get(i6), i7);
                        zArr[0] = true;
                        break;
                    }
                }
                i6++;
            }
            int i8 = 0;
            while (true) {
                if (i8 >= this.length - 1) {
                    break;
                }
                if (getDLevel(i8) == 1) {
                    int i9 = i8 + 1;
                    if (this.absoluteLevels.get(i9) != this.absoluteLevels.get(i8) + 1) {
                        setAbsoluteLevelRaw(this.absoluteLevels.get(i8) + 1, i9);
                        zArr[0] = true;
                        break;
                    }
                }
                i8++;
            }
            int i10 = 1;
            while (true) {
                if (i10 >= this.length) {
                    break;
                }
                if (getDLevel(i10) == -1) {
                    int i11 = i10 - 1;
                    if (this.absoluteLevels.get(i11) != this.absoluteLevels.get(i10) + 1) {
                        setAbsoluteLevelRaw(this.absoluteLevels.get(i11) - 1, i10);
                        zArr[0] = true;
                        break;
                    }
                }
                i10++;
            }
            if (i >= 1000) {
                break;
            } else {
                iterateOverLine(new TileHandler() { // from class: info.flowersoft.theotown.city.modifier.LineBuilder.2
                    @Override // info.flowersoft.theotown.city.modifier.LineBuilder.TileHandler
                    public void process(int i12, int i13, int i14, int i15, int i16) {
                        int i17;
                        int i18;
                        int i19;
                        int dLevel = LineBuilder.this.getDLevel(i12);
                        LineBuilder lineBuilder = LineBuilder.this;
                        if (i12 >= lineBuilder.length - 1 || dLevel <= 0) {
                            i17 = i12;
                            i18 = i13;
                            i19 = i14;
                        } else {
                            i17 = i12;
                            i18 = i13;
                            i19 = i14;
                            if (!lineBuilder.canBuildOnTile(i17, i18, i19, lineBuilder.relativeLevels.get(i12), 1)) {
                                int i20 = LineBuilder.this.relativeLevels.get(i17);
                                LineBuilder lineBuilder2 = LineBuilder.this;
                                if (i20 < lineBuilder2.maxLevel) {
                                    lineBuilder2.setRelativeLevel(lineBuilder2.relativeLevels.get(i17) + 1, i17);
                                    zArr[0] = true;
                                    return;
                                }
                            }
                        }
                        if (i17 <= 0 || dLevel >= 0) {
                            return;
                        }
                        LineBuilder lineBuilder3 = LineBuilder.this;
                        if (lineBuilder3.canBuildOnTile(i17, i18, i19, lineBuilder3.relativeLevels.get(i17), -1)) {
                            return;
                        }
                        int i21 = LineBuilder.this.relativeLevels.get(i17);
                        LineBuilder lineBuilder4 = LineBuilder.this;
                        if (i21 < lineBuilder4.maxLevel) {
                            lineBuilder4.setRelativeLevel(lineBuilder4.relativeLevels.get(i17) + 1, i17);
                            zArr[0] = true;
                        }
                    }
                });
            }
        }
        iterateOverLine(new TileHandler() { // from class: info.flowersoft.theotown.city.modifier.LineBuilder.3
            @Override // info.flowersoft.theotown.city.modifier.LineBuilder.TileHandler
            public void process(int i12, int i13, int i14, int i15, int i16) {
                int i17;
                int i18;
                int i19;
                LineBuilder lineBuilder = LineBuilder.this;
                if (i12 >= lineBuilder.length - 1 || lineBuilder.absoluteLevels.get(i12) >= LineBuilder.this.absoluteLevels.get(i12 + 1)) {
                    i17 = i12;
                    i18 = i13;
                    i19 = i14;
                } else {
                    LineBuilder lineBuilder2 = LineBuilder.this;
                    i17 = i12;
                    i18 = i13;
                    i19 = i14;
                    LineBuilder.access$072(lineBuilder2, lineBuilder2.canBuildOnTile(i17, i18, i19, lineBuilder2.relativeLevels.get(i12), 1) ? 1 : 0);
                }
                if (i17 <= 0 || LineBuilder.this.absoluteLevels.get(i17) >= LineBuilder.this.absoluteLevels.get(i17 - 1)) {
                    return;
                }
                int i20 = i19;
                int i21 = i18;
                int i22 = i17;
                LineBuilder lineBuilder3 = LineBuilder.this;
                LineBuilder.access$072(lineBuilder3, lineBuilder3.canBuildOnTile(i22, i21, i20, lineBuilder3.relativeLevels.get(i22), -1) ? 1 : 0);
            }
        });
    }

    public final void calculatePrice() {
        beforePriceCalculation();
        this.price = 0L;
        this.diamondPrice = 0;
        iterateOverLine(new TileHandler() { // from class: info.flowersoft.theotown.city.modifier.LineBuilder.4
            @Override // info.flowersoft.theotown.city.modifier.LineBuilder.TileHandler
            public void process(int i, int i2, int i3, int i4, int i5) {
                LineBuilder lineBuilder = LineBuilder.this;
                LineBuilder.access$114(lineBuilder, lineBuilder.getPriceForTile(i, i2, i3, i4, i5));
                LineBuilder lineBuilder2 = LineBuilder.this;
                LineBuilder.access$214(lineBuilder2, lineBuilder2.getDiamondPriceForTile(i, i2, i3, i4, i5));
            }
        });
        this.price += afterPriceCalculation();
    }

    public final void finallyBuild() {
        iterateOverLine(new TileHandler() { // from class: info.flowersoft.theotown.city.modifier.LineBuilder.5
            @Override // info.flowersoft.theotown.city.modifier.LineBuilder.TileHandler
            public void process(int i, int i2, int i3, int i4, int i5) {
                LineBuilder.this.buildOnTile(i, i2, i3, i4, i5);
            }
        });
        iterateOverLine(new TileHandler() { // from class: info.flowersoft.theotown.city.modifier.LineBuilder.6
            @Override // info.flowersoft.theotown.city.modifier.LineBuilder.TileHandler
            public void process(int i, int i2, int i3, int i4, int i5) {
                LineBuilder.this.processBuiltTile(i, i2, i3, i4, i5);
            }
        });
        iterateOverNeighbors(new NeighborHandler() { // from class: info.flowersoft.theotown.city.modifier.LineBuilder.7
            @Override // info.flowersoft.theotown.city.modifier.LineBuilder.NeighborHandler
            public void process(int i, int i2, int i3, int i4, int i5, int i6, int i7, int i8) {
                LineBuilder.this.processNeighborOfBuiltTile(i, i2, i3, i4, i5, i6, i7, i8);
            }
        });
    }

    public int getDLevel(int i) {
        int i2;
        if (i >= this.length - 1 || this.absoluteLevels.get(i) >= this.absoluteLevels.get(i + 1)) {
            i2 = (i <= 0 || this.absoluteLevels.get(i) >= this.absoluteLevels.get(i + (-1))) ? 0 : -1;
        } else {
            i2 = 1;
        }
        if (i2 == 0 && this.relativeLevels.get(i) == 0 && ((i >= this.length - 1 || this.relativeLevels.get(i + 1) >= 0) && (i <= 0 || this.relativeLevels.get(i - 1) >= 0))) {
            int potentialUpDirs = this.city.getTiles().getPotentialUpDirs(this.sx + (this.dx * i), this.sy + (i * this.dy));
            if (Direction.isIn(this.dir, potentialUpDirs)) {
                return 1;
            }
            if (Direction.isIn(Direction.opposite(this.dir), potentialUpDirs)) {
                return -1;
            }
        }
        return i2;
    }

    public final void iterateOverLine(TileHandler tileHandler) {
        for (int i = 0; i < this.length && this.valid; i++) {
            tileHandler.process(i, this.sx + (this.dx * i), this.sy + (this.dy * i), this.relativeLevels.get(i), getDLevel(i));
        }
    }

    public final void iterateOverNeighbors(NeighborHandler neighborHandler) {
        NeighborHandler neighborHandler2;
        int i = 0;
        while (i < this.length && this.valid) {
            int i2 = this.sx + (this.dx * i);
            int i3 = this.sy + (this.dy * i);
            int dLevel = getDLevel(i);
            int i4 = -1;
            while (i4 < 2) {
                int i5 = i2 + (this.dy * i4);
                int i6 = i3 - (this.dx * i4);
                if (this.city.isValid(i5, i6)) {
                    neighborHandler2 = neighborHandler;
                    neighborHandler2.process(i, i2, i3, this.relativeLevels.get(i), dLevel, i5, i6, this.absoluteLevels.get(i));
                } else {
                    neighborHandler2 = neighborHandler;
                }
                i4 += 2;
                neighborHandler = neighborHandler2;
            }
            NeighborHandler neighborHandler3 = neighborHandler;
            if (i == 0) {
                int i7 = this.sx - this.dx;
                int i8 = this.sy - this.dy;
                if (this.city.isValid(i7, i8)) {
                    neighborHandler3.process(i, i2, i3, this.relativeLevels.get(i), dLevel, i7, i8, this.absoluteLevels.get(i));
                }
            }
            if (i == this.length - 1) {
                int i9 = this.tx + this.dx;
                int i10 = this.ty + this.dy;
                if (this.city.isValid(i9, i10)) {
                    neighborHandler3.process(i, i2, i3, this.relativeLevels.get(i), dLevel, i9, i10, this.absoluteLevels.get(i));
                }
            }
            i++;
            neighborHandler = neighborHandler3;
        }
    }

    public static class Location {
        public int level;
        public int x;
        public int y;

        public Location(int i, int i2, int i3) {
            this.x = i;
            this.y = i2;
            this.level = i3;
        }
    }
}
