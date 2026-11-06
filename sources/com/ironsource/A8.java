package com.ironsource;

import android.util.Log;
import com.ironsource.C3712le;
import com.ironsource.mediationsdk.logger.IronLog;
import java.util.HashMap;
import java.util.Map;

/* JADX INFO: loaded from: classes3.dex */
public class A8 {
    private static A8 b;
    private O5 a;

    private A8() {
    }

    private static A8 a() {
        if (b == null) {
            b = new A8();
        }
        return b;
    }

    public static void a(I5 i5, C3945y8 c3945y8) {
        if (i5 != null) {
            try {
                a().a = new O5(i5, c3945y8);
            } catch (Exception e) {
                C3813r4.d().a(e);
                IronLog.INTERNAL.error(e.toString());
            }
        }
    }

    public static void a(C3712le.a aVar) {
        a(aVar, new HashMap());
    }

    public static void a(C3712le.a aVar, Map<String, Object> map) {
        O5 o5 = a().a;
        if (o5 == null) {
            Log.d(G5.a, G5.V);
            return;
        }
        if (map != null) {
            map.put("eventid", Integer.valueOf(aVar.b));
        }
        o5.a(aVar.a, map);
    }
}
