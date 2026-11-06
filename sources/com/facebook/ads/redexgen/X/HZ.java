package com.facebook.ads.redexgen.X;

import android.text.TextUtils;
import com.vungle.ads.internal.protos.Sdk;
import java.util.Arrays;
import java.util.HashMap;
import java.util.Map;
import org.json.JSONObject;

/* JADX INFO: loaded from: assets/audience_network/classes.dex */
public class HZ extends AbstractRunnableC3004oq {
    public static byte[] A05;
    public static String[] A06 = {"WyCz8h7floq2Hs4ThFsEeFzQQuMVP6z2", "mSTUuWQAoYeAowXF", "QX5n2mojbDoKqPojtzwRwJon2kb7WfAH", "J7PoM8d3R8NTbjf8t0vaEmMiyxKw0K77", "8u35dAuLRzocdJEaFdASgxeMuVnn60Qw", "K1GvLw6sBv3orQHi", "wBSAobKCezPxUBmv24Ahxis1AuxM4GXl", "6ydzMmqBX95sZbPcV2rfRsYpcvwl4VbU"};
    public final /* synthetic */ int A00;
    public final /* synthetic */ C2780lA A01;
    public final /* synthetic */ InterfaceC2804lY A02;
    public final /* synthetic */ C2812lg A03;
    public final /* synthetic */ String A04;

    public static String A00(int i, int i2, int i3) {
        byte[] bArrCopyOfRange = Arrays.copyOfRange(A05, i, i + i2);
        for (int i4 = 0; i4 < bArrCopyOfRange.length; i4++) {
            bArrCopyOfRange[i4] = (byte) ((bArrCopyOfRange[i4] - i3) - 120);
        }
        return new String(bArrCopyOfRange);
    }

    public static void A01() {
        A05 = new byte[]{-37, -3, 30, 27, 46, 32, -39, 28, 43, 26, 44, 33, -39, 27, 30, 28, 26, 46, 44, 30, -39, 44, -2, 39, 47, 34, 43, 40, 39, 38, 30, 39, 45, -3, 26, 45, 26, 9, 43, 40, 47, 34, 29, 30, 43, -39, 39, 40, 45, -39, 34, 39, 35, 30, 28, 45, 30, 29, -46, -24, -19, -22, -97, -24, -14, -97, -19, -12, -21, -21, -96, 30, 33, 33, 38, 49, 38, 44, 43, 30, 41, 28, 38, 43, 35, 44, 45, 66, 45, 53, 56, 45, 46, 56, 49, 43, 48, 53, 63, 55, 43, 63, 60, 45, 47, 49, 62, 60, 62, 67, 64, 104, 91, 89, 101, 104, 90, 85, 90, 87, 106, 87, 88, 87, 105, 91, -18, -31, -19, -15, -31, -17, -16, -37, -27, -32, 44, 46, 27, 45, 50, 41, 30, 49, 51, 32, 50, 55, 46, 35, 29, 33, 45, 34, 35};
    }

    static {
        A01();
    }

    public HZ(C2780lA c2780lA, String str, int i, C2812lg c2812lg, InterfaceC2804lY interfaceC2804lY) {
        this.A01 = c2780lA;
        this.A04 = str;
        this.A00 = i;
        this.A03 = c2812lg;
        this.A02 = interfaceC2804lY;
    }

    @Override // com.facebook.ads.redexgen.X.AbstractRunnableC3004oq
    public final void A07() throws Throwable {
        String strA03;
        Map<String, String> mapA69;
        String strA8x;
        try {
            if (C2805lZ.A0K(this.A01, this.A04, this.A00, this.A03)) {
                return;
            }
            C2920nR.A08(this.A01, EnumC2912nJ.A0A.toString() + A00(0, 1, 41) + this.A04);
            Throwable cause = this.A03.getCause();
            if (cause != null) {
                strA03 = AbstractC3093qK.A03(this.A01, cause);
            } else if (AbstractC2890mx.A0R(this.A01)) {
                C2780lA c2780lA = this.A01;
                Throwable deLogExceptionCause = this.A03;
                strA03 = AbstractC3093qK.A03(c2780lA, deLogExceptionCause);
            } else {
                strA03 = A00(0, 0, 106) + this.A03.getMessage();
            }
            if (AbstractC2890mx.A0V(this.A01)) {
                mapA69 = this.A01.A04().A69();
            } else if (this.A02 != null) {
                mapA69 = this.A02.A8a();
            } else if (!C2805lZ.A02) {
                mapA69 = this.A01.A04().A69();
            } else {
                C2805lZ.A0F(new RuntimeException(A00(1, 57, 65), this.A03));
                mapA69 = new HashMap<>();
            }
            mapA69.put(A00(Sdk.SDKError.Reason.PRIVACY_URL_ERROR_VALUE, 7, 65), this.A04);
            mapA69.put(A00(143, 12, 70), String.valueOf(this.A00));
            JSONObject jSONObjectA03 = this.A03.A03();
            if (jSONObjectA03 != null) {
                mapA69.put(A00(71, 15, 69), jSONObjectA03.toString());
            }
            if ((A00(106, 5, 99).equals(this.A04) || A00(111, 15, Sdk.SDKError.Reason.ASSET_FAILED_INSUFFICIENT_SPACE_VALUE).equals(this.A04)) && (strA8x = this.A01.A04().A8x()) != null) {
                mapA69.put(A00(86, 20, 84), strA8x);
            }
            String strA0C = this.A01.A0C();
            if (strA0C != null && !TextUtils.isEmpty(strA0C)) {
                mapA69.put(A00(Sdk.SDKError.Reason.ASSET_FAILED_INSUFFICIENT_SPACE_VALUE, 10, 4), strA0C);
            }
            InterfaceC2803lX interfaceC2803lX = (InterfaceC2803lX) C2805lZ.A0A.get();
            if (interfaceC2803lX != null) {
                interfaceC2803lX.AMP(strA03, mapA69, this.A01);
            } else {
                C2805lZ.A0F(new RuntimeException(A00(58, 13, 7)));
            }
        } catch (Throwable th) {
            String[] strArr = A06;
            if (strArr[7].charAt(28) != strArr[6].charAt(28)) {
                Throwable deLogExceptionCause2 = new RuntimeException();
                throw deLogExceptionCause2;
            }
            A06[3] = "fZFEnLEifE8VXmCUzFl1cmEH7gidrdeQ";
            C2805lZ.A0F(th);
        }
    }
}
