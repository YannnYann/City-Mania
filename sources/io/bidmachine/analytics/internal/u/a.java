package io.bidmachine.analytics.internal.u;

import java.util.Collection;
import java.util.List;
import kotlin.Lazy;
import kotlin.LazyKt__LazyJVMKt;
import kotlin.collections.CollectionsKt__CollectionsKt;
import kotlin.collections.CollectionsKt___CollectionsKt;
import kotlin.jvm.functions.Function0;
import kotlin.jvm.internal.DefaultConstructorMarker;
import kotlin.jvm.internal.Intrinsics;
import kotlin.jvm.internal.Lambda;
import org.json.JSONArray;
import org.json.JSONException;
import org.json.JSONObject;

/* JADX INFO: loaded from: classes4.dex */
public final class a {
    private final String a;
    private final C1149a b;
    private final C1149a c;
    private final Lazy d = LazyKt__LazyJVMKt.lazy(new c());
    private final Lazy e = LazyKt__LazyJVMKt.lazy(new b());

    /* JADX INFO: renamed from: io.bidmachine.analytics.internal.u.a$a, reason: collision with other inner class name */
    public static final class C1149a {
        private final List a;
        private final List b;
        private final List c;

        public C1149a(List list, List list2, List list3) {
            this.a = list;
            this.b = list2;
            this.c = list3;
        }

        public final C1149a a(List list, List list2, List list3) {
            return new C1149a(list, list2, list3);
        }

        public final List b() {
            return this.c;
        }

        public final List c() {
            return this.b;
        }

        public final boolean d() {
            return this.a.isEmpty() && this.b.isEmpty() && this.c.isEmpty();
        }

        public boolean equals(Object obj) {
            if (this == obj) {
                return true;
            }
            if (!(obj instanceof C1149a)) {
                return false;
            }
            C1149a c1149a = (C1149a) obj;
            return Intrinsics.areEqual(this.a, c1149a.a) && Intrinsics.areEqual(this.b, c1149a.b) && Intrinsics.areEqual(this.c, c1149a.c);
        }

        public int hashCode() {
            return (((this.a.hashCode() * 31) + this.b.hashCode()) * 31) + this.c.hashCode();
        }

        public String toString() {
            return super.toString();
        }

        public static /* synthetic */ C1149a a(C1149a c1149a, List list, List list2, List list3, int i, Object obj) {
            if ((i & 1) != 0) {
                list = c1149a.a;
            }
            if ((i & 2) != 0) {
                list2 = c1149a.b;
            }
            if ((i & 4) != 0) {
                list3 = c1149a.c;
            }
            return c1149a.a(list, list2, list3);
        }

        public final List a() {
            return this.a;
        }

        public /* synthetic */ C1149a(List list, List list2, List list3, int i, DefaultConstructorMarker defaultConstructorMarker) {
            this((i & 1) != 0 ? CollectionsKt__CollectionsKt.emptyList() : list, (i & 2) != 0 ? CollectionsKt__CollectionsKt.emptyList() : list2, (i & 4) != 0 ? CollectionsKt__CollectionsKt.emptyList() : list3);
        }
    }

    public static final class b extends Lambda implements Function0 {
        public b() {
            super(0);
        }

        @Override // kotlin.jvm.functions.Function0
        /* JADX INFO: renamed from: a, reason: merged with bridge method [inline-methods] */
        public final String invoke() {
            return a.this.d().hashCode() + '_' + CollectionsKt___CollectionsKt.joinToString$default(CollectionsKt__CollectionsKt.listOf((Object[]) new Integer[]{Integer.valueOf(a.this.c().a().size()), Integer.valueOf(a.this.c().c().size()), Integer.valueOf(a.this.c().b().size()), Integer.valueOf(a.this.e().a().size()), Integer.valueOf(a.this.e().c().size()), Integer.valueOf(a.this.e().b().size())}), "_", null, null, 0, null, null, 62, null);
        }
    }

    public static final class c extends Lambda implements Function0 {
        public c() {
            super(0);
        }

        @Override // kotlin.jvm.functions.Function0
        /* JADX INFO: renamed from: a, reason: merged with bridge method [inline-methods] */
        public final String invoke() throws JSONException {
            JSONObject jSONObject = new JSONObject();
            a aVar = a.this;
            jSONObject.put("ver", aVar.a());
            jSONObject.put("iaa", new JSONArray((Collection) aVar.c().a()));
            jSONObject.put("iah", new JSONArray((Collection) aVar.c().c()));
            jSONObject.put("iad", new JSONArray((Collection) aVar.c().b()));
            jSONObject.put("sua", new JSONArray((Collection) aVar.e().a()));
            jSONObject.put("suh", new JSONArray((Collection) aVar.e().c()));
            jSONObject.put("sud", new JSONArray((Collection) aVar.e().b()));
            return jSONObject.toString();
        }
    }

    public a(String str, C1149a c1149a, C1149a c1149a2) {
        this.a = str;
        this.b = c1149a;
        this.c = c1149a2;
    }

    /* JADX INFO: Access modifiers changed from: private */
    public final String d() {
        return (String) this.d.getValue();
    }

    public final String b() {
        return (String) this.e.getValue();
    }

    public final C1149a c() {
        return this.b;
    }

    public final C1149a e() {
        return this.c;
    }

    public boolean equals(Object obj) {
        if (this == obj) {
            return true;
        }
        if (!(obj instanceof a)) {
            return false;
        }
        a aVar = (a) obj;
        return Intrinsics.areEqual(this.a, aVar.a) && Intrinsics.areEqual(this.b, aVar.b) && Intrinsics.areEqual(this.c, aVar.c);
    }

    public final boolean f() {
        return this.b.d() && this.c.d();
    }

    public int hashCode() {
        return (((this.a.hashCode() * 31) + this.b.hashCode()) * 31) + this.c.hashCode();
    }

    public String toString() {
        return d();
    }

    public final String a() {
        return this.a;
    }
}
