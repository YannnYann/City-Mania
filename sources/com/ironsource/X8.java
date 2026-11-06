package com.ironsource;

import com.ironsource.mediationsdk.utils.IronSourceConstants;
import com.ironsource.mediationsdk.utils.IronSourceUtils;
import kotlin.jvm.internal.DefaultConstructorMarker;
import kotlin.jvm.internal.Intrinsics;
import org.json.JSONException;
import org.json.JSONObject;

/* JADX INFO: loaded from: classes3.dex */
public final class X8 {
    private static final a b = new a(null);

    @Deprecated
    public static final String c = "mismatch";
    private final G1 a;

    public static final class a {
        public /* synthetic */ a(DefaultConstructorMarker defaultConstructorMarker) {
            this();
        }

        private a() {
        }
    }

    /* JADX WARN: Multi-variable type inference failed */
    public X8() {
        this(null, 1, 0 == true ? 1 : 0);
    }

    public final void a(String subscriberId, Class<?> listenerClass) throws JSONException {
        Intrinsics.checkNotNullParameter(subscriberId, "subscriberId");
        Intrinsics.checkNotNullParameter(listenerClass, "listenerClass");
        a(this, D5.L3, subscriberId, listenerClass, null, 8, null);
    }

    public X8(G1 appEventsManager) {
        Intrinsics.checkNotNullParameter(appEventsManager, "appEventsManager");
        this.a = appEventsManager;
    }

    public final void a(String subscriberId, Class<?> listenerClass, boolean z) throws JSONException {
        Intrinsics.checkNotNullParameter(subscriberId, "subscriberId");
        Intrinsics.checkNotNullParameter(listenerClass, "listenerClass");
        a(D5.M3, subscriberId, listenerClass, z ? c : null);
    }

    public /* synthetic */ X8(G1 g1, int i, DefaultConstructorMarker defaultConstructorMarker) {
        this((i & 1) != 0 ? Pb.w.d().q() : g1);
    }

    public final void a(Class<?> listenerClass) throws JSONException {
        Intrinsics.checkNotNullParameter(listenerClass, "listenerClass");
        a(this, D5.N3, null, listenerClass, null, 8, null);
    }

    public static /* synthetic */ void a(X8 x8, D5 d5, String str, Class cls, String str2, int i, Object obj) throws JSONException {
        if ((i & 8) != 0) {
            str2 = null;
        }
        x8.a(d5, str, cls, str2);
    }

    private final void a(D5 d5, String str, Class<?> cls, String str2) throws JSONException {
        StringBuilder sb = new StringBuilder();
        if (str != null) {
            sb.append("subId=" + str + ",");
        }
        sb.append("name=" + cls.getName());
        String string = sb.toString();
        JSONObject jSONObjectB = IronSourceUtils.b(false);
        jSONObjectB.put(IronSourceConstants.EVENTS_EXT1, string);
        if (str2 != null) {
            jSONObjectB.put("reason", str2);
        }
        this.a.a(new C5(d5, jSONObjectB));
    }
}
