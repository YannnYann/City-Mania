package info.flowersoft.theotown.components.traffic;

import com.badlogic.gdx.math.MathUtils;
import com.unity3d.services.UnityAdsConstants;
import com.vungle.ads.internal.protos.Sdk;
import info.flowersoft.theotown.resources.Resources;
import io.blueflower.stapel2d.drawing.Engine;
import kotlin.jvm.internal.Intrinsics;

/* JADX INFO: compiled from: ReachabilityMap.kt */
/* JADX INFO: loaded from: classes4.dex */
public final class ReachabilityMap {
    public final int cellHeight;
    public final int cellWidth;
    public final byte[] data;
    public final int gridHeight;
    public final int gridWidth;
    public final int height;
    public final int width;

    public ReachabilityMap(int i, int i2) {
        this.width = i;
        this.height = i2;
        int iMin = Math.min(8, i);
        this.gridWidth = iMin;
        int iMin2 = Math.min(8, i2);
        this.gridHeight = iMin2;
        this.cellWidth = i / iMin;
        this.cellHeight = i2 / iMin2;
        this.data = new byte[iMin * iMin2 * iMin * iMin2];
        if (iMin <= 0) {
            throw new IllegalArgumentException("Failed requirement.");
        }
        if (iMin2 <= 0) {
            throw new IllegalArgumentException("Failed requirement.");
        }
    }

    public final int getWidth() {
        return this.width;
    }

    public final int getHeight() {
        return this.height;
    }

    public final int getGridWidth() {
        return this.gridWidth;
    }

    public final int getGridHeight() {
        return this.gridHeight;
    }

    public final int getCellWidth() {
        return this.cellWidth;
    }

    public final int getCellHeight() {
        return this.cellHeight;
    }

    public final void drawDebug(Engine engine, float f, float f2) {
        ReachabilityMap reachabilityMap = this;
        Engine engine2 = engine;
        Intrinsics.checkNotNullParameter(engine2, "engine");
        engine2.setScale(1.0f, 1.0f);
        int i = reachabilityMap.gridHeight;
        int i2 = 0;
        while (i2 < i) {
            int i3 = reachabilityMap.gridWidth;
            int i4 = 0;
            while (i4 < i3) {
                int i5 = reachabilityMap.gridHeight;
                int i6 = 0;
                while (i6 < i5) {
                    int i7 = reachabilityMap.gridWidth;
                    int i8 = 0;
                    while (i8 < i7) {
                        reachabilityMap.rect(engine2, (reachabilityMap.gridWidth * i4) + i8, (reachabilityMap.gridHeight * i2) + i6, f, f2, MathUtils.clamp((reachabilityMap.get(i4, i2, i8, i6) / 120.0f) + 0.5f, UnityAdsConstants.SafeGuards.InitRequestRetryPolicy.MIN_JITTER_PCT, 1.0f));
                        i8++;
                        reachabilityMap = this;
                        engine2 = engine;
                    }
                    i6++;
                    reachabilityMap = this;
                    engine2 = engine;
                }
                i4++;
                reachabilityMap = this;
                engine2 = engine;
            }
            i2++;
            reachabilityMap = this;
            engine2 = engine;
        }
    }

    public final float getTile(int i, int i2, int i3, int i4) {
        int i5 = this.cellWidth;
        int i6 = this.cellHeight;
        return MathUtils.clamp((get(i / i5, i2 / i6, i3 / i5, i4 / i6) / 120.0f) + 0.5f, UnityAdsConstants.SafeGuards.InitRequestRetryPolicy.MIN_JITTER_PCT, 1.0f);
    }

    public final void foundWay(int i, int i2, int i3, int i4) {
        modifyTile(i, i2, i3, i4, 1);
    }

    public final void foundNoWay(int i, int i2, int i3, int i4) {
        modifyTile(i, i2, i3, i4, -1);
    }

    public final void modifyTile(int i, int i2, int i3, int i4, int i5) {
        int i6 = this.cellWidth;
        int i7 = this.cellHeight;
        byte b = get(i / i6, i2 / i7, i3 / i6, i4 / i7);
        byte bClamp = (byte) MathUtils.clamp(b + (((i5 * Sdk.SDKError.Reason.ASSET_FAILED_MAX_SPACE_EXCEEDED_VALUE) - b) / 10), -127, Sdk.SDKError.Reason.ASSET_FAILED_MAX_SPACE_EXCEEDED_VALUE);
        int i8 = this.cellWidth;
        int i9 = i / i8;
        int i10 = this.cellHeight;
        set(i9, i2 / i10, i3 / i8, i4 / i10, bClamp);
    }

    public final void rect(Engine engine, int i, int i2, float f, float f2, float f3) {
        float f4 = (i * 1.0f) + (i / this.gridWidth) + f;
        int i3 = this.gridHeight;
        float f5 = ((1.0f * (((i3 * i3) - i2) - 2)) - (i2 / i3)) + f2;
        if (f3 < 0.5f) {
            int i4 = 255 - ((int) (510 * (0.5f - f3)));
            engine.setColor(255, i4, i4);
        } else {
            int i5 = 255 - ((int) (510 * (f3 - 0.5f)));
            engine.setColor(i5, i5, 255);
        }
        engine.setTransparency(230);
        engine.drawImage(Resources.IMAGE_WORLD, f4, f5, 1.0f, 1.0f, Resources.FRAME_RECT);
    }

    public final byte get(int i, int i2, int i3, int i4) {
        byte[] bArr = this.data;
        int i5 = this.gridWidth;
        int i6 = i + (i2 * i5);
        int i7 = this.gridHeight;
        return bArr[i6 + (i3 * i5 * i7) + (i4 * i5 * i7 * i5)];
    }

    public final void set(int i, int i2, int i3, int i4, byte b) {
        byte[] bArr = this.data;
        int i5 = this.gridWidth;
        int i6 = i + (i2 * i5);
        int i7 = this.gridHeight;
        bArr[i6 + (i3 * i5 * i7) + (i4 * i5 * i7 * i5)] = b;
    }
}
