package com.facebook.ads.redexgen.X;

import android.animation.AnimatorSet;
import android.animation.ObjectAnimator;
import android.os.Handler;
import android.os.Looper;
import android.os.SystemClock;
import android.view.View;
import android.view.animation.LinearInterpolator;
import com.unity3d.services.UnityAdsConstants;
import java.util.ArrayList;
import java.util.Arrays;
import kotlin.Metadata;

/* JADX INFO: renamed from: com.facebook.ads.redexgen.X.pc, reason: case insensitive filesystem */
/*  JADX ERROR: Error in decompile pass: KotlinMetadataDecompile
    java.lang.IllegalArgumentException: Provided Metadata instance does not have metadataVersion in it and therefore is malformed and cannot be read.
    	at kotlin.metadata.jvm.internal.JvmReadUtils.checkMetadataVersionForRead(JvmReadUtils.kt:79)
    	at kotlin.metadata.jvm.internal.JvmReadUtils.readMetadataImpl$kotlin_metadata_jvm(JvmReadUtils.kt:46)
    	at kotlin.metadata.jvm.KotlinClassMetadata$Companion.readLenient(KotlinClassMetadata.kt:418)
    	at jadx.plugins.kotlin.metadata.utils.KotlinMetadataExtKt.getKotlinClassMetadata(KotlinMetadataExt.kt:71)
    	at jadx.plugins.kotlin.metadata.utils.KmClassWrapper$Companion.getWrapper(KmClassWrapper.kt:37)
    	at jadx.plugins.kotlin.metadata.pass.KotlinMetadataDecompilePass.visit(KotlinMetadataDecompilePass.kt:35)
    */
/* JADX INFO: loaded from: assets/audience_network/classes.dex */
@Metadata
public final class C3049pc {
    public static byte[] A0B;
    public static String[] A0C = {"CnNhEYD3lod5HVD7nnRSgaysYv1M847l", "qLryoeBRkRNzkq7WOerXpiL1kHyR4bx", "ofiky0rDOD2J78blqJbS7ho32ks4pN5", "pMkgXZDsGZBCNqo", "vOB6c8OOGx1HYyMkwsvKTqpk6v8gBddj", "wklrv2vfRzSEjI08pM3RFYLxCKg7ZoK9", "tB0dMvS0lSE6j8lWp2k27q49", "Od2IjT477tWVei3lxI3ScNznY1QSYbw4"};
    public static final C3047pa A0D;
    public long A00;
    public long A01;
    public AnimatorSet A02;
    public boolean A03;
    public View[] A04;
    public final float A05;
    public final long A06;
    public final long A07;
    public final long A08;
    public final Handler A09;
    public final Runnable A0A;

    public C3049pc() {
        this(0L, 0L, 0L, UnityAdsConstants.SafeGuards.InitRequestRetryPolicy.MIN_JITTER_PCT, 15, null);
    }

    public C3049pc(long j) {
        this(j, 0L, 0L, UnityAdsConstants.SafeGuards.InitRequestRetryPolicy.MIN_JITTER_PCT, 14, null);
    }

    public static String A01(int i, int i2, int i3) {
        byte[] bArrCopyOfRange = Arrays.copyOfRange(A0B, i, i + i2);
        for (int i4 = 0; i4 < bArrCopyOfRange.length; i4++) {
            int i5 = (bArrCopyOfRange[i4] ^ i3) ^ 14;
            String[] strArr = A0C;
            if (strArr[7].charAt(20) == strArr[5].charAt(20)) {
                throw new RuntimeException();
            }
            String[] strArr2 = A0C;
            strArr2[0] = "AmTDAEqgWwlCe7CXgFokstrN2v3T5F0i";
            strArr2[4] = "N1UmiSYGCYpcHpTeJX7nG6T9gvaerqAL";
            bArrCopyOfRange[i4] = (byte) i5;
        }
        return new String(bArrCopyOfRange);
    }

    public static void A02() {
        A0B = new byte[]{110, 123, 104, 125, 127, 110, 76, 115, 127, 109, 105, 76, 74, 89, 86, 75, 84, 89, 76, 81, 87, 86, 97};
    }

    /* JADX INFO: Access modifiers changed from: private */
    /* JADX WARN: Failed to parse debug info
    java.lang.ArrayIndexOutOfBoundsException
     */
    public final void A03() {
        AnimatorSet animatorSet = this.A02;
        if (animatorSet == null) {
            return;
        }
        char c = 0;
        if (this.A04.length == 0) {
            return;
        }
        float height = this.A04[0].getHeight() * this.A05;
        View[] viewArr = this.A04;
        ArrayList arrayList = new ArrayList(viewArr.length);
        int length = viewArr.length;
        int i = 0;
        while (i < length) {
            View view = viewArr[i];
            float[] fArr = new float[2];
            fArr[c] = -height;
            fArr[1] = 0.0f;
            ObjectAnimator objectAnimatorOfFloat = ObjectAnimator.ofFloat(view, A01(11, 12, 54), fArr);
            objectAnimatorOfFloat.setInterpolator(new LinearInterpolator());
            arrayList.add(objectAnimatorOfFloat);
            i++;
            c = 0;
        }
        animatorSet.playTogether(arrayList);
        animatorSet.setDuration(this.A06);
        animatorSet.start();
    }

    static {
        A02();
        A0D = new C3047pa(null);
    }

    public C3049pc(long j, long j2, long j3, float f) {
        this.A07 = j;
        this.A08 = j2;
        this.A06 = j3;
        this.A05 = f;
        this.A09 = new Handler(Looper.getMainLooper());
        this.A04 = new View[0];
        this.A0A = new RunnableC3048pb(this);
    }

    public /* synthetic */ C3049pc(long j, long j2, long j3, float f, int i, AbstractC12661i abstractC12661i) {
        this((i & 1) != 0 ? 6000L : j, (i & 2) != 0 ? 1000L : j2, (i & 4) != 0 ? 600L : j3, (i & 8) != 0 ? 0.1f : f);
    }

    /* JADX INFO: Access modifiers changed from: private */
    public final void A04(long j) {
        this.A01 = j;
        this.A00 = SystemClock.elapsedRealtime();
        this.A09.postDelayed(this.A0A, j);
    }

    public final void A08() {
        if (this.A00 > 0) {
            long jElapsedRealtime = SystemClock.elapsedRealtime();
            if (A0C[3].length() == 30) {
                throw new RuntimeException();
            }
            A0C[6] = "RZi7N6IKiiGHC0ZvGPrdlQ1Y";
            long j = jElapsedRealtime - this.A00;
            long elapsed = this.A01;
            this.A01 = Math.max(0L, elapsed - j);
        }
        AnimatorSet animatorSet = this.A02;
        if (animatorSet != null) {
            animatorSet.cancel();
        }
        this.A09.removeCallbacks(this.A0A);
        this.A00 = 0L;
    }

    public final void A09() {
        if (this.A02 == null) {
            return;
        }
        boolean z = this.A03;
        if (A0C[6].length() != 24) {
            throw new RuntimeException();
        }
        String[] strArr = A0C;
        strArr[7] = "2ucQZw0jeXkAvtUj8aJ64VO17jjIJlN8";
        strArr[5] = "XzV8r0h74uO38huaZBZnjdRgpHrgOW4S";
        if (z) {
            A04(this.A08);
        } else {
            if (this.A01 <= 0) {
                return;
            }
            A04(this.A01);
        }
    }

    public final void A0A() {
        AnimatorSet animatorSet = this.A02;
        if (animatorSet != null) {
            animatorSet.cancel();
        }
        this.A09.removeCallbacks(this.A0A);
        this.A02 = null;
        this.A03 = false;
        this.A00 = 0L;
        this.A01 = 0L;
    }

    public final void A0B(View... viewArr) {
        C1h.A09(viewArr, A01(0, 11, 20));
        this.A04 = viewArr;
        this.A03 = false;
        this.A02 = new AnimatorSet();
        A04(this.A07);
    }
}
