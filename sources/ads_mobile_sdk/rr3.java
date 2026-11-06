package ads_mobile_sdk;

import java.io.Closeable;
import java.util.List;
import java.util.UUID;
import java.util.concurrent.atomic.AtomicBoolean;
import java.util.concurrent.atomic.AtomicLong;
import kotlin.jvm.internal.Intrinsics;
import kotlin.time.Duration;
import kotlin.time.DurationKt;
import kotlin.time.DurationUnit;

/* JADX INFO: loaded from: classes.dex */
public abstract class rr3 implements Closeable {
    public ks3 a;
    public final rr3 b;
    public final long c;
    public final AtomicBoolean d;
    public final AtomicLong e;
    public final AtomicLong f;

    public rr3(s11 cuiName, ks3 traceMetaSet, UUID rootTraceId, rr3 rr3Var, long j, boolean z) {
        Intrinsics.checkNotNullParameter(cuiName, "cuiName");
        Intrinsics.checkNotNullParameter(traceMetaSet, "traceMetaSet");
        Intrinsics.checkNotNullParameter(rootTraceId, "rootTraceId");
        this.a = traceMetaSet;
        this.b = rr3Var;
        this.c = j;
        this.d = new AtomicBoolean(false);
        this.e = new AtomicLong();
        this.f = new AtomicLong();
        cl0.a(cuiName, rootTraceId);
    }

    public abstract rr3 a(s11 s11Var, List list, boolean z);

    public abstract uj2 e();

    public abstract void h();

    public final ks3 g() {
        return this.a;
    }

    public final rr3 d() {
        return this.b;
    }

    public final long f() {
        return this.c;
    }

    public final int c() {
        return e().a;
    }

    public final AtomicBoolean b() {
        return this.d;
    }

    public final void b(Throwable e) {
        Intrinsics.checkNotNullParameter(e, "e");
        if (this.d.get()) {
            sr3.a("This trace " + e().c.name() + " has already finished, can't set exception");
            return;
        }
        e().m = false;
        e().n = e;
    }

    @Override // java.io.Closeable, java.lang.AutoCloseable
    public final void close() {
        hs3.a(this);
    }

    public void a() {
        if (this.d.getAndSet(true)) {
            sr3.a("This trace " + e().c.name() + " has already finished, can't finish again");
            return;
        }
        uj2 uj2VarE = e();
        Duration.Companion companion = Duration.Companion;
        long j = this.e.get();
        DurationUnit durationUnit = DurationUnit.MILLISECONDS;
        uj2VarE.b(DurationKt.toDuration(j, durationUnit));
        e().a(DurationKt.toDuration(this.f.get(), durationUnit));
        rr3 rr3Var = this.b;
        if (rr3Var != null) {
            rr3Var.f.addAndGet(Duration.m2881getInWholeMillisecondsimpl(Duration.m2897plusLRDsOJo(e().b(), e().a())));
        }
        h();
        cl0.a(e(), this.a);
    }

    public final void a(Throwable e) {
        Intrinsics.checkNotNullParameter(e, "e");
        if (this.d.get()) {
            sr3.a("This trace " + e().c.name() + " has already finished, can't set causing exception");
            return;
        }
        e().m = false;
        e().o = e;
    }

    public final void a(ks3 ks3Var) {
        Intrinsics.checkNotNullParameter(ks3Var, "<set-?>");
        this.a = ks3Var;
    }
}
