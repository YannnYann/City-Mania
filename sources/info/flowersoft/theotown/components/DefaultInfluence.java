package info.flowersoft.theotown.components;

import com.badlogic.gdx.Gdx;
import com.badlogic.gdx.math.MathUtils;
import com.unity3d.services.UnityAdsConstants;
import info.flowersoft.theotown.city.City;
import info.flowersoft.theotown.city.components.CityComponent;
import info.flowersoft.theotown.city.components.InfluenceType;
import info.flowersoft.theotown.city.objects.Building;
import info.flowersoft.theotown.city.objects.BusStop;
import info.flowersoft.theotown.city.objects.Road;
import info.flowersoft.theotown.city.objects.Tree;
import info.flowersoft.theotown.components.influence.AreaInfluenceWorker;
import info.flowersoft.theotown.util.StringFormatter;
import io.blueflower.stapel2d.util.json.JsonReader;
import io.blueflower.stapel2d.util.json.JsonWriter;
import java.io.IOException;
import java.util.ArrayList;
import java.util.Iterator;
import java.util.List;

/* JADX INFO: loaded from: classes4.dex */
public class DefaultInfluence extends CityComponent {
    public static final int INFLUENCE_COUNT = InfluenceType.cachedValues().length;
    public boolean cached;
    public final int[][] cells;
    public int[] foreignBuffer;
    public final int[] generalInfluence;
    public int gridHeight;
    public int gridTypePitch;
    public int gridWidth;
    public int height;
    public final float[] influenceBases;
    public final int[] influenceBuffer;
    public int influenceBufferSign;
    public final float[] influenceFactors;
    public final TempSource[] tempSources;
    public int usedBuffers;
    public int width;
    public List<Thread> workers;

    public static int intSign(int i) {
        return (i >> 31) | 1;
    }

    @Override // info.flowersoft.theotown.city.components.CityComponent
    public int getType() {
        return 2;
    }

    @Override // info.flowersoft.theotown.city.components.CityComponent, info.flowersoft.theotown.city.components.DateListener
    public void nextDay() {
    }

    public void save(JsonWriter jsonWriter) throws IOException {
    }

    @Override // info.flowersoft.theotown.city.components.CityComponent
    public void update() {
    }

    public DefaultInfluence(JsonReader jsonReader, City city) throws IOException {
        this(city.getWidth(), city.getHeight());
        this.cached = false;
        while (jsonReader.hasNext()) {
            jsonReader.skipValue();
        }
    }

    public DefaultInfluence(int i, int i2) {
        int i3;
        this.influenceBufferSign = 1;
        int i4 = INFLUENCE_COUNT;
        this.influenceBuffer = new int[i4];
        this.generalInfluence = new int[i4];
        this.width = i;
        this.height = i2;
        int i5 = (i + 31) / 32;
        this.gridWidth = i5;
        int i6 = (i2 + 31) / 32;
        this.gridHeight = i6;
        this.gridTypePitch = i5 * i6;
        this.cells = new int[i5 * i6 * i4][];
        this.tempSources = new TempSource[i4];
        int i7 = 0;
        while (true) {
            i3 = INFLUENCE_COUNT;
            if (i7 >= i3) {
                break;
            }
            this.tempSources[i7] = new TempSource();
            i7++;
        }
        this.influenceFactors = new float[i3];
        this.influenceBases = new float[i3];
        InfluenceType[] influenceTypeArrCachedValues = InfluenceType.cachedValues();
        for (int i8 = 0; i8 < INFLUENCE_COUNT; i8++) {
            InfluenceType influenceType = influenceTypeArrCachedValues[i8];
            this.influenceFactors[i8] = influenceType.getFactor();
            this.influenceBases[i8] = influenceType.getBase();
        }
    }

    @Override // info.flowersoft.theotown.city.components.CityComponent
    public void prepare() {
        if (this.cached) {
            return;
        }
        this.workers = new ArrayList();
        int iAvailableProcessors = Runtime.getRuntime().availableProcessors();
        int i = 1;
        while (true) {
            int i2 = i * 2;
            if (i2 > iAvailableProcessors || i2 >= this.height) {
                break;
            } else {
                i = i2;
            }
        }
        Gdx.app.debug("DefaultInfluence", StringFormatter.format("Use %1$d threads on %2$d cores to calculate influence", Integer.valueOf(i), Integer.valueOf(iAvailableProcessors)));
        int i3 = (((this.height / i) + 31) / 32) * 32;
        for (int i4 = 0; i4 < i; i4++) {
            final int i5 = i4 * i3;
            final int iMin = Math.min(i5 + i3, this.height);
            int i6 = this.height;
            if (i5 >= i6) {
                return;
            }
            int i7 = this.width;
            final AreaInfluenceWorker areaInfluenceWorker = new AreaInfluenceWorker(0, i5, i7, iMin, i7, i6);
            areaInfluenceWorker.bind(this.city);
            Thread thread = new Thread(new Runnable() { // from class: info.flowersoft.theotown.components.DefaultInfluence$$ExternalSyntheticLambda0
                @Override // java.lang.Runnable
                public final void run() {
                    DefaultInfluence.$r8$lambda$RV28ElGNERFbjQoF3utI64ByZl8(this.f$0, areaInfluenceWorker, i5, iMin);
                }
            });
            thread.start();
            this.workers.add(thread);
        }
    }

    public static /* synthetic */ void $r8$lambda$RV28ElGNERFbjQoF3utI64ByZl8(DefaultInfluence defaultInfluence, AreaInfluenceWorker areaInfluenceWorker, int i, int i2) {
        defaultInfluence.getClass();
        areaInfluenceWorker.calculateBaseInfluences();
        synchronized (defaultInfluence.generalInfluence) {
            int i3 = 0;
            while (true) {
                try {
                    int[] iArr = defaultInfluence.generalInfluence;
                    if (i3 < iArr.length) {
                        iArr[i3] = iArr[i3] + areaInfluenceWorker.getGeneralInfluence()[i3];
                        for (int i4 = i / 32; i4 < i2 / 32; i4++) {
                            int i5 = 0;
                            while (true) {
                                int i6 = defaultInfluence.gridWidth;
                                if (i5 < i6) {
                                    int i7 = (i6 * i4) + i5 + (defaultInfluence.gridTypePitch * i3);
                                    defaultInfluence.cells[i7] = areaInfluenceWorker.cells[i7];
                                    i5++;
                                }
                            }
                        }
                        i3++;
                    }
                } catch (Throwable th) {
                    throw th;
                }
            }
        }
    }

    public int[] getGeneralInfluence() {
        return this.generalInfluence;
    }

    @Override // info.flowersoft.theotown.city.components.CityComponent
    public void finishPrepare() {
        List<Thread> list = this.workers;
        if (list != null) {
            try {
                Iterator<Thread> it = list.iterator();
                while (it.hasNext()) {
                    it.next().join();
                }
            } catch (InterruptedException e) {
                e.printStackTrace();
            }
            this.workers = null;
        }
    }

    public float getGeneralInfluence(int i) {
        return (this.influenceFactors[i] * this.generalInfluence[i]) + this.influenceBases[i];
    }

    public void getGeneralInfluences(float[] fArr, int i) {
        for (int i2 = 0; i2 < INFLUENCE_COUNT; i2++) {
            fArr[i + i2] = (this.influenceFactors[i2] * this.generalInfluence[i2]) + this.influenceBases[i2];
        }
    }

    public void addInfluenceRaw(int i, int i2, int i3, int i4) {
        if (i4 == 0) {
            return;
        }
        int i5 = i / 32;
        int i6 = i2 / 32;
        int i7 = (this.gridWidth * i6) + i5 + (i3 * this.gridTypePitch);
        int[][] iArr = this.cells;
        int[] iArr2 = iArr[i7];
        if (iArr2 == null) {
            iArr2 = new int[256];
            iArr[i7] = iArr2;
        }
        int i8 = ((i - (i5 * 32)) / 2) + (((i2 - (i6 * 32)) / 2) * 16);
        int iIntSign = intSign(i4);
        iArr2[i8] = iArr2[i8] + ((iIntSign * ((i4 * iIntSign) + 2)) / 4);
    }

    public int getInfluenceRawGrid(int i, int i2, int i3) {
        int iClamp = MathUtils.clamp(i, 0, this.width - 1);
        int iClamp2 = MathUtils.clamp(i2, 0, this.height - 1);
        int i4 = iClamp / 32;
        int i5 = iClamp2 / 32;
        int[] iArr = this.cells[(this.gridWidth * i5) + i4 + (i3 * this.gridTypePitch)];
        if (iArr == null) {
            return 0;
        }
        return iArr[((iClamp - (i4 * 32)) / 2) + (((iClamp2 - (i5 * 32)) / 2) * 16)];
    }

    public int getInfluenceRaw(int i, int i2, int i3) {
        return (((getInfluenceRawGrid(i - 1, i2, i3) + getInfluenceRawGrid(i + 1, i2, i3)) + getInfluenceRawGrid(i, i2 - 1, i3)) + getInfluenceRawGrid(i, i2 + 1, i3)) / 4;
    }

    public float getInfluence(int i, int i2, int i3) {
        return Math.max(Math.min(((this.influenceFactors[i3] * getInfluenceRaw(i, i2, i3)) / 50.0f) + this.influenceBases[i3], 1.0f), UnityAdsConstants.SafeGuards.InitRequestRetryPolicy.MIN_JITTER_PCT);
    }

    public float getTempInfluence(int i, int i2, int i3) {
        TempSource tempSource = this.tempSources[i3];
        int influenceRadius = getInfluenceRadius(tempSource.value);
        int iMax = Math.max(Math.max(i - ((tempSource.width + r3) - 1), tempSource.x - i), 0);
        int iMax2 = Math.max(Math.max(i2 - ((tempSource.height + r5) - 1), tempSource.y - i2), 0);
        int i4 = (iMax * iMax) + (iMax2 * iMax2);
        int iSignum = (int) Math.signum(tempSource.value);
        if (i4 > (influenceRadius * influenceRadius) + 1) {
            return getInfluence(i, i2, i3);
        }
        return Math.max(Math.min(((this.influenceFactors[i3] * (getInfluenceRaw(i, i2, i3) + ((((iSignum * Math.min((tempSource.value * 50) / (i4 + 1), 100.0f)) * tempSource.width) * tempSource.height) * MathUtils.clamp(((influenceRadius - ((float) Math.sqrt(i4))) - 1.0f) * 0.5f, UnityAdsConstants.SafeGuards.InitRequestRetryPolicy.MIN_JITTER_PCT, 1.0f)))) / 50.0f) + this.influenceBases[i3], 1.0f), UnityAdsConstants.SafeGuards.InitRequestRetryPolicy.MIN_JITTER_PCT);
    }

    public void addBaseInfluenceFromTile(int i, int i2) {
        setInfluenceBufferFromTile(i, i2);
        applyInfluenceBuffer(i, i2);
    }

    public void removeBaseInfluenceFromTile(int i, int i2) {
        setInfluenceBufferFromTile(i, i2);
        invertInfluenceBuffer();
        applyInfluenceBuffer(i, i2);
    }

    public void setTempInfluence(int[] iArr, int i, int i2, int i3, int i4) {
        for (int i5 = 0; i5 < INFLUENCE_COUNT; i5++) {
            TempSource tempSource = this.tempSources[i5];
            tempSource.x = i;
            tempSource.y = i2;
            tempSource.width = i3;
            tempSource.height = i4;
            tempSource.value = iArr[i5];
        }
    }

    public void clearTempInfluence() {
        for (int i = 0; i < INFLUENCE_COUNT; i++) {
            this.tempSources[i].value = 0;
        }
    }

    public final void setInfluenceBufferFromTile(int i, int i2) {
        clearInfluenceBuffer();
        Tree tree = this.tiles.getTree(i, i2);
        Building building = this.tiles.getBuilding(i, i2);
        if (tree != null) {
            addInduceVectorToInfluenceBuffer(tree.getDraft().influenceInduceVector);
        }
        if (building != null && !building.inConstruction()) {
            addInduceVectorToInfluenceBuffer(building.getInfluenceInduceVector());
        }
        Road topRoad = this.tiles.getTopRoad(i, i2);
        Road bottomRoad = topRoad != null ? this.tiles.getBottomRoad(i, i2) : null;
        if (bottomRoad != null) {
            int i3 = topRoad.level;
            for (int i4 = bottomRoad.level; i4 <= i3; i4++) {
                Road road = this.tiles.getRoad(i, i2, i4);
                if (road != null) {
                    BusStop busStop = road.getBusStop();
                    if (busStop != null) {
                        addInduceVectorToInfluenceBuffer(busStop.getDraft().influenceInduceVector);
                    }
                    if (road.lastAppliedTrafficAmount != 0) {
                        addToInfluenceBuffer(InfluenceType.TRAFFIC.ordinal(), road.lastAppliedTrafficAmount);
                    }
                }
            }
        }
    }

    public final void addToInfluenceBuffer(int i, int i2) {
        int[] iArr = this.foreignBuffer;
        if (iArr != null) {
            int[] iArr2 = this.influenceBuffer;
            System.arraycopy(iArr, 0, iArr2, 0, iArr2.length);
            this.foreignBuffer = null;
        }
        int[] iArr3 = this.influenceBuffer;
        iArr3[i] = iArr3[i] + i2;
        this.usedBuffers++;
    }

    public final void addInduceVectorToInfluenceBuffer(int[] iArr) {
        if (iArr == null) {
            return;
        }
        int[] iArr2 = this.foreignBuffer;
        if (iArr2 == null && this.usedBuffers == 0) {
            this.foreignBuffer = iArr;
        } else {
            if (iArr2 != null) {
                int[] iArr3 = this.influenceBuffer;
                System.arraycopy(iArr2, 0, iArr3, 0, iArr3.length);
                this.foreignBuffer = null;
            }
            for (int i = 0; i < INFLUENCE_COUNT; i++) {
                int[] iArr4 = this.influenceBuffer;
                iArr4[i] = iArr4[i] + iArr[i];
            }
        }
        this.usedBuffers++;
    }

    public final void invertInfluenceBuffer() {
        this.influenceBufferSign *= -1;
    }

    public final void clearInfluenceBuffer() {
        if (this.usedBuffers > 0) {
            if (this.foreignBuffer != null) {
                this.foreignBuffer = null;
            } else {
                for (int i = 0; i < INFLUENCE_COUNT; i++) {
                    this.influenceBuffer[i] = 0;
                }
            }
        }
        this.usedBuffers = 0;
        this.influenceBufferSign = 1;
    }

    public final void applyInfluenceBuffer(int i, int i2) {
        if (this.usedBuffers == 0) {
            return;
        }
        int[] iArr = this.foreignBuffer;
        if (iArr == null) {
            iArr = this.influenceBuffer;
        }
        if (iArr == null) {
            return;
        }
        for (int i3 = 0; i3 < INFLUENCE_COUNT; i3++) {
            int i4 = this.influenceBufferSign * iArr[i3];
            int[] iArr2 = this.generalInfluence;
            iArr2[i3] = iArr2[i3] + i4;
            applyInfluence(i, i2, i3, i4);
        }
    }

    public static int getInfluenceRadius(int i) {
        return Math.round((float) Math.ceil(Math.sqrt((Math.abs(i) * 16) - 1)));
    }

    public void applyInfluence(int i, int i2, int i3, int i4) {
        int influenceRadius = getInfluenceRadius(i4);
        int i5 = influenceRadius * influenceRadius;
        if (influenceRadius <= 0 || i4 == 0) {
            return;
        }
        int iMax = Math.max(i - influenceRadius, 0);
        int iMin = Math.min(i + influenceRadius, this.width - 1);
        int iMin2 = Math.min(influenceRadius + i2, this.height - 1);
        int iIntSign = intSign(i4);
        int i6 = i4 * iIntSign;
        for (int iMax2 = Math.max(i2 - influenceRadius, 0); iMax2 <= iMin2; iMax2++) {
            int i7 = iMax2 - i2;
            int i8 = i7 * i7;
            int iRound = Math.round((float) Math.ceil(Math.sqrt(i5 - i8)));
            int iMin3 = Math.min(iMin, iRound + i);
            for (int iMax3 = Math.max(iMax, i - iRound); iMax3 <= iMin3; iMax3++) {
                int i9 = iMax3 - i;
                int i10 = (i9 * i9) + i8;
                if (i10 <= i5) {
                    addInfluenceRaw(iMax3, iMax2, i3, Math.min((i6 * 50) / (i10 + 1), 100) * iIntSign);
                }
            }
        }
    }

    public float getInfluence(int i, int i2, int i3, int i4, int i5) {
        return getInfluence(i + ((i3 - 1) / 2), i2 + ((i4 - 1) / 2), i5);
    }

    public float getInfluence(Building building, int i) {
        return getInfluence(building.getX(), building.getY(), building.getWidth(), building.getHeight(), i);
    }

    public static class TempSource {
        public int height;
        public int value;
        public int width;
        public int x;
        public int y;

        public TempSource() {
        }
    }
}
