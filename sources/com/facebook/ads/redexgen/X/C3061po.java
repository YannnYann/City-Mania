package com.facebook.ads.redexgen.X;

import android.os.Handler;
import android.os.Looper;
import android.os.SystemClock;
import java.util.Arrays;
import kotlin.Metadata;

/* JADX INFO: renamed from: com.facebook.ads.redexgen.X.po, reason: case insensitive filesystem */
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
public final class C3061po {
    public static byte[] A09;
    public static final C3056pj A0A;
    public long A00;
    public long A01;
    public InterfaceC3058pl A02;
    public boolean A03;
    public final long A04;
    public final Handler A05;
    public final InterfaceC3057pk A06;
    public final RunnableC3060pn A07;
    public final Runnable A08;

    static {
        A08();
        A0A = new C3056pj(null);
    }

    public static String A07(int i, int i2, int i3) {
        byte[] bArrCopyOfRange = Arrays.copyOfRange(A09, i, i + i2);
        for (int i4 = 0; i4 < bArrCopyOfRange.length; i4++) {
            bArrCopyOfRange[i4] = (byte) ((bArrCopyOfRange[i4] ^ i3) ^ 51);
        }
        return new String(bArrCopyOfRange);
    }

    public static void A08() {
        A09 = new byte[]{68, 65, 91, 92, 77, 70, 77, 90};
    }

    public C3061po(long j, InterfaceC3057pk interfaceC3057pk) {
        C1h.A09(interfaceC3057pk, A07(0, 8, 27));
        this.A04 = j;
        this.A06 = interfaceC3057pk;
        this.A05 = new Handler(Looper.getMainLooper());
        this.A08 = new RunnableC3059pm(this);
        this.A07 = new RunnableC3060pn(this);
        this.A00 = this.A04;
    }

    public final long A0B() {
        long jElapsedRealtime;
        if (this.A03) {
            jElapsedRealtime = (this.A04 - this.A00) + (SystemClock.elapsedRealtime() - this.A01);
        } else {
            jElapsedRealtime = this.A04 - this.A00;
        }
        return AbstractC12420i.A00(jElapsedRealtime, 0L, this.A04);
    }

    public final long A0C() {
        return this.A04;
    }

    public final void A0D() {
        this.A05.removeCallbacks(this.A08);
        this.A05.removeCallbacks(this.A07);
        this.A03 = false;
    }

    public final void A0E() {
        if (!this.A03) {
            return;
        }
        this.A05.removeCallbacks(this.A08);
        this.A05.removeCallbacks(this.A07);
        long elapsed = Math.max(0L, this.A00 - (SystemClock.elapsedRealtime() - this.A01));
        this.A00 = elapsed;
        this.A03 = false;
    }

    public final void A0F() {
        if (this.A03 || this.A00 <= 0) {
            return;
        }
        this.A01 = SystemClock.elapsedRealtime();
        this.A03 = true;
        this.A05.postDelayed(this.A08, this.A00);
        if (this.A02 != null) {
            this.A05.post(this.A07);
        }
    }

    public final void A0G() {
        if (this.A03) {
            return;
        }
        this.A01 = SystemClock.elapsedRealtime();
        this.A03 = true;
        this.A05.postDelayed(this.A08, this.A00);
        if (this.A02 != null) {
            this.A05.post(this.A07);
        }
    }

    public final void A0H(InterfaceC3058pl interfaceC3058pl) {
        this.A02 = interfaceC3058pl;
    }

    public final boolean A0I() {
        return this.A03;
    }
}
