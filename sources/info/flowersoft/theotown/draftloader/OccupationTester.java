package info.flowersoft.theotown.draftloader;

import io.blueflower.stapel2d.util.IntList;

/* JADX INFO: loaded from: classes4.dex */
public class OccupationTester {
    public int cellHeight;
    public int cellWidth;
    public final int gridSize;
    public int matchHeight;
    public int matchNextX;
    public int matchWidth;
    public int matchX;
    public int matchY;
    public final IntList[] occupiedSpacesGrid;
    public int targetHeight;
    public int targetWidth;

    public OccupationTester(int i) {
        this.gridSize = i;
        this.occupiedSpacesGrid = new IntList[i * i];
        for (int i2 = 0; i2 < i; i2++) {
            for (int i3 = 0; i3 < i; i3++) {
                this.occupiedSpacesGrid[(i2 * i) + i3] = new IntList();
            }
        }
    }

    public void setup(int i, int i2) {
        int i3 = 0;
        while (true) {
            IntList[] intListArr = this.occupiedSpacesGrid;
            if (i3 >= intListArr.length) {
                this.targetWidth = i;
                this.targetHeight = i2;
                int i4 = this.gridSize;
                this.cellWidth = i / i4;
                this.cellHeight = i2 / i4;
                this.matchWidth = 0;
                this.matchHeight = 0;
                return;
            }
            intListArr[i3].clear();
            i3++;
        }
    }

    public void clearAndRelease() {
        int i = 0;
        while (true) {
            IntList[] intListArr = this.occupiedSpacesGrid;
            if (i >= intListArr.length) {
                return;
            }
            intListArr[i].clearAndRelease();
            i++;
        }
    }

    public void addOccupiedSpace(int i, int i2, int i3, int i4) {
        int i5 = this.cellWidth;
        int i6 = i / i5;
        int i7 = this.cellHeight;
        int i8 = ((i + i3) - 1) / i5;
        int i9 = ((i2 + i4) - 1) / i7;
        for (int i10 = i2 / i7; i10 <= i9; i10++) {
            for (int i11 = i6; i11 <= i8; i11++) {
                IntList intList = this.occupiedSpacesGrid[(this.gridSize * i10) + i11];
                intList.add(i);
                intList.add(i2);
                intList.add(i3);
                intList.add(i4);
            }
        }
    }

    public void prepareQuery(int[] iArr, int i, int i2, int[] iArr2) {
        if (i == this.matchWidth && i2 == this.matchHeight) {
            iArr[0] = this.matchX;
            iArr[1] = this.matchY;
            iArr2[0] = this.matchNextX;
        } else {
            iArr[0] = 0;
            iArr[1] = 0;
            iArr2[0] = Integer.MAX_VALUE;
        }
    }

    /* JADX WARN: Multi-variable type inference failed */
    public boolean query(int[] iArr, int i, int i2, int[] iArr2) {
        int i3;
        int i4 = 0;
        int i5 = iArr[0];
        boolean z = true;
        int i6 = iArr[1];
        int i7 = this.cellWidth;
        int i8 = i5 / i7;
        int i9 = this.cellHeight;
        int i10 = i6 / i9;
        int i11 = i5 + i;
        int i12 = (i11 - 1) / i7;
        int i13 = i6 + i2;
        int i14 = (i13 - 1) / i9;
        while (i10 <= i14) {
            int i15 = i8;
            boolean z2 = z;
            while (i15 <= i12) {
                IntList intList = this.occupiedSpacesGrid[(this.gridSize * i10) + i15];
                int i16 = i4;
                boolean z3 = z2;
                while (i16 < intList.size()) {
                    int i17 = intList.get(i16);
                    boolean z4 = z3 ? 1 : 0;
                    int i18 = intList.get(i16 + 1);
                    int i19 = i8;
                    int i20 = intList.get(i16 + 2);
                    int i21 = intList.get(i16 + 3);
                    int i22 = i17 + i20;
                    if (i5 < i22 && i11 >= i17 && i13 > i18 && i6 < (i3 = i18 + i21)) {
                        int iMin = Math.min(iArr2[i16], i22);
                        iArr2[i16] = iMin;
                        if (i2 + i3 > this.targetHeight) {
                            i5 = iMin != Integer.MAX_VALUE ? iMin : i5 + 1;
                            iArr2[i16] = Integer.MAX_VALUE;
                            i3 = i16;
                        }
                        iArr[i16] = i5;
                        iArr[z4 ? 1 : 0] = i3;
                        return z4;
                    }
                    i16 += 4;
                    z3 = z4 ? 1 : 0;
                    i8 = i19;
                }
                boolean z5 = z3 ? 1 : 0;
                i15++;
                i4 = i16;
                z2 = z3;
            }
            boolean z6 = z2 ? 1 : 0;
            i10++;
            z = z2;
        }
        boolean z7 = i4;
        this.matchX = i5;
        this.matchY = i6;
        this.matchWidth = i;
        this.matchHeight = i2;
        this.matchNextX = iArr2[z7 ? 1 : 0];
        return z7;
    }
}
