package io.bidmachine.analytics.internal.t;

import io.bidmachine.analytics.ReaderConfig;
import io.bidmachine.analytics.internal.r.a;
import io.bidmachine.analytics.internal.t.b;
import java.io.FileNotFoundException;
import java.util.ArrayList;
import java.util.Iterator;
import java.util.LinkedHashMap;
import java.util.List;
import java.util.Map;
import java.util.concurrent.Executors;
import kotlin.collections.CollectionsKt__IterablesKt;
import kotlin.collections.MapsKt__MapsJVMKt;
import kotlin.collections.MapsKt__MapsKt;
import kotlin.jvm.internal.DefaultConstructorMarker;
import kotlin.ranges.RangesKt___RangesKt;
import kotlinx.coroutines.CoroutineScopeKt;
import kotlinx.coroutines.ExecutorsKt;

/* JADX INFO: loaded from: classes4.dex */
public final class d {
    private final e a;
    private final b.a b;
    private Map c;

    public static final class a implements b.a {
        private final e a;

        public a(e eVar) {
            this.a = eVar;
        }

        @Override // io.bidmachine.analytics.internal.t.b.a
        public b a() {
            return new b(this.a, new f(), CoroutineScopeKt.CoroutineScope(ExecutorsKt.from(Executors.newSingleThreadExecutor())));
        }
    }

    public d(e eVar, b.a aVar) {
        this.a = eVar;
        this.b = aVar;
    }

    public final void a(a.C1144a c1144a) {
        List<ReaderConfig.Rule> listC = c1144a.c();
        ArrayList arrayList = new ArrayList();
        for (ReaderConfig.Rule rule : listC) {
            ReaderConfig.Rule.GeneralRule generalRule = rule instanceof ReaderConfig.Rule.GeneralRule ? (ReaderConfig.Rule.GeneralRule) rule : null;
            if (generalRule != null) {
                arrayList.add(generalRule);
            }
        }
        ArrayList arrayList2 = new ArrayList(CollectionsKt__IterablesKt.collectionSizeOrDefault(arrayList, 10));
        Iterator it = arrayList.iterator();
        while (it.hasNext()) {
            arrayList2.add(((ReaderConfig.Rule.GeneralRule) it.next()).getPath());
        }
        LinkedHashMap linkedHashMap = new LinkedHashMap(RangesKt___RangesKt.coerceAtLeast(MapsKt__MapsJVMKt.mapCapacity(CollectionsKt__IterablesKt.collectionSizeOrDefault(arrayList2, 10)), 16));
        for (Object obj : arrayList2) {
            linkedHashMap.put(obj, this.b.a());
        }
        this.c = MapsKt__MapsKt.toMutableMap(linkedHashMap);
    }

    public final void b() {
        Map map = this.c;
        if (map != null) {
            for (Map.Entry entry : map.entrySet()) {
                ((b) entry.getValue()).a((String) entry.getKey());
            }
        }
    }

    public /* synthetic */ d(e eVar, b.a aVar, int i, DefaultConstructorMarker defaultConstructorMarker) {
        this(eVar, (i & 2) != 0 ? new a(eVar) : aVar);
    }

    public final void a() {
        Map map = this.c;
        if (map != null) {
            Iterator it = map.entrySet().iterator();
            while (it.hasNext()) {
                ((b) ((Map.Entry) it.next()).getValue()).a();
            }
        }
    }

    public final String a(ReaderConfig.Rule rule) throws FileNotFoundException {
        if (rule instanceof ReaderConfig.Rule.GeneralRule) {
            String strB = this.a.b(((ReaderConfig.Rule.GeneralRule) rule).getPath());
            if (strB != null) {
                return strB;
            }
            throw new FileNotFoundException();
        }
        throw new IllegalStateException("Check failed.");
    }
}
