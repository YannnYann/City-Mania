package io.bidmachine.analytics.internal.a;

import android.content.Context;
import io.bidmachine.analytics.internal.u.g;
import kotlin.Lazy;
import kotlin.LazyKt__LazyJVMKt;
import kotlin.jvm.functions.Function0;
import kotlin.jvm.internal.Lambda;

/* JADX INFO: loaded from: classes4.dex */
public final class d {
    private final Context a;
    private final Lazy b = LazyKt__LazyJVMKt.lazy(b.a);
    private final Lazy c = LazyKt__LazyJVMKt.lazy(c.a);
    private final Lazy d = LazyKt__LazyJVMKt.lazy(a.a);

    public static final class a extends Lambda implements Function0 {
        public static final a a = new a();

        public a() {
            super(0);
        }

        @Override // kotlin.jvm.functions.Function0
        /* JADX INFO: renamed from: a, reason: merged with bridge method [inline-methods] */
        public final io.bidmachine.analytics.internal.s.b invoke() {
            return new io.bidmachine.analytics.internal.s.b();
        }
    }

    public static final class b extends Lambda implements Function0 {
        public static final b a = new b();

        public b() {
            super(0);
        }

        @Override // kotlin.jvm.functions.Function0
        /* JADX INFO: renamed from: a, reason: merged with bridge method [inline-methods] */
        public final io.bidmachine.analytics.internal.t.e invoke() {
            return new io.bidmachine.analytics.internal.t.e(0, 1, null);
        }
    }

    public static final class c extends Lambda implements Function0 {
        public static final c a = new c();

        public c() {
            super(0);
        }

        @Override // kotlin.jvm.functions.Function0
        /* JADX INFO: renamed from: a, reason: merged with bridge method [inline-methods] */
        public final g invoke() {
            return new g();
        }
    }

    public d(Context context) {
        this.a = context.getApplicationContext();
    }

    public final io.bidmachine.analytics.internal.s.b a() {
        return (io.bidmachine.analytics.internal.s.b) this.d.getValue();
    }

    public final io.bidmachine.analytics.internal.t.e b() {
        return (io.bidmachine.analytics.internal.t.e) this.b.getValue();
    }

    public final g c() {
        return (g) this.c.getValue();
    }
}
