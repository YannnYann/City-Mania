package com.ironsource.adqualitysdk.sdk.i;

import android.content.Context;
import android.text.TextUtils;
import com.ironsource.adqualitysdk.sdk.StringFog;
import java.util.concurrent.Executors;
import org.json.JSONObject;

/* JADX INFO: renamed from: com.ironsource.adqualitysdk.sdk.i.ᖿ, reason: contains not printable characters */
/* JADX INFO: loaded from: classes3.dex */
public final class C0608 extends AbstractRunnableC0689 {

    /* JADX INFO: renamed from: ｋ, reason: contains not printable characters */
    public final /* synthetic */ C0607 f2582;

    /* JADX INFO: renamed from: ﾇ, reason: contains not printable characters */
    public final /* synthetic */ JSONObject f2583;

    public C0608(C0607 c0607, JSONObject jSONObject) {
        this.f2582 = c0607;
        this.f2583 = jSONObject;
    }

    @Override // com.ironsource.adqualitysdk.sdk.i.AbstractRunnableC0689
    /* JADX INFO: renamed from: ﾒ */
    public final void mo1013() {
        String strM1361;
        JSONObject jSONObject;
        C0764 c0764 = this.f2582.f2579;
        JSONObject jSONObject2 = this.f2583;
        c0764.f3089.f2625.m1608(jSONObject2);
        C0622 c0622 = c0764.f3089;
        C0785 c0785 = c0622.f2635;
        C0143 c0143 = c0622.f2637;
        if (((C0893) AbstractC0885.m1491()).f3410) {
            strM1361 = c0622.m1400().m1361();
        } else {
            C0601 c0601M1400 = c0622.m1400();
            synchronized (c0601M1400) {
                jSONObject = c0601M1400.f2612;
            }
            JSONObject jSONObjectOptJSONObject = jSONObject.optJSONObject(StringFog.decrypt("9XJL\n", "gAAnRUBYvjo=\n"));
            strM1361 = jSONObjectOptJSONObject != null ? jSONObjectOptJSONObject.optString(StringFog.decrypt("TQ==\n", "PQTcKj3i8eU=\n"), c0601M1400.f2566) : c0601M1400.f2566;
        }
        String str = c0143.f1095;
        StringBuilder sb = new StringBuilder();
        if (str == null) {
            str = "";
        }
        sb.append(str);
        sb.append(StringFog.decrypt("Eg==\n", "Pf7MGvBw9pE=\n"));
        if (strM1361 == null) {
            strM1361 = "";
        }
        sb.append(strM1361);
        String string = sb.toString();
        C0622 c06222 = c0764.f3089;
        r rVar = c06222.f2633.f1195;
        Context context = c06222.f2627;
        C0893 c0893 = (C0893) AbstractC0885.m1491();
        boolean z = c0893.m1525() && c0893.f3411 != c0893.m1527();
        C0765 c0765 = new C0765(c0764);
        c0785.getClass();
        if (TextUtils.isEmpty(string)) {
            String str2 = C0785.f3120;
            AbstractC0182.m1150(str2, str2, StringFog.decrypt("m0JdncHVMMKhDEyQ3sQw1btfSJDAkGLTv1lZjNmQdd+6RFmNjeVC+u5DTt/f1WPGoUJPmuXRftKi\nSU7f2tVi0+5CU4uNwGLZuEVYmsk=\n", "ziw8/62wELY=\n"), true);
            return;
        }
        C0876 c0876 = new C0876(jSONObject2, string, rVar, context, z);
        if (c0785.f3121) {
            AbstractC0182.m1147(C0785.f3120, StringFog.decrypt("CKD8/y0ly/svvfj/JmvatHum/+wtIMuJPr7k/zE/jqwzqv+6DC7arDS9+tcjJc+8Pr2x7SM4jqgz\nuuX+LTzA\n", "W8+RmkJLrts=\n"));
            return;
        }
        C0786 c0786 = new C0786(c0785, c0765, c0876);
        String str3 = AbstractC0061.f813;
        try {
            Executors.newSingleThreadExecutor().execute(c0786);
        } catch (Throwable th) {
            AbstractC1003.m1592(AbstractC0061.f813, StringFog.decrypt("dXSgyWUV9GhVZafSflv2MFF1q8h0FeVxQ20=\n", "MAbSphc1kRA=\n"), th, false);
        }
    }
}
