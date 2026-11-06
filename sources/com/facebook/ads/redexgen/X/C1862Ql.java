package com.facebook.ads.redexgen.X;

import android.os.Looper;
import android.os.SystemClock;
import com.facebook.video.heroplayer.exocustom.MetaExoPlayerCustomization;
import java.io.IOException;
import java.util.Arrays;
import java.util.concurrent.ExecutorService;

/* JADX INFO: renamed from: com.facebook.ads.redexgen.X.Ql, reason: case insensitive filesystem */
/* JADX INFO: loaded from: assets/audience_network/classes.dex */
public final class C1862Ql {
    public static byte[] A03;
    public static String[] A04 = {"UdpgpulnjL", "OgVCwsFXZnGTiJuu5aLZULG2AK9kEPvp", "9aWxq5oRLfiqAJar37TGCh8WAnxlMoeI", "XzygGyT2H3mfsklgXZs05y1gkvB1", "lxRvVwGMb7H65HytGTsYmGn20Hn", "IfXciWhYd0XWA2bC1KQbtBuJSvcs3Qbv", "n0NN5aEMjHgJRAmjoAQ8FJQnUxKHuf3r", ""};
    public static final X5 A05;
    public static final X5 A06;
    public static final X5 A07;
    public static final X5 A08;
    public X6<? extends X7> A00;
    public IOException A01;
    public final XN A02;

    public static String A06(int i, int i2, int i3) {
        byte[] bArrCopyOfRange = Arrays.copyOfRange(A03, i, i + i2);
        for (int i4 = 0; i4 < bArrCopyOfRange.length; i4++) {
            byte b = (byte) ((bArrCopyOfRange[i4] ^ i3) ^ 89);
            if (A04[4].length() != 27) {
                throw new RuntimeException();
            }
            A04[5] = "niy2Q6sTxg9ZjwqMuaJNPuQQoce9XyzE";
            bArrCopyOfRange[i4] = b;
        }
        return new String(bArrCopyOfRange);
    }

    public static void A07() {
        A03 = new byte[]{53, 8, 31, 32, 28, 17, 9, 21, 2, 74, 60, 31, 17, 20, 21, 2, 74};
    }

    static {
        A07();
        A07 = A01(false, -9223372036854775807L);
        A08 = A01(true, -9223372036854775807L);
        A05 = new X5(2, -9223372036854775807L);
        A06 = new X5(3, -9223372036854775807L);
    }

    @MetaExoPlayerCustomization
    public C1862Ql(XN xn) {
        this.A02 = xn;
    }

    @MetaExoPlayerCustomization
    public C1862Ql(String str) {
        this(XM.A00(N1.A0u(A06(0, 17, 41) + str), new InterfaceC1757Ly() { // from class: com.facebook.ads.redexgen.X.Qq
            @Override // com.facebook.ads.redexgen.X.InterfaceC1757Ly
            public final void A3V(Object obj) {
                ((ExecutorService) obj).shutdown();
            }
        }));
    }

    /* JADX WARN: Generic types in debug info not equals: com.facebook.ads.redexgen.X.X4 != com.facebook.ads.androidx.media3.exoplayer.upstream.Loader$Callback<T extends com.facebook.ads.redexgen.X.X7> */
    @MetaExoPlayerCustomization
    private final <T extends X7> long A00(Looper looper, T t, X4<T> x4, int i) {
        AbstractC1747Ln.A08(looper != null);
        this.A01 = null;
        long jElapsedRealtime = SystemClock.elapsedRealtime();
        new X6(this, looper, t, x4, i, jElapsedRealtime).A06(0L);
        return jElapsedRealtime;
    }

    public static X5 A01(boolean z, long j) {
        return new X5(z ? 1 : 0, j);
    }

    /* JADX WARN: Generic types in debug info not equals: com.facebook.ads.redexgen.X.X4 != com.facebook.ads.androidx.media3.exoplayer.upstream.Loader$Callback<T extends com.facebook.ads.redexgen.X.X7> */
    public final <T extends X7> long A08(T t, X4<T> x4, int i) {
        Looper looper = (Looper) AbstractC1747Ln.A02(Looper.myLooper());
        return A00(looper, t, x4, i);
    }

    public final void A09() {
        ((X6) AbstractC1747Ln.A02(this.A00)).A07(false);
    }

    public final void A0A() {
        this.A01 = null;
    }

    public final void A0B(int i) throws IOException {
        if (this.A01 == null) {
            if (this.A00 != null) {
                X6<? extends X7> x6 = this.A00;
                if (i == Integer.MIN_VALUE) {
                    i = this.A00.A06;
                }
                x6.A05(i);
                return;
            }
            return;
        }
        throw this.A01;
    }

    public final void A0C(X8 x8) {
        if (this.A00 != null) {
            this.A00.A07(true);
        }
        if (x8 != null) {
            this.A02.execute(new X9(x8));
        }
        this.A02.AIp();
    }

    public final boolean A0D() {
        return this.A01 != null;
    }

    public final boolean A0E() {
        return this.A00 != null;
    }
}
