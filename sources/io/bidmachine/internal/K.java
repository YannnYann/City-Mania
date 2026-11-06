package io.bidmachine.internal;

import android.content.Context;
import java.lang.ref.WeakReference;
import kotlin.Result;
import kotlin.ResultKt;
import kotlin.Unit;
import kotlin.jvm.functions.Function0;
import kotlin.jvm.functions.Function1;
import kotlin.jvm.internal.DefaultConstructorMarker;
import kotlin.jvm.internal.Intrinsics;
import kotlin.jvm.internal.Lambda;

/* JADX INFO: loaded from: classes5.dex */
public final class K extends Thread {
    public static final d i = new d(null);
    public final long a;
    public final Function0 b;
    public final Function1 c;
    public final Function1 d;
    public volatile long e;
    public volatile int f;
    public volatile WeakReference g;
    public J h;

    public static final class a extends Lambda implements Function0 {
        public static final a a = new a();

        public a() {
            super(0);
        }

        @Override // kotlin.jvm.functions.Function0
        /* JADX INFO: renamed from: a, reason: merged with bridge method [inline-methods] */
        public final Long invoke() {
            return Long.valueOf(System.currentTimeMillis());
        }
    }

    public static final class b extends Lambda implements Function1 {
        public static final b a = new b();

        public b() {
            super(1);
        }

        public final void a(long j) throws InterruptedException {
            Thread.sleep(j);
        }

        @Override // kotlin.jvm.functions.Function1
        public /* bridge */ /* synthetic */ Object invoke(Object obj) throws InterruptedException {
            a(((Number) obj).longValue());
            return Unit.INSTANCE;
        }
    }

    public static final class c extends Lambda implements Function1 {
        public static final c a = new c();

        public c() {
            super(1);
        }

        @Override // kotlin.jvm.functions.Function1
        /* JADX INFO: renamed from: a, reason: merged with bridge method [inline-methods] */
        public final J invoke(Context it) {
            Intrinsics.checkNotNullParameter(it, "it");
            return new J(it);
        }
    }

    public static final class d {
        public /* synthetic */ d(DefaultConstructorMarker defaultConstructorMarker) {
            this();
        }

        public d() {
        }
    }

    public /* synthetic */ K(long j, Function0 function0, Function1 function1, Function1 function12, int i2, DefaultConstructorMarker defaultConstructorMarker) {
        this(j, (i2 & 2) != 0 ? a.a : function0, (i2 & 4) != 0 ? b.a : function1, (i2 & 8) != 0 ? c.a : function12);
    }

    public final void a(Context context) {
        Intrinsics.checkNotNullParameter(context, "context");
        this.g = new WeakReference(context.getApplicationContext());
    }

    public final J b() {
        Context context;
        WeakReference weakReference = this.g;
        if (weakReference == null || (context = (Context) weakReference.get()) == null) {
            return null;
        }
        J j = this.h;
        if (j != null) {
            return j;
        }
        J j2 = (J) this.d.invoke(context);
        this.h = j2;
        return j2;
    }

    public final void c() {
        a(2);
    }

    public final void d() {
        a(1);
    }

    public final Object e() {
        try {
            Result.Companion companion = Result.Companion;
            J jB = b();
            if (jB != null) {
                long jLongValue = this.e;
                if (jLongValue == 0) {
                    jLongValue = ((Number) this.b.invoke()).longValue();
                }
                long j = this.a;
                jB.a(new I(j, jLongValue - j, jLongValue != 0));
            }
            return Result.m2760constructorimpl(Unit.INSTANCE);
        } catch (Throwable th) {
            Result.Companion companion2 = Result.Companion;
            return Result.m2760constructorimpl(ResultKt.createFailure(th));
        }
    }

    public final void f() {
        try {
            setName(a());
        } catch (Throwable unused) {
        }
        e();
    }

    @Override // java.lang.Thread, java.lang.Runnable
    public void run() {
        while (this.f < 2) {
            f();
            try {
                this.c.invoke(200L);
            } catch (InterruptedException unused) {
                if (this.f == 2) {
                    f();
                    this.c.invoke(5000L);
                    Unit unit = Unit.INSTANCE;
                }
            }
        }
        f();
        try {
            this.c.invoke(5000L);
            Unit unit2 = Unit.INSTANCE;
        } catch (Throwable unused2) {
        }
    }

    public final String a() {
        long jLongValue = ((Number) this.b.invoke()).longValue();
        return "bm:s:" + this.f + ':' + this.a + ':' + (this.e < this.a ? "" : String.valueOf(this.e - this.a)) + ':' + (jLongValue - this.a);
    }

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public K(long j, Function0 currentTimeProvider, Function1 sleeper, Function1 storageFactory) {
        super("bm:s:0:" + j);
        Intrinsics.checkNotNullParameter(currentTimeProvider, "currentTimeProvider");
        Intrinsics.checkNotNullParameter(sleeper, "sleeper");
        Intrinsics.checkNotNullParameter(storageFactory, "storageFactory");
        this.a = j;
        this.b = currentTimeProvider;
        this.c = sleeper;
        this.d = storageFactory;
    }

    public final void a(int i2) {
        if (i2 < this.f) {
            return;
        }
        if (i2 == 2) {
            this.e = ((Number) this.b.invoke()).longValue();
            this.f = i2;
            try {
                interrupt();
                Unit unit = Unit.INSTANCE;
                return;
            } catch (Throwable unused) {
                return;
            }
        }
        this.f = i2;
    }
}
