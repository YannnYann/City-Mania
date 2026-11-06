package com.facebook.ads.redexgen.X;

import android.util.Log;
import com.facebook.ads.AdError;
import com.facebook.ads.AdSettings;
import com.facebook.ads.internal.protocol.AdErrorType;
import com.vungle.ads.internal.protos.Sdk;
import java.util.Arrays;
import java.util.Locale;

/* JADX INFO: loaded from: assets/audience_network/classes.dex */
public final class K9 implements InterfaceC2473g5 {
    public static byte[] A05;
    public static String[] A06 = {"iEaWyjzULIZCFnp1nESlU5XZjwcvRjHd", "KbGYZiX8Pduw0KfpYwrRe1NWFWC1OMxy", "fhu9engps4P6WEn4zln6smGq5lQXex4h", "tbT6PfDqIL055", "rKa5gX4b0", "TAsNWcfBygYGmj6nueBPL3we7Mc4FYi0", "mn5595Nd0", "gAb4cPpeQcskkpTdmUE6rt9G8rZq3FNo"};
    public AdError A00;
    public EnumC2472g4 A01 = EnumC2472g4.A03;
    public EnumC2472g4 A02 = EnumC2472g4.A03;
    public final K6 A03;
    public final C1643Hi A04;

    public static String A00(int i, int i2, int i3) {
        byte[] bArrCopyOfRange = Arrays.copyOfRange(A05, i, i + i2);
        int i4 = 0;
        while (true) {
            int length = bArrCopyOfRange.length;
            String[] strArr = A06;
            if (strArr[7].charAt(1) != strArr[5].charAt(1)) {
                throw new RuntimeException();
            }
            A06[0] = "d2XCtNqKB2PlkmIVLWNasBjUSsZJOiBr";
            if (i4 >= length) {
                return new String(bArrCopyOfRange);
            }
            bArrCopyOfRange[i4] = (byte) ((bArrCopyOfRange[i4] - i3) - 29);
            i4++;
        }
    }

    public static void A01() {
        A05 = new byte[]{-73, 11, 6, -73, 118, 104, -95, -73, -67, 104, -85, -87, -74, 104, -85, -80, -87, -74, -81, -83, 104, -111, -74, -68, -83, -81, -70, -87, -68, -79, -73, -74, 104, -115, -70, -70, -73, -70, 104, -75, -73, -84, -83, 104, -86, -63, 104, -69, -83, -68, -68, -79, -74, -81, 104, -119, -84, -101, -83, -68, -68, -79, -74, -81, -69, 118, -69, -83, -68, -111, -74, -68, -83, -81, -70, -87, -68, -79, -73, -74, -115, -70, -70, -73, -70, -107, -73, -84, -83, 112, 113, 112, 108, 107, -97, -114, -109, -113, -104, -115, -113, 120, -113, -98, -95, -103, -100, -107, -103, -59, -62, -64, 115, -41, -14, -17, -18, -25, -96, -23, -18, -12, -27, -14, -18, -31, -20, -96, -12, -14, -31, -18, -13, -23, -12, -23, -17, -18, -82, -15, 0, -7, -67, -64, -78, -75, 121, 122, -63, -74, -67, -59, 118, 119, 15, 3, -4, 15, -69, 4, 14, -69, -4, 7, 13, 0, -4, -1, 20, -69, -25, -22, -36, -33, -28, -23, -30, -57, -69, -25, -22, -36, -33, -32, -33, -69, 10, 13, -69, -18, -29, -22, -14, -28, -23, -30, -45, -57, -64, -45, 127, -56, -46, 127, -64, -53, -47, -60, -64, -61, -40, 127, -78, -89, -82, -74, -88, -83, -90, -14, -26, -33, -14, -98, -25, -15, -98, -20, -19, -14, -98, -54, -51, -65, -62, -61, -62};
    }

    static {
        A01();
    }

    public K9(C1643Hi c1643Hi, K6 k6) {
        this.A04 = c1643Hi;
        this.A03 = k6;
    }

    private void A02(EnumC2472g4 enumC2472g4, EnumC2472g4 enumC2472g42) {
        String strA00 = A00(113, 26, 99);
        StringBuilder sb = new StringBuilder();
        String errorTitle = A00(108, 5, 54);
        StringBuilder sbAppend = sb.append(errorTitle).append(enumC2472g4);
        String errorTitle2 = A00(0, 4, Sdk.SDKError.Reason.INVALID_ADS_ENDPOINT_VALUE);
        String string = sbAppend.append(errorTitle2).append(enumC2472g42).toString();
        InterfaceC2810le interfaceC2810leA08 = this.A04.A08();
        int i = AbstractC2811lf.A0e;
        C2812lg c2812lg = new C2812lg(strA00, string);
        String errorTitle3 = A00(Sdk.SDKError.Reason.TEMPLATE_DOWNLOAD_ERROR_VALUE, 3, Sdk.SDKError.Reason.INVALID_INDEX_URL_VALUE);
        interfaceC2810leA08.ABz(errorTitle3, i, c2812lg);
        String errorTitle4 = strA00 + ' ' + string;
        this.A04.A0F().AMU(errorTitle4);
    }

    private void A03(String str, String str2, boolean z) {
        AdSettings.IntegrationErrorMode integrationErrorModeA00 = AbstractC2469g1.A00(this.A04);
        String str3 = String.format(Locale.US, AdErrorType.INCORRECT_API_CALL_ERROR.getDefaultErrorMessage(), str, str2);
        String strA00 = A00(Sdk.SDKError.Reason.TEMPLATE_DOWNLOAD_ERROR_VALUE, 3, Sdk.SDKError.Reason.INVALID_INDEX_URL_VALUE);
        String strA002 = A00(91, 17, 13);
        if (!z) {
            Log.e(strA002, str3);
            this.A04.A08().ABz(strA00, AbstractC2811lf.A0c, new C2812lg(str3));
            this.A04.A0F().AMT(str3);
            return;
        }
        switch (C2471g3.A00[integrationErrorModeA00.ordinal()]) {
            case 1:
                String errorMessage = str3 + A00(4, 87, 43);
                throw new C2474g6(errorMessage);
            case 2:
                this.A03.A08();
                this.A03.A0C(10, AdErrorType.INCORRECT_STATE_ERROR, str3);
                this.A04.A0F().AMT(str3);
                Log.e(strA002, str3);
                this.A04.A08().ABz(strA00, AbstractC2811lf.A0c, new C2812lg(str3));
                break;
        }
        Log.e(strA002, str3);
    }

    @Override // com.facebook.ads.redexgen.X.InterfaceC2473g5
    public final boolean A73() {
        boolean z = (this.A01 == EnumC2472g4.A03 || this.A01 == EnumC2472g4.A05) && this.A02 != EnumC2472g4.A08;
        if (z) {
            this.A01 = EnumC2472g4.A07;
        } else {
            A03(A00(142, 6, 52), A00(154, 42, Sdk.SDKError.Reason.ASSET_FAILED_INSUFFICIENT_SPACE_VALUE), false);
        }
        return !z;
    }

    @Override // com.facebook.ads.redexgen.X.InterfaceC2473g5
    public final boolean A74() {
        if (this.A01 == EnumC2472g4.A05 && this.A00 != null && this.A00.getErrorCode() == 2008) {
            this.A04.A0F().AJJ();
            this.A03.A0C(10, AdErrorType.AD_PRESENTATION_ERROR, null);
            return true;
        }
        boolean z = this.A01 == EnumC2472g4.A06 && (this.A02 != EnumC2472g4.A08 || C2888mv.A0g(this.A04));
        if (z) {
            this.A01 = EnumC2472g4.A03;
            this.A02 = EnumC2472g4.A08;
        } else {
            EnumC2472g4 enumC2472g4 = this.A01;
            EnumC2472g4 enumC2472g42 = EnumC2472g4.A06;
            String strA00 = A00(148, 6, 49);
            if (enumC2472g4 != enumC2472g42) {
                A03(strA00, A00(Sdk.SDKError.Reason.MRAID_JS_COPY_FAILED_VALUE, 18, 97), true);
            } else {
                A03(strA00, A00(196, 23, 66), false);
            }
        }
        return !z;
    }

    @Override // com.facebook.ads.redexgen.X.InterfaceC2473g5
    public final EnumC2472g4 A7P() {
        return this.A01;
    }

    @Override // com.facebook.ads.redexgen.X.InterfaceC2473g5
    public final EnumC2472g4 A7Q() {
        return this.A02;
    }

    @Override // com.facebook.ads.redexgen.X.InterfaceC2473g5
    public final void ABe() {
        this.A01 = EnumC2472g4.A07;
    }

    @Override // com.facebook.ads.redexgen.X.InterfaceC2473g5
    public final void AKe(EnumC2472g4 enumC2472g4) {
        this.A01 = enumC2472g4;
        this.A02 = enumC2472g4;
    }

    @Override // com.facebook.ads.redexgen.X.InterfaceC2473g5
    public final void AKj(AdError adError) {
        this.A01 = EnumC2472g4.A05;
        this.A02 = EnumC2472g4.A05;
        this.A00 = adError;
    }

    @Override // com.facebook.ads.redexgen.X.InterfaceC2473g5
    public final void AKo() {
        if (this.A01 != EnumC2472g4.A07) {
            A02(this.A01, EnumC2472g4.A06);
        }
        this.A01 = EnumC2472g4.A06;
    }

    @Override // com.facebook.ads.redexgen.X.InterfaceC2473g5
    public final void AL4() {
        if (this.A02 != EnumC2472g4.A08) {
            A02(this.A01, EnumC2472g4.A09);
        }
        this.A02 = EnumC2472g4.A09;
    }
}
