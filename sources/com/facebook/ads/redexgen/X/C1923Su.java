package com.facebook.ads.redexgen.X;

import android.os.SystemClock;
import com.vungle.ads.internal.protos.Sdk;
import java.util.Arrays;
import java.util.HashMap;
import java.util.HashSet;
import java.util.Iterator;
import java.util.Map;
import java.util.Set;
import java.util.concurrent.ConcurrentHashMap;
import java.util.concurrent.CopyOnWriteArraySet;
import javax.annotation.Nullable;

/* JADX INFO: renamed from: com.facebook.ads.redexgen.X.Su, reason: case insensitive filesystem */
/* JADX INFO: loaded from: assets/audience_network/classes.dex */
public final class C1923Su {
    public static byte[] A06;
    public static String[] A07 = {"pSdLAabVJhqo7QB", "504ZY1AuKgNOiNBWtmEDc4VNIn9M1Am", "5Zl8ARr", "3vpm0W2HV", "koFPP", "dusBklPSZ06TUnBE7Ond9ns", "pdB1RHpxrB8GMHOKLZJpUDiRkcqMNya4", "7Flzf08JBPT5P838Pw8mNc"};
    public static final C1923Su A08;

    @Nullable
    public AbstractC2030Xg A01;

    @Nullable
    public Boolean A02;
    public volatile Map<String, Set<InterfaceC1916Sn>> A04 = new HashMap();
    public final C1922St A03 = new C1922St(this);
    public int A00 = 0;
    public volatile long A05 = -1;

    public static String A05(int i, int i2, int i3) {
        byte[] bArrCopyOfRange = Arrays.copyOfRange(A06, i, i + i2);
        for (int i4 = 0; i4 < bArrCopyOfRange.length; i4++) {
            bArrCopyOfRange[i4] = (byte) ((bArrCopyOfRange[i4] - i3) - 70);
        }
        return new String(bArrCopyOfRange);
    }

    public static void A08() {
        byte[] bArr = {50, 42, 57, 38, -13, 41, 38, 59, -10, 41, -13, 38, 59, -10, -13, 41, 42, 40, 52, 41, 42, 55};
        String[] strArr = A07;
        if (strArr[7].length() == strArr[4].length()) {
            throw new RuntimeException();
        }
        A07[5] = "AysKoXJUbI28ptcFU7Ec0EF";
        A06 = bArr;
    }

    /* JADX WARN: Failed to parse debug info
    java.lang.ArrayIndexOutOfBoundsException
     */
    /* JADX WARN: Removed duplicated region for block: B:46:0x0082 A[Catch: all -> 0x009f, TRY_LEAVE, TryCatch #3 {all -> 0x009f, blocks: (B:41:0x0078, B:44:0x007e, B:46:0x0082), top: B:56:0x0078 }] */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct code enable 'Show inconsistent code' option in preferences
    */
    private void A0C(boolean r5, com.facebook.ads.redexgen.X.C2026Xc r6, com.facebook.ads.redexgen.X.EnumC2031Xh r7, java.lang.String r8, com.facebook.ads.redexgen.X.InterfaceC1916Sn r9) {
        /*
            r4 = this;
            boolean r0 = r4.A0I(r5, r6)
            if (r0 == 0) goto L78
            boolean r0 = A0G(r8, r6)
            if (r0 == 0) goto L78
            r3 = 1
            monitor-enter(r4)
            int r1 = r4.A00     // Catch: java.lang.Throwable -> L75
            int r0 = r6.A07     // Catch: java.lang.Throwable -> L75
            if (r1 >= r0) goto L4d
            java.util.Map<java.lang.String, java.util.Set<com.facebook.ads.redexgen.X.Sn>> r0 = r4.A04     // Catch: java.lang.Throwable -> L75
            java.lang.Object r2 = r0.get(r8)     // Catch: java.lang.Throwable -> L75
            java.util.Set r2 = (java.util.Set) r2     // Catch: java.lang.Throwable -> L75
            if (r2 != 0) goto L27
            java.util.Set r2 = r4.A06()     // Catch: java.lang.Throwable -> L75
            java.util.Map<java.lang.String, java.util.Set<com.facebook.ads.redexgen.X.Sn>> r0 = r4.A04     // Catch: java.lang.Throwable -> L75
            r0.put(r8, r2)     // Catch: java.lang.Throwable -> L75
        L27:
            boolean r0 = r2.contains(r9)     // Catch: java.lang.Throwable -> L75
            if (r0 == 0) goto L2f
            r3 = 0
            goto L4d
        L2f:
            if (r5 == 0) goto L35
            boolean r0 = r6.A0T     // Catch: java.lang.Throwable -> L75
            if (r0 != 0) goto L3b
        L35:
            if (r5 != 0) goto L4d
            boolean r0 = r6.A0R     // Catch: java.lang.Throwable -> L75
            if (r0 == 0) goto L4d
        L3b:
            int r1 = r2.size()     // Catch: java.lang.Throwable -> L75
            int r0 = r6.A06     // Catch: java.lang.Throwable -> L75
            if (r1 >= r0) goto L4d
            r2.add(r9)     // Catch: java.lang.Throwable -> L75
            int r0 = r4.A00     // Catch: java.lang.Throwable -> L75
            int r0 = r0 + 1
            r4.A00 = r0     // Catch: java.lang.Throwable -> L75
            r3 = 0
        L4d:
            if (r3 != 0) goto L73
            r0 = -1
            long r2 = android.os.SystemClock.elapsedRealtime()     // Catch: java.lang.IllegalStateException -> L69 java.lang.Throwable -> L6d
            r4.A05 = r2     // Catch: java.lang.IllegalStateException -> L69 java.lang.Throwable -> L6d
            r9.reset()     // Catch: java.lang.IllegalStateException -> L69 java.lang.Throwable -> L6d
            com.facebook.ads.redexgen.X.Xg r3 = r4.A03()     // Catch: java.lang.IllegalStateException -> L69 java.lang.Throwable -> L6d
            int r2 = r9.hashCode()     // Catch: java.lang.IllegalStateException -> L69 java.lang.Throwable -> L6d
            r3.A09(r7, r2)     // Catch: java.lang.IllegalStateException -> L69 java.lang.Throwable -> L6d
            r4.A05 = r0     // Catch: java.lang.Throwable -> L75
            monitor-exit(r4)     // Catch: java.lang.Throwable -> L75
            return
        L69:
            r4.A0B(r8, r9)     // Catch: java.lang.Throwable -> L6d
            goto L71
        L6d:
            r2 = move-exception
            r4.A05 = r0     // Catch: java.lang.Throwable -> L75
            throw r2     // Catch: java.lang.Throwable -> L75
        L71:
            r4.A05 = r0     // Catch: java.lang.Throwable -> L75
        L73:
            monitor-exit(r4)     // Catch: java.lang.Throwable -> L75
            goto L78
        L75:
            r0 = move-exception
            monitor-exit(r4)     // Catch: java.lang.Throwable -> L75
            throw r0
        L78:
            boolean r0 = r6.A0Y     // Catch: java.lang.Throwable -> L9f
            if (r0 == 0) goto L82
            if (r5 != 0) goto L85
            boolean r0 = r6.A0X     // Catch: java.lang.Throwable -> L9f
            if (r0 != 0) goto L85
        L82:
            r9.stop()     // Catch: java.lang.Throwable -> L9f
        L85:
            com.facebook.ads.redexgen.X.Xg r1 = r4.A03()
            int r0 = r9.hashCode()
            r1.A08(r7, r0)
            r9.AIp()
            com.facebook.ads.redexgen.X.Xg r1 = r4.A03()
            int r0 = r9.hashCode()
            r1.A07(r7, r0)
            return
        L9f:
            r2 = move-exception
            com.facebook.ads.redexgen.X.Xg r1 = r4.A03()
            int r0 = r9.hashCode()
            r1.A08(r7, r0)
            r9.AIp()
            com.facebook.ads.redexgen.X.Xg r1 = r4.A03()
            int r0 = r9.hashCode()
            r1.A07(r7, r0)
            throw r2
        */
        throw new UnsupportedOperationException("Method not decompiled: com.facebook.ads.redexgen.X.C1923Su.A0C(boolean, com.facebook.ads.redexgen.X.Xc, com.facebook.ads.redexgen.X.Xh, java.lang.String, com.facebook.ads.redexgen.X.Sn):void");
    }

    static {
        A08();
        A08 = new C1923Su();
    }

    private InterfaceC1916Sn A01(boolean z, C2026Xc c2026Xc, EnumC2031Xh enumC2031Xh, String str) throws Exception {
        if (A0I(z, c2026Xc) && A0G(str, c2026Xc)) {
            synchronized (this) {
                Set<InterfaceC1916Sn> set = this.A04.get(str);
                if (set != null && !set.isEmpty()) {
                    this.A00--;
                    Iterator<InterfaceC1916Sn> it = set.iterator();
                    InterfaceC1916Sn ret = it.next();
                    it.remove();
                    A03().A0A(z, str, enumC2031Xh, ret.hashCode());
                    return ret;
                }
            }
        }
        try {
            C2032Xi c2032XiA05 = A03().A05(z, str, enumC2031Xh);
            InterfaceC1916Sn interfaceC1916SnA03 = this.A03.A03(z, str);
            A03().A06(c2032XiA05, interfaceC1916SnA03.hashCode());
            return interfaceC1916SnA03;
        } catch (Exception e) {
            throw new C2033Xj(str, e);
        }
    }

    public static C1923Su A02() {
        return A08;
    }

    /* JADX INFO: Access modifiers changed from: private */
    public AbstractC2030Xg A03() {
        if (this.A01 != null) {
            return this.A01;
        }
        return A8.A02;
    }

    /* JADX INFO: Access modifiers changed from: private */
    public Set<InterfaceC1916Sn> A06() {
        if (this.A02 != null && this.A02.booleanValue()) {
            return new CopyOnWriteArraySet();
        }
        return new HashSet();
    }

    private void A09(AbstractC2030Xg abstractC2030Xg) {
        if (this.A01 == null) {
            this.A01 = abstractC2030Xg;
        }
    }

    private void A0A(C2026Xc c2026Xc) {
        if (this.A02 == null) {
            synchronized (this) {
                if (this.A02 == null) {
                    this.A02 = Boolean.valueOf(c2026Xc.A0Z);
                    if (this.A02.booleanValue()) {
                        this.A04 = new ConcurrentHashMap();
                    }
                }
            }
        }
    }

    private void A0B(String str, InterfaceC1916Sn interfaceC1916Sn) {
        Set<InterfaceC1916Sn> set = this.A04.get(str);
        if (set != null && set.remove(interfaceC1916Sn)) {
            this.A00--;
        }
    }

    public static boolean A0E(String str) {
        return str.equals(A05(0, 22, Sdk.SDKError.Reason.ASSET_FAILED_MAX_SPACE_EXCEEDED_VALUE));
    }

    public static boolean A0G(String str, C2026Xc c2026Xc) {
        if (!A0E(str)) {
            return true;
        }
        boolean z = c2026Xc.A0D;
        if (A07[5].length() != 23) {
            throw new RuntimeException();
        }
        A07[5] = "nwAzwGEiO0ZIWdxLaYMsKGp";
        if (z) {
            return false;
        }
        return true;
    }

    /* JADX INFO: Access modifiers changed from: private */
    public boolean A0I(boolean z, C2026Xc c2026Xc) {
        if (c2026Xc.A0F && this.A05 != -1) {
            long jElapsedRealtime = SystemClock.elapsedRealtime();
            long j = this.A05;
            String[] strArr = A07;
            if (strArr[3].length() == strArr[1].length()) {
                throw new RuntimeException();
            }
            String[] strArr2 = A07;
            strArr2[3] = "0y00mGdSc";
            strArr2[1] = "YbKfGYgoQHCL7FNckkRcEOTrXyIiST7";
            if (jElapsedRealtime - j > 5000) {
                return false;
            }
        }
        return A0J(z, c2026Xc);
    }

    public static boolean A0J(boolean z, C2026Xc c2026Xc) {
        return (z && c2026Xc.A0T) || (!z && c2026Xc.A0R);
    }

    public final InterfaceC1916Sn A0K(boolean z, C2026Xc c2026Xc, AbstractC2030Xg abstractC2030Xg, EnumC2031Xh enumC2031Xh, String str) throws C2033Xj {
        A09(abstractC2030Xg);
        A0A(c2026Xc);
        if (c2026Xc.A0O) {
            return this.A03.A02(z, c2026Xc, enumC2031Xh, str);
        }
        return A01(z, c2026Xc, enumC2031Xh, str);
    }

    public final void A0L(boolean z, C2026Xc c2026Xc, AbstractC2030Xg abstractC2030Xg, EnumC2031Xh enumC2031Xh, String str, InterfaceC1916Sn interfaceC1916Sn) throws Throwable {
        A09(abstractC2030Xg);
        if (c2026Xc.A0O) {
            this.A03.A0A(z, c2026Xc, enumC2031Xh, str, interfaceC1916Sn);
        } else {
            A0C(z, c2026Xc, enumC2031Xh, str, interfaceC1916Sn);
        }
    }
}
