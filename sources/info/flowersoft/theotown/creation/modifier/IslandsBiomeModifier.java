package info.flowersoft.theotown.creation.modifier;

import com.badlogic.gdx.math.MathUtils;
import com.unity3d.services.UnityAdsConstants;
import info.flowersoft.theotown.city.objects.Ground;
import info.flowersoft.theotown.draft.BiomeDraft;
import info.flowersoft.theotown.resources.Drafts;
import kotlin.jvm.internal.Intrinsics;
import kotlin.math.MathKt__MathJVMKt;

/* JADX INFO: compiled from: IslandsBiomeModifier.kt */
/* JADX INFO: loaded from: classes4.dex */
public final class IslandsBiomeModifier extends BiomeTerrainModifier {
    public final BiomeDraft islandsBiome = (BiomeDraft) Drafts.get("$biome_islands00", BiomeDraft.class);

    @Override // info.flowersoft.theotown.creation.modifier.BiomeTerrainModifier
    public boolean isAvailable() {
        return this.islandsBiome != null && getBiomes().contains(this.islandsBiome);
    }

    @Override // info.flowersoft.theotown.creation.modifier.BiomeTerrainModifier
    public void apply() {
        BiomeDraft biomeDraft;
        char c;
        float fLerp;
        BiomeDraft biomeDraft2 = this.islandsBiome;
        int height = getHeight();
        int i = 0;
        for (int i2 = 0; i2 < height; i2++) {
            int width = getWidth();
            for (int i3 = 0; i3 < width; i3++) {
                if (Intrinsics.areEqual(getBiome(i3, i2), biomeDraft2)) {
                    Ground ground = getGround(i3, i2);
                    float f = ground.height * 1000.0f;
                    float fEval = (getNoise().eval(i3 * 0.1f, i2 * 0.1f, 7.0f) * 0.5f) + 0.5f;
                    if (fEval < 0.5f) {
                        fLerp = MathUtils.lerp(f, UnityAdsConstants.SafeGuards.InitRequestRetryPolicy.MIN_JITTER_PCT, fEval * 2.0f);
                    } else {
                        fLerp = MathUtils.lerp(UnityAdsConstants.SafeGuards.InitRequestRetryPolicy.MIN_JITTER_PCT, 500000.0f, (fEval * 2.0f) - 1.0f);
                    }
                    ground.height = (short) MathKt__MathJVMKt.roundToInt(fLerp / 1000.0f);
                }
            }
        }
        while (true) {
            char c2 = 2;
            if (i >= 2) {
                return;
            }
            int i4 = 1;
            int height2 = getHeight() - 1;
            int i5 = 1;
            while (i5 < height2) {
                int width2 = getWidth() - i4;
                int i6 = i4;
                while (i6 < width2) {
                    if (Intrinsics.areEqual(getBiome(i6, i5), biomeDraft2)) {
                        Ground ground2 = getGround(i6, i5);
                        int i7 = i6 - 1;
                        int i8 = i6 + 1;
                        int i9 = i5 - 1;
                        c = c2;
                        int i10 = i5 + 1;
                        biomeDraft = biomeDraft2;
                        ground2.height = (short) ((((ground2.height * 4) + ((((getGround(i7, i5).height + getGround(i8, i5).height) + getGround(i6, i9).height) + getGround(i6, i10).height) * 2)) + (((getGround(i7, i9).height + getGround(i8, i9).height) + getGround(i7, i10).height) + getGround(i8, i10).height)) / 16);
                    } else {
                        biomeDraft = biomeDraft2;
                        c = c2;
                    }
                    i6++;
                    c2 = c;
                    biomeDraft2 = biomeDraft;
                }
                i5++;
                i4 = 1;
            }
            i++;
        }
    }
}
