package com.ironsource.adqualitysdk.sdk.i;

import android.app.Activity;
import android.os.Handler;
import android.os.Looper;
import com.ironsource.adqualitysdk.sdk.StringFog;
import java.util.HashMap;
import java.util.Iterator;
import java.util.LinkedHashMap;
import java.util.Map;
import org.json.JSONObject;

/* JADX INFO: renamed from: com.ironsource.adqualitysdk.sdk.i.ˍ, reason: contains not printable characters */
/* JADX INFO: loaded from: classes3.dex */
public final class C0164 {

    /* JADX INFO: renamed from: ﻛ, reason: contains not printable characters */
    public static C0164 f1166;

    /* JADX INFO: renamed from: ﾇ, reason: contains not printable characters */
    public HashMap f1168;

    /* JADX INFO: renamed from: ﾒ, reason: contains not printable characters */
    public final HashMap f1169 = new HashMap();

    /* JADX INFO: renamed from: ｋ, reason: contains not printable characters */
    public final Handler f1167 = new Handler(Looper.getMainLooper());

    static {
        StringFog.decrypt("lqBvSf+OszKHrG5D+KSCP5Kq\n", "4s8aKpfK1kY=\n");
        StringFog.decrypt("uLIj\n", "2cZPci7+/WM=\n");
        StringFog.decrypt("ctY=\n", "ALrWr54DEcQ=\n");
        StringFog.decrypt("wR/M\n", "r3CiNJ6ZH14=\n");
    }

    /* JADX INFO: renamed from: ｋ, reason: contains not printable characters */
    public static synchronized C0164 m1136() {
        try {
            if (f1166 == null) {
                f1166 = new C0164();
            }
        } catch (Throwable th) {
            throw th;
        }
        return f1166;
    }

    /* JADX INFO: renamed from: ﾇ, reason: contains not printable characters */
    public final synchronized boolean m1139(Activity activity) {
        return EnumC0168.f1175 == m1140(activity);
    }

    /* JADX INFO: renamed from: ﾒ, reason: contains not printable characters */
    public final synchronized EnumC0168 m1140(Activity activity) {
        if (activity != null) {
            String name = activity.getClass().getName();
            if (m1138().containsKey(name)) {
                return (EnumC0168) m1138().get(name);
            }
            if (m1141().containsKey(name)) {
                return (EnumC0168) m1141().get(name);
            }
        }
        return EnumC0168.m1142(AbstractC0885.m1491().mo1504());
    }

    /* JADX INFO: renamed from: ﾇ, reason: contains not printable characters */
    public final synchronized HashMap m1138() {
        return new HashMap(this.f1169);
    }

    /* JADX INFO: renamed from: ｋ, reason: contains not printable characters */
    public final synchronized boolean m1137(Activity activity) {
        return EnumC0168.f1174 == m1140(activity);
    }

    /* JADX INFO: renamed from: ﾒ, reason: contains not printable characters */
    public final synchronized Map m1141() {
        JSONObject jSONObjectOptJSONObject;
        try {
            if (this.f1168 == null) {
                this.f1168 = new HashMap();
                C0975 c0975 = ((C0893) AbstractC0885.m1491()).f2611;
                if (c0975 != null) {
                    jSONObjectOptJSONObject = c0975.f3676.optJSONObject(C0975.f3673);
                    if (jSONObjectOptJSONObject == null) {
                        jSONObjectOptJSONObject = c0975.f3675;
                    }
                } else {
                    jSONObjectOptJSONObject = null;
                }
                if (jSONObjectOptJSONObject != null) {
                    LinkedHashMap linkedHashMap = new LinkedHashMap();
                    Iterator<String> itKeys = jSONObjectOptJSONObject.keys();
                    while (itKeys.hasNext()) {
                        String next = itKeys.next();
                        linkedHashMap.put(next, EnumC0168.m1142(jSONObjectOptJSONObject.optString(next)));
                    }
                    this.f1168 = linkedHashMap;
                }
            }
        } catch (Throwable th) {
            throw th;
        }
        return this.f1168;
    }
}
