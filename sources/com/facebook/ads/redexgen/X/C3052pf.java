package com.facebook.ads.redexgen.X;

import android.os.Handler;
import android.os.Looper;
import android.os.SystemClock;
import android.widget.TextView;
import com.unity3d.ads.core.domain.WebViewScreenCapture;
import com.vungle.ads.internal.protos.Sdk;
import java.util.Arrays;
import kotlin.Metadata;

/* JADX INFO: renamed from: com.facebook.ads.redexgen.X.pf, reason: case insensitive filesystem */
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
public final class C3052pf {
    public static byte[] A09;
    public static String[] A0A = {"NRVR2d2LpeLOjToDY8AG0kCdNPb702R7", "oh3wA", "YqPYnbdEh3atSqwU7ODRKKUPmaTaTJsD", "d8RqErmGZDv7VJFifyr1VYP7qbK0F3lx", "XkJFKlRx79uCzVVrdAVcVV", "LavleMUU4tpkIvvCWKTKoPePAIZA", "bbWxac6OK6uiLLkd6i3O4a", "gfVmq9ilWyWWTvGXGsHd2uTlAM"};
    public static final C3050pd A0B;
    public int A00;
    public long A01;
    public long A02;
    public TextView A03;
    public Runnable A04;
    public boolean A05;
    public final int A06;
    public final long A07;
    public final Handler A08;

    public C3052pf() {
        this(0L, 0, 3, null);
    }

    public static String A00(int i, int i2, int i3) {
        byte[] bArrCopyOfRange = Arrays.copyOfRange(A09, i, i + i2);
        for (int i4 = 0; i4 < bArrCopyOfRange.length; i4++) {
            bArrCopyOfRange[i4] = (byte) ((bArrCopyOfRange[i4] - i3) - 14);
        }
        return new String(bArrCopyOfRange);
    }

    public static void A01() {
        A09 = new byte[]{-25, -6, -7, -7, -12, -13};
    }

    static {
        A01();
        A0B = new C3050pd(null);
    }

    public C3052pf(long j, int i) {
        this.A07 = j;
        this.A06 = i;
        this.A08 = new Handler(Looper.getMainLooper());
    }

    public /* synthetic */ C3052pf(long j, int i, int i2, AbstractC12661i abstractC12661i) {
        this((i2 & 1) != 0 ? WebViewScreenCapture.CACHE_TTL_MS : j, (i2 & 2) != 0 ? 30 : i);
    }

    private final void A02(TextView textView, int i, long j) {
        RunnableC3051pe runnableC3051pe = new RunnableC3051pe(this, textView, i);
        this.A04 = runnableC3051pe;
        this.A01 = j;
        this.A02 = SystemClock.elapsedRealtime();
        this.A08.postDelayed(runnableC3051pe, j);
    }

    public final void A05() {
        Runnable runnable = this.A04;
        if (runnable != null) {
            Handler handler = this.A08;
            if (A0A[5].length() != 28) {
                throw new RuntimeException();
            }
            String[] strArr = A0A;
            strArr[2] = "0aW3BGjQ3u8dOAEdcToTU9WZUGElaOKN";
            strArr[0] = "phw3harMUliwvMVrDSHXeH32S5kwsdBA";
            handler.removeCallbacks(runnable);
        }
        this.A04 = null;
        this.A03 = null;
        this.A05 = false;
        this.A01 = 0L;
    }

    public final void A06() {
        if (this.A05) {
            return;
        }
        Runnable runnable = this.A04;
        if (A0A[3].charAt(11) == '8') {
            throw new RuntimeException();
        }
        A0A[5] = "1o9zzaOpPUDS4bfEE2UTbZMIeOgL";
        if (runnable == null) {
            return;
        }
        long elapsed = Math.max(0L, this.A01 - (SystemClock.elapsedRealtime() - this.A02));
        this.A01 = elapsed;
        Runnable runnable2 = this.A04;
        if (runnable2 != null) {
            this.A08.removeCallbacks(runnable2);
        }
        this.A04 = null;
        this.A05 = true;
    }

    public final void A07() {
        if (!this.A05) {
            return;
        }
        this.A05 = false;
        TextView textView = this.A03;
        if (textView == null) {
            return;
        }
        A02(textView, this.A00, this.A01);
    }

    public final void A08(TextView textView, int i) {
        C1h.A09(textView, A00(0, 6, Sdk.SDKError.Reason.JSON_ENCODE_ERROR_VALUE));
        textView.setTextColor(A0B.A00(i));
        AbstractC3111qc.A0W(textView, AbstractC3111qc.A06(i, this.A06));
    }

    public final void A09(TextView textView, int i) {
        C1h.A09(textView, A00(0, 6, Sdk.SDKError.Reason.JSON_ENCODE_ERROR_VALUE));
        A05();
        this.A03 = textView;
        this.A00 = i;
        this.A05 = false;
        A02(textView, i, this.A07);
    }
}
