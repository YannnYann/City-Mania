package io.bidmachine.analytics.internal.z;

import io.bidmachine.analytics.AnalyticsConfig;
import io.bidmachine.analytics.MonitorConfig;
import io.bidmachine.analytics.ReaderConfig;
import io.bidmachine.analytics.internal.C.a;
import io.bidmachine.analytics.internal.D.d;
import io.bidmachine.analytics.internal.H.e;
import io.bidmachine.analytics.internal.I.f;
import io.bidmachine.analytics.internal.a.C4105a;
import io.bidmachine.analytics.internal.g.AbstractC4119f;
import io.bidmachine.analytics.internal.g.C4117d;
import io.bidmachine.analytics.internal.g.C4118e;
import io.bidmachine.analytics.internal.z.b;
import io.bidmachine.analytics.internal.z.c;
import java.util.ArrayList;
import java.util.Collections;
import java.util.Iterator;
import java.util.LinkedHashMap;
import java.util.List;
import java.util.Map;
import kotlin.ResultKt;
import kotlin.Unit;
import kotlin.collections.CollectionsKt__CollectionsJVMKt;
import kotlin.collections.CollectionsKt__IterablesKt;
import kotlin.collections.CollectionsKt__MutableCollectionsKt;
import kotlin.collections.CollectionsKt___CollectionsKt;
import kotlin.collections.MapsKt__MapsJVMKt;
import kotlin.collections.MapsKt__MapsKt;
import kotlin.coroutines.Continuation;
import kotlin.coroutines.intrinsics.IntrinsicsKt__IntrinsicsKt;
import kotlin.coroutines.jvm.internal.SuspendLambda;
import kotlin.jvm.functions.Function2;
import kotlin.jvm.internal.Intrinsics;
import kotlin.ranges.RangesKt___RangesKt;
import kotlinx.coroutines.BuildersKt__Builders_commonKt;
import kotlinx.coroutines.CoroutineScope;
import kotlinx.coroutines.CoroutineScopeKt;
import kotlinx.coroutines.SupervisorKt;

/* JADX INFO: loaded from: classes4.dex */
public final class a {
    public static final a a = new a();
    private static final f b;
    private static final CoroutineScope c;
    private static Map d;
    private static Map e;
    private static final List f;

    /* JADX INFO: renamed from: io.bidmachine.analytics.internal.z.a$a, reason: collision with other inner class name */
    public static final class C1158a extends SuspendLambda implements Function2 {
        int a;
        final /* synthetic */ io.bidmachine.analytics.internal.H.c b;
        final /* synthetic */ String c;
        final /* synthetic */ List d;

        /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
        public C1158a(io.bidmachine.analytics.internal.H.c cVar, String str, List list, Continuation continuation) {
            super(2, continuation);
            this.b = cVar;
            this.c = str;
            this.d = list;
        }

        @Override // kotlin.jvm.functions.Function2
        /* JADX INFO: renamed from: a, reason: merged with bridge method [inline-methods] */
        public final Object invoke(CoroutineScope coroutineScope, Continuation continuation) {
            return ((C1158a) create(coroutineScope, continuation)).invokeSuspend(Unit.INSTANCE);
        }

        @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
        public final Continuation create(Object obj, Continuation continuation) {
            return new C1158a(this.b, this.c, this.d, continuation);
        }

        @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
        public final Object invokeSuspend(Object obj) {
            IntrinsicsKt__IntrinsicsKt.getCOROUTINE_SUSPENDED();
            if (this.a != 0) {
                throw new IllegalStateException("call to 'resume' before 'invoke' with coroutine");
            }
            ResultKt.throwOnFailure(obj);
            this.b.a(this.c, this.d);
            return Unit.INSTANCE;
        }
    }

    public static final class b extends SuspendLambda implements Function2 {
        int a;
        final /* synthetic */ e b;
        final /* synthetic */ List c;
        final /* synthetic */ List d;

        /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
        public b(e eVar, List list, List list2, Continuation continuation) {
            super(2, continuation);
            this.b = eVar;
            this.c = list;
            this.d = list2;
        }

        @Override // kotlin.jvm.functions.Function2
        /* JADX INFO: renamed from: a, reason: merged with bridge method [inline-methods] */
        public final Object invoke(CoroutineScope coroutineScope, Continuation continuation) {
            return ((b) create(coroutineScope, continuation)).invokeSuspend(Unit.INSTANCE);
        }

        @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
        public final Continuation create(Object obj, Continuation continuation) {
            return new b(this.b, this.c, this.d, continuation);
        }

        @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
        public final Object invokeSuspend(Object obj) {
            IntrinsicsKt__IntrinsicsKt.getCOROUTINE_SUSPENDED();
            if (this.a != 0) {
                throw new IllegalStateException("call to 'resume' before 'invoke' with coroutine");
            }
            ResultKt.throwOnFailure(obj);
            this.b.a(this.c, this.d);
            return Unit.INSTANCE;
        }
    }

    static {
        f fVarA = f.g.a();
        b = fVarA;
        c = CoroutineScopeKt.CoroutineScope(SupervisorKt.SupervisorJob$default(null, 1, null).plus(fVarA.b()));
        d = MapsKt__MapsKt.emptyMap();
        e = MapsKt__MapsKt.emptyMap();
        f = Collections.synchronizedList(new ArrayList());
    }

    private a() {
    }

    public final void a(C4105a c4105a, AnalyticsConfig analyticsConfig) {
        synchronized (this) {
            try {
                io.bidmachine.analytics.internal.H.c cVarE = c4105a.c().e();
                e eVarG = c4105a.c().g();
                a aVar = a;
                aVar.a(d);
                d = aVar.a(analyticsConfig, cVarE);
                e = aVar.a(c4105a, analyticsConfig, eVarG);
                aVar.a(analyticsConfig.getSessionId());
                String sessionId = analyticsConfig.getSessionId();
                List<MonitorConfig> monitorConfigList = analyticsConfig.getMonitorConfigList();
                ArrayList arrayList = new ArrayList(CollectionsKt__IterablesKt.collectionSizeOrDefault(monitorConfigList, 10));
                Iterator<T> it = monitorConfigList.iterator();
                while (it.hasNext()) {
                    arrayList.add(((MonitorConfig) it.next()).getName());
                }
                aVar.a(cVarE, sessionId, arrayList);
                a aVar2 = a;
                List<ReaderConfig> readerConfigList = analyticsConfig.getReaderConfigList();
                ArrayList arrayList2 = new ArrayList(CollectionsKt__IterablesKt.collectionSizeOrDefault(readerConfigList, 10));
                Iterator<T> it2 = readerConfigList.iterator();
                while (it2.hasNext()) {
                    arrayList2.add(((ReaderConfig) it2.next()).getName());
                }
                List<ReaderConfig> readerConfigList2 = analyticsConfig.getReaderConfigList();
                ArrayList<List> arrayList3 = new ArrayList(CollectionsKt__IterablesKt.collectionSizeOrDefault(readerConfigList2, 10));
                Iterator<T> it3 = readerConfigList2.iterator();
                while (it3.hasNext()) {
                    arrayList3.add(((ReaderConfig) it3.next()).getRules());
                }
                ArrayList arrayList4 = new ArrayList();
                for (List list : arrayList3) {
                    ArrayList arrayList5 = new ArrayList(CollectionsKt__IterablesKt.collectionSizeOrDefault(list, 10));
                    Iterator it4 = list.iterator();
                    while (it4.hasNext()) {
                        arrayList5.add(AbstractC4119f.a((ReaderConfig.Rule) it4.next()));
                    }
                    CollectionsKt__MutableCollectionsKt.addAll(arrayList4, arrayList5);
                }
                aVar2.a(eVarG, arrayList2, arrayList4);
                Unit unit = Unit.INSTANCE;
            } catch (Throwable th) {
                throw th;
            }
        }
    }

    private final void a(Map map) {
        Iterator it = map.values().iterator();
        while (it.hasNext()) {
            ((io.bidmachine.analytics.internal.z.b) it.next()).a();
        }
    }

    private final Map a(AnalyticsConfig analyticsConfig, io.bidmachine.analytics.internal.H.c cVar) {
        List<MonitorConfig> monitorConfigList = analyticsConfig.getMonitorConfigList();
        ArrayList arrayList = new ArrayList();
        for (Object obj : monitorConfigList) {
            if (((MonitorConfig) obj).isReportEnabled()) {
                arrayList.add(obj);
            }
        }
        ArrayList arrayList2 = new ArrayList(CollectionsKt__IterablesKt.collectionSizeOrDefault(arrayList, 10));
        Iterator it = arrayList.iterator();
        while (it.hasNext()) {
            arrayList2.add(new io.bidmachine.analytics.internal.z.b(f.g.a(), new b.C1159b((MonitorConfig) it.next(), analyticsConfig.getSessionId(), analyticsConfig.getExtras()), cVar));
        }
        LinkedHashMap linkedHashMap = new LinkedHashMap(RangesKt___RangesKt.coerceAtLeast(MapsKt__MapsJVMKt.mapCapacity(CollectionsKt__IterablesKt.collectionSizeOrDefault(arrayList2, 10)), 16));
        for (Object obj2 : arrayList2) {
            linkedHashMap.put(((io.bidmachine.analytics.internal.z.b) obj2).b(), obj2);
        }
        return linkedHashMap;
    }

    /* JADX WARN: Can't fix incorrect switch cases order, some code will duplicate */
    /* JADX WARN: Failed to restore switch over string. Please report as a decompilation issue */
    private final Map a(C4105a c4105a, AnalyticsConfig analyticsConfig, e eVar) {
        c cVar;
        a.InterfaceC1110a bVar;
        List<ReaderConfig> readerConfigList = analyticsConfig.getReaderConfigList();
        ArrayList arrayList = new ArrayList();
        for (ReaderConfig readerConfig : readerConfigList) {
            String name = readerConfig.getName();
            switch (name.hashCode()) {
                case 2986528:
                    if (name.equals("aapp")) {
                        bVar = new io.bidmachine.analytics.internal.D.b(c4105a.d().a());
                        cVar = new c(f.g.a(), new c.a(readerConfig, analyticsConfig.getSessionId(), analyticsConfig.getExtras(), bVar), eVar);
                    }
                    cVar = null;
                    break;
                case 2990623:
                    if (name.equals("aexs")) {
                        bVar = new io.bidmachine.analytics.internal.D.a();
                        cVar = new c(f.g.a(), new c.a(readerConfig, analyticsConfig.getSessionId(), analyticsConfig.getExtras(), bVar), eVar);
                    }
                    cVar = null;
                    break;
                case 2997059:
                    if (name.equals("alog")) {
                        bVar = new d(c4105a.d().b());
                        cVar = new c(f.g.a(), new c.a(readerConfig, analyticsConfig.getSessionId(), analyticsConfig.getExtras(), bVar), eVar);
                    }
                    cVar = null;
                    break;
                case 3001100:
                    if (name.equals("apur")) {
                        bVar = new io.bidmachine.analytics.internal.D.e(c4105a.d().c());
                        cVar = new c(f.g.a(), new c.a(readerConfig, analyticsConfig.getSessionId(), analyticsConfig.getExtras(), bVar), eVar);
                    }
                    cVar = null;
                    break;
                case 92819013:
                    if (name.equals("aints")) {
                        bVar = new io.bidmachine.analytics.internal.D.c(c4105a.a().getFilesDir().getParentFile());
                        cVar = new c(f.g.a(), new c.a(readerConfig, analyticsConfig.getSessionId(), analyticsConfig.getExtras(), bVar), eVar);
                    }
                    cVar = null;
                    break;
                default:
                    cVar = null;
                    break;
            }
            if (cVar != null) {
                arrayList.add(cVar);
            }
        }
        LinkedHashMap linkedHashMap = new LinkedHashMap(RangesKt___RangesKt.coerceAtLeast(MapsKt__MapsJVMKt.mapCapacity(CollectionsKt__IterablesKt.collectionSizeOrDefault(arrayList, 10)), 16));
        for (Object obj : arrayList) {
            linkedHashMap.put(((c) obj).a(), obj);
        }
        return linkedHashMap;
    }

    private final void a(String str) {
        List list = f;
        List list2 = CollectionsKt___CollectionsKt.toList(list);
        list.clear();
        Iterator it = list2.iterator();
        while (it.hasNext()) {
            String str2 = str;
            a.a(C4117d.a((C4117d) it.next(), null, null, str2, 0L, null, null, 59, null));
            str = str2;
        }
    }

    private final void a(io.bidmachine.analytics.internal.H.c cVar, String str, List list) {
        BuildersKt__Builders_commonKt.launch$default(c, b.c(), null, new C1158a(cVar, str, list, null), 2, null);
    }

    private final void a(e eVar, List list, List list2) {
        BuildersKt__Builders_commonKt.launch$default(c, b.c(), null, new b(eVar, list, list2, null), 2, null);
    }

    public final void a(C4117d c4117d) {
        if (Intrinsics.areEqual(c4117d.e(), "")) {
            f.add(c4117d);
            return;
        }
        io.bidmachine.analytics.internal.z.b bVar = (io.bidmachine.analytics.internal.z.b) d.get(c4117d.d());
        if (bVar != null) {
            bVar.b(c4117d);
        }
    }

    public final void a(C4118e c4118e) {
        a(c4118e.d(), CollectionsKt__CollectionsJVMKt.listOf(c4118e));
    }

    public final void a(String str, List list) {
        c cVar = (c) e.get(str);
        if (cVar != null) {
            cVar.b(str, list);
        }
    }
}
