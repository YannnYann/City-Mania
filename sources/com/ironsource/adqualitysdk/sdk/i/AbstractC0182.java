package com.ironsource.adqualitysdk.sdk.i;

import android.util.Log;
import com.ironsource.adqualitysdk.sdk.ISAdQualityLogLevel;
import com.ironsource.adqualitysdk.sdk.StringFog;

/* JADX INFO: renamed from: com.ironsource.adqualitysdk.sdk.i.Λ, reason: contains not printable characters */
/* JADX INFO: loaded from: classes3.dex */
public abstract class AbstractC0182 {
    static {
        StringFog.decrypt("T0GMe6PbrBdlVsNUlOWsBGpal2w=\n", "BjPjFfC02WU=\n");
    }

    /* JADX INFO: renamed from: ﻛ, reason: contains not printable characters */
    public static void m1147(String str, String str2) {
        m1156(str, str, str2, null, null, false);
    }

    /* JADX INFO: renamed from: ｋ, reason: contains not printable characters */
    public static void m1148(String str, String str2) {
        m1155(str, str, str2, null, false);
    }

    /* JADX INFO: renamed from: ﾇ, reason: contains not printable characters */
    public static boolean m1151() {
        boolean z;
        C0204 c0204M1165 = C0204.m1165();
        synchronized (c0204M1165) {
            z = c0204M1165.f1360;
        }
        return z;
    }

    /* JADX INFO: renamed from: ﾒ, reason: contains not printable characters */
    public static ISAdQualityLogLevel m1152() {
        ISAdQualityLogLevel iSAdQualityLogLevel;
        C0204 c0204M1165 = C0204.m1165();
        synchronized (c0204M1165) {
            iSAdQualityLogLevel = c0204M1165.f1359;
        }
        return iSAdQualityLogLevel;
    }

    /* JADX INFO: renamed from: ﾇ, reason: contains not printable characters */
    public static void m1149(String str, String str2) {
        m1156(str, str, str2, null, null, true);
    }

    /* JADX INFO: renamed from: ﾒ, reason: contains not printable characters */
    public static void m1158(String str, String str2, boolean z) {
        m1156(str, str, str2, null, null, z);
    }

    /* JADX INFO: renamed from: ﾇ, reason: contains not printable characters */
    public static void m1150(String str, String str2, String str3, boolean z) {
        if (m1151()) {
            Log.v(m1153(str), str3);
        } else if (z && m1152().shouldPrintLog(ISAdQualityLogLevel.VERBOSE)) {
            Log.v(m1153(str2), str3);
        }
    }

    /* JADX INFO: renamed from: ﾒ, reason: contains not printable characters */
    public static void m1156(String str, String str2, String str3, Throwable th, AbstractC0692 abstractC0692, boolean z) {
        if (m1151()) {
            String strM1153 = m1153(str);
            if (abstractC0692 != null) {
                str3 = str3 + "\n" + abstractC0692;
            }
            Log.e(strM1153, str3, th);
            return;
        }
        if (z && m1152().shouldPrintLog(ISAdQualityLogLevel.ERROR)) {
            String strM11532 = m1153(str2);
            if (abstractC0692 != null) {
                str3 = str3 + "\n" + abstractC0692;
            }
            Log.e(strM11532, str3, th);
        }
    }

    /* JADX INFO: renamed from: ﾒ, reason: contains not printable characters */
    public static void m1157(String str, String str2, String str3, boolean z) {
        if (m1151()) {
            Log.i(m1153(str), str3);
        } else if (z && m1152().shouldPrintLog(ISAdQualityLogLevel.INFO)) {
            Log.i(m1153(str2), str3);
        }
    }

    /* JADX INFO: renamed from: ﾒ, reason: contains not printable characters */
    public static void m1154(String str, String str2) {
        m1155(str, str, str2, null, true);
    }

    /* JADX INFO: renamed from: ﾒ, reason: contains not printable characters */
    public static void m1155(String str, String str2, String str3, Object obj, boolean z) {
        if (obj != null) {
            str3 = str3 + "\n" + obj.toString();
        }
        if (m1151()) {
            Log.d(m1153(str), str3);
        } else if (z && m1152().shouldPrintLog(ISAdQualityLogLevel.DEBUG)) {
            Log.d(m1153(str2), str3);
        }
    }

    /* JADX INFO: renamed from: ﾒ, reason: contains not printable characters */
    public static String m1153(String str) {
        return AbstractC0202.m1159("tnK0mgRVlhScZfu1M2uWB5Npr41tGg==\n", "/wDb9Fc642Y=\n", new StringBuilder(), str);
    }
}
