package com.facebook.ads.redexgen.X;

import android.content.ActivityNotFoundException;
import android.net.Uri;
import android.util.Log;
import com.vungle.ads.internal.protos.Sdk;
import java.util.ArrayList;
import java.util.Arrays;
import java.util.Iterator;
import java.util.List;
import java.util.Map;

/* JADX INFO: renamed from: com.facebook.ads.redexgen.X.u8, reason: case insensitive filesystem */
/* JADX INFO: loaded from: assets/audience_network/classes.dex */
public final class C3329u8 {
    public static long A0F;
    public static byte[] A0G;
    public static String[] A0H = {"Dlx9HUQ", "3SJpPR4POSYtfyo20zogCoACzZ0TFz6K", "kjKhSI2oz7rhTngoHOUaCo24OHJZbpIQ", "a4Zk7jMDxn", "WU0c1Yk7xIFA3rTFxMg", "", "SjppttcIPjZ3F", "aZkh9z8pdJw1o0Uivju"};
    public InterfaceC2384ed A00;
    public AbstractC2386ef A01;
    public LA A02;
    public InterfaceC3081q8 A03;
    public InterfaceC3328u7 A04;
    public boolean A05;
    public final C2435fT A06;
    public final C1643Hi A07;
    public final InterfaceC2909nG A08;
    public final C3102qT A09;
    public final InterfaceC3144r9 A0A;
    public final C2224c2 A0B;
    public final String A0C;
    public final List<InterfaceC3328u7> A0D;
    public final boolean A0E;

    public static String A01(int i, int i2, int i3) {
        byte[] bArrCopyOfRange = Arrays.copyOfRange(A0G, i, i + i2);
        for (int i4 = 0; i4 < bArrCopyOfRange.length; i4++) {
            bArrCopyOfRange[i4] = (byte) ((bArrCopyOfRange[i4] ^ i3) ^ 104);
        }
        return new String(bArrCopyOfRange);
    }

    public static void A03() {
        A0G = new byte[]{31, 8, 29, 30, 41, 40, 40, 51, 50, 31, 48, 53, 63, 55, 16, 53, 47, 40, 57, 50, 57, 46, 114, 69, 69, 88, 69, 23, 82, 79, 82, 84, 66, 67, 94, 89, 80, 23, 86, 84, 67, 94, 88, 89, 73, 126, 126, 99, 126, 44, 123, 100, 101, 96, 105, 44, 99, 124, 105, 98, 101, 98, 107, 44, 63, 48, 53, 63, 55, 3, 47, 51, 41, 46, 63, 57, 6, 4, 25, 27, 25, 41, 21, 25, 18, 19, 26, 24, 5, 7, 5, 53, 9, 5, 14, 15, 53, 8, 24, 11, 4, 14, 53, 3, 9, 5, 4, 53, 31, 24, 6, 105, 107, 118, 116, 118, 70, 122, 118, 125, 124, 70, 123, 107, 120, 119, 125, 70, 119, 120, 116, 124, 61, 63, 34, 32, 34, 18, 46, 34, 41, 40, 18, 33, 44, 47, 40, 33, 18, 62, 56, 47, 57, 36, 57, 33, 40, 3, 1, 28, 30, 28, 44, 16, 28, 23, 22, 44, 31, 18, 17, 22, 31, 44, 7, 26, 7, 31, 22};
    }

    static {
        A03();
        A0F = 0L;
    }

    public C3329u8(C1643Hi c1643Hi, String str, C2224c2 c2224c2, C3102qT c3102qT, InterfaceC2909nG interfaceC2909nG, C2435fT c2435fT) {
        this(c1643Hi, str, c2224c2, c3102qT, interfaceC2909nG, c2435fT, new C1570Em());
    }

    public C3329u8(C1643Hi c1643Hi, String str, C2224c2 c2224c2, C3102qT c3102qT, InterfaceC2909nG interfaceC2909nG, C2435fT c2435fT, InterfaceC3144r9 interfaceC3144r9) {
        this.A0D = new ArrayList();
        this.A0E = true;
        this.A07 = c1643Hi;
        this.A0C = str;
        this.A0B = c2224c2;
        this.A09 = c3102qT;
        this.A08 = interfaceC2909nG;
        this.A06 = c2435fT;
        this.A0A = interfaceC3144r9;
    }

    public C3329u8(C1643Hi c1643Hi, String str, C2224c2 c2224c2, C3102qT c3102qT, InterfaceC2909nG interfaceC2909nG, C2435fT c2435fT, InterfaceC3144r9 interfaceC3144r9, InterfaceC3081q8 interfaceC3081q8) {
        this.A0D = new ArrayList();
        this.A0E = true;
        this.A07 = c1643Hi;
        this.A0C = str;
        this.A0B = c2224c2;
        this.A09 = c3102qT;
        this.A08 = interfaceC2909nG;
        this.A06 = c2435fT;
        this.A0A = interfaceC3144r9;
        this.A03 = interfaceC3081q8;
    }

    private EnumC2383ec A00(String str, String str2, Map<String, String> map) {
        String strA01 = A01(0, 22, 52);
        EnumC2383ec actionOutcome = EnumC2383ec.A08;
        try {
            AbstractC3111qc.A0d(map, this.A02);
            A04(map, str);
            Uri uriA00 = AbstractC3036pP.A00(str2);
            if (this.A01 == null) {
                this.A01 = C2387eg.A01(this.A07, this.A08, str, uriA00, new C3303ti(map).A05(this.A0B).A04(this.A09).A07(), true, this.A05, this.A06);
                A02();
            }
            if (this.A01 != null) {
                actionOutcome = this.A01.A0G(map.get(A01(64, 12, 52)));
                if (this.A05 && (this.A01 instanceof C14147v)) {
                    actionOutcome = EnumC2383ec.A07;
                }
            }
            if (!(((this.A01 instanceof C14137u) || (this.A01 instanceof C14157w)) && AbstractC3111qc.A0j(this.A07, actionOutcome, map)) && actionOutcome != EnumC2383ec.A05) {
                if (this.A04 != null) {
                    this.A04.AEZ();
                }
                Iterator<InterfaceC3328u7> it = this.A0D.iterator();
                while (it.hasNext()) {
                    it.next().AEZ();
                }
                this.A0A.A5C(this.A0C);
            }
        } catch (ActivityNotFoundException e) {
            Log.e(strA01, A01(44, 20, 100) + str2, e);
        } catch (Exception e2) {
            Log.e(strA01, A01(22, 22, 95), e2);
        }
        return actionOutcome;
    }

    private void A02() {
        if (this.A01 != null && this.A01.A0H() == null && this.A00 != null) {
            this.A01.A0I(this.A00);
        }
    }

    public static void A04(Map<String, String> map, String str) {
        C2445fd c2445fdA00 = AbstractC2447ff.A00(str);
        if (c2445fdA00 == null) {
            return;
        }
        map.put(A01(76, 10, 30), c2445fdA00.A02);
        if (c2445fdA00.A04 != null) {
            map.put(A01(157, 22, 27), c2445fdA00.A04);
        }
        if (c2445fdA00.A03 != null) {
            map.put(A01(Sdk.SDKError.Reason.OMSDK_DOWNLOAD_JS_ERROR_VALUE, 25, 37), c2445fdA00.A03);
        }
        if (c2445fdA00.A01 != null) {
            map.put(A01(111, 21, 113), c2445fdA00.A01);
        }
        if (c2445fdA00.A00 != null) {
            String strA01 = A01(86, 25, 2);
            String str2 = c2445fdA00.A00;
            String[] strArr = A0H;
            if (strArr[0].length() == strArr[6].length()) {
                throw new RuntimeException();
            }
            String[] strArr2 = A0H;
            strArr2[1] = "GqoLu3o3sXi8viHYAO3w9oClZx42bFoF";
            strArr2[2] = "rAgvrz7IapEceMHcMdzPAofx66HshLkN";
            map.put(strA01, str2);
        }
    }

    public static boolean A05(C1643Hi c1643Hi) {
        boolean zA2z = C2888mv.A2z(c1643Hi);
        int iA05 = C2888mv.A05(c1643Hi);
        long jCurrentTimeMillis = System.currentTimeMillis() - A0F;
        if (zA2z) {
            long j = A0F;
            String[] strArr = A0H;
            String str = strArr[0];
            String str2 = strArr[6];
            int clickguardTime = str.length();
            if (clickguardTime == str2.length()) {
                throw new RuntimeException();
            }
            String[] strArr2 = A0H;
            strArr2[7] = "iHhMWVvnkjnFrqYtRUL";
            strArr2[4] = "26cGs68neeVahMKc5kl";
            if (j > 0 && jCurrentTimeMillis < iA05) {
                return true;
            }
        }
        A0F = System.currentTimeMillis();
        return false;
    }

    public final EnumC2383ec A06(String str, String str2, Map<String, String> extraData) {
        EnumC2383ec enumC2383ecA00 = EnumC2383ec.A08;
        new C2917nO(str, this.A08).A04(EnumC2916nN.A0J, extraData);
        if (this.A09.A09(this.A07)) {
            this.A08.ABr(str, extraData);
        } else {
            enumC2383ecA00 = A00(str, str2, extraData);
            if (this.A02 != null && this.A02.A32().A0M() != null && this.A03 != null) {
                AbstractC3043pW.A07(this.A07.A02(), this.A02.A32().A0M(), this.A03);
            }
        }
        return enumC2383ecA00;
    }

    public final InterfaceC2384ed A07() {
        if (this.A01 != null) {
            return this.A01.A0H();
        }
        return null;
    }

    public final void A08() {
        if (this.A01 != null) {
            this.A01 = null;
        }
    }

    public final void A09(InterfaceC2384ed interfaceC2384ed) {
        this.A00 = interfaceC2384ed;
        A02();
    }

    public final void A0A(LA la) {
        this.A02 = la;
    }

    public final void A0B(InterfaceC3081q8 interfaceC3081q8) {
        this.A03 = interfaceC3081q8;
    }

    public final void A0C(InterfaceC3328u7 interfaceC3328u7) {
        this.A0D.add(interfaceC3328u7);
    }

    public final void A0D(InterfaceC3328u7 interfaceC3328u7) {
        this.A04 = interfaceC3328u7;
    }

    public final void A0E(boolean z) {
        this.A05 = z;
    }
}
