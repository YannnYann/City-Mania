package io.blueflower.stapel2d.drawing;

import com.badlogic.gdx.Gdx;
import com.badlogic.gdx.graphics.Pixmap;
import info.flowersoft.theotown.util.Parallel;
import io.blueflower.stapel2d.util.IntList;
import java.util.ArrayList;
import java.util.List;

/* JADX INFO: loaded from: classes5.dex */
public final class TiledTextureSource extends TextureSource {
    public final List<AbstractBitmapTextureSource> bitmaps;
    public int h;
    public final IntList targetUnit;
    public final IntList targetX;
    public final IntList targetY;
    public int units;
    public int w;

    @Override // io.blueflower.stapel2d.drawing.TextureSource
    public void release(Texture texture) {
    }

    public TiledTextureSource(int i, int i2) {
        this(i, i2, 1);
    }

    public TiledTextureSource(int i, int i2, int i3) {
        this.w = i;
        this.h = i2;
        this.units = i3;
        this.bitmaps = new ArrayList();
        this.targetX = new IntList();
        this.targetY = new IntList();
        this.targetUnit = new IntList();
    }

    public void addSource(AbstractBitmapTextureSource abstractBitmapTextureSource, int i, int i2) {
        addSource(abstractBitmapTextureSource, i, i2, 0);
    }

    public void addSource(AbstractBitmapTextureSource abstractBitmapTextureSource, int i, int i2, int i3) {
        int i4 = this.w;
        if (i >= i4) {
            i -= i4;
            i3++;
        }
        int i5 = this.h;
        if (i2 >= i5) {
            i2 -= i5;
            i3 += 2;
        }
        this.bitmaps.add(abstractBitmapTextureSource);
        this.targetX.add(i);
        this.targetY.add(i2);
        this.targetUnit.add(i3);
    }

    @Override // io.blueflower.stapel2d.drawing.TextureSource
    public int getWidth() {
        return this.w;
    }

    @Override // io.blueflower.stapel2d.drawing.TextureSource
    public int getHeight() {
        return this.h;
    }

    @Override // io.blueflower.stapel2d.drawing.TextureSource
    public int getUnits() {
        return this.units;
    }

    @Override // io.blueflower.stapel2d.drawing.TextureSource
    public void load(final Texture texture) {
        Thread[] threadArr;
        int i;
        boolean z;
        Thread[] threadArr2;
        IntList intList;
        long jCurrentTimeMillis = System.currentTimeMillis();
        final IntList intList2 = new IntList();
        IntList intList3 = new IntList();
        for (int i2 = 0; i2 < this.bitmaps.size(); i2++) {
            if (this.bitmaps.get(i2).isAsync()) {
                intList2.add(i2);
            } else {
                intList3.add(i2);
            }
        }
        final Pixmap[] pixmapArr = new Pixmap[intList2.size()];
        boolean z2 = true;
        int iMax = Math.max(Math.min(Parallel.autoThreadCount(), intList2.size() / 8), 1);
        final int[] iArr = new int[iMax];
        int[] iArr2 = new int[iMax];
        int[] iArr3 = new int[iMax];
        int iSizePerWorker = Parallel.sizePerWorker(intList2.size(), iMax);
        for (int i3 = 0; i3 < iMax; i3++) {
            int i4 = i3 * iSizePerWorker;
            iArr2[i3] = i4;
            iArr[i3] = -1;
            iArr3[i3] = Math.min(i4 + iSizePerWorker, intList2.size());
        }
        Thread[] threadArrStartParallel = Parallel.startParallel(iMax, intList2.size(), new Parallel.Worker() { // from class: io.blueflower.stapel2d.drawing.TiledTextureSource$$ExternalSyntheticLambda0
            @Override // info.flowersoft.theotown.util.Parallel.Worker
            public final void work(int i5, int i6, int i7) {
                TiledTextureSource.$r8$lambda$QnzRsrhEt5HCnPDUwTnHfmHzBrk(this.f$0, intList2, texture, pixmapArr, iArr, i5, i6, i7);
            }
        });
        while (true) {
            boolean z3 = z2;
            int i5 = 0;
            boolean z4 = false;
            while (i5 < iMax) {
                while (true) {
                    i = iArr2[i5];
                    z = z2;
                    if (i > iArr[i5]) {
                        break;
                    }
                    Pixmap pixmap = pixmapArr[i];
                    if (pixmap != null) {
                        int i6 = intList2.get(i);
                        threadArr2 = threadArrStartParallel;
                        intList = intList2;
                        upload(pixmap, this.targetX.get(i6), this.targetY.get(i6), this.targetUnit.get(i6));
                        pixmap.dispose();
                        z4 = z;
                    } else {
                        threadArr2 = threadArrStartParallel;
                        intList = intList2;
                    }
                    iArr2[i5] = iArr2[i5] + 1;
                    z2 = z;
                    threadArrStartParallel = threadArr2;
                    intList2 = intList;
                }
                Thread[] threadArr3 = threadArrStartParallel;
                IntList intList4 = intList2;
                z3 &= i >= iArr3[i5] ? z : false;
                i5++;
                z2 = z;
                threadArrStartParallel = threadArr3;
                intList2 = intList4;
            }
            threadArr = threadArrStartParallel;
            IntList intList5 = intList2;
            boolean z5 = z2;
            if (z3) {
                break;
            }
            if (!z4) {
                try {
                    Thread.sleep(1L);
                } catch (InterruptedException unused) {
                }
            }
            z2 = z5;
            threadArrStartParallel = threadArr;
            intList2 = intList5;
        }
        Parallel.join(threadArr);
        for (int i7 = 0; i7 < intList3.size(); i7++) {
            int i8 = intList3.get(i7);
            Pixmap bitmap = this.bitmaps.get(i8).getBitmap(texture);
            upload(bitmap, this.targetX.get(i8), this.targetY.get(i8), this.targetUnit.get(i8));
            bitmap.dispose();
        }
        long jCurrentTimeMillis2 = System.currentTimeMillis() - jCurrentTimeMillis;
        Gdx.app.debug("TextureLoading", "loading texture took " + jCurrentTimeMillis2 + "ms");
    }

    public static /* synthetic */ void $r8$lambda$QnzRsrhEt5HCnPDUwTnHfmHzBrk(TiledTextureSource tiledTextureSource, IntList intList, Texture texture, Pixmap[] pixmapArr, int[] iArr, int i, int i2, int i3) {
        while (i2 < i3) {
            pixmapArr[i2] = tiledTextureSource.bitmaps.get(intList.get(i2)).getBitmap(texture);
            iArr[i] = i2;
            i2++;
        }
        tiledTextureSource.getClass();
    }
}
