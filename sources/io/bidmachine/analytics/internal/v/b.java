package io.bidmachine.analytics.internal.v;

import io.bidmachine.analytics.internal.u.a;
import io.bidmachine.analytics.internal.v.a;
import java.util.ArrayList;
import java.util.Collection;
import java.util.Comparator;
import java.util.Date;
import java.util.Iterator;
import java.util.List;
import kotlin.Lazy;
import kotlin.LazyKt__LazyJVMKt;
import kotlin.collections.CollectionsKt__IterablesKt;
import kotlin.collections.CollectionsKt___CollectionsKt;
import kotlin.collections.IntIterator;
import kotlin.comparisons.ComparisonsKt__ComparisonsKt;
import kotlin.jvm.functions.Function0;
import kotlin.jvm.functions.Function2;
import kotlin.jvm.internal.Lambda;
import kotlin.ranges.IntRange;
import kotlin.ranges.RangesKt___RangesKt;
import org.json.JSONException;
import org.json.JSONObject;

/* JADX INFO: loaded from: classes4.dex */
public final class b {
    public static final b a = new b();
    private static final Lazy b = LazyKt__LazyJVMKt.lazy(C1155b.a);
    private static final Lazy c = LazyKt__LazyJVMKt.lazy(c.a);
    private static final Lazy d = LazyKt__LazyJVMKt.lazy(d.a);
    private static final Lazy e = LazyKt__LazyJVMKt.lazy(a.a);

    public static final class a extends Lambda implements Function0 {
        public static final a a = new a();

        public a() {
            super(0);
        }

        @Override // kotlin.jvm.functions.Function0
        /* JADX INFO: renamed from: a, reason: merged with bridge method [inline-methods] */
        public final String invoke() {
            return io.bidmachine.analytics.internal.I.g.a("YXV0b1JlbmV3aW5n");
        }
    }

    /* JADX INFO: renamed from: io.bidmachine.analytics.internal.v.b$b, reason: collision with other inner class name */
    public static final class C1155b extends Lambda implements Function0 {
        public static final C1155b a = new C1155b();

        public C1155b() {
            super(0);
        }

        @Override // kotlin.jvm.functions.Function0
        /* JADX INFO: renamed from: a, reason: merged with bridge method [inline-methods] */
        public final String invoke() {
            return io.bidmachine.analytics.internal.I.g.a("cHJvZHVjdElk");
        }
    }

    public static final class c extends Lambda implements Function0 {
        public static final c a = new c();

        public c() {
            super(0);
        }

        @Override // kotlin.jvm.functions.Function0
        /* JADX INFO: renamed from: a, reason: merged with bridge method [inline-methods] */
        public final String invoke() {
            return io.bidmachine.analytics.internal.I.g.a("cHVyY2hhc2VUaW1l");
        }
    }

    public static final class d extends Lambda implements Function0 {
        public static final d a = new d();

        public d() {
            super(0);
        }

        @Override // kotlin.jvm.functions.Function0
        /* JADX INFO: renamed from: a, reason: merged with bridge method [inline-methods] */
        public final String invoke() {
            return io.bidmachine.analytics.internal.I.g.a("cXVhbnRpdHk=");
        }
    }

    public static final class e implements Comparator {
        @Override // java.util.Comparator
        public final int compare(Object obj, Object obj2) {
            return ComparisonsKt__ComparisonsKt.compareValues(((io.bidmachine.analytics.internal.v.a) obj2).a(), ((io.bidmachine.analytics.internal.v.a) obj).a());
        }
    }

    public static final class f extends Lambda implements Function2 {
        public static final f a = new f();

        public f() {
            super(2);
        }

        public final List a(JSONObject jSONObject, boolean z) {
            return b.a.a(jSONObject, z);
        }

        @Override // kotlin.jvm.functions.Function2
        public /* bridge */ /* synthetic */ Object invoke(Object obj, Object obj2) {
            return a((JSONObject) obj, ((Boolean) obj2).booleanValue());
        }
    }

    public static final class g extends Lambda implements Function2 {
        public static final g a = new g();

        public g() {
            super(2);
        }

        public final List a(JSONObject jSONObject, boolean z) {
            return b.a.b(jSONObject, z);
        }

        @Override // kotlin.jvm.functions.Function2
        public /* bridge */ /* synthetic */ Object invoke(Object obj, Object obj2) {
            return a((JSONObject) obj, ((Boolean) obj2).booleanValue());
        }
    }

    private b() {
    }

    public final String c() {
        return (String) c.getValue();
    }

    public final String d() {
        return (String) d.getValue();
    }

    public final String a() {
        return (String) e.getValue();
    }

    public final String b() {
        return (String) b.getValue();
    }

    private final List b(a.C1149a c1149a) {
        return a(c1149a, g.a);
    }

    public final List a(io.bidmachine.analytics.internal.u.a aVar) {
        return CollectionsKt___CollectionsKt.sortedWith(CollectionsKt___CollectionsKt.plus((Collection) b(aVar.e()), (Iterable) a(aVar.c())), new e());
    }

    /* JADX INFO: Access modifiers changed from: private */
    public final List b(JSONObject jSONObject, boolean z) throws JSONException {
        a.EnumC1154a enumC1154a;
        String string = jSONObject.getString(b());
        Date date = new Date(jSONObject.getLong(c()));
        int iOptInt = jSONObject.optInt(d(), 1);
        if (jSONObject.optBoolean(a(), false)) {
            enumC1154a = a.EnumC1154a.SUBS_AUTO_RENEWABLE;
        } else {
            enumC1154a = a.EnumC1154a.SUBS_NON_AUTO_RENEWABLE;
        }
        io.bidmachine.analytics.internal.v.a aVar = new io.bidmachine.analytics.internal.v.a(string, enumC1154a, date, z);
        IntRange intRangeUntil = RangesKt___RangesKt.until(0, iOptInt);
        ArrayList arrayList = new ArrayList(CollectionsKt__IterablesKt.collectionSizeOrDefault(intRangeUntil, 10));
        Iterator<Integer> it = intRangeUntil.iterator();
        while (it.hasNext()) {
            ((IntIterator) it).nextInt();
            arrayList.add(io.bidmachine.analytics.internal.v.a.a(aVar, null, null, null, false, 15, null));
        }
        return arrayList;
    }

    private final List a(a.C1149a c1149a) {
        return a(c1149a, f.a);
    }

    private final List a(a.C1149a c1149a, Function2 function2) {
        List list;
        JSONObject jSONObject;
        List list2;
        List listA = c1149a.a();
        ArrayList arrayList = new ArrayList();
        Iterator it = listA.iterator();
        while (true) {
            JSONObject jSONObject2 = null;
            if (!it.hasNext()) {
                break;
            }
            try {
                jSONObject2 = new JSONObject((String) it.next());
            } catch (Throwable unused) {
            }
            if (jSONObject2 != null) {
                arrayList.add(jSONObject2);
            }
        }
        ArrayList arrayList2 = new ArrayList();
        Iterator it2 = arrayList.iterator();
        while (it2.hasNext()) {
            try {
                list2 = (List) function2.invoke((JSONObject) it2.next(), Boolean.TRUE);
            } catch (Throwable unused2) {
                list2 = null;
            }
            if (list2 != null) {
                arrayList2.add(list2);
            }
        }
        List listC = c1149a.c();
        ArrayList arrayList3 = new ArrayList();
        Iterator it3 = listC.iterator();
        while (it3.hasNext()) {
            try {
                jSONObject = new JSONObject((String) it3.next());
            } catch (Throwable unused3) {
                jSONObject = null;
            }
            if (jSONObject != null) {
                arrayList3.add(jSONObject);
            }
        }
        ArrayList arrayList4 = new ArrayList();
        Iterator it4 = arrayList3.iterator();
        while (it4.hasNext()) {
            try {
                list = (List) function2.invoke((JSONObject) it4.next(), Boolean.FALSE);
            } catch (Throwable unused4) {
                list = null;
            }
            if (list != null) {
                arrayList4.add(list);
            }
        }
        return CollectionsKt___CollectionsKt.plus((Collection) CollectionsKt__IterablesKt.flatten(arrayList2), (Iterable) CollectionsKt__IterablesKt.flatten(arrayList4));
    }

    /* JADX INFO: Access modifiers changed from: private */
    public final List a(JSONObject jSONObject, boolean z) throws JSONException {
        String string = jSONObject.getString(b());
        Date date = new Date(jSONObject.getLong(c()));
        int iOptInt = jSONObject.optInt(d(), 1);
        io.bidmachine.analytics.internal.v.a aVar = new io.bidmachine.analytics.internal.v.a(string, a.EnumC1154a.INAPP_CONSUMABLE, date, z);
        IntRange intRangeUntil = RangesKt___RangesKt.until(0, iOptInt);
        ArrayList arrayList = new ArrayList(CollectionsKt__IterablesKt.collectionSizeOrDefault(intRangeUntil, 10));
        Iterator<Integer> it = intRangeUntil.iterator();
        while (it.hasNext()) {
            ((IntIterator) it).nextInt();
            arrayList.add(io.bidmachine.analytics.internal.v.a.a(aVar, null, null, null, false, 15, null));
        }
        return arrayList;
    }
}
