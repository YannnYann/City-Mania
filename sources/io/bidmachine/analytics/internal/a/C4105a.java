package io.bidmachine.analytics.internal.a;

import android.content.Context;
import io.bidmachine.util.time.SystemTimeManagerInstance;
import io.bidmachine.util.time.TimeManagerInstance;
import kotlin.Lazy;
import kotlin.LazyKt__LazyJVMKt;
import kotlin.jvm.functions.Function0;
import kotlin.jvm.internal.Lambda;

/* JADX INFO: renamed from: io.bidmachine.analytics.internal.a.a, reason: case insensitive filesystem */
/* JADX INFO: loaded from: classes4.dex */
public final class C4105a {
    private final Context a;
    private final Lazy b = LazyKt__LazyJVMKt.lazy(new b());
    private final Lazy c = LazyKt__LazyJVMKt.lazy(new c());
    private final Lazy d = LazyKt__LazyJVMKt.lazy(new C1118a());
    private final Lazy e = LazyKt__LazyJVMKt.lazy(d.a);

    /* JADX INFO: renamed from: io.bidmachine.analytics.internal.a.a$a, reason: collision with other inner class name */
    public static final class C1118a extends Lambda implements Function0 {
        public C1118a() {
            super(0);
        }

        @Override // kotlin.jvm.functions.Function0
        /* JADX INFO: renamed from: a, reason: merged with bridge method [inline-methods] */
        public final C4106b invoke() {
            return new C4106b(C4105a.this.c().f());
        }
    }

    /* JADX INFO: renamed from: io.bidmachine.analytics.internal.a.a$b */
    public static final class b extends Lambda implements Function0 {
        public b() {
            super(0);
        }

        @Override // kotlin.jvm.functions.Function0
        /* JADX INFO: renamed from: a, reason: merged with bridge method [inline-methods] */
        public final C4107c invoke() {
            return new C4107c(C4105a.this.a());
        }
    }

    /* JADX INFO: renamed from: io.bidmachine.analytics.internal.a.a$c */
    public static final class c extends Lambda implements Function0 {
        public c() {
            super(0);
        }

        @Override // kotlin.jvm.functions.Function0
        /* JADX INFO: renamed from: a, reason: merged with bridge method [inline-methods] */
        public final io.bidmachine.analytics.internal.a.d invoke() {
            return new io.bidmachine.analytics.internal.a.d(C4105a.this.a());
        }
    }

    /* JADX INFO: renamed from: io.bidmachine.analytics.internal.a.a$d */
    public static final class d extends Lambda implements Function0 {
        public static final d a = new d();

        public d() {
            super(0);
        }

        @Override // kotlin.jvm.functions.Function0
        /* JADX INFO: renamed from: a, reason: merged with bridge method [inline-methods] */
        public final SystemTimeManagerInstance invoke() {
            return new SystemTimeManagerInstance();
        }
    }

    public C4105a(Context context) {
        this.a = context.getApplicationContext();
    }

    public final Context a() {
        return this.a;
    }

    public final C4106b b() {
        return (C4106b) this.d.getValue();
    }

    public final C4107c c() {
        return (C4107c) this.b.getValue();
    }

    public final io.bidmachine.analytics.internal.a.d d() {
        return (io.bidmachine.analytics.internal.a.d) this.c.getValue();
    }

    public final TimeManagerInstance e() {
        return (TimeManagerInstance) this.e.getValue();
    }
}
