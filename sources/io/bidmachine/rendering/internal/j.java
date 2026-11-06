package io.bidmachine.rendering.internal;

import kotlin.Lazy;
import kotlin.LazyKt__LazyJVMKt;
import kotlin.jvm.functions.Function0;
import kotlin.jvm.internal.DefaultConstructorMarker;
import kotlin.jvm.internal.Intrinsics;
import kotlin.jvm.internal.Lambda;
import kotlinx.coroutines.CoroutineDispatcher;
import kotlinx.coroutines.Dispatchers;

/* JADX INFO: loaded from: classes5.dex */
public final class j {
    public static final e i = new e(null);
    public static final j j = new j(a.a, b.a, c.a, d.a);
    public final Function0 a;
    public final Function0 b;
    public final Function0 c;
    public final Function0 d;
    public final Lazy e;
    public final Lazy f;
    public final Lazy g;
    public final Lazy h;

    public static final class a extends Lambda implements Function0 {
        public static final a a = new a();

        public a() {
            super(0);
        }

        @Override // kotlin.jvm.functions.Function0
        /* JADX INFO: renamed from: a, reason: merged with bridge method [inline-methods] */
        public final CoroutineDispatcher invoke() {
            return Dispatchers.getMain();
        }
    }

    public static final class b extends Lambda implements Function0 {
        public static final b a = new b();

        public b() {
            super(0);
        }

        @Override // kotlin.jvm.functions.Function0
        /* JADX INFO: renamed from: a, reason: merged with bridge method [inline-methods] */
        public final CoroutineDispatcher invoke() {
            return Dispatchers.getMain().getImmediate();
        }
    }

    public static final class c extends Lambda implements Function0 {
        public static final c a = new c();

        public c() {
            super(0);
        }

        @Override // kotlin.jvm.functions.Function0
        /* JADX INFO: renamed from: a, reason: merged with bridge method [inline-methods] */
        public final CoroutineDispatcher invoke() {
            return Dispatchers.getIO();
        }
    }

    public static final class d extends Lambda implements Function0 {
        public static final d a = new d();

        public d() {
            super(0);
        }

        @Override // kotlin.jvm.functions.Function0
        /* JADX INFO: renamed from: a, reason: merged with bridge method [inline-methods] */
        public final CoroutineDispatcher invoke() {
            return Dispatchers.getDefault();
        }
    }

    public static final class e {
        public /* synthetic */ e(DefaultConstructorMarker defaultConstructorMarker) {
            this();
        }

        public final j a() {
            return j.j;
        }

        public e() {
        }
    }

    public static final class f extends Lambda implements Function0 {
        public f() {
            super(0);
        }

        @Override // kotlin.jvm.functions.Function0
        /* JADX INFO: renamed from: a, reason: merged with bridge method [inline-methods] */
        public final CoroutineDispatcher invoke() {
            return (CoroutineDispatcher) j.this.d.invoke();
        }
    }

    public static final class g extends Lambda implements Function0 {
        public g() {
            super(0);
        }

        @Override // kotlin.jvm.functions.Function0
        /* JADX INFO: renamed from: a, reason: merged with bridge method [inline-methods] */
        public final CoroutineDispatcher invoke() {
            return (CoroutineDispatcher) j.this.c.invoke();
        }
    }

    public static final class h extends Lambda implements Function0 {
        public h() {
            super(0);
        }

        @Override // kotlin.jvm.functions.Function0
        /* JADX INFO: renamed from: a, reason: merged with bridge method [inline-methods] */
        public final CoroutineDispatcher invoke() {
            return (CoroutineDispatcher) j.this.a.invoke();
        }
    }

    public static final class i extends Lambda implements Function0 {
        public i() {
            super(0);
        }

        @Override // kotlin.jvm.functions.Function0
        /* JADX INFO: renamed from: a, reason: merged with bridge method [inline-methods] */
        public final CoroutineDispatcher invoke() {
            return (CoroutineDispatcher) j.this.b.invoke();
        }
    }

    public j(Function0 mainProvider, Function0 mainImmediateProvider, Function0 ioProvider, Function0 defaultProvider) {
        Intrinsics.checkNotNullParameter(mainProvider, "mainProvider");
        Intrinsics.checkNotNullParameter(mainImmediateProvider, "mainImmediateProvider");
        Intrinsics.checkNotNullParameter(ioProvider, "ioProvider");
        Intrinsics.checkNotNullParameter(defaultProvider, "defaultProvider");
        this.a = mainProvider;
        this.b = mainImmediateProvider;
        this.c = ioProvider;
        this.d = defaultProvider;
        this.e = LazyKt__LazyJVMKt.lazy(new h());
        this.f = LazyKt__LazyJVMKt.lazy(new i());
        this.g = LazyKt__LazyJVMKt.lazy(new g());
        this.h = LazyKt__LazyJVMKt.lazy(new f());
    }

    public final CoroutineDispatcher e() {
        return (CoroutineDispatcher) this.f.getValue();
    }

    public final CoroutineDispatcher b() {
        return (CoroutineDispatcher) this.h.getValue();
    }

    public final CoroutineDispatcher c() {
        return (CoroutineDispatcher) this.g.getValue();
    }

    public final CoroutineDispatcher d() {
        return (CoroutineDispatcher) this.e.getValue();
    }
}
