package io.bidmachine.analytics.internal.h;

import android.content.Context;
import io.bidmachine.analytics.AnalyticsConfig;
import io.bidmachine.analytics.Filter;
import io.bidmachine.analytics.MonitorConfig;
import io.bidmachine.analytics.ReaderConfig;
import io.bidmachine.analytics.internal.a.C4105a;
import io.bidmachine.analytics.internal.g.AbstractC4119f;
import io.bidmachine.analytics.internal.g.C4117d;
import io.bidmachine.analytics.internal.g.C4118e;
import io.bidmachine.analytics.internal.g.EnumC4114a;
import io.bidmachine.analytics.internal.g.h;
import io.bidmachine.analytics.internal.h.InterfaceC4123c;
import io.bidmachine.analytics.internal.i.AbstractC4127a;
import io.bidmachine.analytics.internal.i.C4128b;
import io.bidmachine.analytics.internal.m.a;
import io.bidmachine.analytics.internal.r.a;
import io.bidmachine.util.conversion.StringTypeConversion;
import java.io.File;
import java.util.ArrayList;
import java.util.HashSet;
import java.util.Iterator;
import java.util.LinkedHashMap;
import java.util.List;
import java.util.Map;
import java.util.Set;
import java.util.concurrent.atomic.AtomicBoolean;
import kotlin.Result;
import kotlin.ResultKt;
import kotlin.Unit;
import kotlin.collections.CollectionsKt__CollectionsKt;
import kotlin.collections.CollectionsKt__IterablesKt;
import kotlin.collections.CollectionsKt___CollectionsKt;
import kotlin.collections.MapsKt__MapsKt;
import kotlin.jvm.functions.Function0;
import kotlin.jvm.functions.Function1;
import kotlin.jvm.internal.Lambda;
import kotlin.sequences.SequencesKt___SequencesJvmKt;
import kotlin.sequences.SequencesKt___SequencesKt;
import kotlin.text.StringsKt__StringsKt;

/* JADX INFO: renamed from: io.bidmachine.analytics.internal.h.e, reason: case insensitive filesystem */
/* JADX INFO: loaded from: classes4.dex */
public final class C4125e {
    public static final C4125e a = new C4125e();
    private static final AtomicBoolean b = new AtomicBoolean(false);
    private static final AtomicBoolean c = new AtomicBoolean(false);
    private static final io.bidmachine.analytics.internal.a.e d = new io.bidmachine.analytics.internal.a.e();
    private static Map e = MapsKt__MapsKt.emptyMap();
    private static List f = new ArrayList();

    /* JADX INFO: renamed from: io.bidmachine.analytics.internal.h.e$b */
    public static final class b implements InterfaceC4123c {
        private final C4105a a;
        private final String b;

        public b(C4105a c4105a, String str) {
            this.a = c4105a;
            this.b = str;
        }

        @Override // io.bidmachine.analytics.internal.h.InterfaceC4123c
        public void a(List list) {
            ArrayList arrayList = new ArrayList(CollectionsKt__IterablesKt.collectionSizeOrDefault(list, 10));
            Iterator it = list.iterator();
            while (it.hasNext()) {
                InterfaceC4123c.a aVar = (InterfaceC4123c.a) it.next();
                String str = this.b;
                long jCurrentTimeMillis = this.a.e().currentTimeMillis();
                String strA = aVar.a();
                if (strA == null) {
                    strA = "";
                }
                arrayList.add(new C4118e(null, str, jCurrentTimeMillis, strA, AbstractC4119f.a(aVar.c()), aVar.b(), false, 65, null));
            }
            io.bidmachine.analytics.internal.z.a.a.a(this.b, arrayList);
        }
    }

    /* JADX INFO: renamed from: io.bidmachine.analytics.internal.h.e$c */
    public static final class c extends Lambda implements Function0 {
        final /* synthetic */ Context a;

        /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
        public c(Context context) {
            super(0);
            this.a = context;
        }

        @Override // kotlin.jvm.functions.Function0
        /* JADX INFO: renamed from: a, reason: merged with bridge method [inline-methods] */
        public final File invoke() {
            return this.a.getFilesDir().getParentFile();
        }
    }

    /* JADX INFO: renamed from: io.bidmachine.analytics.internal.h.e$d */
    public static final class d extends Lambda implements Function1 {
        final /* synthetic */ String a;

        /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
        public d(String str) {
            super(1);
            this.a = str;
        }

        @Override // kotlin.jvm.functions.Function1
        /* JADX INFO: renamed from: a, reason: merged with bridge method [inline-methods] */
        public final Object invoke(InterfaceC4121a interfaceC4121a) {
            return interfaceC4121a.a(this.a);
        }
    }

    private C4125e() {
    }

    public final void c(C4105a c4105a) {
        if (b.compareAndSet(false, true) && !io.bidmachine.analytics.internal.I.g.a(c4105a.a())) {
            e = a(c4105a);
        }
    }

    public final void d(C4105a c4105a) {
        if (c.compareAndSet(false, true) && !io.bidmachine.analytics.internal.I.g.a(c4105a.a())) {
            e = MapsKt__MapsKt.plus(e, b(c4105a));
            Iterator it = f.iterator();
            while (it.hasNext()) {
                ((Function0) it.next()).invoke();
            }
            f = new ArrayList();
        }
    }

    /* JADX WARN: Multi-variable type inference failed */
    public final Map b(C4105a c4105a) {
        Object objM2760constructorimpl;
        Object objM2760constructorimpl2;
        C4105a c4105a2;
        Object objM2760constructorimpl3;
        Object objM2760constructorimpl4;
        Object objM2760constructorimpl5;
        Object objM2760constructorimpl6;
        Object objM2760constructorimpl7;
        Object objM2760constructorimpl8;
        Object objM2760constructorimpl9;
        Object objM2760constructorimpl10;
        Context contextA = c4105a.a();
        LinkedHashMap linkedHashMap = new LinkedHashMap();
        try {
            Result.Companion companion = Result.Companion;
            io.bidmachine.analytics.internal.p.a aVar = new io.bidmachine.analytics.internal.p.a(c4105a);
            aVar.a(c4105a.a());
            linkedHashMap.put(aVar.a(), aVar);
            objM2760constructorimpl = Result.m2760constructorimpl(Unit.INSTANCE);
        } catch (Throwable th) {
            Result.Companion companion2 = Result.Companion;
            objM2760constructorimpl = Result.m2760constructorimpl(ResultKt.createFailure(th));
        }
        Throwable thM2763exceptionOrNullimpl = Result.m2763exceptionOrNullimpl(objM2760constructorimpl);
        if (thM2763exceptionOrNullimpl != null) {
            f.add(new C4126f(c4105a, "mimp", thM2763exceptionOrNullimpl));
        }
        int i = 2;
        Object[] objArr = 0;
        Object[] objArr2 = 0;
        Object[] objArr3 = 0;
        Object[] objArr4 = 0;
        try {
            io.bidmachine.analytics.internal.o.a aVar2 = new io.bidmachine.analytics.internal.o.a(c4105a, null, i, 0 == true ? 1 : 0);
            aVar2.a(c4105a.a());
            linkedHashMap.put(aVar2.a(), aVar2);
            objM2760constructorimpl2 = Result.m2760constructorimpl(Unit.INSTANCE);
        } catch (Throwable th2) {
            Result.Companion companion3 = Result.Companion;
            objM2760constructorimpl2 = Result.m2760constructorimpl(ResultKt.createFailure(th2));
        }
        Throwable thM2763exceptionOrNullimpl2 = Result.m2763exceptionOrNullimpl(objM2760constructorimpl2);
        if (thM2763exceptionOrNullimpl2 != null) {
            f.add(new C4126f(c4105a, "isimp", thM2763exceptionOrNullimpl2));
        }
        try {
            c4105a2 = c4105a;
        } catch (Throwable th3) {
            th = th3;
            c4105a2 = c4105a;
        }
        try {
            io.bidmachine.analytics.internal.n.a aVar3 = new io.bidmachine.analytics.internal.n.a(c4105a2, null, null, 6, null);
            aVar3.a(c4105a2.a());
            linkedHashMap.put(aVar3.a(), aVar3);
            objM2760constructorimpl3 = Result.m2760constructorimpl(Unit.INSTANCE);
        } catch (Throwable th4) {
            th = th4;
            Throwable th5 = th;
            Result.Companion companion4 = Result.Companion;
            objM2760constructorimpl3 = Result.m2760constructorimpl(ResultKt.createFailure(th5));
        }
        Throwable thM2763exceptionOrNullimpl3 = Result.m2763exceptionOrNullimpl(objM2760constructorimpl3);
        if (thM2763exceptionOrNullimpl3 != null) {
            f.add(new C4126f(c4105a2, "bic", thM2763exceptionOrNullimpl3));
        }
        try {
            io.bidmachine.analytics.internal.k.a aVar4 = new io.bidmachine.analytics.internal.k.a(c4105a2);
            aVar4.a(c4105a2.a());
            linkedHashMap.put(aVar4.a(), aVar4);
            objM2760constructorimpl4 = Result.m2760constructorimpl(Unit.INSTANCE);
        } catch (Throwable th6) {
            Result.Companion companion5 = Result.Companion;
            objM2760constructorimpl4 = Result.m2760constructorimpl(ResultKt.createFailure(th6));
        }
        Throwable thM2763exceptionOrNullimpl4 = Result.m2763exceptionOrNullimpl(objM2760constructorimpl4);
        if (thM2763exceptionOrNullimpl4 != null) {
            f.add(new C4126f(c4105a2, "mia", thM2763exceptionOrNullimpl4));
        }
        try {
            io.bidmachine.analytics.internal.l.a aVar5 = new io.bidmachine.analytics.internal.l.a(c4105a2);
            aVar5.a(c4105a2.a());
            linkedHashMap.put(aVar5.a(), aVar5);
            objM2760constructorimpl5 = Result.m2760constructorimpl(Unit.INSTANCE);
        } catch (Throwable th7) {
            Result.Companion companion6 = Result.Companion;
            objM2760constructorimpl5 = Result.m2760constructorimpl(ResultKt.createFailure(th7));
        }
        Throwable thM2763exceptionOrNullimpl5 = Result.m2763exceptionOrNullimpl(objM2760constructorimpl5);
        if (thM2763exceptionOrNullimpl5 != null) {
            f.add(new C4126f(c4105a2, "mip", thM2763exceptionOrNullimpl5));
        }
        try {
            io.bidmachine.analytics.internal.y.a aVar6 = new io.bidmachine.analytics.internal.y.a(new c(contextA));
            aVar6.a(c4105a2.a());
            linkedHashMap.put(aVar6.a(), aVar6);
            objM2760constructorimpl6 = Result.m2760constructorimpl(Unit.INSTANCE);
        } catch (Throwable th8) {
            Result.Companion companion7 = Result.Companion;
            objM2760constructorimpl6 = Result.m2760constructorimpl(ResultKt.createFailure(th8));
        }
        Throwable thM2763exceptionOrNullimpl6 = Result.m2763exceptionOrNullimpl(objM2760constructorimpl6);
        if (thM2763exceptionOrNullimpl6 != null) {
            f.add(new g(c4105a2, "aints", thM2763exceptionOrNullimpl6));
        }
        try {
            io.bidmachine.analytics.internal.x.a aVar7 = new io.bidmachine.analytics.internal.x.a();
            aVar7.a(c4105a2.a());
            linkedHashMap.put(aVar7.a(), aVar7);
            objM2760constructorimpl7 = Result.m2760constructorimpl(Unit.INSTANCE);
        } catch (Throwable th9) {
            Result.Companion companion8 = Result.Companion;
            objM2760constructorimpl7 = Result.m2760constructorimpl(ResultKt.createFailure(th9));
        }
        Throwable thM2763exceptionOrNullimpl7 = Result.m2763exceptionOrNullimpl(objM2760constructorimpl7);
        if (thM2763exceptionOrNullimpl7 != null) {
            f.add(new g(c4105a2, "aexs", thM2763exceptionOrNullimpl7));
        }
        try {
            io.bidmachine.analytics.internal.t.c cVar = new io.bidmachine.analytics.internal.t.c(c4105a2, objArr4 == true ? 1 : 0, i, objArr3 == true ? 1 : 0);
            cVar.a(c4105a2.a());
            linkedHashMap.put(cVar.a(), cVar);
            objM2760constructorimpl8 = Result.m2760constructorimpl(Unit.INSTANCE);
        } catch (Throwable th10) {
            Result.Companion companion9 = Result.Companion;
            objM2760constructorimpl8 = Result.m2760constructorimpl(ResultKt.createFailure(th10));
        }
        Throwable thM2763exceptionOrNullimpl8 = Result.m2763exceptionOrNullimpl(objM2760constructorimpl8);
        if (thM2763exceptionOrNullimpl8 != null) {
            f.add(new g(c4105a2, "alog", thM2763exceptionOrNullimpl8));
        }
        try {
            io.bidmachine.analytics.internal.u.f fVar = new io.bidmachine.analytics.internal.u.f(c4105a2, objArr2 == true ? 1 : 0, i, objArr == true ? 1 : 0);
            fVar.a(c4105a2.a());
            linkedHashMap.put(fVar.a(), fVar);
            objM2760constructorimpl9 = Result.m2760constructorimpl(Unit.INSTANCE);
        } catch (Throwable th11) {
            Result.Companion companion10 = Result.Companion;
            objM2760constructorimpl9 = Result.m2760constructorimpl(ResultKt.createFailure(th11));
        }
        Throwable thM2763exceptionOrNullimpl9 = Result.m2763exceptionOrNullimpl(objM2760constructorimpl9);
        if (thM2763exceptionOrNullimpl9 != null) {
            f.add(new g(c4105a2, "apur", thM2763exceptionOrNullimpl9));
        }
        try {
            io.bidmachine.analytics.internal.s.a aVar8 = new io.bidmachine.analytics.internal.s.a(c4105a2);
            aVar8.a(c4105a2.a());
            linkedHashMap.put(aVar8.a(), aVar8);
            objM2760constructorimpl10 = Result.m2760constructorimpl(Unit.INSTANCE);
        } catch (Throwable th12) {
            Result.Companion companion11 = Result.Companion;
            objM2760constructorimpl10 = Result.m2760constructorimpl(ResultKt.createFailure(th12));
        }
        Throwable thM2763exceptionOrNullimpl10 = Result.m2763exceptionOrNullimpl(objM2760constructorimpl10);
        if (thM2763exceptionOrNullimpl10 != null) {
            f.add(new g(c4105a2, "aapp", thM2763exceptionOrNullimpl10));
        }
        return linkedHashMap;
    }

    public final Map a(C4105a c4105a) {
        return MapsKt__MapsKt.emptyMap();
    }

    public final void a(C4105a c4105a, AnalyticsConfig analyticsConfig) {
        a(c4105a, analyticsConfig.getSessionId(), e.keySet());
        HashSet hashSet = new HashSet();
        a(c4105a, analyticsConfig.getSessionId(), analyticsConfig.getMonitorConfigList(), hashSet);
        a(c4105a, analyticsConfig.getReaderConfigList(), hashSet);
        b(c4105a, analyticsConfig.getSessionId(), hashSet);
    }

    /* JADX INFO: renamed from: io.bidmachine.analytics.internal.h.e$a */
    public static final class a implements InterfaceC4122b {
        private final C4105a a;
        private final String b;
        private final String c;
        private final Filter d;

        public a(C4105a c4105a, String str, String str2, Filter filter) {
            this.a = c4105a;
            this.b = str;
            this.c = str2;
            this.d = filter;
        }

        @Override // io.bidmachine.analytics.internal.h.InterfaceC4122b
        public void a(Map map) {
            Filter filter = this.d;
            if (filter == null || C4125e.d.a(filter, map)) {
                io.bidmachine.analytics.internal.z.a.a.a(new C4117d(null, this.b, this.c, this.a.e().currentTimeMillis(), map, null, 33, null));
            }
        }

        @Override // io.bidmachine.analytics.internal.h.InterfaceC4122b
        public void a(h hVar) {
            io.bidmachine.analytics.internal.z.a.a.a(new C4117d(null, this.b, this.c, this.a.e().currentTimeMillis(), null, hVar, 17, null));
        }
    }

    public final Map a(EnumC4114a enumC4114a) {
        LinkedHashMap linkedHashMap = new LinkedHashMap();
        for (Map.Entry entry : e.entrySet()) {
            String str = (String) entry.getKey();
            AbstractC4124d abstractC4124d = (AbstractC4124d) entry.getValue();
            if (abstractC4124d instanceof io.bidmachine.analytics.internal.m.a) {
                LinkedHashMap linkedHashMap2 = new LinkedHashMap();
                io.bidmachine.analytics.internal.m.a aVar = (io.bidmachine.analytics.internal.m.a) abstractC4124d;
                a.b bVarB = aVar.b();
                if (bVarB != null) {
                    linkedHashMap2.put("imd", Integer.valueOf(bVarB.b()));
                    Float fC = bVarB.c();
                    if (fC != null) {
                        linkedHashMap2.put("wp", Float.valueOf(fC.floatValue()));
                    }
                    String strE = bVarB.e();
                    if (strE != null) {
                        if (!StringsKt__StringsKt.isBlank(strE)) {
                            linkedHashMap2.put("agency", strE);
                        }
                        List listEmptyList = CollectionsKt__CollectionsKt.emptyList();
                        ArrayList arrayList = new ArrayList();
                        for (Object obj : listEmptyList) {
                            if (obj instanceof StringTypeConversion) {
                                arrayList.add(obj);
                            }
                        }
                    }
                    String strA = bVarB.a();
                    if (strA != null) {
                        if (!StringsKt__StringsKt.isBlank(strA)) {
                            linkedHashMap2.put("imcurl", strA);
                            if (bVarB.i()) {
                                linkedHashMap2.put("clcurl", strA);
                            }
                        }
                        List listEmptyList2 = CollectionsKt__CollectionsKt.emptyList();
                        ArrayList arrayList2 = new ArrayList();
                        for (Object obj2 : listEmptyList2) {
                            if (obj2 instanceof StringTypeConversion) {
                                arrayList2.add(obj2);
                            }
                        }
                    }
                }
                a.b bVarA = aVar.a(enumC4114a);
                if (bVarA != null) {
                    linkedHashMap2.put("imimd", Integer.valueOf(bVarA.b()));
                    Float fC2 = bVarA.c();
                    if (fC2 != null) {
                        linkedHashMap2.put("imwp", Float.valueOf(fC2.floatValue()));
                    }
                    String strE2 = bVarA.e();
                    if (strE2 != null) {
                        if (!StringsKt__StringsKt.isBlank(strE2)) {
                            linkedHashMap2.put("imagency", strE2);
                        }
                        List listEmptyList3 = CollectionsKt__CollectionsKt.emptyList();
                        ArrayList arrayList3 = new ArrayList();
                        for (Object obj3 : listEmptyList3) {
                            if (obj3 instanceof StringTypeConversion) {
                                arrayList3.add(obj3);
                            }
                        }
                    }
                }
                linkedHashMap.put(str, linkedHashMap2);
            }
        }
        return linkedHashMap;
    }

    public final Object a(String str) {
        return SequencesKt___SequencesKt.firstOrNull(SequencesKt___SequencesKt.mapNotNull(SequencesKt___SequencesJvmKt.filterIsInstance(CollectionsKt___CollectionsKt.asSequence(e.values()), InterfaceC4121a.class), new d(str)));
    }

    private final void a(C4105a c4105a, String str, List list, Set set) {
        Object objM2760constructorimpl;
        Iterator it = list.iterator();
        while (it.hasNext()) {
            MonitorConfig monitorConfig = (MonitorConfig) it.next();
            String name = monitorConfig.getName();
            try {
                Result.Companion companion = Result.Companion;
                AbstractC4124d abstractC4124d = (AbstractC4124d) e.get(name);
                Unit unit = null;
                filter = null;
                Filter filter = null;
                if (abstractC4124d != null) {
                    if (abstractC4124d instanceof AbstractC4127a) {
                        Filter filter2 = monitorConfig.getFilter();
                        if (filter2 != null && d.a(filter2)) {
                            filter = filter2;
                        }
                        if (filter == null) {
                            monitorConfig.getFilter();
                        }
                        ((AbstractC4127a) abstractC4124d).a(new AbstractC4127a.b(str, new a(c4105a, name, str, filter), a(monitorConfig.getConfigExtension())));
                    }
                    unit = Unit.INSTANCE;
                }
                objM2760constructorimpl = Result.m2760constructorimpl(unit);
            } catch (Throwable th) {
                Result.Companion companion2 = Result.Companion;
                objM2760constructorimpl = Result.m2760constructorimpl(ResultKt.createFailure(th));
            }
            if (Result.m2766isSuccessimpl(objM2760constructorimpl)) {
                set.add(name);
            }
            Throwable thM2763exceptionOrNullimpl = Result.m2763exceptionOrNullimpl(objM2760constructorimpl);
            if (thM2763exceptionOrNullimpl != null) {
                a.a(c4105a, name, str, thM2763exceptionOrNullimpl);
            }
        }
    }

    private final AbstractC4127a.InterfaceC1123a a(MonitorConfig.ConfigExtension configExtension) {
        String config;
        if (configExtension == null) {
            return null;
        }
        if (configExtension instanceof MonitorConfig.ImpConfigExtension) {
            MonitorConfig.ImpConfigExtension impConfigExtension = (MonitorConfig.ImpConfigExtension) configExtension;
            return new a.C1127a(impConfigExtension.getIaaQuery(), impConfigExtension.m2540getRecordsTtlUwyO8pc(), null);
        }
        if (!(configExtension instanceof MonitorConfig.GenericConfigExtension) || (config = ((MonitorConfig.GenericConfigExtension) configExtension).getConfig()) == null) {
            return null;
        }
        return C4128b.f.a(io.bidmachine.analytics.internal.I.g.b(config));
    }

    private final void a(C4105a c4105a, List list, Set set) {
        Object objM2760constructorimpl;
        Unit unit;
        Iterator it = list.iterator();
        while (it.hasNext()) {
            ReaderConfig readerConfig = (ReaderConfig) it.next();
            String name = readerConfig.getName();
            try {
                Result.Companion companion = Result.Companion;
                AbstractC4124d abstractC4124d = (AbstractC4124d) e.get(name);
                if (abstractC4124d != null) {
                    if (abstractC4124d instanceof io.bidmachine.analytics.internal.r.a) {
                        ((io.bidmachine.analytics.internal.r.a) abstractC4124d).a((Object) new a.C1144a(readerConfig.getInterval(), readerConfig.getRules(), new b(c4105a, name)));
                    }
                    unit = Unit.INSTANCE;
                } else {
                    unit = null;
                }
                objM2760constructorimpl = Result.m2760constructorimpl(unit);
            } catch (Throwable th) {
                Result.Companion companion2 = Result.Companion;
                objM2760constructorimpl = Result.m2760constructorimpl(ResultKt.createFailure(th));
            }
            if (Result.m2766isSuccessimpl(objM2760constructorimpl)) {
                set.add(name);
            }
            Throwable thM2763exceptionOrNullimpl = Result.m2763exceptionOrNullimpl(objM2760constructorimpl);
            if (thM2763exceptionOrNullimpl != null) {
                a.a(c4105a, name, thM2763exceptionOrNullimpl);
            }
        }
    }

    private final void a(C4105a c4105a, AbstractC4124d abstractC4124d, String str, Throwable th) {
        if (abstractC4124d instanceof AbstractC4127a) {
            a(c4105a, abstractC4124d.a(), str, th);
        } else if (abstractC4124d instanceof io.bidmachine.analytics.internal.r.a) {
            a(c4105a, abstractC4124d.a(), th);
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public final void a(C4105a c4105a, String str, String str2, Throwable th) {
        io.bidmachine.analytics.internal.z.a.a.a(new C4117d(null, str, str2, c4105a.e().currentTimeMillis(), null, new h(str, h.a.MONITOR_INVALID, io.bidmachine.analytics.internal.I.g.a(th)), 17, null));
    }

    /* JADX INFO: Access modifiers changed from: private */
    public final void a(C4105a c4105a, String str, Throwable th) {
        io.bidmachine.analytics.internal.z.a.a.a(new C4118e(null, str, c4105a.e().currentTimeMillis(), "", new C4118e.a.C1122a("", ""), new h(str, h.a.READER_INVALID, io.bidmachine.analytics.internal.I.g.a(th)), false, 65, null));
    }

    private final void a(C4105a c4105a, String str, Set set) {
        Object objM2760constructorimpl;
        Iterator it = set.iterator();
        while (it.hasNext()) {
            AbstractC4124d abstractC4124d = (AbstractC4124d) e.get((String) it.next());
            if (abstractC4124d != null) {
                try {
                    Result.Companion companion = Result.Companion;
                    abstractC4124d.b(c4105a.a());
                    objM2760constructorimpl = Result.m2760constructorimpl(Unit.INSTANCE);
                } catch (Throwable th) {
                    Result.Companion companion2 = Result.Companion;
                    objM2760constructorimpl = Result.m2760constructorimpl(ResultKt.createFailure(th));
                }
                Throwable thM2763exceptionOrNullimpl = Result.m2763exceptionOrNullimpl(objM2760constructorimpl);
                if (thM2763exceptionOrNullimpl != null) {
                    a.a(c4105a, abstractC4124d, str, thM2763exceptionOrNullimpl);
                }
            }
        }
    }

    private final void b(C4105a c4105a, String str, Set set) {
        Object objM2760constructorimpl;
        Iterator it = set.iterator();
        while (it.hasNext()) {
            AbstractC4124d abstractC4124d = (AbstractC4124d) e.get((String) it.next());
            if (abstractC4124d != null) {
                try {
                    Result.Companion companion = Result.Companion;
                    abstractC4124d.c(c4105a.a());
                    objM2760constructorimpl = Result.m2760constructorimpl(Unit.INSTANCE);
                } catch (Throwable th) {
                    Result.Companion companion2 = Result.Companion;
                    objM2760constructorimpl = Result.m2760constructorimpl(ResultKt.createFailure(th));
                }
                Throwable thM2763exceptionOrNullimpl = Result.m2763exceptionOrNullimpl(objM2760constructorimpl);
                if (thM2763exceptionOrNullimpl != null) {
                    a.a(c4105a, abstractC4124d, str, thM2763exceptionOrNullimpl);
                }
            }
        }
    }
}
