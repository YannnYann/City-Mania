package info.flowersoft.theotown.util;

import com.unity3d.services.UnityAdsConstants;
import info.flowersoft.theotown.resources.Resources;
import info.flowersoft.theotown.resources.WordFilter;

/* JADX INFO: loaded from: classes4.dex */
public class NameGenerator {
    public static final char[] chars = {'a', 'b', 'c', 'd', 'e', 'f', 'g', 'h', 'i', 'j', 'k', 'l', 'm', 'n', 'o', 'p', 'q', 'r', 's', 't', 'u', 'v', 'w', 'x', 'y', 'z'};
    public static final boolean[] isVocal = {true, false, false, false, true, false, false, false, true, false, false, false, false, false, true, false, false, false, false, false, true, false, false, false, false, false};
    public static final float[] p = {0.08f, 0.015f, 0.027f, 0.043f, 0.127f, 0.022f, 0.02f, 0.06f, 0.07f, 0.015f, 0.077f, 0.04f, 0.024f, 0.067f, 0.075f, 0.019f, 9.0E-4f, 0.06f, 0.063f, 0.09f, 0.027f, 0.098f, 0.024f, 0.015f, 0.02f, 7.4E-4f};
    public static final float[] firstP = {0.11f, 0.047f, 0.035f, 0.027f, 0.02f, 0.038f, 0.02f, 0.07f, 0.06f, 0.006f, 0.006f, 0.027f, 0.044f, 0.024f, 0.063f, 0.025f, 0.0017f, 0.017f, 0.078f, 0.17f, 0.015f, 0.006f, 0.068f, 1.0E-4f, 0.016f, 0.003f};

    public interface ProbFilter {
        float prob(int i);
    }

    public static String generateFiltered() {
        String strGenerate;
        do {
            strGenerate = generate();
        } while (WordFilter.getInstance().isForbidden(strGenerate));
        return strGenerate;
    }

    public static String generate() {
        int iNextInt = Resources.RND.nextInt(5) + 3;
        ProbFilter probFilter = new ProbFilter() { // from class: info.flowersoft.theotown.util.NameGenerator.1
            @Override // info.flowersoft.theotown.util.NameGenerator.ProbFilter
            public float prob(int i) {
                return NameGenerator.firstP[i];
            }
        };
        char[] cArr = chars;
        int probIndex = getProbIndex(probFilter, cArr.length);
        String str = "" + Character.toUpperCase(cArr[probIndex]);
        final int[] iArr = {probIndex};
        final int[] iArr2 = {probIndex};
        for (int i = 1; i < iNextInt; i++) {
            iArr2[0] = iArr[0];
            iArr[0] = probIndex;
            ProbFilter probFilter2 = new ProbFilter() { // from class: info.flowersoft.theotown.util.NameGenerator.2
                @Override // info.flowersoft.theotown.util.NameGenerator.ProbFilter
                public float prob(int i2) {
                    return ((NameGenerator.isVocal[i2] != NameGenerator.isVocal[iArr[0]] || NameGenerator.isVocal[i2]) && iArr2[0] != i2) ? NameGenerator.p[i2] : UnityAdsConstants.SafeGuards.InitRequestRetryPolicy.MIN_JITTER_PCT;
                }
            };
            char[] cArr2 = chars;
            probIndex = getProbIndex(probFilter2, cArr2.length);
            str = str + cArr2[probIndex];
        }
        return str;
    }

    public static int getProbIndex(ProbFilter probFilter, int i) {
        float fProb = UnityAdsConstants.SafeGuards.InitRequestRetryPolicy.MIN_JITTER_PCT;
        float fProb2 = 0.0f;
        for (int i2 = 0; i2 < i; i2++) {
            fProb2 += probFilter.prob(i2);
        }
        float fNextFloat = Resources.RND.nextFloat() * fProb2;
        for (int i3 = 0; i3 < i; i3++) {
            fProb += probFilter.prob(i3);
            if (fProb > fNextFloat) {
                return i3;
            }
        }
        return i - 1;
    }
}
