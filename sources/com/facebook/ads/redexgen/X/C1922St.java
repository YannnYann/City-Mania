package com.facebook.ads.redexgen.X;

import android.media.MediaCodec;
import android.os.SystemClock;
import android.util.Log;
import com.vungle.ads.internal.protos.Sdk;
import java.util.Arrays;
import java.util.Iterator;
import java.util.Set;
import java.util.concurrent.ConcurrentLinkedQueue;

/* JADX INFO: renamed from: com.facebook.ads.redexgen.X.St, reason: case insensitive filesystem */
/* JADX INFO: loaded from: assets/audience_network/classes.dex */
public class C1922St {
    public static byte[] A03;
    public static String[] A04 = {"GkcL9EPdEqn0A7PhJoI9bsH6AxvNOL5u", "KxLGmNj9tBxVzMOmsgtqIqkFwkedOK4g", "B55E1oGbrrzu1K7f7VrmSaJJuupeT3cI", "sJPWMepLD2r1nI", "wtcLGgQj4FXEjs2QwwDmyBbbBNjJkZ", "WeZkHqAtZ530WLIFPfcgOozgAqJ", "33UI6N3aU6fupkPFkce4mnEh7TXGWjHZ", "TngqUuh2ENkAcZsSEqObL56HjOXg0tNH"};
    public boolean A00 = false;
    public final ConcurrentLinkedQueue<C1920Sr> A01 = new ConcurrentLinkedQueue<>();
    public final /* synthetic */ C1923Su A02;

    public static String A04(int i, int i2, int i3) {
        byte[] bArrCopyOfRange = Arrays.copyOfRange(A03, i, i + i2);
        for (int i4 = 0; i4 < bArrCopyOfRange.length; i4++) {
            bArrCopyOfRange[i4] = (byte) ((bArrCopyOfRange[i4] - i3) - 99);
        }
        return new String(bArrCopyOfRange);
    }

    public static void A05() {
        A03 = new byte[]{-15, 36, 15, 17, 28, 32, 21, 27, 26, -52, 35, 20, 17, 26, -52, 32, 30, 37, 21, 26, 19, -52, 32, 27, -52, 21, 26, 31, 32, 13, 26, 32, 21, 13, 32, 17, -52, -47, 31, -26, -52, -47, 31, 38, 62, 61, 66, 58, 28, 72, 61, 62, 60, 41, 72, 72, 69, 40, 73, 77, 66, 70, 66, 83, 62, 61, 56, 69, 69, 66, 69, 0, 74, 59, 60, 63, 56, 0, 69, 56, 63, 56, 52, 70, 56, 0, 54, 66, 55, 56, 54, 0, 57, 69, 66, 64, 0, 70, 56, 71, 0, 57, 60, 65, 52, 63, 63, 76, 13, -13, -8, 70, 32, 45, 45, 42, 45, -24, 50, 35, 36, 39, 32, -24, 45, 32, 39, 32, 28, 46, 32, -24, 30, 42, 31, 32, 30, -24, 33, 45, 42, 40, -24, 46, 32, 47, -11, -37, -32, 46, 18, 37, 28, 29, 25, 14, 38, 18, 31, -33, -37, 14, 35, -34, -37, 32, 31, 16, -37, -15, 14, 35, -34, 17, -6, 18, 17, 22, 14, -16, 28, 17, 18, 16, -18, 17, 14, 29, 33, 18, 31};
    }

    static {
        A05();
    }

    public C1922St(C1923Su c1923Su) {
        this.A02 = c1923Su;
    }

    /* JADX INFO: Access modifiers changed from: private */
    public InterfaceC1916Sn A02(boolean z, C2026Xc c2026Xc, EnumC2031Xh enumC2031Xh, String str) throws Exception {
        Set<InterfaceC1916Sn> set;
        if (this.A02.A0I(z, c2026Xc) && C1923Su.A0G(str, c2026Xc)) {
            synchronized (this.A02.A04) {
                set = this.A02.A04.get(str);
            }
            if (set != null) {
                synchronized (set) {
                    if (!set.isEmpty()) {
                        C1923Su c1923Su = this.A02;
                        c1923Su.A00--;
                        Iterator<InterfaceC1916Sn> it = set.iterator();
                        InterfaceC1916Sn ret = it.next();
                        it.remove();
                        this.A02.A03().A0A(z, str, enumC2031Xh, ret.hashCode());
                        return ret;
                    }
                }
            }
        }
        try {
            C2032Xi c2032XiA05 = this.A02.A03().A05(z, str, enumC2031Xh);
            InterfaceC1916Sn interfaceC1916SnA03 = A03(z, str);
            this.A02.A03().A06(c2032XiA05, interfaceC1916SnA03.hashCode());
            return interfaceC1916SnA03;
        } catch (Exception e) {
            throw new C2033Xj(str, e);
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public InterfaceC1916Sn A03(boolean z, String str) throws Exception {
        String strA04 = A04(150, 41, 74);
        if (z && C1923Su.A0E(str)) {
            try {
                return (InterfaceC1916Sn) Class.forName(strA04).getConstructor(new Class[0]).newInstance(new Object[0]);
            } catch (Exception e) {
                String str2 = String.format(A04(0, 43, 73), strA04, e.getMessage());
                if (A04[7].charAt(0) != 'T') {
                    throw new RuntimeException();
                }
                A04[1] = "88UhswHBE5yWXNxnehnu2gljXz9gtbeq";
                Log.w(A04(43, 23, Sdk.SDKError.Reason.PROTOBUF_SERIALIZATION_ERROR_VALUE), str2);
            }
        }
        return new S5(MediaCodec.createByCodecName(str));
    }

    /* JADX INFO: Access modifiers changed from: private */
    /* JADX INFO: renamed from: A07, reason: merged with bridge method [inline-methods] */
    public void A0B(EnumC2031Xh enumC2031Xh) {
        String strA04;
        String str;
        C1923Su c1923Su;
        Set<InterfaceC1916Sn> set;
        for (C1920Sr c1920Sr : this.A01) {
            try {
                try {
                    if (!c1920Sr.A05) {
                        A08(c1920Sr.A01, enumC2031Xh, Boolean.valueOf(c1920Sr.A04), c1920Sr.A00);
                    } else {
                        try {
                            try {
                                this.A02.A05 = SystemClock.elapsedRealtime();
                                c1920Sr.A00.reset();
                                c1923Su = this.A02;
                            } catch (Throwable th) {
                                this.A02.A05 = -1L;
                                throw th;
                            }
                        } catch (IllegalStateException unused) {
                            A09(c1920Sr.A02, c1920Sr.A00);
                            c1923Su = this.A02;
                        }
                        c1923Su.A05 = -1L;
                        if (c1920Sr.A03) {
                            synchronized (this.A02.A04) {
                                set = this.A02.A04.get(c1920Sr.A02);
                            }
                            if (set != null) {
                                synchronized (set) {
                                    set.add(c1920Sr.A00);
                                    this.A02.A00++;
                                }
                            }
                        }
                    }
                    try {
                        synchronized (this.A01) {
                            this.A01.remove(c1920Sr);
                        }
                    } catch (Exception e) {
                        strA04 = A04(43, 23, Sdk.SDKError.Reason.PROTOBUF_SERIALIZATION_ERROR_VALUE);
                        str = String.format(A04(66, 46, 112), e.getMessage());
                        Log.w(strA04, str);
                    }
                } catch (Exception e2) {
                    Log.w(A04(43, 23, Sdk.SDKError.Reason.PROTOBUF_SERIALIZATION_ERROR_VALUE), String.format(A04(112, 38, 88), e2.getMessage()));
                    try {
                        synchronized (this.A01) {
                            this.A01.remove(c1920Sr);
                        }
                    } catch (Exception e3) {
                        strA04 = A04(43, 23, Sdk.SDKError.Reason.PROTOBUF_SERIALIZATION_ERROR_VALUE);
                        str = String.format(A04(66, 46, 112), e3.getMessage());
                        Log.w(strA04, str);
                    }
                }
            } catch (Throwable th2) {
                try {
                } catch (Exception e4) {
                    Log.w(A04(43, 23, Sdk.SDKError.Reason.PROTOBUF_SERIALIZATION_ERROR_VALUE), String.format(A04(66, 46, 112), e4.getMessage()));
                }
                synchronized (this.A01) {
                    this.A01.remove(c1920Sr);
                    throw th2;
                }
            }
        }
    }

    private void A08(C2026Xc c2026Xc, EnumC2031Xh enumC2031Xh, Boolean bool, InterfaceC1916Sn interfaceC1916Sn) {
        try {
            if (!c2026Xc.A0Y || (!bool.booleanValue() && !c2026Xc.A0X)) {
                interfaceC1916Sn.stop();
            }
        } finally {
            this.A02.A03().A08(enumC2031Xh, interfaceC1916Sn.hashCode());
            interfaceC1916Sn.AIp();
            this.A02.A03().A07(enumC2031Xh, interfaceC1916Sn.hashCode());
        }
    }

    private void A09(String str, InterfaceC1916Sn interfaceC1916Sn) {
        Set<InterfaceC1916Sn> set;
        synchronized (this.A02.A04) {
            set = this.A02.A04.get(str);
        }
        if (set != null) {
            synchronized (set) {
                if (set.remove(interfaceC1916Sn)) {
                    C1923Su c1923Su = this.A02;
                    c1923Su.A00--;
                }
            }
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    /* JADX WARN: Removed duplicated region for block: B:120:? A[RETURN, SYNTHETIC] */
    /* JADX WARN: Removed duplicated region for block: B:63:0x00d3  */
    /* JADX WARN: Removed duplicated region for block: B:89:0x0108  */
    /* JADX WARN: Removed duplicated region for block: B:91:0x0110  */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct code enable 'Show inconsistent code' option in preferences
    */
    public void A0A(boolean r24, com.facebook.ads.redexgen.X.C2026Xc r25, final com.facebook.ads.redexgen.X.EnumC2031Xh r26, java.lang.String r27, com.facebook.ads.redexgen.X.InterfaceC1916Sn r28) throws java.lang.Throwable {
        /*
            Method dump skipped, instruction units count: 298
            To view this dump change 'Code comments level' option to 'DEBUG'
        */
        throw new UnsupportedOperationException("Method not decompiled: com.facebook.ads.redexgen.X.C1922St.A0A(boolean, com.facebook.ads.redexgen.X.Xc, com.facebook.ads.redexgen.X.Xh, java.lang.String, com.facebook.ads.redexgen.X.Sn):void");
    }
}
