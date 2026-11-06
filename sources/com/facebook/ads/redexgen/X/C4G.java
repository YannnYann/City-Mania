package com.facebook.ads.redexgen.X;

import android.os.Handler;
import android.os.Looper;
import android.os.Message;
import com.facebook.ads.androidx.media3.common.Metadata;
import java.nio.ByteBuffer;
import java.util.ArrayList;
import java.util.Arrays;
import java.util.List;
import org.json.JSONException;

/* JADX INFO: renamed from: com.facebook.ads.redexgen.X.4G, reason: invalid class name */
/* JADX INFO: loaded from: assets/audience_network/classes.dex */
public final class C4G extends AnonymousClass97 implements Handler.Callback {
    public static byte[] A0C;
    public static String[] A0D = {"jG03nJPLnIdW77QYzbNURZrBZJ3g2m0C", "w9HEw", "yzIFmJQGza6CRTztz2qPW8aZF6xaK1Vl", "GVDZkNGTryXVujDUeIVKoj31BrsO3cEj", "fYBX7b7Vtu0gzfliA9KTcW1", "AoZi8", "vcAWYhr9637Ynn6IvK0STjDBV3GgNYoY", "DFScMmEeOoo5rQdakAbf8Kr218MzmOC9"};
    public int A00;
    public int A01;
    public long A02;
    public InterfaceC2081Zi A03;
    public List<C2035Xl> A04;
    public boolean A05;
    public final Handler A06;
    public final TQ A07;
    public final TS A08;
    public final C14218e A09;
    public final long[] A0A;
    public final Metadata[] A0B;

    public static String A00(int i, int i2, int i3) {
        byte[] bArrCopyOfRange = Arrays.copyOfRange(A0C, i, i + i2);
        for (int i4 = 0; i4 < bArrCopyOfRange.length; i4++) {
            bArrCopyOfRange[i4] = (byte) ((bArrCopyOfRange[i4] ^ i3) ^ 61);
        }
        return new String(bArrCopyOfRange);
    }

    public static void A02() {
        A0C = new byte[]{38, 17, 17, 12, 17, 67, 10, 13, 67, 19, 2, 17, 16, 10, 13, 4, 67, 42, 46, 37, 67, 16, 19, 6, 0, 78, 102, 119, 98, 103, 98, 119, 98, 81, 102, 109, 103, 102, 113, 102, 113};
    }

    /* JADX WARN: Failed to parse debug info
    java.lang.ArrayIndexOutOfBoundsException
     */
    private void A07(Metadata metadata, List<Metadata.Entry> list) {
        for (int i = 0; i < metadata.A02(); i++) {
            VC vcAAF = metadata.A03(i).AAF();
            if (vcAAF == null || !this.A07.ALg(vcAAF)) {
                list.add(metadata.A03(i));
            } else {
                InterfaceC2081Zi interfaceC2081ZiA5s = this.A07.A5s(vcAAF);
                byte[] bArr = (byte[]) AbstractC1747Ln.A01(metadata.A03(i).AAE());
                this.A09.A0A();
                this.A09.A0C(bArr.length);
                ((ByteBuffer) N1.A0f(this.A09.A02)).put(bArr);
                this.A09.A0B();
                Metadata metadataA6N = interfaceC2081ZiA5s.A6N(this.A09);
                if (metadataA6N != null) {
                    A07(metadataA6N, list);
                }
            }
        }
    }

    static {
        A02();
    }

    public C4G(TS ts, Looper looper) {
        this(ts, looper, TQ.A00, null);
    }

    public C4G(TS ts, Looper looper, TQ tq, String str) {
        super(5);
        this.A08 = (TS) AbstractC1747Ln.A01(ts);
        this.A06 = looper == null ? null : N1.A0c(looper, this);
        this.A07 = (TQ) AbstractC1747Ln.A01(tq);
        this.A09 = new C14218e();
        this.A0B = new Metadata[5];
        this.A0A = new long[5];
        A08(str);
    }

    private void A01() {
        Arrays.fill(this.A0B, (Object) null);
        this.A01 = 0;
        this.A00 = 0;
    }

    private void A03(long j) {
        if (this.A04 == null) {
            return;
        }
        for (C2035Xl c2035Xl : this.A04) {
            if (c2035Xl.A01 > j || c2035Xl.A00 >= j) {
            }
        }
    }

    private void A04(long j) {
        if (this.A04 == null) {
            return;
        }
        long jA01 = KN.A01(j);
        if (this.A06 != null) {
            this.A06.obtainMessage(1, Long.valueOf(jA01)).sendToTarget();
        } else {
            A03(jA01);
        }
    }

    private void A05(Metadata metadata, long j) {
        if (this.A06 != null) {
            this.A06.obtainMessage(0, new Object[]{metadata, Long.valueOf(j)}).sendToTarget();
        } else {
            A06(metadata, j);
        }
    }

    private void A06(Metadata metadata, long j) {
        this.A08.AFx(metadata, j);
    }

    private void A08(String str) {
        if (str != null && !str.isEmpty()) {
            try {
                this.A04 = C2034Xk.A01(str);
            } catch (JSONException unused) {
                MV.A05(A00(25, 16, 62), A00(0, 25, 94));
            }
        }
    }

    @Override // com.facebook.ads.redexgen.X.AnonymousClass97
    public final void A1Z() {
        A01();
        this.A03 = null;
    }

    @Override // com.facebook.ads.redexgen.X.AnonymousClass97
    public final void A1a(long j, boolean z) {
        A01();
        this.A05 = false;
    }

    @Override // com.facebook.ads.redexgen.X.AnonymousClass97
    public final void A1c(VC[] vcArr, long j, long j2) {
        this.A03 = this.A07.A5s(vcArr[0]);
    }

    @Override // com.facebook.ads.redexgen.X.InterfaceC1909Sg
    public final boolean AB7() {
        return this.A05;
    }

    @Override // com.facebook.ads.redexgen.X.InterfaceC1909Sg
    public final boolean ABM() {
        return true;
    }

    @Override // com.facebook.ads.redexgen.X.InterfaceC1909Sg
    public final void AJo(long j, long j2) {
        A04(j);
        if (!this.A05 && this.A00 < 5) {
            this.A09.A0A();
            C1825Oo c1825OoA1U = A1U();
            int iA1R = A1R(c1825OoA1U, this.A09, 0);
            if (iA1R == -4) {
                if (this.A09.A05()) {
                    this.A05 = true;
                } else if (!this.A09.A04()) {
                    this.A09.A00 = this.A02;
                    this.A09.A0B();
                    Metadata metadataA6N = ((InterfaceC2081Zi) N1.A0f(this.A03)).A6N(this.A09);
                    if (metadataA6N != null) {
                        ArrayList arrayList = new ArrayList(metadataA6N.A02());
                        A07(metadataA6N, arrayList);
                        if (!arrayList.isEmpty()) {
                            Metadata metadata = new Metadata(arrayList);
                            int i = (this.A01 + this.A00) % 5;
                            this.A0B[i] = metadata;
                            this.A0A[i] = this.A09.A01;
                            this.A00++;
                        }
                    }
                }
            } else if (iA1R == -5) {
                this.A02 = ((VC) AbstractC1747Ln.A01(c1825OoA1U.A00)).A0M;
            }
        }
        int i2 = this.A00;
        if (A0D[3].charAt(17) == 'G') {
            throw new RuntimeException();
        }
        A0D[6] = "CBQ2GCk8g09uaQW8d4b42KHDXx6eEOrt";
        if (i2 > 0 && this.A0A[this.A01] <= j) {
            A05((Metadata) N1.A0f(this.A0B[this.A01]), KN.A01(j - this.A0A[this.A01]));
            this.A0B[this.A01] = null;
            this.A01 = (this.A01 + 1) % 5;
            this.A00--;
        }
    }

    @Override // com.facebook.ads.redexgen.X.InterfaceC1838Pe
    public final int ALf(VC vc) {
        int i;
        if (this.A07.ALg(vc)) {
            if (C4H.A1G(vc)) {
                i = 4;
            } else {
                i = 2;
            }
            int iA00 = PX.A00(i);
            if (A0D[2].charAt(15) == 'c') {
                throw new RuntimeException();
            }
            A0D[2] = "Yn5UnW3GEFNnoYd3Sx1NAkqkg2l3kJUi";
            return iA00;
        }
        return PX.A00(0);
    }

    @Override // com.facebook.ads.redexgen.X.InterfaceC1909Sg, com.facebook.ads.redexgen.X.InterfaceC1838Pe
    public final String getName() {
        return A00(25, 16, 62);
    }

    @Override // android.os.Handler.Callback
    public final boolean handleMessage(Message message) {
        switch (message.what) {
            case 0:
                Object[] objArr = (Object[]) message.obj;
                A06((Metadata) objArr[0], ((Long) objArr[1]).longValue());
                return true;
            case 1:
                A03(((Long) message.obj).longValue());
                return true;
            default:
                throw new IllegalStateException();
        }
    }
}
