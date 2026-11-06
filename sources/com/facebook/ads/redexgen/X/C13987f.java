package com.facebook.ads.redexgen.X;

import android.view.View;
import com.facebook.ads.internal.protocol.AdErrorType;
import com.unity3d.services.UnityAdsConstants;
import java.util.ArrayList;
import java.util.Arrays;
import java.util.List;
import org.json.JSONArray;
import org.json.JSONException;
import org.json.JSONObject;

/* JADX INFO: renamed from: com.facebook.ads.redexgen.X.7f, reason: invalid class name and case insensitive filesystem */
/* JADX INFO: loaded from: assets/audience_network/classes.dex */
public final class C13987f extends KI {
    public static byte[] A03;
    public long A00;
    public View A01;
    public C7D A02;

    static {
        A05();
    }

    public static String A03(int i, int i2, int i3) {
        byte[] bArrCopyOfRange = Arrays.copyOfRange(A03, i, i + i2);
        for (int i4 = 0; i4 < bArrCopyOfRange.length; i4++) {
            bArrCopyOfRange[i4] = (byte) ((bArrCopyOfRange[i4] ^ i3) ^ 12);
        }
        return new String(bArrCopyOfRange);
    }

    public static void A05() {
        A03 = new byte[]{60, 57, 46, 41, 42, 37, 37, 46, 57, 20, 57, 46, 45, 57, 46, 56, 35, 20, 63, 34, 38, 46, 4, 15, 6, 14, 9, 56, 23, 6, 21, 6, 10, 20, 3, 20, 109, 122, 122, 103, 122, 40, 127, 96, 97, 100, 109, 40, 120, 105, 122, 123, 97, 102, 111, 40, 107, 96, 105, 97, 102, 109, 108, 40, 105, 108, 123, 40, 74, 105, 102, 102, 109, 122};
    }

    public C13987f(C7D c7d, C2466fy c2466fy) {
        super(c7d, c2466fy);
        this.A00 = 10000L;
        this.A02 = c7d;
    }

    private KL A01(Runnable runnable) {
        return new KL(this, runnable);
    }

    private List<JSONObject> A04(C2467fz c2467fz) {
        ArrayList arrayList = new ArrayList();
        JSONObject jSONObjectA03 = c2467fz.A03();
        if (jSONObjectA03.has(A03(22, 12, 107))) {
            try {
                this.A00 = jSONObjectA03.getJSONObject(r1).optInt(A03(3, 19, 71), UnityAdsConstants.AdOperations.SHOW_TIMEOUT_MS);
                JSONArray adsArray = jSONObjectA03.getJSONArray(A03(0, 3, 81));
                if (adsArray.length() > 0) {
                    for (int i = 0; i < adsArray.length(); i++) {
                        arrayList.add((JSONObject) adsArray.get(i));
                    }
                }
            } catch (JSONException unused) {
                String strA03 = A03(36, 38, 4);
                this.A02.A0F().A6F(C2947nt.A01(AdErrorType.UNKNOWN_ERROR, strA03).A03().getErrorCode(), strA03);
                return arrayList;
            }
        } else {
            arrayList.add(jSONObjectA03);
        }
        return arrayList;
    }

    private void A06(MA ma, JSONObject jSONObject, C2831lz c2831lz) {
        this.A0C = false;
        KK kk = new KK(this, ma, AbstractC3077q4.A02(jSONObject, A03(34, 2, 108)));
        A0G().postDelayed(kk, c2831lz.A05());
        if (this.A08.A08 != null) {
            ma.ABb(this.A02, this.A09, this.A08.A08, A01(kk), jSONObject, c2831lz);
        }
    }

    @Override // com.facebook.ads.redexgen.X.KI
    public final void A0O() {
        if (this.A01 != null) {
            this.A02.A0F().A55();
            if (this.A07 != null) {
                this.A07.A0E(this.A01);
                return;
            }
            return;
        }
        this.A02.A0F().A56();
    }

    @Override // com.facebook.ads.redexgen.X.KI
    public final void A0Q(InterfaceC2393en interfaceC2393en, C2830ly c2830ly, C2828lw c2828lw, final C2467fz c2467fz) {
        this.A02.A0F().A4z();
        final MA ma = (MA) interfaceC2393en;
        if (ma.ALe()) {
            final List<JSONObject> listA04 = A04(c2467fz);
            A06(ma, listA04.get(0), c2467fz.A01());
            if (listA04.size() > 1) {
                A0G().postDelayed(new Runnable() { // from class: com.facebook.ads.redexgen.X.g0
                    @Override // java.lang.Runnable
                    public final void run() {
                        this.A02.A0Z(ma, listA04, c2467fz);
                    }
                }, this.A00);
                return;
            }
            return;
        }
        A06(ma, c2467fz.A03(), c2467fz.A01());
    }

    @Override // com.facebook.ads.redexgen.X.KI
    public final void A0T(String str) {
        this.A02.A0F().A54(str != null);
        super.A0T(str);
    }

    @Override // com.facebook.ads.redexgen.X.KI
    public final void A0X(boolean z) {
        super.A0X(z);
        this.A01 = null;
    }

    public final /* synthetic */ void A0Z(MA ma, List list, C2467fz c2467fz) {
        A06(ma, (JSONObject) list.get(1), c2467fz.A01());
    }
}
