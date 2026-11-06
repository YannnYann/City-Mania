package com.facebook.ads.redexgen.X;

import android.os.Handler;
import android.os.Looper;
import android.os.Message;
import com.facebook.video.heroplayer.exocustom.MetaExoPlayerCustomization;
import java.util.Arrays;
import org.checkerframework.checker.nullness.qual.RequiresNonNull;
import org.checkerframework.dataflow.qual.SideEffectFree;

/* JADX INFO: renamed from: com.facebook.ads.redexgen.X.4C, reason: invalid class name */
/* JADX INFO: loaded from: assets/audience_network/classes.dex */
public final class C4C extends AnonymousClass97 implements Handler.Callback {
    public static byte[] A0H;
    public static String[] A0I = {"V1LuMMiLMfCAp09Dmi41HurcCOTe2Mrr", "PTYZUuHLpaiknFwd6GvUSJSD9CLL9T2V", "JosAhiNZSNyXBDCS4XC", "fBm0un7a7mlXF4bceWEjCLRF3Zq7IIby", "42VrQxuQsJbAYli6vPTYAHevHj", "Vnsf0rdKpRTGAKYRgDQL86RSD7ZtJpJ1", "2DFUT4SpHHQ7uirAcVbedAtBcr1eGIus", "g20GOEeRkyUpDgeyzB6dHLPtTHUy9kHm"};
    public int A00;
    public int A01;
    public long A02;
    public long A03;
    public long A04;
    public VC A05;
    public InterfaceC1821Ok A06;
    public C8B A07;
    public C8A A08;
    public C8A A09;
    public boolean A0A;
    public boolean A0B;
    public boolean A0C;
    public final Handler A0D;
    public final C1825Oo A0E;
    public final WB A0F;
    public final WE A0G;

    public static String A03(int i, int i2, int i3) {
        byte[] bArrCopyOfRange = Arrays.copyOfRange(A0H, i, i + i2);
        for (int i4 = 0; i4 < bArrCopyOfRange.length; i4++) {
            bArrCopyOfRange[i4] = (byte) ((bArrCopyOfRange[i4] ^ i3) ^ 59);
        }
        return new String(bArrCopyOfRange);
    }

    public static void A09() {
        A0H = new byte[]{101, 67, 84, 66, 95, 66, 90, 83, 22, 82, 83, 85, 89, 82, 95, 88, 81, 22, 80, 87, 95, 90, 83, 82, 24, 22, 69, 66, 68, 83, 87, 91, 112, 89, 68, 91, 87, 66, 11, 71, 118, 107, 103, 65, 118, 125, 119, 118, 97, 118, 97};
    }

    static {
        A09();
    }

    public C4C(WE we, Looper looper, WB wb) {
        super(3);
        this.A0G = (WE) AbstractC1747Ln.A01(we);
        this.A0D = looper == null ? null : N1.A0c(looper, this);
        this.A0F = wb;
        this.A0E = new C1825Oo();
        this.A02 = -9223372036854775807L;
        this.A04 = -9223372036854775807L;
        this.A03 = -9223372036854775807L;
    }

    private long A00() {
        if (this.A01 == -1) {
            return Long.MAX_VALUE;
        }
        AbstractC1747Ln.A01(this.A09);
        int i = this.A01;
        int iA8f = this.A09.A8f();
        if (A0I[2].length() != 19) {
            throw new RuntimeException();
        }
        A0I[7] = "bDqKr5PIH2e0FVFOZ5R9sjTi2cG1nX5g";
        if (i >= iA8f) {
            return Long.MAX_VALUE;
        }
        return this.A09.A8e(this.A01);
    }

    @RequiresNonNull
    @SideEffectFree
    private long A01(long j) {
        int iA9D = this.A09.A9D(j);
        if (iA9D != 0) {
            int nextEventTimeIndex = this.A09.A8f();
            if (nextEventTimeIndex != 0) {
                if (iA9D == -1) {
                    C8A c8a = this.A09;
                    int nextEventTimeIndex2 = this.A09.A8f();
                    return c8a.A8e(nextEventTimeIndex2 - 1);
                }
                int nextEventTimeIndex3 = iA9D - 1;
                return this.A09.A8e(nextEventTimeIndex3);
            }
        }
        return ((T1) this.A09).A01;
    }

    @SideEffectFree
    private long A02(long j) {
        boolean z = true;
        AbstractC1747Ln.A08(j != -9223372036854775807L);
        if (this.A04 == -9223372036854775807L) {
            z = false;
        }
        AbstractC1747Ln.A08(z);
        return j - this.A04;
    }

    private void A04() {
        A0B(new C1934Tf(XR.A01(), A02(this.A03)));
    }

    private void A05() {
        this.A0C = true;
        this.A06 = this.A0F.A5t((VC) AbstractC1747Ln.A01(this.A05));
    }

    private void A06() {
        this.A07 = null;
        this.A01 = -1;
        if (this.A09 != null) {
            this.A09.A0B();
            this.A09 = null;
        }
        if (this.A08 != null) {
            this.A08.A0B();
            this.A08 = null;
        }
    }

    private void A07() {
        A06();
        ((InterfaceC1821Ok) AbstractC1747Ln.A01(this.A06)).AIp();
        this.A06 = null;
        this.A00 = 0;
    }

    private void A08() {
        A07();
        A05();
    }

    private void A0A(C1934Tf c1934Tf) {
        this.A0G.AEb(c1934Tf.A01);
        this.A0G.AEa(c1934Tf);
    }

    private void A0B(C1934Tf c1934Tf) {
        if (this.A0D != null) {
            this.A0D.obtainMessage(0, c1934Tf).sendToTarget();
        } else {
            A0A(c1934Tf);
        }
    }

    @MetaExoPlayerCustomization
    private void A0C(WD wd) {
        if (this.A0D != null) {
            this.A0D.obtainMessage(1, wd).sendToTarget();
        }
    }

    private void A0D(C1820Oj c1820Oj) {
        MV.A08(A03(39, 12, 40), A03(0, 39, 13) + this.A05, c1820Oj);
        A0C(new WD(this.A05, c1820Oj));
        A04();
        A08();
    }

    @Override // com.facebook.ads.redexgen.X.AnonymousClass97
    public final void A1Z() {
        this.A05 = null;
        this.A02 = -9223372036854775807L;
        A04();
        this.A04 = -9223372036854775807L;
        this.A03 = -9223372036854775807L;
        A07();
    }

    @Override // com.facebook.ads.redexgen.X.AnonymousClass97
    public final void A1a(long j, boolean z) {
        this.A03 = j;
        A04();
        this.A0A = false;
        this.A0B = false;
        this.A02 = -9223372036854775807L;
        if (this.A00 != 0) {
            A08();
        } else {
            A06();
            ((InterfaceC1821Ok) AbstractC1747Ln.A01(this.A06)).flush();
        }
    }

    @Override // com.facebook.ads.redexgen.X.AnonymousClass97
    public final void A1c(VC[] vcArr, long j, long j2) {
        this.A04 = j2;
        this.A05 = vcArr[0];
        if (this.A06 != null) {
            this.A00 = 1;
        } else {
            A05();
        }
    }

    @Override // com.facebook.ads.redexgen.X.InterfaceC1909Sg
    public final boolean AB7() {
        return this.A0B;
    }

    @Override // com.facebook.ads.redexgen.X.InterfaceC1909Sg
    public final boolean ABM() {
        return true;
    }

    @Override // com.facebook.ads.redexgen.X.InterfaceC1909Sg
    public final void AJo(long j, long j2) throws C1801Nq {
        this.A03 = j;
        if (AB5() && this.A02 != -9223372036854775807L && j >= this.A02) {
            A06();
            this.A0B = true;
        }
        if (this.A0B) {
            return;
        }
        if (this.A08 == null) {
            ((InterfaceC1821Ok) AbstractC1747Ln.A01(this.A06)).AKz(j);
            try {
                this.A08 = ((InterfaceC1821Ok) AbstractC1747Ln.A01(this.A06)).A6S();
            } catch (C1820Oj e) {
                A0D(e);
                return;
            }
        }
        if (A9n() != 2) {
            return;
        }
        boolean z = false;
        if (this.A09 != null) {
            long jA00 = A00();
            while (jA00 <= j) {
                this.A01++;
                jA00 = A00();
                z = true;
            }
        }
        if (this.A08 != null) {
            C8A c8a = this.A08;
            boolean textRendererNeedsUpdate = c8a.A05();
            if (textRendererNeedsUpdate) {
                if (!z && A00() == Long.MAX_VALUE) {
                    if (this.A00 == 2) {
                        A08();
                    } else {
                        A06();
                        this.A0B = true;
                    }
                }
            } else if (((T1) c8a).A01 <= j) {
                if (this.A09 != null) {
                    this.A09.A0B();
                }
                this.A01 = c8a.A9D(j);
                this.A09 = c8a;
                this.A08 = null;
                z = true;
            }
        }
        if (z) {
            AbstractC1747Ln.A01(this.A09);
            A0B(new C1934Tf(this.A09.A88(j), A02(A01(j))));
        }
        if (this.A00 == 2) {
            return;
        }
        while (true) {
            try {
                boolean textRendererNeedsUpdate2 = this.A0A;
                if (!textRendererNeedsUpdate2) {
                    C8B c8bA6Q = this.A07;
                    if (c8bA6Q == null) {
                        c8bA6Q = ((InterfaceC1821Ok) AbstractC1747Ln.A01(this.A06)).A6Q();
                        if (c8bA6Q != null) {
                            this.A07 = c8bA6Q;
                        } else {
                            return;
                        }
                    }
                    if (this.A00 == 1) {
                        c8bA6Q.A02(4);
                        ((InterfaceC1821Ok) AbstractC1747Ln.A01(this.A06)).AIW(c8bA6Q);
                        this.A07 = null;
                        this.A00 = 2;
                        return;
                    }
                    int iA1R = A1R(this.A0E, c8bA6Q, 0);
                    if (iA1R == -4) {
                        boolean textRendererNeedsUpdate3 = c8bA6Q.A05();
                        if (textRendererNeedsUpdate3) {
                            this.A0A = true;
                            this.A0C = false;
                        } else {
                            VC vc = this.A0E.A00;
                            if (vc != null) {
                                c8bA6Q.A00 = vc.A0M;
                                c8bA6Q.A0B();
                                boolean z2 = this.A0C;
                                boolean textRendererNeedsUpdate4 = c8bA6Q.A07();
                                this.A0C = (textRendererNeedsUpdate4 ? false : true) & z2;
                            } else {
                                return;
                            }
                        }
                        boolean textRendererNeedsUpdate5 = this.A0C;
                        if (!textRendererNeedsUpdate5) {
                            ((InterfaceC1821Ok) AbstractC1747Ln.A01(this.A06)).AIW(c8bA6Q);
                            this.A07 = null;
                        }
                    } else if (iA1R == -3) {
                        return;
                    }
                } else {
                    return;
                }
            } catch (C1820Oj e2) {
                if (A0I[2].length() != 19) {
                    throw new RuntimeException();
                }
                String[] strArr = A0I;
                strArr[5] = "JtArgKwPpfhv6xLht4TDlEDhrKOKKLIY";
                strArr[1] = "GhLCazkgpncRPL4IgKxkr880u8FoEgrQ";
                A0D(e2);
                return;
            }
        }
    }

    @Override // com.facebook.ads.redexgen.X.InterfaceC1838Pe
    public final int ALf(VC vc) {
        if (this.A0F.ALg(vc)) {
            return PX.A00(4);
        }
        if (L8.A0E(vc.A0W)) {
            return PX.A00(1);
        }
        return PX.A00(0);
    }

    @Override // com.facebook.ads.redexgen.X.InterfaceC1909Sg, com.facebook.ads.redexgen.X.InterfaceC1838Pe
    public final String getName() {
        return A03(39, 12, 40);
    }

    @Override // android.os.Handler.Callback
    public final boolean handleMessage(Message message) {
        switch (message.what) {
            case 0:
                C1934Tf c1934Tf = (C1934Tf) message.obj;
                if (A0I[6].length() != 32) {
                    throw new RuntimeException();
                }
                A0I[6] = "u6NEavlCR26jsk4vvYegktJc4XJxInLA";
                A0A(c1934Tf);
                return true;
            case 1:
                return true;
            default:
                throw new IllegalStateException();
        }
    }
}
