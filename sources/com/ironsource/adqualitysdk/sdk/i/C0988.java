package com.ironsource.adqualitysdk.sdk.i;

import android.text.TextUtils;
import com.ironsource.adqualitysdk.sdk.StringFog;
import java.util.ArrayList;
import java.util.HashMap;
import org.json.JSONObject;

/* JADX INFO: renamed from: com.ironsource.adqualitysdk.sdk.i.ｚ, reason: contains not printable characters */
/* JADX INFO: loaded from: classes3.dex */
public final class C0988 extends AbstractRunnableC0689 {

    /* JADX INFO: renamed from: ﻛ, reason: contains not printable characters */
    public final /* synthetic */ C0931 f3707;

    /* JADX INFO: renamed from: ｋ, reason: contains not printable characters */
    public final /* synthetic */ C0811 f3708;

    /* JADX INFO: renamed from: ﾇ, reason: contains not printable characters */
    public final /* synthetic */ int f3709;

    public C0988(C0931 c0931, int i, C0811 c0811) {
        this.f3707 = c0931;
        this.f3709 = i;
        this.f3708 = c0811;
    }

    @Override // com.ironsource.adqualitysdk.sdk.i.AbstractRunnableC0689
    /* JADX INFO: renamed from: ﾒ */
    public final void mo1013() {
        HashMap map;
        ArrayList arrayList = new ArrayList();
        C0931 c0931 = this.f3707;
        C0773 c0773 = c0931.f3524;
        String str = c0931.f3525 + StringFog.decrypt("6Q==\n", "wxXv3+zsBFA=\n");
        int i = this.f3709;
        C0321 c0321 = c0773.f3106;
        c0321.getClass();
        try {
            HashMap mapM1208 = c0321.f1886.m1208(str, i);
            map = new HashMap();
            for (String str2 : mapM1208.keySet()) {
                String str3 = (String) mapM1208.get(str2);
                if (str3 != null && !TextUtils.isEmpty(str3)) {
                    try {
                        map.put(str2, c0321.f1887.m1246(str3));
                    } catch (C0369 unused) {
                    }
                }
            }
        } catch (Throwable unused2) {
            map = null;
        }
        for (String str4 : map.values()) {
            try {
                JSONObject jSONObject = new JSONObject(str4);
                arrayList.add(new C1000(jSONObject.optString(StringFog.decrypt("k9pSRA==\n", "5q87IJwR6Pc=\n")), jSONObject.getJSONObject(StringFog.decrypt("3nyeRqf+X7k=\n", "rhPtMuOfK9g=\n"))));
            } catch (Exception unused3) {
                AbstractC0182.m1156(C0931.m1547(this.f3707), StringFog.decrypt("AMTCMii1V3AxxMY/\n", "Q6WhWk3mIx8=\n"), AbstractC0202.m1159("03tNMdjfITqwd0o43cVjbvN1WzXZ1SYr5nFWKZKRdTrifVY6nMdnIuVxAn0=\n", "kBQ4XbyxBk4=\n", new StringBuilder(), str4), null, null, true);
            }
        }
        AbstractC0272.m1211(new C0997(this, arrayList));
    }

    @Override // com.ironsource.adqualitysdk.sdk.i.AbstractRunnableC0689
    /* JADX INFO: renamed from: ﾒ */
    public final void mo1287(Throwable th) {
        super.mo1287(th);
        AbstractC0272.m1211(new C0994(this));
    }
}
