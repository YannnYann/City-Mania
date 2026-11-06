package com.facebook.ads.redexgen.X;

import android.content.Intent;
import android.os.Build;
import android.widget.RelativeLayout;
import com.vungle.ads.internal.protos.Sdk;
import java.io.Serializable;
import java.util.Arrays;

/* JADX INFO: renamed from: com.facebook.ads.redexgen.X.jd, reason: case insensitive filesystem */
/* JADX INFO: loaded from: assets/audience_network/classes.dex */
public final class C2688jd {
    public static byte[] A04;
    public static String[] A05 = {"9hgZ6gmZVIzcUa9O3mA", "hr5Nv5KmFuAh0QYIKM2bmKkmepVb4QJ5", "yO2HUjhUlIghedwjslAMsCcdfdKPfyCH", "zrGIWgWbx8IbO9KwhUHxd6SamLqSPg13", "PAiLfCht7j7DwfzIfnXwlTfs7d", "E", "ondXKsNdPZeIQPGRQ", "4zzip8XOl1eQzOydGeEIF"};
    public final Intent A00;
    public final C2683jY A01;
    public final C1643Hi A02;
    public final InterfaceC2909nG A03;

    /* JADX WARN: Failed to parse debug info
    java.lang.ArrayIndexOutOfBoundsException
     */
    private D2 A0G(EnumC2980oR enumC2980oR) {
        InterfaceC3200s3 fg;
        InterfaceC3144r9 c7e;
        String strA08 = this.A01.A08();
        C1733Kz c1733KzA00 = strA08 != null ? AbstractC2697jm.A00(strA08) : null;
        if (c1733KzA00 == null) {
            c1733KzA00 = A01();
        }
        if (c1733KzA00 == null) {
            return null;
        }
        if (enumC2980oR == EnumC2980oR.A05) {
            fg = new FH();
            c7e = new IV(this.A01);
        } else {
            fg = new FG();
            c7e = new C7E(this.A01);
        }
        return new D2(this.A02, fg, this.A03, c1733KzA00, new C2771kz(this.A02), c7e);
    }

    public static String A0K(int i, int i2, int i3) {
        byte[] bArrCopyOfRange = Arrays.copyOfRange(A04, i, i + i2);
        for (int i4 = 0; i4 < bArrCopyOfRange.length; i4++) {
            bArrCopyOfRange[i4] = (byte) ((bArrCopyOfRange[i4] ^ i3) ^ 49);
        }
        return new String(bArrCopyOfRange);
    }

    public static void A0L() {
        A04 = new byte[]{23, 18, 41, 18, 23, 2, 23, 41, 20, 3, 24, 18, 26, 19, 50, 57, 48, 56, 63, 52, 53, 16, 53, 21, 48, 37, 48, 19, 36, 63, 53, 61, 52, 40, 39, 50, 47, 48, 35, 7, 34, 2, 39, 50, 39, 4, 51, 40, 34, 42, 35, 116, 99, 113, 103, 116, 98, 99, 98, 80, 111, 98, 99, 105, 71, 98, 66, 103, 114, 103, 68, 115, 104, 98, 106, 99, 112, 111, 98, 99, 105, 89, 114, 111, 107, 99, 89, 118, 105, 106, 106, 111, 104, 97, 89, 111, 104, 114, 99, 116, 112, 103, 106};
    }

    static {
        A0L();
    }

    public C2688jd(C2683jY c2683jY, Intent intent, InterfaceC2909nG interfaceC2909nG, C1643Hi c1643Hi) {
        this.A01 = c2683jY;
        this.A00 = intent;
        this.A03 = interfaceC2909nG;
        this.A02 = c1643Hi;
    }

    private LA A00() {
        int i = Build.VERSION.SDK_INT;
        String strA0K = A0K(33, 18, Sdk.SDKError.Reason.JSON_ENCODE_ERROR_VALUE);
        if (i >= 33) {
            return (LA) this.A00.getSerializableExtra(strA0K, LA.class);
        }
        return (LA) this.A00.getSerializableExtra(strA0K);
    }

    private C1733Kz A01() {
        int i = Build.VERSION.SDK_INT;
        String strA0K = A0K(14, 19, 96);
        if (i >= 33) {
            return (C1733Kz) this.A00.getSerializableExtra(strA0K, C1733Kz.class);
        }
        return (C1733Kz) this.A00.getSerializableExtra(strA0K);
    }

    private C14017i A02() {
        int i = Build.VERSION.SDK_INT;
        String strA0K = A0K(0, 14, 71);
        if (i >= 33) {
            return (C14017i) this.A00.getSerializableExtra(strA0K, C14017i.class);
        }
        Intent intent = this.A00;
        if (A05[5].length() == 28) {
            throw new RuntimeException();
        }
        String[] strArr = A05;
        strArr[2] = "aLIzZsfvOjvh4cc7MNDterfabrQQ7uCt";
        strArr[1] = "2zeXMh2DNoLhbNF5aRtGPwdJAkJRstyd";
        return (C14017i) intent.getSerializableExtra(strA0K);
    }

    private C13997g A03() {
        int i = Build.VERSION.SDK_INT;
        String strA0K = A0K(51, 25, 55);
        if (i >= 33) {
            Serializable serializableExtra = this.A00.getSerializableExtra(strA0K, C13997g.class);
            String[] strArr = A05;
            if (strArr[7].length() == strArr[4].length()) {
                throw new RuntimeException();
            }
            A05[5] = "bi";
            return (C13997g) serializableExtra;
        }
        return (C13997g) this.A00.getSerializableExtra(strA0K);
    }

    private InterfaceC3145rA A05() {
        return new C2695jk(this.A01, this.A00, this.A03, this.A02).A03();
    }

    private InterfaceC3145rA A06() {
        C14017i c14017iA02 = A02();
        if (c14017iA02 == null) {
            return null;
        }
        return A09(new C7E(this.A01), c14017iA02, c14017iA02.A1u(), new FH());
    }

    private InterfaceC3145rA A07() {
        C13997g c13997gA03 = A03();
        if (c13997gA03 == null) {
            return null;
        }
        return A09(new C7E(this.A01), c13997gA03, c13997gA03.A1u(), new FG());
    }

    private InterfaceC3145rA A08(EnumC2980oR enumC2980oR) {
        InterfaceC3200s3 fh;
        InterfaceC3144r9 iv;
        LA laA02 = null;
        String strA08 = this.A01.A08();
        if (strA08 != null) {
            laA02 = AbstractC2696jl.A00(strA08);
        }
        if (laA02 == null) {
            if (enumC2980oR == EnumC2980oR.A0H) {
                laA02 = A03();
            } else if (enumC2980oR == EnumC2980oR.A0B) {
                laA02 = A02();
            }
        }
        if (laA02 == null) {
            return null;
        }
        laA02.A21(this.A01.A08());
        if (laA02.A2K()) {
            this.A01.A0F(laA02.A2R());
            if (enumC2980oR == EnumC2980oR.A0H) {
                fh = new FG();
                iv = new C7E(this.A01);
            } else {
                fh = new FH();
                iv = new IV(this.A01);
            }
            return new C13645x(this.A02, fh, this.A03, laA02, new C2771kz(this.A02), iv);
        }
        return new C13555o(this.A02, this.A03, new C2771kz(this.A02), new IV(this.A01), laA02);
    }

    private InterfaceC3145rA A09(InterfaceC3144r9 interfaceC3144r9, LA la, String str, InterfaceC3200s3 interfaceC3200s3) {
        if (la.A32().A0I().A07() != null) {
            C2443fb c2443fbA07 = la.A32().A0I().A07();
            if (la.A2Z()) {
                return new FM(this.A02, this.A03, interfaceC3144r9, la, c2443fbA07, str, interfaceC3200s3);
            }
            return new FS(this.A02, this.A03, interfaceC3144r9, la, str, interfaceC3200s3);
        }
        interfaceC3144r9.A5C(interfaceC3200s3.A8c());
        interfaceC3144r9.A5C(interfaceC3200s3.A8X());
        return null;
    }

    private final FL A0A() {
        return new FL(this.A02, this.A01);
    }

    private FI A0B(RelativeLayout relativeLayout) {
        FI fi = new FI(this.A02, new IS(this), this.A03, new IV(this.A01));
        fi.A05(relativeLayout);
        fi.A04(this.A00.getIntExtra(A0K(76, 27, 55), 200));
        AbstractC3111qc.A0O(relativeLayout, -16777216);
        return fi;
    }

    private C6U A0C() {
        C14017i c14017iA02 = A02();
        if (c14017iA02 == null) {
            return null;
        }
        return new C6U(this.A02, this.A03, new IV(this.A01), c14017iA02, new FH(), 1);
    }

    private C6U A0D() {
        C13997g c13997gA03 = A03();
        if (c13997gA03 == null) {
            return null;
        }
        return new C6U(this.A02, this.A03, new IV(this.A01), c13997gA03, new FG(), 0);
    }

    private E2 A0E() {
        C1930Tb c1930TbA02;
        LA laA00 = A00();
        if (laA00 == null || (c1930TbA02 = M1.A02(laA00.A1r())) == null) {
            return null;
        }
        return new E2(this.A02, new IV(this.A01), c1930TbA02, laA00.A37());
    }

    private D8 A0F(EnumC2980oR enumC2980oR) {
        C13997g c13997gA03 = A03();
        if (c13997gA03 == null) {
            if (A05[5].length() == 28) {
                throw new RuntimeException();
            }
            A05[6] = "3doWMQfY6jUOCGy1t";
            return null;
        }
        this.A01.A0F(c13997gA03.A2R());
        if (enumC2980oR == EnumC2980oR.A0I) {
            return new C13635w(this.A02, new FG(), this.A03, c13997gA03, new C2771kz(this.A02), new C7E(this.A01));
        }
        return new C13565p(this.A02, new FG(), this.A03, c13997gA03, new C2771kz(this.A02), new C7E(this.A01));
    }

    private C13635w A0H() {
        C14017i c14017iA02 = A02();
        if (c14017iA02 == null) {
            return null;
        }
        return new C13635w(this.A02, new FH(), this.A03, c14017iA02, new C2771kz(this.A02), new IV(this.A01));
    }

    private C13565p A0I() {
        C14017i c14017iA02 = A02();
        if (c14017iA02 != null) {
            this.A01.A0F(c14017iA02.A2R());
            return new C13565p(this.A02, new FH(), this.A03, c14017iA02, new C2771kz(this.A02), new IV(this.A01));
        }
        String[] strArr = A05;
        if (strArr[7].length() == strArr[4].length()) {
            throw new RuntimeException();
        }
        String[] strArr2 = A05;
        strArr2[2] = "pmcQlDH7sZXh2s7s4TnMspoe9rHNP7fr";
        strArr2[1] = "eL2WbgazC7ehXX3SrLnYK8eATWSTto9D";
        return null;
    }

    private C1512Cg A0J(EnumC2980oR enumC2980oR) {
        LA laA02;
        LA laA022;
        if (enumC2980oR == EnumC2980oR.A0L) {
            laA02 = A03();
            if (A05[3].charAt(25) != 'L') {
                throw new RuntimeException();
            }
            A05[0] = "";
            if (laA02 == null || (laA022 = A03()) == null) {
                return null;
            }
        } else if (enumC2980oR != EnumC2980oR.A0F || (laA02 = A02()) == null || (laA022 = A02()) == null) {
            return null;
        }
        return new C1512Cg(this.A02, this.A03, laA02, laA022, new C7E(this.A01), this.A01, enumC2980oR);
    }

    public final InterfaceC3145rA A0M(EnumC2980oR enumC2980oR, RelativeLayout relativeLayout) {
        if (enumC2980oR == null) {
            return null;
        }
        switch (C2687jc.A00[enumC2980oR.ordinal()]) {
            case 1:
                if (relativeLayout != null) {
                    return A0B(relativeLayout);
                }
                return null;
            case 2:
            case 3:
                return A08(enumC2980oR);
            case 4:
            case 5:
                return A0F(enumC2980oR);
            case 6:
                return A07();
            case 7:
                InterfaceC3145rA interfaceC3145rAA05 = A05();
                String[] strArr = A05;
                if (strArr[7].length() != strArr[4].length()) {
                    A05[3] = "JqgzsZEJ1D6XbsEZiOD5vqemmLO24Iu2";
                    return interfaceC3145rAA05;
                }
                break;
            case 8:
                return A0I();
            case 9:
                return A0H();
            case 10:
                return A06();
            case 11:
                return A0E();
            case 12:
                return A0C();
            case 13:
                return A0D();
            case 14:
            case 15:
                return A0G(enumC2980oR);
            case 16:
                return A0A();
            case 17:
            case 18:
                C1512Cg c1512CgA0J = A0J(enumC2980oR);
                String[] strArr2 = A05;
                if (strArr2[7].length() != strArr2[4].length()) {
                    A05[3] = "jUkUT1rQCZ9nRV5DLYO9lkZtxLvo9yBa";
                    return c1512CgA0J;
                }
                break;
            default:
                return null;
        }
        throw new RuntimeException();
    }
}
