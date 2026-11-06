package com.ironsource;

import android.os.Build;
import com.ironsource.environment.thread.IronSourceThreadManager;
import com.ironsource.mediationsdk.logger.IronLog;
import com.vungle.ads.internal.protos.Sdk;
import java.util.ArrayList;
import java.util.Comparator;
import java.util.List;
import java.util.concurrent.atomic.AtomicBoolean;
import kotlin.Unit;
import kotlin.collections.CollectionsKt___CollectionsKt;
import kotlin.comparisons.ComparisonsKt__ComparisonsKt;
import kotlin.jvm.functions.Function0;
import kotlin.jvm.functions.Function1;
import kotlin.jvm.internal.DefaultConstructorMarker;
import kotlin.jvm.internal.FunctionReferenceImpl;
import kotlin.jvm.internal.Intrinsics;
import kotlin.text.StringsKt__StringsKt;

/* JADX INFO: renamed from: com.ironsource.x1, reason: case insensitive filesystem */
/* JADX INFO: loaded from: classes3.dex */
public final class C3920x1 implements InterfaceC3741n7 {
    private static final e k = new e(null);

    @Deprecated
    public static final long l = -1;

    @Deprecated
    public static final long m = 3600000;

    @Deprecated
    public static final long n = 3600000;

    @Deprecated
    public static final String o = "self";

    @Deprecated
    public static final String p = "unknown";
    private final D7 a;
    private final Function1<C1, Unit> b;
    private final Function1<D1, Unit> c;
    private final InterfaceC3956z1 d;
    private final F1 e;
    private final Function0<Long> f;
    private final Function0<Boolean> g;
    private final Function0<B1> h;
    private final Function1<Runnable, Unit> i;
    private final AtomicBoolean j;

    /* JADX INFO: renamed from: com.ironsource.x1$a */
    public /* synthetic */ class a extends FunctionReferenceImpl implements Function1<C1, Unit> {
        public a(Object obj) {
            super(1, obj, C3938y1.class, "report", "report(Lcom/ironsource/services/anr/AnrReport;)V", 0);
        }

        public final void a(C1 p0) {
            Intrinsics.checkNotNullParameter(p0, "p0");
            ((C3938y1) this.receiver).a(p0);
        }

        @Override // kotlin.jvm.functions.Function1
        public /* bridge */ /* synthetic */ Unit invoke(C1 c1) {
            a(c1);
            return Unit.INSTANCE;
        }
    }

    /* JADX INFO: renamed from: com.ironsource.x1$b */
    public /* synthetic */ class b extends FunctionReferenceImpl implements Function1<D1, Unit> {
        public b(Object obj) {
            super(1, obj, C3938y1.class, "reportScan", "reportScan(Lcom/ironsource/services/anr/AnrScanSummary;)V", 0);
        }

        public final void a(D1 p0) {
            Intrinsics.checkNotNullParameter(p0, "p0");
            ((C3938y1) this.receiver).a(p0);
        }

        @Override // kotlin.jvm.functions.Function1
        public /* bridge */ /* synthetic */ Unit invoke(D1 d1) {
            a(d1);
            return Unit.INSTANCE;
        }
    }

    /* JADX INFO: renamed from: com.ironsource.x1$c */
    public /* synthetic */ class c extends FunctionReferenceImpl implements Function0<Long> {
        public static final c a = new c();

        public c() {
            super(0, System.class, "currentTimeMillis", "currentTimeMillis()J", 0);
        }

        @Override // kotlin.jvm.functions.Function0
        /* JADX INFO: renamed from: a, reason: merged with bridge method [inline-methods] */
        public final Long invoke() {
            return Long.valueOf(System.currentTimeMillis());
        }
    }

    /* JADX INFO: renamed from: com.ironsource.x1$d */
    public /* synthetic */ class d extends FunctionReferenceImpl implements Function0<B1> {
        public d(Object obj) {
            super(0, obj, C3914wd.class, "read", "read()Lcom/ironsource/services/anr/AnrProcessIdentity;", 0);
        }

        @Override // kotlin.jvm.functions.Function0
        /* JADX INFO: renamed from: a, reason: merged with bridge method [inline-methods] */
        public final B1 invoke() {
            return ((C3914wd) this.receiver).b();
        }
    }

    /* JADX INFO: renamed from: com.ironsource.x1$e */
    public static final class e {
        public /* synthetic */ e(DefaultConstructorMarker defaultConstructorMarker) {
            this();
        }

        private e() {
        }
    }

    /* JADX INFO: renamed from: com.ironsource.x1$f */
    public static final class f<T> implements Comparator {
        /* JADX WARN: Multi-variable type inference failed */
        @Override // java.util.Comparator
        public final int compare(T t, T t2) {
            return ComparisonsKt__ComparisonsKt.compareValues(Long.valueOf(((A1) t).m()), Long.valueOf(((A1) t2).m()));
        }
    }

    public C3920x1() {
        this(null, null, null, null, null, null, null, null, null, 511, null);
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static final boolean a() {
        return Build.VERSION.SDK_INT >= 30;
    }

    @Override // com.ironsource.InterfaceC3741n7
    public void start() {
        if (this.a.H() && this.g.invoke().booleanValue()) {
            final B1 b1Invoke = this.h.invoke();
            if (b1Invoke.d()) {
                if (this.j.compareAndSet(false, true)) {
                    this.i.invoke(new Runnable() { // from class: com.ironsource.x1$$ExternalSyntheticLambda2
                        @Override // java.lang.Runnable
                        public final void run() {
                            C3920x1.a(this.f$0, b1Invoke);
                        }
                    });
                }
            } else {
                IronLog.INTERNAL.verbose("anr reporter: skipping process " + b1Invoke.c());
            }
        }
    }

    /* JADX WARN: Multi-variable type inference failed */
    public C3920x1(D7 epService, Function1<? super C1, Unit> reportAnr, Function1<? super D1, Unit> reportScan, InterfaceC3956z1 exitInfoSource, F1 watermarkStore, Function0<Long> currentTimeMillis, Function0<Boolean> isExitInfoSupported, Function0<B1> processIdentity, Function1<? super Runnable, Unit> runInBackground) {
        Intrinsics.checkNotNullParameter(epService, "epService");
        Intrinsics.checkNotNullParameter(reportAnr, "reportAnr");
        Intrinsics.checkNotNullParameter(reportScan, "reportScan");
        Intrinsics.checkNotNullParameter(exitInfoSource, "exitInfoSource");
        Intrinsics.checkNotNullParameter(watermarkStore, "watermarkStore");
        Intrinsics.checkNotNullParameter(currentTimeMillis, "currentTimeMillis");
        Intrinsics.checkNotNullParameter(isExitInfoSupported, "isExitInfoSupported");
        Intrinsics.checkNotNullParameter(processIdentity, "processIdentity");
        Intrinsics.checkNotNullParameter(runInBackground, "runInBackground");
        this.a = epService;
        this.b = reportAnr;
        this.c = reportScan;
        this.d = exitInfoSource;
        this.e = watermarkStore;
        this.f = currentTimeMillis;
        this.g = isExitInfoSupported;
        this.h = processIdentity;
        this.i = runInBackground;
        this.j = new AtomicBoolean(false);
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static final Unit a(Runnable it) {
        Intrinsics.checkNotNullParameter(it, "it");
        IronSourceThreadManager.postMediationBackgroundTask$default(IronSourceThreadManager.INSTANCE, it, 0L, 2, null);
        return Unit.INSTANCE;
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static final void a(C3920x1 c3920x1, B1 b1) {
        c3920x1.a(b1.c());
    }

    public final void a(String ownProcessName) {
        A1 a1;
        Intrinsics.checkNotNullParameter(ownProcessName, "ownProcessName");
        long jLongValue = this.f.invoke().longValue();
        long jA = this.e.a();
        if (jA == -1) {
            this.e.a(jLongValue);
            IronLog.INTERNAL.verbose("anr reporter: watermark initialised, skipping backfill");
            return;
        }
        if (jA > jLongValue + 3600000) {
            this.e.a(jLongValue);
            IronLog.INTERNAL.verbose("anr reporter: watermark " + jA + " ahead of " + jLongValue + ", reset");
            return;
        }
        List<A1> listA = this.d.a();
        if (listA.isEmpty()) {
            return;
        }
        ArrayList arrayList = new ArrayList();
        for (Object obj : listA) {
            if (((A1) obj).m() > jA) {
                arrayList.add(obj);
            }
        }
        List<A1> listSortedWith = CollectionsKt___CollectionsKt.sortedWith(arrayList, new f());
        if (listSortedWith.isEmpty()) {
            return;
        }
        this.e.a(((A1) CollectionsKt___CollectionsKt.last(listSortedWith)).m());
        int iQ = this.a.q();
        long jG = ((long) this.a.g()) * 3600000;
        int i = 0;
        int i2 = 0;
        int i3 = 0;
        int i4 = 0;
        int i5 = 0;
        int i6 = 0;
        for (A1 a12 : listSortedWith) {
            if (a(a12, jLongValue, jG)) {
                if (a12.n()) {
                    i2++;
                    i5++;
                } else {
                    i6++;
                }
            } else {
                StackTraceElement[] stackTraceElementArrInvoke = a12.k().invoke();
                if (a12.n()) {
                    a1 = a12;
                } else {
                    a1 = a12;
                    if (stackTraceElementArrInvoke.length == 0) {
                    }
                }
                i2++;
                if (stackTraceElementArrInvoke.length == 0) {
                    i3++;
                } else {
                    C3879ue c3879ue = C3879ue.a;
                    long j = jLongValue;
                    int iB = c3879ue.b(stackTraceElementArrInvoke);
                    if (iB == -1) {
                        i4++;
                    } else if (i < iQ) {
                        int i7 = i + 1;
                        this.b.invoke(new C1(c3879ue.a(stackTraceElementArrInvoke, iB), c3879ue.a(stackTraceElementArrInvoke), stackTraceElementArrInvoke.length, iB, c3879ue.a(stackTraceElementArrInvoke[iB]), a1.i(), a1.m(), j - a1.m(), a1.h(), a1.l(), a(a1.j(), ownProcessName), i7));
                        i = i7;
                    }
                    jLongValue = j;
                }
            }
        }
        if (i2 == 0) {
            return;
        }
        this.c.invoke(new D1(i2, i3, i4, i5, i6, i));
    }

    /* JADX WARN: Illegal instructions before constructor call */
    /* JADX WARN: Multi-variable type inference failed */
    public /* synthetic */ C3920x1(D7 d7, Function1 function1, Function1 function12, InterfaceC3956z1 interfaceC3956z1, F1 f1, Function0 function0, Function0 function02, Function0 function03, Function1 function13, int i, DefaultConstructorMarker defaultConstructorMarker) {
        int i2 = 1;
        this((i & 1) != 0 ? Pb.w.d().h() : d7, (i & 2) != 0 ? new a(new C3938y1(null, i2, 0 == true ? 1 : 0)) : function1, (i & 4) != 0 ? new b(new C3938y1(0 == true ? 1 : 0, i2, 0 == true ? 1 : 0)) : function12, (i & 8) != 0 ? C3896vd.a : interfaceC3956z1, (i & 16) != 0 ? C3824rf.a : f1, (i & 32) != 0 ? c.a : function0, (i & 64) != 0 ? new Function0() { // from class: com.ironsource.x1$$ExternalSyntheticLambda0
            @Override // kotlin.jvm.functions.Function0
            public final Object invoke() {
                return Boolean.valueOf(C3920x1.a());
            }
        } : function02, (i & Sdk.SDKError.Reason.INVALID_TPAT_KEY_VALUE) != 0 ? new d(C3914wd.a) : function03, (i & 256) != 0 ? new Function1() { // from class: com.ironsource.x1$$ExternalSyntheticLambda1
            @Override // kotlin.jvm.functions.Function1
            public final Object invoke(Object obj) {
                return C3920x1.a((Runnable) obj);
            }
        } : function13);
    }

    private final boolean a(A1 a1, long j, long j2) {
        return j - a1.m() > j2;
    }

    private final String a(String str, String str2) {
        return str.length() == 0 ? "unknown" : Intrinsics.areEqual(str, str2) ? o : StringsKt__StringsKt.contains$default((CharSequence) str, ':', false, 2, (Object) null) ? StringsKt__StringsKt.substringAfterLast$default(str, ':', (String) null, 2, (Object) null) : str;
    }
}
