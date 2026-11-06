package io.bidmachine.analytics.internal.t;

import android.content.Context;
import io.bidmachine.analytics.ReaderConfig;
import io.bidmachine.analytics.internal.a.C4105a;
import io.bidmachine.analytics.internal.r.a;
import kotlin.Lazy;
import kotlin.LazyKt__LazyJVMKt;
import kotlin.coroutines.Continuation;
import kotlin.jvm.functions.Function0;
import kotlin.jvm.functions.Function1;
import kotlin.jvm.internal.DefaultConstructorMarker;
import kotlin.jvm.internal.Lambda;

/* JADX INFO: loaded from: classes4.dex */
public final class c extends io.bidmachine.analytics.internal.r.a {
    public static final b k = new b(null);
    private final C4105a g;
    private final Function1 h;
    private final String i;
    private final Lazy j;

    public static final class a extends Lambda implements Function1 {
        public static final a a = new a();

        public a() {
            super(1);
        }

        /* JADX WARN: Multi-variable type inference failed */
        @Override // kotlin.jvm.functions.Function1
        /* JADX INFO: renamed from: a, reason: merged with bridge method [inline-methods] */
        public final d invoke(e eVar) {
            return new d(eVar, null, 2, 0 == true ? 1 : 0);
        }
    }

    public static final class b {
        public /* synthetic */ b(DefaultConstructorMarker defaultConstructorMarker) {
            this();
        }

        private b() {
        }
    }

    /* JADX INFO: renamed from: io.bidmachine.analytics.internal.t.c$c, reason: collision with other inner class name */
    public static final class C1148c extends Lambda implements Function0 {
        public C1148c() {
            super(0);
        }

        @Override // kotlin.jvm.functions.Function0
        /* JADX INFO: renamed from: a, reason: merged with bridge method [inline-methods] */
        public final d invoke() {
            return (d) c.this.h.invoke(c.this.e());
        }
    }

    public /* synthetic */ c(C4105a c4105a, Function1 function1, int i, DefaultConstructorMarker defaultConstructorMarker) {
        this(c4105a, (i & 2) != 0 ? a.a : function1);
    }

    private final d d() {
        return (d) this.j.getValue();
    }

    /* JADX INFO: Access modifiers changed from: private */
    public final e e() {
        return this.g.d().b();
    }

    @Override // io.bidmachine.analytics.internal.h.AbstractC4124d
    public void d(Context context) {
    }

    @Override // io.bidmachine.analytics.internal.r.a, io.bidmachine.analytics.internal.h.AbstractC4124d
    public void f(Context context) {
        d().b();
        super.f(context);
    }

    @Override // io.bidmachine.analytics.internal.h.AbstractC4124d
    public String a() {
        return this.i;
    }

    @Override // io.bidmachine.analytics.internal.r.a, io.bidmachine.analytics.internal.h.AbstractC4124d
    public void e(Context context) {
        super.e(context);
        d().a();
    }

    public c(C4105a c4105a, Function1 function1) {
        this.g = c4105a;
        this.h = function1;
        this.i = "alog";
        this.j = LazyKt__LazyJVMKt.lazy(new C1148c());
    }

    @Override // io.bidmachine.analytics.internal.r.a, io.bidmachine.analytics.internal.h.AbstractC4124d
    /* JADX INFO: renamed from: a */
    public void b(a.C1144a c1144a) {
        super.b(c1144a);
        d().a(c1144a);
    }

    @Override // io.bidmachine.analytics.internal.r.a
    public Object a(ReaderConfig.Rule rule, Continuation continuation) {
        return d().a(rule);
    }
}
