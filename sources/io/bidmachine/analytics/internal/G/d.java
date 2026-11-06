package io.bidmachine.analytics.internal.G;

import io.bidmachine.analytics.internal.g.C4117d;
import io.bidmachine.analytics.internal.g.h;
import java.util.Map;
import kotlin.collections.MapsKt__MapsKt;
import kotlin.text.Charsets;
import org.json.JSONObject;

/* JADX INFO: loaded from: classes4.dex */
public abstract class d {
    public static final c a(C4117d c4117d) {
        byte[] bytes;
        JSONObject jSONObjectA;
        String string;
        byte[] bytes2 = c4117d.a().isEmpty() ? new byte[0] : io.bidmachine.analytics.internal.I.g.a(c4117d.a()).toString().getBytes(Charsets.UTF_8);
        String strC = c4117d.c();
        String strD = c4117d.d();
        String strE = c4117d.e();
        long jF = c4117d.f();
        h hVarB = c4117d.b();
        if (hVarB == null || (jSONObjectA = g.a(hVarB)) == null || (string = jSONObjectA.toString()) == null || (bytes = string.getBytes(Charsets.UTF_8)) == null) {
            bytes = new byte[0];
        }
        return new c(strC, strD, strE, jF, bytes2, bytes);
    }

    public static final C4117d a(c cVar) {
        Map mapA;
        if (cVar.a().length == 0) {
            mapA = MapsKt__MapsKt.emptyMap();
        } else {
            mapA = io.bidmachine.analytics.internal.I.g.a(new JSONObject(new String(cVar.a(), Charsets.UTF_8)));
        }
        return new C4117d(cVar.c(), cVar.d(), cVar.e(), cVar.f(), mapA, cVar.b().length == 0 ? null : g.a(new JSONObject(new String(cVar.b(), Charsets.UTF_8))));
    }
}
