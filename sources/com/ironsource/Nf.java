package com.ironsource;

import com.ironsource.mediationsdk.utils.IronSourceConstants;
import java.util.Collection;
import java.util.List;
import java.util.concurrent.ConcurrentHashMap;
import kotlin.jvm.internal.Intrinsics;
import org.json.JSONArray;
import org.json.JSONException;
import org.json.JSONObject;

/* JADX INFO: loaded from: classes3.dex */
public final class Nf {
    public static final Nf a = new Nf();

    private Nf() {
    }

    public final void a(int i) {
        a(D5.x, Integer.valueOf(i), null);
    }

    public final void b() {
        a(this, D5.v, null, null, 6, null);
    }

    public final void c() {
        a(this, D5.w, null, null, 6, null);
    }

    public final void d() throws JSONException {
        a(this, D5.y, null, null, 6, null);
    }

    public final void a(String errorReason) throws JSONException {
        Intrinsics.checkNotNullParameter(errorReason, "errorReason");
        a(D5.z, Integer.valueOf(IronSourceConstants.errorCode_TEST_SUITE_WEB_CONTROLLER_NOT_LOADED), errorReason);
    }

    public static /* synthetic */ void a(Nf nf, D5 d5, Integer num, String str, int i, Object obj) throws JSONException {
        if ((i & 2) != 0) {
            num = null;
        }
        if ((i & 4) != 0) {
            str = null;
        }
        nf.a(d5, num, str);
    }

    private final void a(D5 d5, Integer num, String str) throws JSONException {
        Wf wf = Wf.a;
        JSONObject jSONObjectA = wf.a(false);
        if (num != null) {
            jSONObjectA.put("errorCode", num.intValue());
            JSONArray jSONArrayA = a();
            if (jSONArrayA != null) {
                jSONObjectA.put(com.ironsource.mediationsdk.metadata.a.f, jSONArrayA);
            }
        }
        if (str != null) {
            jSONObjectA.put("reason", str);
        }
        wf.a(d5, jSONObjectA);
    }

    private final JSONArray a() {
        ConcurrentHashMap<String, List<String>> concurrentHashMapD = Wf.a.d();
        if (concurrentHashMapD.containsKey(com.ironsource.mediationsdk.metadata.a.f)) {
            return new JSONArray((Collection) concurrentHashMapD.get(com.ironsource.mediationsdk.metadata.a.f));
        }
        return null;
    }
}
