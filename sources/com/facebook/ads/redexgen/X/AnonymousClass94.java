package com.facebook.ads.redexgen.X;

import android.os.Handler;
import android.os.HandlerThread;
import android.os.Looper;
import android.os.Message;
import android.util.Log;
import android.util.Pair;
import com.facebook.ads.androidx.media3.common.Timeline;
import com.facebook.video.heroplayer.exocustom.MetaExoPlayerCustomization;
import com.vungle.ads.internal.protos.Sdk;
import java.io.IOException;
import java.util.ArrayList;
import java.util.Arrays;
import java.util.Collections;

/* JADX INFO: renamed from: com.facebook.ads.redexgen.X.94, reason: invalid class name */
/* JADX INFO: loaded from: assets/audience_network/classes.dex */
public final class AnonymousClass94 implements Handler.Callback, InterfaceC1889Rm, InterfaceC2007Wh, InterfaceC1960Ui, OE, PQ {
    public static byte[] A0x;
    public static String[] A0y = {"V7LOnNnKVWAzDmFK1", "qbGJsunfr4nOx4s5LtEoXM", "PFWgoHZ2T2qZ3fKq8I4OSKPms9sSXf37", "nf9HZ1my0UATZzzU", "YRCnguRej62Uj0Zk0P8Neb", "VUjvLNrdG80qKjXcrRU5hDs84M59Leka", "aXxgxT1KOX0Xa318fmpzIfNCekz5hyHs", "WOPQi9hkKUsLSn4Yy8WAS8Q8pkFeAexf"};
    public int A00;
    public int A01;
    public int A02;
    public int A03;
    public long A04;
    public long A06;
    public OY A07;
    public C1813Oc A08;
    public PO A0A;

    @MetaExoPlayerCustomization
    public InterfaceC1909Sg A0B;
    public C1841Pj A0C;
    public InterfaceC1961Uj A0D;
    public boolean A0G;
    public boolean A0H;
    public boolean A0I;
    public boolean A0K;
    public boolean A0M;
    public boolean A0N;
    public boolean A0O;
    public boolean A0P;
    public boolean A0Q;
    public boolean A0R;
    public boolean A0S;
    public boolean A0T;
    public boolean A0U;
    public boolean A0V;
    public InterfaceC1909Sg[] A0W;
    public final long A0Y;
    public final long A0Z;
    public final Handler A0a;
    public final HandlerThread A0b;
    public final UM A0c;
    public final UK A0d;
    public final InterfaceC1754Lu A0e;
    public final MM A0f;
    public final C1925Sw A0g;
    public final C1812Ob A0h;
    public final InterfaceC1830Ot A0i;
    public final C1905Sc A0k;
    public final AbstractC2008Wi A0l;
    public final C2009Wj A0m;
    public final InterfaceC2018Ws A0n;
    public final C14238g A0o;
    public final ArrayList<C1811Oa> A0p;
    public final boolean A0q;
    public final boolean A0r;
    public final boolean A0s;
    public final boolean A0t;
    public final boolean A0u;
    public final InterfaceC1909Sg[] A0v;
    public final InterfaceC1838Pe[] A0w;
    public long A05 = -9223372036854775807L;

    @MetaExoPlayerCustomization
    public EnumC2047Xz A0E = EnumC2047Xz.A09;

    @MetaExoPlayerCustomization
    public boolean A0J = false;

    @MetaExoPlayerCustomization
    public PL A09 = null;

    @MetaExoPlayerCustomization
    public boolean A0L = false;

    @MetaExoPlayerCustomization
    public Integer A0F = null;
    public final P3 A0j = new P3();

    @MetaExoPlayerCustomization
    public final int A0X = A00();

    public static String A0D(int i, int i2, int i3) {
        byte[] bArrCopyOfRange = Arrays.copyOfRange(A0x, i, i + i2);
        for (int i4 = 0; i4 < bArrCopyOfRange.length; i4++) {
            bArrCopyOfRange[i4] = (byte) ((bArrCopyOfRange[i4] - i3) - 43);
        }
        return new String(bArrCopyOfRange);
    }

    /* JADX WARN: Failed to parse debug info
    java.lang.ArrayIndexOutOfBoundsException
     */
    /* JADX WARN: Removed duplicated region for block: B:122:0x02ac  */
    /* JADX WARN: Removed duplicated region for block: B:148:0x0323  */
    /* JADX WARN: Removed duplicated region for block: B:181:0x03cc  */
    /* JADX WARN: Removed duplicated region for block: B:240:0x045b A[SYNTHETIC] */
    /* JADX WARN: Removed duplicated region for block: B:47:0x012c  */
    /* JADX WARN: Removed duplicated region for block: B:49:0x0132  */
    /* JADX WARN: Removed duplicated region for block: B:62:0x0178  */
    /* JADX WARN: Removed duplicated region for block: B:74:0x01c4  */
    @com.facebook.video.heroplayer.exocustom.MetaExoPlayerCustomization
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct code enable 'Show inconsistent code' option in preferences
    */
    private void A0F() throws java.io.IOException, com.facebook.ads.redexgen.X.AnonymousClass96 {
        /*
            Method dump skipped, instruction units count: 1238
            To view this dump change 'Code comments level' option to 'DEBUG'
        */
        throw new UnsupportedOperationException("Method not decompiled: com.facebook.ads.redexgen.X.AnonymousClass94.A0F():void");
    }

    /* JADX WARN: Failed to parse debug info
    java.lang.ArrayIndexOutOfBoundsException
     */
    private void A0P() throws IOException, AnonymousClass96 {
        if (this.A0D == null) {
            return;
        }
        if (this.A02 > 0) {
            this.A0D.ADK();
            return;
        }
        A0J();
        C1836Oz c1836OzA0E = this.A0j.A0E();
        if (c1836OzA0E == null || c1836OzA0E.A0R()) {
            A0y(false);
        } else if (!this.A0A.A0A) {
            A0w(false);
        }
        if (this.A0j.A0N()) {
            C1836Oz c1836OzA0F = this.A0j.A0F();
            C1836Oz c1836OzA0G = this.A0j.A0G();
            boolean z = false;
            while (this.A0P && c1836OzA0F != c1836OzA0G && this.A06 >= c1836OzA0F.A0I().A0H(this.A0K)) {
                if (z) {
                    A0H();
                }
                int i = c1836OzA0F.A00.A07 ? 0 : 3;
                C1836Oz c1836Oz = c1836OzA0F;
                c1836OzA0F = this.A0j.A0B();
                A0g(c1836Oz);
                this.A0A = this.A0A.A06(c1836OzA0F.A00.A04, c1836OzA0F.A00.A03, c1836OzA0F.A00.A02, A01());
                this.A0h.A04(i);
                A0Q();
                z = true;
            }
            if (c1836OzA0G.A00.A05) {
                for (int i2 = 0; i2 < this.A0v.length; i2++) {
                    InterfaceC1909Sg interfaceC1909Sg = this.A0v[i2];
                    VF vf = c1836OzA0G.A09[i2];
                    if (vf != null && interfaceC1909Sg.A9q() == vf && interfaceC1909Sg.AAT()) {
                        interfaceC1909Sg.AKf();
                    }
                }
                return;
            }
            if (c1836OzA0G.A0I() != null) {
                C1836Oz c1836OzA0I = c1836OzA0G.A0I();
                String[] strArr = A0y;
                if (strArr[2].charAt(3) != strArr[6].charAt(3)) {
                    throw new RuntimeException();
                }
                String[] strArr2 = A0y;
                strArr2[2] = "vlqgs0RUkoFQrIiDX0CmgkZMmLc240b7";
                strArr2[6] = "nWdg0u9OQibN6Sxwo0vXlkGbYIP4kNJL";
                if (c1836OzA0I.A02) {
                    for (int i3 = 0; i3 < this.A0v.length; i3++) {
                        InterfaceC1909Sg interfaceC1909Sg2 = this.A0v[i3];
                        VF vf2 = c1836OzA0G.A09[i3];
                        if (interfaceC1909Sg2.A9q() != vf2) {
                            return;
                        }
                        if (vf2 != null && !interfaceC1909Sg2.AAT()) {
                            return;
                        }
                    }
                    C2009Wj c2009WjA0K = c1836OzA0G.A0K();
                    C1836Oz c1836OzA0C = this.A0j.A0C();
                    C2009Wj c2009WjA0K2 = c1836OzA0C.A0K();
                    boolean z2 = c1836OzA0C.A07.AId() != -9223372036854775807L;
                    for (int i4 = 0; i4 < this.A0v.length; i4++) {
                        InterfaceC1909Sg interfaceC1909Sg3 = this.A0v[i4];
                        if (c2009WjA0K.A00(i4)) {
                            if (z2) {
                                interfaceC1909Sg3.AKf();
                            } else if (!interfaceC1909Sg3.AB5()) {
                                RA ra = c2009WjA0K2.A04[i4];
                                boolean zA00 = c2009WjA0K2.A00(i4);
                                boolean z3 = this.A0w[i4].AA0() == -2;
                                C1839Ph c1839Ph = c2009WjA0K.A03[i4];
                                C1839Ph c1839Ph2 = c2009WjA0K2.A03[i4];
                                if (zA00 && c1839Ph2.equals(c1839Ph) && !z3) {
                                    VC[] vcArrA1A = A1A(ra);
                                    Log.e(A0D(0, 21, 90), A0D(392, 13, 14));
                                    interfaceC1909Sg3.AJs(vcArrA1A, c1836OzA0C.A09[i4], c1836OzA0C.A0H(this.A0K), c1836OzA0C.A0B());
                                } else {
                                    interfaceC1909Sg3.AKf();
                                }
                            }
                        }
                    }
                }
            }
        }
    }

    public static void A0R() {
        A0x = new byte[]{-54, -3, -12, -43, -15, -26, -2, -22, -9, -50, -14, -11, -15, -50, -13, -7, -22, -9, -13, -26, -15, -63, -12, -21, -52, -24, -35, -11, -31, -18, -59, -23, -20, -24, -59, -22, -16, -31, -18, -22, -35, -24, -74, -60, -35, -22, -32, -24, -31, -18, -105, -75, -68, -67, -64, -73, -68, -75, 110, -69, -77, -63, -63, -81, -75, -77, -63, 110, -63, -77, -68, -62, 110, -81, -76, -62, -77, -64, 110, -64, -77, -70, -77, -81, -63, -77, 124, -38, -1, 5, -10, 3, -1, -14, -3, -79, 3, 6, -1, 5, -6, -2, -10, -79, -10, 3, 3, 0, 3, -65, -66, -38, -49, -25, -48, -49, -47, -39, -114, -45, -32, -32, -35, -32, -100, -40, -12, -23, 1, -22, -23, -21, -13, -40, -9, -5, -15, -4, -15, -9, -10, -43, -5, -62, -88, -83, -20, -76, -88, -22, -3, -18, -18, -19, -6, -19, -20, -52, -3, -6, -23, -4, -15, -9, -10, -43, -5, -62, -88, -83, -20, -76, -88, -10, -19, 0, -4, -44, -9, -23, -20, -40, -9, -5, -15, -4, -15, -9, -10, -43, -5, -62, -88, -83, -20, -113, -85, -79, -82, -97, -95, 92, -95, -82, -82, -85, -82, 106, -97, -64, -69, -68, 108, -78, -83, -75, -72, -79, -80, 122, -96, -115, -109, -37, -20, -12, -9, -10, -7, -24, -7, -16, -13, 0, -89, -16, -18, -11, -10, -7, -16, -11, -18, -89, -6, -5, -7, -20, -24, -12, -89, -20, -7, -7, -10, -7, -63, -89, -49, -19, -12, -28, -23, -30, -101, -17, -22, -101, -18, -32, -23, -33, -101, -24, -32, -18, -18, -36, -30, -32, -101, -22, -23, -101, -36, -101, -33, -32, -36, -33, -101, -17, -29, -19, -32, -36, -33, -87, -107, -82, -91, -72, -80, -91, -93, -76, -91, -92, 96, -91, -78, -78, -81, -78, 96, -92, -91, -84, -87, -74, -91, -78, -87, -82, -89, 96, -83, -91, -77, -77, -95, -89, -91, 96, -81, -82, 96, -91, -72, -76, -91, -78, -82, -95, -84, 96, -76, -88, -78, -91, -95, -92, 110, -25, -14, -42, -14, -16, -24, -38, -14, -11, -18, 20, 12, 11, 16, 8, -9, 12, 25, 16, 22, 11, -16, 11, -11, -22, -9, -18, -12, -23, -43, -12, -8, -18, -7, -18, -12, -13, -38, -8, -85, -98, -87, -91, -102, -100, -98, -116, -83, -85, -98, -102, -90};
    }

    /* JADX WARN: Failed to parse debug info
    java.lang.ArrayIndexOutOfBoundsException
     */
    /* JADX WARN: Removed duplicated region for block: B:113:? A[PHI: r7 r10
      PHI (r7v5 com.facebook.ads.redexgen.X.Rk) = (r7v4 com.facebook.ads.redexgen.X.Rk), (r7v7 com.facebook.ads.redexgen.X.Rk) binds: [B:80:0x0227, B:69:0x01c6] A[DONT_GENERATE, DONT_INLINE]
      PHI (r10v2 long) = (r10v1 long), (r10v4 long) binds: [B:80:0x0227, B:69:0x01c6] A[DONT_GENERATE, DONT_INLINE], SYNTHETIC] */
    /* JADX WARN: Removed duplicated region for block: B:39:0x0106  */
    /* JADX WARN: Removed duplicated region for block: B:46:0x0140  */
    /* JADX WARN: Removed duplicated region for block: B:52:0x0157  */
    /* JADX WARN: Removed duplicated region for block: B:56:0x0168  */
    /* JADX WARN: Removed duplicated region for block: B:84:0x0230  */
    /* JADX WARN: Removed duplicated region for block: B:87:0x0243  */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct code enable 'Show inconsistent code' option in preferences
    */
    private void A0e(com.facebook.ads.redexgen.X.OZ r16) throws com.facebook.ads.redexgen.X.AnonymousClass96 {
        /*
            Method dump skipped, instruction units count: 685
            To view this dump change 'Code comments level' option to 'DEBUG'
        */
        throw new UnsupportedOperationException("Method not decompiled: com.facebook.ads.redexgen.X.AnonymousClass94.A0e(com.facebook.ads.redexgen.X.OZ):void");
    }

    /* JADX WARN: Failed to parse debug info
    java.lang.ArrayIndexOutOfBoundsException
     */
    private void A0f(C1813Oc c1813Oc) throws Throwable {
        long jLongValue;
        C1887Rk c1887RkA0K;
        long jLongValue2;
        boolean z;
        this.A0h.A03(1);
        Pair<Object, Long> pairA09 = A09(c1813Oc, true);
        if (pairA09 == null) {
            c1887RkA0K = A0A();
            jLongValue2 = -9223372036854775807L;
            jLongValue = -9223372036854775807L;
            z = true;
        } else {
            Object obj = pairA09.first;
            jLongValue = ((Long) pairA09.second).longValue();
            c1887RkA0K = this.A0j.A0K(this.A0A.A03, obj, jLongValue);
            if (c1887RkA0K.A00()) {
                jLongValue2 = 0;
                z = true;
            } else {
                jLongValue2 = ((Long) pairA09.second).longValue();
                z = c1813Oc.A01 == -9223372036854775807L;
            }
        }
        try {
            try {
                if (this.A0D == null || this.A02 > 0) {
                    this.A08 = c1813Oc;
                    this.A07 = null;
                } else {
                    try {
                        if (jLongValue2 == -9223372036854775807L) {
                            A0V(4);
                            A13(false, true, false);
                        } else {
                            long jA7R = jLongValue2;
                            if (c1887RkA0K.equals(this.A0A.A05)) {
                                C1836Oz c1836OzA0F = this.A0j.A0F();
                                if (c1836OzA0F != null && jA7R != 0) {
                                    jA7R = c1836OzA0F.A07.A7R(jA7R, this.A0C);
                                }
                                if (KN.A01(jA7R) == KN.A01(this.A0A.A0C)) {
                                    long j = this.A0A.A0C;
                                    if (A0y[0].length() == 23) {
                                        throw new RuntimeException();
                                    }
                                    A0y[0] = "O";
                                    this.A0A = this.A0A.A06(c1887RkA0K, j, jLongValue, A01());
                                    if (z) {
                                        this.A0h.A04(2);
                                        return;
                                    }
                                    return;
                                }
                            }
                            long jA06 = A06(c1887RkA0K, jA7R);
                            if (A0y[0].length() == 23) {
                                throw new RuntimeException();
                            }
                            String[] strArr = A0y;
                            strArr[2] = "AdUgjaV0Ab0D94aRqP4iuDamwgJulKlM";
                            strArr[6] = "aqIg77g4XpRwaHhRFXXablK0qmvOhaOW";
                            z |= jLongValue2 != jA06;
                            jLongValue2 = jA06;
                        }
                    } catch (Throwable th) {
                        th = th;
                        this.A0A = this.A0A.A06(c1887RkA0K, jLongValue2, jLongValue, A01());
                        if (z) {
                            this.A0h.A04(2);
                        }
                        throw th;
                    }
                }
                this.A0A = this.A0A.A06(c1887RkA0K, jLongValue2, jLongValue, A01());
                if (z) {
                    C1812Ob c1812Ob = this.A0h;
                    if (A0y[0].length() == 23) {
                        c1812Ob.A04(2);
                    } else {
                        A0y[3] = "3ENhASsm5rmJWuHqBwsDmH0VY";
                        c1812Ob.A04(2);
                    }
                }
            } catch (Throwable th2) {
                th = th2;
            }
        } catch (Throwable th3) {
            th = th3;
        }
    }

    static {
        A0R();
    }

    public AnonymousClass94(InterfaceC1909Sg[] interfaceC1909SgArr, AbstractC2008Wi abstractC2008Wi, C2009Wj c2009Wj, InterfaceC1830Ot interfaceC1830Ot, InterfaceC2018Ws interfaceC2018Ws, boolean z, int i, boolean z2, Handler handler, InterfaceC1754Lu interfaceC1754Lu, boolean z3, boolean z4, boolean z5, boolean z6, boolean z7, boolean z8, long j, boolean z9, int i2, boolean z10, boolean z11, boolean z12, boolean z13, boolean z14, boolean z15, QD qd) {
        this.A0v = interfaceC1909SgArr;
        this.A0l = abstractC2008Wi;
        this.A0m = c2009Wj;
        this.A0i = interfaceC1830Ot;
        this.A0n = interfaceC2018Ws;
        this.A0P = z;
        this.A03 = i;
        this.A0V = z2;
        this.A0a = handler;
        this.A0e = interfaceC1754Lu;
        this.A0U = z3;
        this.A0H = z4;
        this.A0G = z5;
        this.A0M = z6;
        this.A0I = z7;
        this.A0T = z8;
        this.A0Z = j;
        this.A0q = z9;
        this.A00 = i2;
        this.A0u = z11;
        this.A0s = z10;
        this.A0O = z12;
        this.A0Q = z13;
        this.A0K = z14;
        this.A0t = z15;
        this.A0N = j > 0;
        this.A0Y = interfaceC1830Ot.A7a(qd);
        this.A0r = interfaceC1830Ot.AK5(qd);
        this.A0C = C1841Pj.A04;
        this.A0A = new PO(Timeline.A02, -9223372036854775807L, RY.A06, c2009Wj);
        this.A0h = new C1812Ob();
        this.A0w = new InterfaceC1838Pe[interfaceC1909SgArr.length];
        for (int i3 = 0; i3 < interfaceC1909SgArr.length; i3++) {
            interfaceC1909SgArr[i3].AAn(i3, qd);
            this.A0w[i3] = interfaceC1909SgArr[i3].A7n();
        }
        this.A0g = new C1925Sw(this, interfaceC1754Lu);
        this.A0k = new C1905Sc(interfaceC1754Lu);
        this.A0o = z11 ? new C14238g(interfaceC1754Lu) : null;
        this.A0p = new ArrayList<>();
        this.A0W = new InterfaceC1909Sg[0];
        this.A0d = new UK();
        this.A0c = new UM();
        abstractC2008Wi.A02(this, interfaceC2018Ws);
        this.A0b = new HandlerThread(A0D(21, 29, 81), -16);
        this.A0b.start();
        this.A0f = interfaceC1754Lu.A5y(this.A0b.getLooper(), this);
    }

    @MetaExoPlayerCustomization
    private int A00() {
        int exoplayerThreadPollingIntervalMs = XL.A00(XP.A05);
        if (exoplayerThreadPollingIntervalMs > 0) {
            return exoplayerThreadPollingIntervalMs;
        }
        return 10;
    }

    private long A01() {
        return A04(this.A0A.A0B);
    }

    private final long A02() {
        long jA05;
        C1836Oz c1836OzA0E = this.A0j.A0E();
        if (c1836OzA0E == null) {
            jA05 = 0;
        } else {
            jA05 = A05(c1836OzA0E);
        }
        if (c1836OzA0E != null) {
            if (A0y[3].length() == 12) {
                throw new RuntimeException();
            }
            A0y[0] = "NlKykbJwrgmTyio5fGkj1P8nbZ";
            if (jA05 != -9223372036854775807L) {
                return c1836OzA0E.A0C(jA05);
            }
        }
        return 0L;
    }

    private final long A03() {
        long jA0C;
        C1836Oz c1836OzA0F = this.A0j.A0F();
        if (c1836OzA0F == null) {
            jA0C = 0;
        } else {
            jA0C = c1836OzA0F.A0C(c1836OzA0F.A0D(this.A06));
        }
        return jA0C + A02();
    }

    private long A04(long j) {
        C1836Oz c1836OzA0E = this.A0j.A0E();
        if (c1836OzA0E == null) {
            return 0L;
        }
        return j - c1836OzA0E.A0D(this.A06);
    }

    private final long A05(C1836Oz c1836Oz) {
        long jMin = Long.MAX_VALUE;
        VF[] vfArr = c1836Oz.A09;
        for (int i = 0; i < vfArr.length; i++) {
            if (vfArr[i] instanceof VG) {
                long periodStartPositionUs = ((VG) vfArr[i]).A8k();
                jMin = Math.min(jMin, periodStartPositionUs);
            }
        }
        if (jMin == Long.MAX_VALUE) {
            return -9223372036854775807L;
        }
        return jMin;
    }

    private long A06(C1887Rk c1887Rk, long j) throws AnonymousClass96 {
        return A07(false, c1887Rk, j, this.A0j.A0F() != this.A0j.A0G());
    }

    private long A07(boolean z, C1887Rk c1887Rk, long j, boolean z2) throws AnonymousClass96 {
        A0O();
        this.A0R = false;
        A0V(2);
        C1836Oz c1836OzA0F = this.A0j.A0F();
        C1836Oz c1836OzA0B = c1836OzA0F;
        while (true) {
            if (c1836OzA0B == null) {
                break;
            }
            if (A18(c1887Rk, j, c1836OzA0B)) {
                P3 p3 = this.A0j;
                String[] strArr = A0y;
                if (strArr[7].charAt(23) != strArr[5].charAt(23)) {
                    throw new RuntimeException();
                }
                String[] strArr2 = A0y;
                strArr2[2] = "6I9g8nXMnNi7m6K4b5mCrAODOHazff2B";
                strArr2[6] = "eJLgSW37jVFynHq6yjawEDHZuYTYTENO";
                p3.A0S(c1836OzA0B);
            } else {
                c1836OzA0B = this.A0j.A0B();
            }
        }
        if (c1836OzA0F != c1836OzA0B || z2) {
            for (InterfaceC1909Sg interfaceC1909Sg : this.A0W) {
                A0l(interfaceC1909Sg);
            }
            this.A0W = new InterfaceC1909Sg[0];
            c1836OzA0F = null;
        }
        if (c1836OzA0B != null) {
            A0g(c1836OzA0F);
            if (c1836OzA0B.A01) {
                j = c1836OzA0B.A07.AKQ(j, z);
                c1836OzA0B.A07.A6Z(j - this.A0Y, this.A0r);
            }
            A0Y(j);
            A0w(this.A0G);
        } else {
            P3 p32 = this.A0j;
            if (A0y[0].length() == 23) {
                throw new RuntimeException();
            }
            A0y[3] = "KsLWUfafMFVl0oq0FLzBTnM06m3W";
            p32.A0M(true);
            A0Y(j);
        }
        A0v(false);
        this.A0f.AKS(2);
        return j;
    }

    private Pair<Object, Long> A08(Timeline timeline, int i, long j) {
        return timeline.A0D(this.A0d, this.A0c, i, j);
    }

    private Pair<Object, Long> A09(C1813Oc c1813Oc, boolean z) {
        int iA0A;
        Timeline timeline = this.A0A.A03;
        Timeline timeline2 = c1813Oc.A02;
        if (timeline.A0N()) {
            return null;
        }
        if (timeline2.A0N()) {
            timeline2 = timeline;
        }
        try {
            Pair<Object, Long> periodPosition = timeline2.A0E(this.A0d, this.A0c, c1813Oc.A00, c1813Oc.A01);
            if (timeline == timeline2 || (iA0A = timeline.A0A(periodPosition.first)) != -1) {
                return periodPosition;
            }
            if (!z || A0C(periodPosition.first, timeline2, timeline) == null) {
                return null;
            }
            return A08(timeline, timeline.A0H(iA0A, this.A0c).A00, -9223372036854775807L);
        } catch (IndexOutOfBoundsException unused) {
            throw new C1715Kf(timeline, c1813Oc.A00, c1813Oc.A01);
        }
    }

    private C1887Rk A0A() {
        Timeline timeline = this.A0A.A03;
        if (timeline.A0N()) {
            C1887Rk c1887Rk = PO.A0E;
            if (A0y[0].length() == 23) {
                throw new RuntimeException();
            }
            String[] strArr = A0y;
            strArr[7] = "bsPJ13rl3n5J49dK7jGsNwW8My4JNdE3";
            strArr[5] = "Ighp6K8NjMgLNKS2uWadKWl8N8XhdIxh";
            return c1887Rk;
        }
        return new C1887Rk(timeline.A0M(timeline.A0K(timeline.A0B(this.A0V), this.A0d).A00));
    }

    @MetaExoPlayerCustomization
    private final Integer A0B() {
        PK playbackLatencyConfig;
        if (this.A09 != null && (playbackLatencyConfig = this.A09.A02()) != null) {
            Integer numValueOf = Integer.valueOf(playbackLatencyConfig.A00());
            String[] strArr = A0y;
            if (strArr[2].charAt(3) != strArr[6].charAt(3)) {
                throw new RuntimeException();
            }
            A0y[3] = "QovaUqshJZk4srjbR";
            return numValueOf;
        }
        return null;
    }

    private Object A0C(Object obj, Timeline timeline, Timeline timeline2) {
        int iA0A = timeline.A0A(obj);
        int i = -1;
        int maxIterations = timeline.A06();
        for (int newPeriodIndex = 0; newPeriodIndex < maxIterations && i == -1 && (iA0A = timeline.A09(iA0A, this.A0c, this.A0d, this.A03, this.A0V)) != -1; newPeriodIndex++) {
            i = timeline2.A0A(timeline.A0M(iA0A));
        }
        if (i == -1) {
            return null;
        }
        return timeline2.A0M(i);
    }

    private void A0E() {
        C1836Oz c1836OzA0E = this.A0j.A0E();
        if (c1836OzA0E == null) {
            return;
        }
        c1836OzA0E.A07.A5O(c1836OzA0E.A0D(this.A06));
    }

    private void A0G() {
        A0V(4);
        A13(false, true, false);
    }

    private void A0H() {
        int i;
        if (this.A0h.A06(this.A0A)) {
            Handler handler = this.A0a;
            int i2 = this.A0h.A01;
            if (!this.A0h.A03) {
                i = -1;
            } else {
                i = this.A0h.A00;
            }
            handler.obtainMessage(0, i2, i, this.A0A).sendToTarget();
            this.A0h.A05(this.A0A);
        }
    }

    private void A0I() throws IOException {
        C1836Oz c1836OzA0E = this.A0j.A0E();
        C1836Oz readingPeriodHolder = this.A0j.A0G();
        if (c1836OzA0E != null && !c1836OzA0E.A02) {
            if (readingPeriodHolder != null) {
                C1836Oz loadingPeriodHolder = readingPeriodHolder.A0I();
                if (loadingPeriodHolder != c1836OzA0E) {
                    return;
                }
            }
            for (InterfaceC1909Sg interfaceC1909Sg : this.A0W) {
                if (!interfaceC1909Sg.AAT()) {
                    return;
                }
            }
            c1836OzA0E.A07.ADJ();
        }
    }

    private void A0J() throws IOException {
        this.A0j.A0L(this.A06);
        if (this.A0j.A0O()) {
            P0 p0A0H = this.A0j.A0H(this.A06, this.A0A);
            if (p0A0H == null) {
                this.A0D.ADK();
                return;
            }
            this.A0j.A0J(this.A0w, this.A0t ? 60000000L : 0L, this.A0l, this.A0i.A7V(), this.A0D, p0A0H, this.A0m).AII(this, p0A0H.A03);
            A0y(true);
            A0v(false);
        }
    }

    private void A0K() {
        A13(true, true, true);
        this.A0i.AGj(QD.A03);
        A0V(1);
        this.A0b.quit();
        synchronized (this) {
            this.A0S = true;
            notifyAll();
        }
    }

    /* JADX WARN: Removed duplicated region for block: B:36:0x00de  */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct code enable 'Show inconsistent code' option in preferences
    */
    private void A0L() throws com.facebook.ads.redexgen.X.AnonymousClass96 {
        /*
            Method dump skipped, instruction units count: 359
            To view this dump change 'Code comments level' option to 'DEBUG'
        */
        throw new UnsupportedOperationException("Method not decompiled: com.facebook.ads.redexgen.X.AnonymousClass94.A0L():void");
    }

    private void A0M() {
        for (int size = this.A0p.size() - 1; size >= 0; size--) {
            if (!A16(this.A0p.get(size))) {
                this.A0p.get(size).A03.A0A(false);
                this.A0p.remove(size);
            }
        }
        Collections.sort(this.A0p);
    }

    private void A0N() throws AnonymousClass96 {
        this.A0R = false;
        this.A0g.A05();
        this.A0k.A00();
        if (this.A0u) {
            this.A0o.A00();
        }
        for (InterfaceC1909Sg interfaceC1909Sg : this.A0W) {
            interfaceC1909Sg.start();
        }
    }

    private void A0O() throws AnonymousClass96 {
        this.A0g.A06();
        this.A0k.A01();
        if (this.A0u) {
            this.A0o.A01();
        }
        for (InterfaceC1909Sg interfaceC1909Sg : this.A0W) {
            A0m(interfaceC1909Sg);
        }
    }

    private void A0Q() throws AnonymousClass96 {
        if (!this.A0j.A0N()) {
            return;
        }
        C1836Oz c1836OzA0F = this.A0j.A0F();
        long jAId = c1836OzA0F.A07.AId();
        if (jAId != -9223372036854775807L) {
            A0Y(jAId);
            if (jAId != this.A0A.A0C) {
                this.A0A = this.A0A.A06(this.A0A.A05, jAId, this.A0A.A01, A01());
                this.A0h.A04(4);
            }
        } else {
            C1925Sw c1925Sw = this.A0g;
            C1836Oz playingPeriodHolder = this.A0j.A0G();
            this.A06 = c1925Sw.A04(c1836OzA0F != playingPeriodHolder);
            long jA0D = c1836OzA0F.A0D(this.A06);
            A0Z(this.A0A.A0C, jA0D);
            this.A0A.A0C = jA0D;
        }
        C1836Oz playingPeriodHolder2 = this.A0j.A0E();
        this.A0A.A0B = playingPeriodHolder2.A09();
        this.A0A.A0D = A01();
        this.A0A.A0D = c1836OzA0F.A0C(this.A0A.A0C);
    }

    private void A0S(byte b) {
        C1836Oz c1836OzA0E = this.A0j.A0E();
        if (c1836OzA0E == null) {
            return;
        }
        boolean z = this.A0U;
        String[] strArr = A0y;
        if (strArr[2].charAt(3) != strArr[6].charAt(3)) {
            throw new RuntimeException();
        }
        A0y[3] = "VEAQSuu4VRt";
        if (z) {
            c1836OzA0E.A07.ALv(b);
        }
    }

    private void A0T(float f) {
        for (C1836Oz c1836OzA0D = this.A0j.A0D(); c1836OzA0D != null && c1836OzA0D.A02; c1836OzA0D = c1836OzA0D.A0I()) {
            for (RA ra : c1836OzA0D.A0K().A04) {
                String[] strArr = A0y;
                if (strArr[1].length() != strArr[4].length()) {
                    throw new RuntimeException();
                }
                A0y[3] = "P9IRws7W1EDCkNOvHraHDrI7lUWSP";
                if (ra != null) {
                    ra.AGO(f);
                }
            }
        }
    }

    private void A0U(int i) throws AnonymousClass96 {
        this.A03 = i;
        if (!this.A0j.A0P(this.A0A.A03, i)) {
            A0x(true);
        }
        A0v(false);
    }

    private void A0V(int i) {
        if (this.A0A.A00 != i) {
            this.A0A = this.A0A.A01(i);
            if (i == 2) {
                this.A04 = System.currentTimeMillis();
            } else {
                this.A04 = -1L;
            }
        }
    }

    private void A0W(int i, boolean z) {
        if (this.A0A.A00 != i) {
            this.A0A = this.A0A.A03(i, z);
            if (i == 2) {
                this.A04 = System.currentTimeMillis();
            } else {
                this.A04 = -1L;
            }
        }
    }

    private void A0X(int i, boolean playing, int i2) throws AnonymousClass96 {
        C1836Oz c1836OzA0F = this.A0j.A0F();
        InterfaceC1909Sg interfaceC1909Sg = this.A0v[i];
        this.A0W[i2] = interfaceC1909Sg;
        if (interfaceC1909Sg.A9n() == 0) {
            C1836Oz c1836OzA0G = this.A0j.A0G();
            C1836Oz playingPeriodHolder = this.A0j.A0F();
            boolean z = c1836OzA0G == playingPeriodHolder;
            C1839Ph c1839Ph = c1836OzA0F.A0K().A03[i];
            VC[] vcArrA1A = A1A(c1836OzA0F.A0K().A04[i]);
            boolean z2 = this.A0P && this.A0A.A00 == 3;
            interfaceC1909Sg.A6u(c1839Ph, vcArrA1A, c1836OzA0F.A09[i], this.A06, !playing && z2, z, c1836OzA0G.A0H(this.A0K), c1836OzA0F.A0B());
            this.A0g.A09(interfaceC1909Sg);
            if (z2) {
                interfaceC1909Sg.start();
            }
        }
    }

    private void A0Y(long j) throws AnonymousClass96 {
        long jA0E;
        if (this.A0j.A0N()) {
            C1836Oz c1836OzA0F = this.A0j.A0F();
            if (A0y[3].length() != 12) {
                A0y[3] = "gm32eCRdLq0rqc1zq4Eo7nnEt6Z5RQbS";
                jA0E = c1836OzA0F.A0E(j);
            }
            throw new RuntimeException();
        }
        jA0E = ((long) (this.A0t ? 60000000 : 0)) + j;
        this.A06 = jA0E;
        this.A0g.A07(this.A06);
        for (InterfaceC1909Sg interfaceC1909Sg : this.A0W) {
            if (A0y[3].length() == 12) {
                throw new RuntimeException();
            }
            A0y[3] = "pzEnwAu3poIfrN1lXWR";
            interfaceC1909Sg.AK4(this.A06);
        }
    }

    private void A0Z(long j, long j2) throws AnonymousClass96 {
        C1811Oa c1811Oa;
        C1811Oa c1811Oa2;
        if (this.A0p.isEmpty() || this.A0A.A05.A00()) {
            return;
        }
        if (this.A0A.A02 == j) {
            j--;
        }
        int iA0A = this.A0A.A03.A0A(this.A0A.A05.A04);
        int currentPeriodIndex = this.A01;
        if (currentPeriodIndex > 0) {
            ArrayList<C1811Oa> arrayList = this.A0p;
            int currentPeriodIndex2 = this.A01;
            c1811Oa = arrayList.get(currentPeriodIndex2 - 1);
        } else {
            c1811Oa = null;
        }
        while (c1811Oa != null && (c1811Oa.A00 > iA0A || (c1811Oa.A00 == iA0A && c1811Oa.A01 > j))) {
            int currentPeriodIndex3 = this.A01;
            this.A01 = currentPeriodIndex3 - 1;
            int currentPeriodIndex4 = this.A01;
            if (currentPeriodIndex4 > 0) {
                ArrayList<C1811Oa> arrayList2 = this.A0p;
                int currentPeriodIndex5 = this.A01;
                c1811Oa = arrayList2.get(currentPeriodIndex5 - 1);
            } else {
                c1811Oa = null;
            }
        }
        int i = this.A01;
        int currentPeriodIndex6 = this.A0p.size();
        if (i < currentPeriodIndex6) {
            ArrayList<C1811Oa> arrayList3 = this.A0p;
            int currentPeriodIndex7 = this.A01;
            c1811Oa2 = arrayList3.get(currentPeriodIndex7);
        } else {
            c1811Oa2 = null;
        }
        while (c1811Oa2 != null && c1811Oa2.A02 != null) {
            int currentPeriodIndex8 = c1811Oa2.A00;
            if (currentPeriodIndex8 >= iA0A) {
                int currentPeriodIndex9 = c1811Oa2.A00;
                if (currentPeriodIndex9 != iA0A || c1811Oa2.A01 > j) {
                    break;
                }
            }
            int currentPeriodIndex10 = this.A01;
            this.A01 = currentPeriodIndex10 + 1;
            int i2 = this.A01;
            int currentPeriodIndex11 = this.A0p.size();
            if (i2 < currentPeriodIndex11) {
                ArrayList<C1811Oa> arrayList4 = this.A0p;
                int currentPeriodIndex12 = this.A01;
                c1811Oa2 = arrayList4.get(currentPeriodIndex12);
            } else {
                c1811Oa2 = null;
            }
        }
        while (c1811Oa2 != null && c1811Oa2.A02 != null) {
            int currentPeriodIndex13 = c1811Oa2.A00;
            if (currentPeriodIndex13 == iA0A && c1811Oa2.A01 > j && c1811Oa2.A01 <= j2) {
                A0j(c1811Oa2.A03);
                if (c1811Oa2.A03.A0B() || c1811Oa2.A03.A0D()) {
                    ArrayList<C1811Oa> arrayList5 = this.A0p;
                    int currentPeriodIndex14 = this.A01;
                    arrayList5.remove(currentPeriodIndex14);
                } else {
                    int currentPeriodIndex15 = this.A01;
                    this.A01 = currentPeriodIndex15 + 1;
                }
                int i3 = this.A01;
                int size = this.A0p.size();
                if (A0y[0].length() == 23) {
                    throw new RuntimeException();
                }
                A0y[0] = "nUTbS4fmBqJu15";
                if (i3 < size) {
                    ArrayList<C1811Oa> arrayList6 = this.A0p;
                    int currentPeriodIndex16 = this.A01;
                    c1811Oa2 = arrayList6.get(currentPeriodIndex16);
                } else {
                    c1811Oa2 = null;
                }
            } else {
                return;
            }
        }
    }

    private void A0a(long j, long j2) {
        this.A0f.AJk(2);
        this.A0f.AKT(2, j + j2);
    }

    private void A0b(UW uw) {
        this.A0g.AKv(uw);
        if (this.A0o != null) {
            this.A0o.AKv(uw);
        }
        if (this.A0k != null) {
            this.A0k.AKv(uw);
        }
    }

    private void A0c(OY oy) throws AnonymousClass96 {
        throw new NullPointerException(A0D(376, 16, 90));
    }

    private void A0d(OY oy, boolean z) throws AnonymousClass96 {
        this.A0h.A03(1);
        throw new NullPointerException(A0D(363, 13, Sdk.SDKError.Reason.INVALID_LOG_ERROR_ENDPOINT_VALUE));
    }

    private void A0g(C1836Oz c1836Oz) throws AnonymousClass96 {
        C1836Oz c1836OzA0F = this.A0j.A0F();
        if (c1836OzA0F == null || c1836Oz == c1836OzA0F) {
            return;
        }
        int i = 0;
        InterfaceC1909Sg[] interfaceC1909SgArr = this.A0v;
        String[] strArr = A0y;
        String str = strArr[7];
        String str2 = strArr[5];
        int enabledRendererCount = str.charAt(23);
        if (enabledRendererCount != str2.charAt(23)) {
            throw new RuntimeException();
        }
        A0y[3] = "w30ODDHpCkllKfiA33pkNjzirieGc";
        boolean[] zArr = new boolean[interfaceC1909SgArr.length];
        for (int enabledRendererCount2 = 0; enabledRendererCount2 < this.A0v.length; enabledRendererCount2++) {
            InterfaceC1909Sg interfaceC1909Sg = this.A0v[enabledRendererCount2];
            zArr[enabledRendererCount2] = interfaceC1909Sg.A9n() != 0;
            if (c1836OzA0F.A0K().A00(enabledRendererCount2)) {
                i++;
            }
            if (zArr[enabledRendererCount2] && (!c1836OzA0F.A0K().A00(enabledRendererCount2) || (interfaceC1909Sg.AB5() && interfaceC1909Sg.A9q() == c1836Oz.A09[enabledRendererCount2]))) {
                A0l(interfaceC1909Sg);
            }
        }
        this.A0A = this.A0A.A07(c1836OzA0F.A0J(), c1836OzA0F.A0K());
        A14(zArr, i);
    }

    private void A0h(PS ps) throws AnonymousClass96 {
        if (ps.A0D()) {
            return;
        }
        try {
            ps.A05().AAM(ps.A01(), ps.A09());
        } finally {
            ps.A0A(true);
        }
    }

    private void A0i(PS ps) throws AnonymousClass96 {
        if (ps.A02() == -9223372036854775807L) {
            A0j(ps);
            return;
        }
        if (this.A0D == null || this.A02 > 0) {
            this.A0p.add(new C1811Oa(ps));
            return;
        }
        C1811Oa c1811Oa = new C1811Oa(ps);
        if (A16(c1811Oa)) {
            this.A0p.add(c1811Oa);
            Collections.sort(this.A0p);
        } else {
            ps.A0A(false);
        }
    }

    private void A0j(PS ps) throws AnonymousClass96 {
        if (ps.A03() == this.A0f.A93()) {
            A0h(ps);
            if (this.A0A.A00 != 3) {
                int i = this.A0A.A00;
                if (A0y[0].length() == 23) {
                    throw new RuntimeException();
                }
                A0y[3] = "t0f3bO3gOY3jtjNmCxEXqfo";
                if (i != 2) {
                    return;
                }
            }
            this.A0f.AKS(2);
            return;
        }
        this.A0f.ADa(15, ps).A02();
    }

    private void A0k(final PS ps) {
        Looper looperA03 = ps.A03();
        if (!looperA03.getThread().isAlive()) {
            Log.w(A0D(Sdk.SDKError.Reason.AD_RESPONSE_RETRY_AFTER_VALUE, 3, 33), A0D(258, 40, 80));
            ps.A0A(false);
        } else {
            this.A0e.A5y(looperA03, null).A03(new Runnable() { // from class: com.facebook.ads.redexgen.X.OW
                @Override // java.lang.Runnable
                public final void run() {
                    this.A00.A1E(ps);
                }
            });
        }
    }

    private void A0l(InterfaceC1909Sg interfaceC1909Sg) throws AnonymousClass96 {
        this.A0g.A08(interfaceC1909Sg);
        A0m(interfaceC1909Sg);
        interfaceC1909Sg.A6W();
    }

    private void A0m(InterfaceC1909Sg interfaceC1909Sg) throws AnonymousClass96 {
        if (interfaceC1909Sg.A9n() == 2) {
            interfaceC1909Sg.stop();
        }
    }

    private void A0n(C1841Pj c1841Pj) {
        this.A0C = c1841Pj;
    }

    private void A0o(InterfaceC1888Rl interfaceC1888Rl) {
        if (!this.A0j.A0T(interfaceC1888Rl)) {
            return;
        }
        this.A0j.A0L(this.A06);
        A0w(false);
    }

    private void A0p(InterfaceC1888Rl interfaceC1888Rl) throws AnonymousClass96 {
        byte b;
        if (!this.A0j.A0T(interfaceC1888Rl)) {
            return;
        }
        C1836Oz c1836OzA0E = this.A0j.A0E();
        c1836OzA0E.A0N(this.A0g.A9P().A01, this.A0A.A03);
        A0s(c1836OzA0E.A0J(), c1836OzA0E.A0K());
        if (!this.A0j.A0N()) {
            C1836Oz loadingPeriodHolder = this.A0j.A0B();
            A0Y(loadingPeriodHolder.A00.A03);
            A0g(null);
        }
        if (this.A0M || this.A0P) {
            b = 0;
        } else {
            b = 2;
        }
        A0S(b);
        A10(this.A0P);
        A0w(false);
    }

    /* JADX INFO: Access modifiers changed from: private */
    @Override // com.facebook.ads.redexgen.X.VI
    /* JADX INFO: renamed from: A0q, reason: merged with bridge method [inline-methods] */
    public final void AEW(InterfaceC1888Rl interfaceC1888Rl) {
        this.A0f.ADa(10, interfaceC1888Rl).A02();
    }

    private void A0r(InterfaceC1961Uj interfaceC1961Uj, boolean z, boolean z2) {
        this.A02++;
        A13(true, z, z2);
        this.A0i.AGW(QD.A03);
        this.A0D = interfaceC1961Uj;
        A0V(2);
        interfaceC1961Uj.AIK(this, null);
        this.A0f.AKS(2);
    }

    private void A0s(RY ry, C2009Wj c2009Wj) {
        this.A0i.AHO(new C1829Os(QD.A03, this.A0A.A03, this.A0A.A04, this.A0A.A0C, A01(), this.A0g.A9P().A01, this.A0P, this.A0R, -9223372036854775807L, this.A04), ry, c2009Wj.A04);
    }

    @MetaExoPlayerCustomization
    private void A0t(EnumC2047Xz enumC2047Xz, boolean z) {
        if (this.A0A.A00 != 3) {
            this.A0A = this.A0A.A02(3, enumC2047Xz, z);
            this.A04 = -1L;
        }
    }

    @MetaExoPlayerCustomization
    private void A0u(String str) {
        boolean z = false;
        if (str == null) {
            this.A0J = false;
            this.A09 = null;
            return;
        }
        if (str != null && str.length() > 0) {
            z = true;
        }
        this.A0J = z;
        this.A09 = new PL(str);
    }

    private void A0v(boolean z) {
        C1836Oz c1836OzA0E = this.A0j.A0E();
        C1887Rk c1887Rk = c1836OzA0E == null ? this.A0A.A05 : c1836OzA0E.A00.A04;
        boolean z2 = !this.A0A.A04.equals(c1887Rk);
        if (z2) {
            this.A0A = this.A0A.A05(c1887Rk);
        }
        if ((z2 || z) && c1836OzA0E != null && c1836OzA0E.A02) {
            A0s(c1836OzA0E.A0J(), c1836OzA0E.A0K());
        }
    }

    @MetaExoPlayerCustomization
    private void A0w(boolean z) {
        long bufferedDurationUs;
        C1836Oz c1836OzA0E = this.A0j.A0E();
        long jA0A = c1836OzA0E.A0A();
        if (jA0A == Long.MIN_VALUE) {
            A0y(false);
            return;
        }
        long jA0D = c1836OzA0E.A0D(this.A06);
        if (!this.A0s || c1836OzA0E == this.A0j.A0F() || this.A0j.A0F() == null) {
            bufferedDurationUs = c1836OzA0E.A0C(jA0D);
            if (this.A0O) {
                for (C1836Oz c1836OzA0F = this.A0j.A0F(); c1836OzA0F != null && c1836OzA0F != c1836OzA0E; c1836OzA0F = c1836OzA0F.A0I()) {
                    long nextLoadPositionUs = this.A06;
                    bufferedDurationUs += c1836OzA0F.A0C(c1836OzA0F.A0D(nextLoadPositionUs));
                }
            }
        } else {
            bufferedDurationUs = A02();
        }
        Timeline timeline = this.A0A.A03;
        C1887Rk c1887Rk = c1836OzA0E.A00.A04;
        float f = this.A0g.A9P().A01;
        boolean z2 = this.A0P || z;
        boolean z3 = this.A0R;
        long nextLoadPositionUs2 = this.A04;
        boolean zALD = this.A0i.ALD(new C1829Os(null, timeline, c1887Rk, jA0D, bufferedDurationUs, f, z2, z3, -9223372036854775807L, nextLoadPositionUs2));
        if (this.A0T && this.A0P && this.A0R && !zALD && this.A0A.A00 == 2) {
            Long lValueOf = Long.valueOf(jA0D / 1000);
            Long lValueOf2 = Long.valueOf(bufferedDurationUs / 1000);
            Long lValueOf3 = Long.valueOf(jA0A / 1000);
            Object[] objArr = new Object[3];
            objArr[0] = lValueOf;
            String[] strArr = A0y;
            if (strArr[7].charAt(23) != strArr[5].charAt(23)) {
                throw new RuntimeException();
            }
            String[] strArr2 = A0y;
            strArr2[7] = "WJhF1Ecrv142FuvP5okeHHT8V6pp9rAL";
            strArr2[5] = "6Ig3UIfBKpiYKMeNApIXqF48c4Xy8jiR";
            objArr[1] = lValueOf2;
            objArr[2] = lValueOf3;
            this.A0a.obtainMessage(5, N1.A0n(A0D(Sdk.SDKError.Reason.INVALID_METRICS_ENDPOINT_VALUE, 70, 93), objArr)).sendToTarget();
            this.A0T = false;
        }
        A0y(zALD);
        if (zALD) {
            c1836OzA0E.A0O(this.A06);
        }
    }

    private void A0x(boolean z) throws AnonymousClass96 {
        C1887Rk c1887Rk = this.A0j.A0F().A00.A04;
        long jA07 = A07(false, c1887Rk, this.A0A.A0C, true);
        if (jA07 != this.A0A.A0C) {
            this.A0A = this.A0A.A06(c1887Rk, jA07, this.A0A.A01, A01());
            if (z) {
                this.A0h.A04(4);
            }
        }
    }

    private void A0y(boolean z) {
        if (this.A0A.A0A != z) {
            this.A0A = this.A0A.A08(z);
        }
    }

    private void A0z(boolean z) throws AnonymousClass96 {
        try {
            this.A0R = false;
            this.A0P = z;
            A10(z);
            if (!z) {
                A0O();
                A0Q();
                A0S((byte) 2);
                if (this.A0I) {
                    A0E();
                }
            } else {
                A0S((byte) 0);
                if (this.A0A.A00 != 3) {
                    if (this.A0A.A00 == 2) {
                        this.A0f.AKS(2);
                    }
                } else {
                    A0N();
                    this.A0f.AKS(2);
                }
            }
        } finally {
            this.A0a.obtainMessage(3, Boolean.valueOf(z)).sendToTarget();
        }
    }

    @MetaExoPlayerCustomization
    private void A10(boolean z) {
        C1836Oz loadingPeriod = this.A0j.A0E();
        if (loadingPeriod == null) {
            return;
        }
        loadingPeriod.A07.AKu(z);
    }

    private void A11(boolean z) throws AnonymousClass96 {
        this.A0V = z;
        if (!this.A0j.A0R(this.A0A.A03, z)) {
            A0x(true);
        }
        A0v(false);
    }

    private void A12(boolean z, boolean z2) {
        A13(true, z, z);
        this.A0h.A03(this.A02 + (z2 ? 1 : 0));
        this.A02 = 0;
        this.A0i.AHD(QD.A03);
        A0V(1);
    }

    /* JADX WARN: Removed duplicated region for block: B:38:0x00ee  */
    /* JADX WARN: Removed duplicated region for block: B:41:0x00f9  */
    /* JADX WARN: Removed duplicated region for block: B:45:0x0100  */
    /* JADX WARN: Removed duplicated region for block: B:48:0x0108  */
    /* JADX WARN: Removed duplicated region for block: B:52:0x011f  */
    /* JADX WARN: Removed duplicated region for block: B:53:0x0124  */
    /* JADX WARN: Removed duplicated region for block: B:54:0x0129  */
    /* JADX WARN: Removed duplicated region for block: B:55:0x012e  */
    /* JADX WARN: Removed duplicated region for block: B:56:0x0133  */
    /* JADX WARN: Removed duplicated region for block: B:57:0x0138  */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct code enable 'Show inconsistent code' option in preferences
    */
    private void A13(boolean r24, boolean r25, boolean r26) {
        /*
            Method dump skipped, instruction units count: 356
            To view this dump change 'Code comments level' option to 'DEBUG'
        */
        throw new UnsupportedOperationException("Method not decompiled: com.facebook.ads.redexgen.X.AnonymousClass94.A13(boolean, boolean, boolean):void");
    }

    /* JADX WARN: Incorrect condition in loop: B:4:0x000f */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct code enable 'Show inconsistent code' option in preferences
    */
    private void A14(boolean[] r6, int r7) throws com.facebook.ads.redexgen.X.AnonymousClass96 {
        /*
            r5 = this;
            com.facebook.ads.redexgen.X.Sg[] r0 = new com.facebook.ads.redexgen.X.InterfaceC1909Sg[r7]
            r5.A0W = r0
            r4 = 0
            com.facebook.ads.redexgen.X.P3 r0 = r5.A0j
            com.facebook.ads.redexgen.X.Oz r3 = r0.A0F()
            r2 = 0
        Lc:
            com.facebook.ads.redexgen.X.Sg[] r0 = r5.A0v
            int r0 = r0.length
            if (r2 >= r0) goto L26
            com.facebook.ads.redexgen.X.Wj r0 = r3.A0K()
            boolean r0 = r0.A00(r2)
            if (r0 == 0) goto L23
            boolean r1 = r6[r2]
            int r0 = r4 + 1
            r5.A0X(r2, r1, r4)
            r4 = r0
        L23:
            int r2 = r2 + 1
            goto Lc
        L26:
            return
        */
        throw new UnsupportedOperationException("Method not decompiled: com.facebook.ads.redexgen.X.AnonymousClass94.A14(boolean[], int):void");
    }

    private boolean A15() {
        C1836Oz playingPeriodHolder = this.A0j.A0F();
        C1836Oz c1836OzA0I = playingPeriodHolder.A0I();
        long j = playingPeriodHolder.A00.A00;
        if (j != -9223372036854775807L && this.A0A.A0C >= j) {
            if (c1836OzA0I != null) {
                boolean z = c1836OzA0I.A02;
                if (A0y[3].length() == 12) {
                    throw new RuntimeException();
                }
                String[] strArr = A0y;
                strArr[2] = "p5qgNsqC07O3sn5zMTCvUsUojo8flDk4";
                strArr[6] = "diRgkTXvULwHDW9TSrZOZwwJ4nDx211Y";
                if (z || c1836OzA0I.A00.A04.A00()) {
                }
            }
            return false;
        }
        return true;
    }

    private boolean A16(C1811Oa c1811Oa) {
        if (c1811Oa.A02 == null) {
            Pair<Object, Long> pairA09 = A09(new C1813Oc(c1811Oa.A03.A04(), c1811Oa.A03.A00(), KN.A00(c1811Oa.A03.A02())), false);
            if (pairA09 == null) {
                return false;
            }
            c1811Oa.A01(this.A0A.A03.A0A(pairA09.first), ((Long) pairA09.second).longValue(), pairA09.first);
            return true;
        }
        int iA0A = this.A0A.A03.A0A(c1811Oa.A02);
        if (iA0A == -1) {
            return false;
        }
        c1811Oa.A00 = iA0A;
        return true;
    }

    private boolean A17(InterfaceC1909Sg interfaceC1909Sg) {
        C1836Oz c1836OzA0G = this.A0j.A0G();
        C1836Oz readingPeriodHolder = c1836OzA0G.A0I();
        if (readingPeriodHolder != null) {
            C1836Oz readingPeriodHolder2 = c1836OzA0G.A0I();
            if (readingPeriodHolder2.A02 && interfaceC1909Sg.AAT()) {
                return true;
            }
        }
        return false;
    }

    private boolean A18(C1887Rk c1887Rk, long j, C1836Oz c1836Oz) {
        if (c1887Rk.equals(c1836Oz.A00.A04) && c1836Oz.A02) {
            this.A0A.A03.A0J(this.A0A.A05.A04, this.A0c);
            int iA07 = this.A0c.A07(j);
            if (iA07 == -1 || this.A0c.A0D(iA07) == c1836Oz.A00.A01) {
                return true;
            }
        }
        if (A0y[3].length() == 12) {
            throw new RuntimeException();
        }
        String[] strArr = A0y;
        strArr[2] = "VTjge75r9zp7bTg7i0fbMFsnvVRfhHFl";
        strArr[6] = "aqpgEou7PWWKkJ5NZ7srCaljLs9niom5";
        return false;
    }

    /* JADX WARN: Removed duplicated region for block: B:51:0x00f7  */
    @com.facebook.video.heroplayer.exocustom.MetaExoPlayerCustomizations
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct code enable 'Show inconsistent code' option in preferences
    */
    private boolean A19(boolean r20) {
        /*
            Method dump skipped, instruction units count: 263
            To view this dump change 'Code comments level' option to 'DEBUG'
        */
        throw new UnsupportedOperationException("Method not decompiled: com.facebook.ads.redexgen.X.AnonymousClass94.A19(boolean):boolean");
    }

    public static VC[] A1A(InterfaceC2003Wc interfaceC2003Wc) {
        int length = interfaceC2003Wc != null ? interfaceC2003Wc.length() : 0;
        VC[] vcArr = new VC[length];
        for (int i = 0; i < length; i++) {
            vcArr[i] = interfaceC2003Wc.A8m(i);
        }
        return vcArr;
    }

    public final Looper A1B() {
        return this.A0b.getLooper();
    }

    /* JADX WARN: Incorrect condition in loop: B:9:0x0010 */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct code enable 'Show inconsistent code' option in preferences
    */
    public final synchronized void A1C() {
        /*
            r2 = this;
            monitor-enter(r2)
            boolean r0 = r2.A0S     // Catch: java.lang.Throwable -> L23
            if (r0 == 0) goto L7
            monitor-exit(r2)
            return
        L7:
            com.facebook.ads.redexgen.X.MM r1 = r2.A0f     // Catch: java.lang.Throwable -> L23
            r0 = 7
            r1.AKS(r0)     // Catch: java.lang.Throwable -> L23
            r1 = 0
        Le:
            boolean r0 = r2.A0S     // Catch: java.lang.Throwable -> L23
            if (r0 != 0) goto L18
            r2.wait()     // Catch: java.lang.InterruptedException -> L16 java.lang.Throwable -> L23
            goto Le
        L16:
            r1 = 1
            goto Le
        L18:
            if (r1 == 0) goto L21
            java.lang.Thread r0 = java.lang.Thread.currentThread()     // Catch: java.lang.Throwable -> L23
            r0.interrupt()     // Catch: java.lang.Throwable -> L23
        L21:
            monitor-exit(r2)
            return
        L23:
            r0 = move-exception
            monitor-exit(r2)
            throw r0
        */
        throw new UnsupportedOperationException("Method not decompiled: com.facebook.ads.redexgen.X.AnonymousClass94.A1C():void");
    }

    public final void A1D(Timeline timeline, int i, long j) {
        this.A0f.ADa(3, new C1813Oc(timeline, i, j)).A02();
    }

    public final /* synthetic */ void A1E(PS ps) {
        try {
            A0h(ps);
        } catch (AnonymousClass96 e) {
            Log.e(A0D(0, 21, 90), A0D(298, 55, 21), e);
            throw new RuntimeException(e);
        }
    }

    public final void A1F(InterfaceC1961Uj interfaceC1961Uj, boolean z, boolean z2) {
        this.A0f.ADZ(0, z ? 1 : 0, z2 ? 1 : 0, interfaceC1961Uj).A02();
    }

    public final void A1G(boolean z) {
        this.A0f.ADY(1, z ? 1 : 0, 0).A02();
    }

    public final void A1H(boolean z) {
        this.A0f.ADY(6, z ? 1 : 0, 0).A02();
    }

    @Override // com.facebook.ads.redexgen.X.OE
    public final void AGN(UW uw) {
        this.A0a.obtainMessage(1, uw).sendToTarget();
        A0T(uw.A01);
    }

    @Override // com.facebook.ads.redexgen.X.InterfaceC1889Rm
    public final void AGX(InterfaceC1888Rl interfaceC1888Rl) {
        this.A0f.ADa(9, interfaceC1888Rl).A02();
    }

    @Override // com.facebook.ads.redexgen.X.InterfaceC1960Ui
    public final void AH8(InterfaceC1961Uj interfaceC1961Uj, Timeline timeline) {
        this.A0f.ADa(8, new OZ(interfaceC1961Uj, timeline)).A02();
    }

    @Override // com.facebook.ads.redexgen.X.InterfaceC2007Wh
    public final void AHM() {
        this.A0f.AKS(11);
    }

    @Override // com.facebook.ads.redexgen.X.PQ
    public final synchronized void AKU(PS ps) {
        if (this.A0S) {
            Log.w(A0D(0, 21, 90), A0D(50, 37, 35));
            ps.A0A(false);
        } else {
            this.A0f.ADa(14, ps).A02();
        }
    }

    /* JADX WARN: Can't fix incorrect switch cases order, some code will duplicate */
    @Override // android.os.Handler.Callback
    public final boolean handleMessage(Message message) throws Throwable {
        String strA0D = A0D(0, 21, 90);
        try {
        } catch (AnonymousClass96 e) {
            Log.e(strA0D, A0D(110, 15, 67), e);
            A12(false, false);
            this.A0a.obtainMessage(2, e).sendToTarget();
            A0H();
        } catch (IOException e2) {
            Log.e(strA0D, A0D(195, 13, 17), e2);
            A12(false, false);
            Handler handler = this.A0a;
            String[] strArr = A0y;
            if (strArr[2].charAt(3) != strArr[6].charAt(3)) {
                throw new RuntimeException();
            }
            String[] strArr2 = A0y;
            strArr2[7] = "U5orIT8gv7WYVul6Lchsl1l8e7uG7q5v";
            strArr2[5] = "931aRsK0T3OUsvipgqafSPB8Ck96X1kY";
            handler.obtainMessage(2, AnonymousClass96.A01(e2, 2000)).sendToTarget();
            A0H();
        } catch (RuntimeException e3) {
            Log.e(strA0D, A0D(87, 23, 102), e3);
            A12(false, false);
            this.A0a.obtainMessage(2, AnonymousClass96.A02(e3)).sendToTarget();
            A0H();
        }
        switch (message.what) {
            case 0:
                A0r((InterfaceC1961Uj) message.obj, message.arg1 != 0, message.arg2 != 0);
                A0H();
                return true;
            case 1:
                A0z(message.arg1 != 0);
                A0H();
                return true;
            case 2:
                A0F();
                A0H();
                return true;
            case 3:
                A0f((C1813Oc) message.obj);
                A0H();
                return true;
            case 4:
                A0b((UW) message.obj);
                A0H();
                return true;
            case 5:
                A0n((C1841Pj) message.obj);
                A0H();
                return true;
            case 6:
                A12(message.arg1 != 0, true);
                A0H();
                return true;
            case 7:
                A0K();
                return true;
            case 8:
                A0e((OZ) message.obj);
                A0H();
                return true;
            case 9:
                A0p((InterfaceC1888Rl) message.obj);
                A0H();
                return true;
            case 10:
                A0o((InterfaceC1888Rl) message.obj);
                A0H();
                return true;
            case 11:
                A0L();
                A0H();
                return true;
            case 12:
                A0U(message.arg1);
                A0H();
                return true;
            case 13:
                A11(message.arg1 != 0);
                A0H();
                return true;
            case 14:
                A0i((PS) message.obj);
                A0H();
                return true;
            case 15:
                A0k((PS) message.obj);
                A0H();
                return true;
            case 16:
                A0H();
                return true;
            case 17:
                A0d(null, false);
                throw null;
            case 18:
                A0c(null);
                throw null;
            case 19:
                A0u((String) message.obj);
                A0H();
                return true;
            default:
                return false;
        }
    }
}
