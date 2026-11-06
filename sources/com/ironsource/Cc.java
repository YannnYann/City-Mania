package com.ironsource;

import java.util.HashMap;
import java.util.List;
import kotlin.jvm.internal.DefaultConstructorMarker;
import kotlin.jvm.internal.Intrinsics;
import org.json.JSONObject;

/* JADX INFO: loaded from: classes3.dex */
public final class Cc {
    private final C3867u2 a;
    private final boolean b;

    public static final class a {
        public static final a a = new a();
        public static final String b = "adm";
        public static final String c = "isOneFlow";
        public static final String d = "isMultipleAdObjects";
        public static final String e = "adsInternalInfo";
        public static final String f = "success";
        public static final String g = "error";
        public static final String h = "data";

        private a() {
        }
    }

    /* JADX WARN: Multi-variable type inference failed */
    public Cc() {
        this(null, false, 3, 0 == true ? 1 : 0);
    }

    public final HashMap<String, String> a() {
        C3957z2 c3957z2G;
        HashMap<String, String> map = new HashMap<>();
        map.put("isOneFlow", String.valueOf(this.b));
        map.put("isMultipleAdObjects", "true");
        List<O> listA = Pb.w.d().K().a();
        String string = listA != null ? new JSONObject().put("success", true).put("data", listA).toString() : new JSONObject().put("success", false).put(a.g, "Failed to get ad internal info").toString();
        Intrinsics.checkNotNull(string);
        map.put(a.e, string);
        C3867u2 c3867u2 = this.a;
        if (c3867u2 != null && (c3957z2G = c3867u2.g()) != null) {
            map.put("adm", c3957z2G.a());
            map.putAll(c3957z2G.b());
        }
        return map;
    }

    public Cc(C3867u2 c3867u2, boolean z) {
        this.a = c3867u2;
        this.b = z;
    }

    public /* synthetic */ Cc(C3867u2 c3867u2, boolean z, int i, DefaultConstructorMarker defaultConstructorMarker) {
        this((i & 1) != 0 ? null : c3867u2, (i & 2) != 0 ? false : z);
    }
}
