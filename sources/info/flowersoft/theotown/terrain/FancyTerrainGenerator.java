package info.flowersoft.theotown.terrain;

import com.unity3d.services.UnityAdsConstants;
import java.util.Random;

/* JADX INFO: loaded from: classes4.dex */
public class FancyTerrainGenerator extends TerrainGenerator {
    public final float curry(float f) {
        return f * f * ((f * 3.0f) - 2.0f);
    }

    public FancyTerrainGenerator(int i, int i2) {
        super(i, i2);
    }

    @Override // info.flowersoft.theotown.terrain.TerrainGenerator
    public void generate(Random random) {
        DiamondSquareTerrainGenerator diamondSquareTerrainGenerator = new DiamondSquareTerrainGenerator(getWidth(), getHeight());
        diamondSquareTerrainGenerator.setCornerValues(new float[]{1.0f, 1.0f, 1.0f, UnityAdsConstants.SafeGuards.InitRequestRetryPolicy.MIN_JITTER_PCT});
        diamondSquareTerrainGenerator.generate(random);
        for (int i = 0; i < getHeight(); i++) {
            for (int i2 = 0; i2 < getWidth(); i2++) {
                float f = i * 0.5f;
                setValue(i2, i, getInterpolatedValue(diamondSquareTerrainGenerator, (getWidth() - 1) * curry(getInterpolatedValue(diamondSquareTerrainGenerator, i2 * 0.5f, f)), (getHeight() - 1) * curry(getInterpolatedValue(diamondSquareTerrainGenerator, (diamondSquareTerrainGenerator.getWidth() + i2) * 0.5f, f))));
            }
        }
    }

    public final float getInterpolatedValue(TerrainGenerator terrainGenerator, float f, float f2) {
        int width = terrainGenerator.getWidth();
        int height = terrainGenerator.getHeight();
        while (f >= (width / 2) + width) {
            f -= width;
        }
        while (f < (-width) / 2) {
            f += width;
        }
        while (f2 >= (height / 2) + height) {
            f2 -= height;
        }
        while (f2 < (-height) / 2) {
            f2 += height;
        }
        float f3 = width - 1;
        float fAbs = f3 - Math.abs(f3 - Math.abs(f));
        float f4 = height - 1;
        float fAbs2 = f4 - Math.abs(f4 - Math.abs(f2));
        double d = fAbs;
        int iFloor = (int) Math.floor(d);
        double d2 = fAbs2;
        int iFloor2 = (int) Math.floor(d2);
        int iCeil = (int) Math.ceil(d);
        int iCeil2 = (int) Math.ceil(d2);
        float f5 = fAbs - iFloor;
        float f6 = fAbs2 - iFloor2;
        float f7 = 1.0f - f5;
        float f8 = 1.0f - f6;
        return (f7 * f8 * terrainGenerator.getValue(iFloor, iFloor2)) + UnityAdsConstants.SafeGuards.InitRequestRetryPolicy.MIN_JITTER_PCT + (f7 * f6 * terrainGenerator.getValue(iFloor, iCeil2)) + (f8 * f5 * terrainGenerator.getValue(iCeil, iFloor2)) + (f5 * f6 * terrainGenerator.getValue(iCeil, iCeil2));
    }
}
