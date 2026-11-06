package com.ironsource.adqualitysdk.sdk.i;

import android.text.TextUtils;
import android.util.Log;
import com.ironsource.adqualitysdk.sdk.StringFog;
import java.lang.ref.WeakReference;
import org.json.JSONObject;

/* JADX INFO: renamed from: com.ironsource.adqualitysdk.sdk.i.ｴ, reason: contains not printable characters */
/* JADX INFO: loaded from: classes3.dex */
public abstract class AbstractC1003 {

    /* JADX INFO: renamed from: ﾒ, reason: contains not printable characters */
    public static WeakReference f3805;

    /* JADX INFO: renamed from: ﾒ, reason: contains not printable characters */
    public static void m1592(String str, String str2, Throwable th, boolean z) {
        try {
            m1593(str, str2, th, z, false, false);
        } catch (Throwable unused) {
        }
    }

    /* JADX INFO: renamed from: ﾒ, reason: contains not printable characters */
    public static void m1593(String str, String str2, Throwable th, boolean z, boolean z2, boolean z3) {
        try {
            if (z) {
                AbstractC0182.m1158(str, str2, z3);
                if (th != null) {
                    AbstractC0182.m1156(str, str, StringFog.decrypt("T8r23oSzWmk=\n", "C6+Cv+3fKVM=\n"), th, null, z3);
                }
            } else {
                AbstractC0182.m1156(str, str, str2, th, null, z3);
            }
            m1591(str, str2, StringFog.decrypt("xASnlojL4on7TA==\n", "kHbG9e2pg+o=\n") + str, th, null, null, false, z2, z3);
        } catch (Throwable unused) {
        }
    }

    /* JADX INFO: renamed from: ﾒ, reason: contains not printable characters */
    public static void m1591(String str, String str2, String str3, Throwable th, AbstractC0692 abstractC0692, JSONObject jSONObject, boolean z, boolean z2, boolean z3) {
        String str4;
        String stackTraceString;
        if (z) {
            try {
                String str5 = str3 + StringFog.decrypt("fQ==\n", "Rws5QbeSg7k=\n") + str;
                AbstractC0182.m1156(str, str, str2 + StringFog.decrypt("ug93jHYOLQ==\n", "micU4xJrDbk=\n") + str5 + StringFog.decrypt("Hw==\n", "NltFaMUygt4=\n"), th, abstractC0692, z3);
                str4 = str5;
            } catch (Throwable unused) {
                return;
            }
        } else {
            str4 = str3;
        }
        C0964 c0964 = (C0964) f3805.get();
        if (c0964 != null) {
            if (abstractC0692 != null) {
                stackTraceString = abstractC0692.toString();
            } else if (th instanceof AbstractC0692) {
                stackTraceString = th.toString();
            } else {
                stackTraceString = Log.getStackTraceString(th);
            }
            c0964.m1579(str, str2, str4, stackTraceString, jSONObject, z2);
        }
    }

    /* JADX INFO: renamed from: ﾒ, reason: contains not printable characters */
    public static void m1590(String str, String str2, String str3, String str4) {
        try {
            if (TextUtils.isEmpty(str3)) {
                return;
            }
            String str5 = str3 + StringFog.decrypt("bg==\n", "VBvMXK+BeVI=\n") + str;
            AbstractC0182.m1158(str, StringFog.decrypt("QxcOkqGAvOZyDVw=\n", "BmV8/dOgy48=\n") + str5 + StringFog.decrypt("N3c4NlYmFd1jdzksHQ==\n", "Fx5WQjNBZ7w=\n"), false);
            StringBuilder sb = new StringBuilder();
            sb.append(str2);
            sb.append(str4 != null ? "\n".concat(str4) : "");
            AbstractC0182.m1158(str, sb.toString(), false);
            C0964 c0964 = (C0964) f3805.get();
            if (c0964 != null) {
                c0964.m1579(str, str2, str5, str4, null, false);
            }
        } catch (Throwable unused) {
        }
    }
}
