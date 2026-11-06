package com.ironsource;

import com.ironsource.C3522b4;
import com.vungle.ads.internal.protos.Sdk;
import java.util.ArrayList;
import java.util.Arrays;
import java.util.Collection;
import java.util.Iterator;
import java.util.List;
import java.util.Locale;
import kotlin.collections.CollectionsKt__IterablesKt;
import kotlin.enums.EnumEntries;
import kotlin.enums.EnumEntriesKt;
import kotlin.jvm.internal.DefaultConstructorMarker;
import kotlin.jvm.internal.Intrinsics;
import kotlin.jvm.internal.StringCompanionObject;
import org.json.JSONArray;
import org.json.JSONException;
import org.json.JSONObject;

/* JADX INFO: loaded from: classes3.dex */
public final class Fb {
    public static final a e = new a(null);
    private static final String f = "graceDuration";
    private static final String g = "graceOutcome";
    private static final String h = "heldDuration";
    private static final String i = "instances";
    private static final String j = "id";
    private static final String k = "adNetwork";
    private static final String l = "showOrderIndex";
    private static final String m = "loadOrderIndex";
    private static final String n = "revenue";
    private static final String o = "precision";
    private static final String p = "status";
    private static final String q = "delivered";
    private final long a;
    private final b b;
    private final long c;
    private final List<c> d;

    public static final class a {
        public /* synthetic */ a(DefaultConstructorMarker defaultConstructorMarker) {
            this();
        }

        private a() {
        }
    }

    /* JADX WARN: Failed to restore enum class, 'enum' modifier and super class removed */
    /* JADX WARN: Unknown enum class pattern. Please report as an issue! */
    public static final class b {
        public static final b b = new b("NOT_SCHEDULED", 0, "not_scheduled");
        public static final b c = new b("BEST_LOADED", 1, "best_loaded");
        public static final b d = new b("BETTER_LOADED_GRACE_EXPIRED", 2, "better_loaded_grace_expired");
        public static final b e = new b("BETTER_LOADED_BEST_FAILED", 3, "better_loaded_best_failed");
        public static final b f = new b("INITIAL_LOADED_GRACE_EXPIRED", 4, "initial_loaded_grace_expired");
        public static final b g = new b("INITIAL_LOADED_BEST_FAILED", 5, "initial_loaded_best_failed");
        private static final /* synthetic */ b[] h;
        private static final /* synthetic */ EnumEntries i;
        private final String a;

        static {
            b[] bVarArrA = a();
            h = bVarArrA;
            i = EnumEntriesKt.enumEntries(bVarArrA);
        }

        private b(String str, int i2, String str2) {
            this.a = str2;
        }

        private static final /* synthetic */ b[] a() {
            return new b[]{b, c, d, e, f, g};
        }

        public static EnumEntries<b> b() {
            return i;
        }

        public static b valueOf(String str) {
            return (b) Enum.valueOf(b.class, str);
        }

        public static b[] values() {
            return (b[]) h.clone();
        }

        public final String c() {
            return this.a;
        }
    }

    public static final class c {
        private final String a;
        private final String b;
        private final int c;
        private final int d;
        private final double e;
        private final String f;
        private final d g;
        private final boolean h;

        public c(String instanceId, String adNetwork, int i, int i2, double d, String precision, d status, boolean z) {
            Intrinsics.checkNotNullParameter(instanceId, "instanceId");
            Intrinsics.checkNotNullParameter(adNetwork, "adNetwork");
            Intrinsics.checkNotNullParameter(precision, "precision");
            Intrinsics.checkNotNullParameter(status, "status");
            this.a = instanceId;
            this.b = adNetwork;
            this.c = i;
            this.d = i2;
            this.e = d;
            this.f = precision;
            this.g = status;
            this.h = z;
        }

        public final String a() {
            return this.a;
        }

        public final String b() {
            return this.b;
        }

        public final int c() {
            return this.c;
        }

        public final int d() {
            return this.d;
        }

        public final double e() {
            return this.e;
        }

        public boolean equals(Object obj) {
            if (this == obj) {
                return true;
            }
            if (!(obj instanceof c)) {
                return false;
            }
            c cVar = (c) obj;
            return Intrinsics.areEqual(this.a, cVar.a) && Intrinsics.areEqual(this.b, cVar.b) && this.c == cVar.c && this.d == cVar.d && Double.compare(this.e, cVar.e) == 0 && Intrinsics.areEqual(this.f, cVar.f) && this.g == cVar.g && this.h == cVar.h;
        }

        public final String f() {
            return this.f;
        }

        public final d g() {
            return this.g;
        }

        public final boolean h() {
            return this.h;
        }

        public int hashCode() {
            return (((((((((((((this.a.hashCode() * 31) + this.b.hashCode()) * 31) + Integer.hashCode(this.c)) * 31) + Integer.hashCode(this.d)) * 31) + Double.hashCode(this.e)) * 31) + this.f.hashCode()) * 31) + this.g.hashCode()) * 31) + Boolean.hashCode(this.h);
        }

        public final String i() {
            return this.b;
        }

        public final boolean j() {
            return this.h;
        }

        public final String k() {
            return this.a;
        }

        public final int l() {
            return this.d;
        }

        public final String m() {
            return this.f;
        }

        public final double n() {
            return this.e;
        }

        public final int o() {
            return this.c;
        }

        public final d p() {
            return this.g;
        }

        public String toString() {
            return "InstanceState(instanceId=" + this.a + ", adNetwork=" + this.b + ", showOrderIndex=" + this.c + ", loadOrderIndex=" + this.d + ", revenue=" + this.e + ", precision=" + this.f + ", status=" + this.g + ", delivered=" + this.h + ")";
        }

        public final c a(String instanceId, String adNetwork, int i, int i2, double d, String precision, d status, boolean z) {
            Intrinsics.checkNotNullParameter(instanceId, "instanceId");
            Intrinsics.checkNotNullParameter(adNetwork, "adNetwork");
            Intrinsics.checkNotNullParameter(precision, "precision");
            Intrinsics.checkNotNullParameter(status, "status");
            return new c(instanceId, adNetwork, i, i2, d, precision, status, z);
        }

        public static /* synthetic */ c a(c cVar, String str, String str2, int i, int i2, double d, String str3, d dVar, boolean z, int i3, Object obj) {
            if ((i3 & 1) != 0) {
                str = cVar.a;
            }
            if ((i3 & 2) != 0) {
                str2 = cVar.b;
            }
            if ((i3 & 4) != 0) {
                i = cVar.c;
            }
            if ((i3 & 8) != 0) {
                i2 = cVar.d;
            }
            if ((i3 & 16) != 0) {
                d = cVar.e;
            }
            if ((i3 & 32) != 0) {
                str3 = cVar.f;
            }
            if ((i3 & 64) != 0) {
                dVar = cVar.g;
            }
            if ((i3 & Sdk.SDKError.Reason.INVALID_TPAT_KEY_VALUE) != 0) {
                z = cVar.h;
            }
            boolean z2 = z;
            String str4 = str3;
            double d2 = d;
            int i4 = i;
            int i5 = i2;
            return cVar.a(str, str2, i4, i5, d2, str4, dVar, z2);
        }
    }

    /* JADX WARN: Failed to restore enum class, 'enum' modifier and super class removed */
    /* JADX WARN: Unknown enum class pattern. Please report as an issue! */
    public static final class d {
        public static final d b = new d("LOADING", 0, "loading");
        public static final d c = new d("LOADED", 1, C3522b4.i.r);
        public static final d d = new d("FAILED", 2, "failed");
        public static final d e = new d("TIMED_OUT", 3, "timedOut");
        private static final /* synthetic */ d[] f;
        private static final /* synthetic */ EnumEntries g;
        private final String a;

        static {
            d[] dVarArrA = a();
            f = dVarArrA;
            g = EnumEntriesKt.enumEntries(dVarArrA);
        }

        private d(String str, int i, String str2) {
            this.a = str2;
        }

        private static final /* synthetic */ d[] a() {
            return new d[]{b, c, d, e};
        }

        public static EnumEntries<d> b() {
            return g;
        }

        public static d valueOf(String str) {
            return (d) Enum.valueOf(d.class, str);
        }

        public static d[] values() {
            return (d[]) f.clone();
        }

        public final String c() {
            return this.a;
        }
    }

    public Fb(long j2, b graceOutcome, long j3, List<c> instances) {
        Intrinsics.checkNotNullParameter(graceOutcome, "graceOutcome");
        Intrinsics.checkNotNullParameter(instances, "instances");
        this.a = j2;
        this.b = graceOutcome;
        this.c = j3;
        this.d = instances;
    }

    public final long a() {
        return this.a;
    }

    public final b b() {
        return this.b;
    }

    public final long c() {
        return this.c;
    }

    public final List<c> d() {
        return this.d;
    }

    public final long e() {
        return this.a;
    }

    public boolean equals(Object obj) {
        if (this == obj) {
            return true;
        }
        if (!(obj instanceof Fb)) {
            return false;
        }
        Fb fb = (Fb) obj;
        return this.a == fb.a && this.b == fb.b && this.c == fb.c && Intrinsics.areEqual(this.d, fb.d);
    }

    public final b f() {
        return this.b;
    }

    public final long g() {
        return this.c;
    }

    public final List<c> h() {
        return this.d;
    }

    public int hashCode() {
        return (((((Long.hashCode(this.a) * 31) + this.b.hashCode()) * 31) + Long.hashCode(this.c)) * 31) + this.d.hashCode();
    }

    public final String i() throws JSONException {
        JSONObject jSONObjectPut = new JSONObject().put(f, this.a).put(g, this.b.c()).put(h, this.c);
        List<c> list = this.d;
        ArrayList arrayList = new ArrayList(CollectionsKt__IterablesKt.collectionSizeOrDefault(list, 10));
        Iterator<T> it = list.iterator();
        while (it.hasNext()) {
            arrayList.add(b((c) it.next()));
        }
        String string = jSONObjectPut.put("instances", new JSONArray((Collection) arrayList)).toString();
        Intrinsics.checkNotNullExpressionValue(string, "toString(...)");
        return string;
    }

    public String toString() {
        return "LoadGraceResult(graceDurationMs=" + this.a + ", graceOutcome=" + this.b + ", heldDurationMs=" + this.c + ", instances=" + this.d + ")";
    }

    private final JSONObject b(c cVar) throws JSONException {
        JSONObject jSONObjectPut = new JSONObject().put("id", cVar.k()).put("adNetwork", cVar.i()).put(l, cVar.o()).put(m, cVar.l()).put("revenue", a(cVar)).put("precision", cVar.m()).put("status", cVar.p().c()).put(q, cVar.j() ? 1 : 0);
        Intrinsics.checkNotNullExpressionValue(jSONObjectPut, "put(...)");
        return jSONObjectPut;
    }

    public final Fb a(long j2, b graceOutcome, long j3, List<c> instances) {
        Intrinsics.checkNotNullParameter(graceOutcome, "graceOutcome");
        Intrinsics.checkNotNullParameter(instances, "instances");
        return new Fb(j2, graceOutcome, j3, instances);
    }

    /* JADX WARN: Multi-variable type inference failed */
    public static /* synthetic */ Fb a(Fb fb, long j2, b bVar, long j3, List list, int i2, Object obj) {
        if ((i2 & 1) != 0) {
            j2 = fb.a;
        }
        long j4 = j2;
        if ((i2 & 2) != 0) {
            bVar = fb.b;
        }
        b bVar2 = bVar;
        if ((i2 & 4) != 0) {
            j3 = fb.c;
        }
        long j5 = j3;
        if ((i2 & 8) != 0) {
            list = fb.d;
        }
        return fb.a(j4, bVar2, j5, list);
    }

    private final double a(c cVar) {
        if (Math.abs(cVar.n()) > Double.MAX_VALUE) {
            return -1.0d;
        }
        StringCompanionObject stringCompanionObject = StringCompanionObject.INSTANCE;
        String str = String.format(Locale.ENGLISH, "%.3f", Arrays.copyOf(new Object[]{Double.valueOf(cVar.n())}, 1));
        Intrinsics.checkNotNullExpressionValue(str, "format(...)");
        return Double.parseDouble(str);
    }
}
