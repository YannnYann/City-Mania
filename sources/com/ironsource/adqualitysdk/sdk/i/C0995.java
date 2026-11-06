package com.ironsource.adqualitysdk.sdk.i;

import com.ironsource.adqualitysdk.sdk.StringFog;
import java.util.ArrayList;
import org.json.JSONObject;

/* JADX INFO: renamed from: com.ironsource.adqualitysdk.sdk.i.ｬ, reason: contains not printable characters */
/* JADX INFO: loaded from: classes3.dex */
public final class C0995 extends AbstractC0925 {
    static {
        StringFog.decrypt("xwG3JDHZGKvG\n", "tGTZQHSrasQ=\n");
    }

    /* JADX INFO: renamed from: ﾒ, reason: contains not printable characters */
    public static void m1588(C0048 c0048, ArrayList arrayList) {
        boolean zBooleanValue;
        JSONObject jSONObject;
        String str = (String) AbstractC0925.m1545(arrayList, 0, String.class);
        String str2 = c0048.m1060() + StringFog.decrypt("Jw==\n", "HUcavZFJdKk=\n") + Integer.toHexString(str.hashCode());
        Throwable th = (Throwable) AbstractC0925.m1545(arrayList, 1, Throwable.class);
        try {
            if (arrayList.size() <= 2) {
                AbstractC1003.m1591(c0048.m1060(), str, str2, th, null, null, true, false, false);
                return;
            }
            if (AbstractC0925.m1544(arrayList, 2, JSONObject.class)) {
                JSONObject jSONObject2 = (JSONObject) AbstractC0925.m1545(arrayList, 2, JSONObject.class);
                if (arrayList.size() > 3 && AbstractC0925.m1544(arrayList, 3, Boolean.class)) {
                    zBooleanValue = ((Boolean) AbstractC0925.m1545(arrayList, 3, Boolean.class)).booleanValue();
                }
                jSONObject = jSONObject2;
                zBooleanValue = zBooleanValue;
            } else {
                zBooleanValue = AbstractC0925.m1544(arrayList, 2, Boolean.class) ? ((Boolean) AbstractC0925.m1545(arrayList, 2, Boolean.class)).booleanValue() : false;
                jSONObject = null;
            }
            AbstractC1003.m1591(c0048.m1060(), str, str2, th, null, jSONObject, true, false, zBooleanValue);
        } catch (Throwable unused) {
        }
    }
}
