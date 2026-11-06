package com.facebook.ads.redexgen.X;

import com.vungle.ads.internal.protos.Sdk;
import java.util.ArrayList;
import java.util.Arrays;
import org.json.JSONArray;
import org.json.JSONException;
import org.json.JSONObject;

/* JADX INFO: renamed from: com.facebook.ads.redexgen.X.no, reason: case insensitive filesystem */
/* JADX INFO: loaded from: assets/audience_network/classes.dex */
public class RunnableC2943no implements Runnable {
    public static byte[] A03;
    public final /* synthetic */ C2780lA A00;
    public final /* synthetic */ C2946nr A01;
    public final /* synthetic */ String A02;

    static {
        A01();
    }

    public static String A00(int i, int i2, int i3) {
        byte[] bArrCopyOfRange = Arrays.copyOfRange(A03, i, i + i2);
        for (int i4 = 0; i4 < bArrCopyOfRange.length; i4++) {
            bArrCopyOfRange[i4] = (byte) ((bArrCopyOfRange[i4] ^ i3) ^ Sdk.SDKError.Reason.TPAT_ERROR_VALUE);
        }
        return new String(bArrCopyOfRange);
    }

    public static void A01() {
        A03 = new byte[]{3, 27, 5, 60, 61, 39, 32, 59, 38, 45, 89, 78, 91, 68, 89, 95, 66, 69, 76, 54, 33, 53, 49, 33, 55, 48, 27, 45, 32};
    }

    public RunnableC2943no(C2946nr c2946nr, String str, C2780lA c2780lA) {
        this.A01 = c2946nr;
        this.A02 = str;
        this.A00 = c2780lA;
    }

    @Override // java.lang.Runnable
    public final void run() throws Throwable {
        ArrayList<C2945nq> arrayList;
        if (AbstractC2996oi.A02(this)) {
            return;
        }
        try {
            C2812lg nvl = new C2812lg(A00(0, 3, 52));
            JSONObject jSONObject = new JSONObject();
            JSONArray jSONArray = new JSONArray();
            jSONObject.put(A00(3, 7, 45), jSONArray);
            jSONObject.put(A00(19, 10, 61), this.A02);
            synchronized (this.A01.A0D) {
                arrayList = new ArrayList(this.A01.A0D);
                this.A01.A0D.clear();
            }
            for (C2945nq c2945nq : arrayList) {
                jSONArray.put(A00(0, 0, 60) + c2945nq.A00 + ';' + c2945nq.A02 + ';' + c2945nq.A01);
            }
            nvl.A07(jSONObject);
            nvl.A05(1);
            this.A00.A08().AC0(A00(10, 9, 82), AbstractC2811lf.A2R, nvl);
        } catch (JSONException unused) {
        } catch (Throwable th) {
            AbstractC2996oi.A00(th, this);
        }
    }
}
