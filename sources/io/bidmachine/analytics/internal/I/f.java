package io.bidmachine.analytics.internal.I;

import kotlin.Lazy;
import kotlin.LazyKt__LazyJVMKt;
import kotlin.jvm.functions.Function0;
import kotlin.jvm.internal.DefaultConstructorMarker;
import kotlin.jvm.internal.Lambda;
import kotlinx.coroutines.CoroutineDispatcher;
import kotlinx.coroutines.Dispatchers;

/* JADX INFO: loaded from: classes4.dex */
public final class f {
    public static final d g = new d(null);
    private static final f h = new f(a.a, b.a, c.a);
    private final Function0 a;
    private final Function0 b;
    private final Function0 c;
    private final Lazy d = LazyKt__LazyJVMKt.lazy(new g());
    private final Lazy e = LazyKt__LazyJVMKt.lazy(new C1117f());
    private final Lazy f = LazyKt__LazyJVMKt.lazy(new e());

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
            return Dispatchers.getIO();
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
            return Dispatchers.getDefault();
        }
    }

    public static final class d {
        public /* synthetic */ d(DefaultConstructorMarker defaultConstructorMarker) {
            this();
        }

        public final f a() {
            return f.h;
        }

        private d() {
        }
    }

    public static final class e extends Lambda implements Function0 {
        public e() {
            super(0);
        }

        @Override // kotlin.jvm.functions.Function0
        /* JADX INFO: renamed from: a, reason: merged with bridge method [inline-methods] */
        public final CoroutineDispatcher invoke() {
            return (CoroutineDispatcher) f.this.c.invoke();
        }
    }

    /* JADX INFO: renamed from: io.bidmachine.analytics.internal.I.f$f, reason: collision with other inner class name */
    public static final class C1117f extends Lambda implements Function0 {
        public C1117f() {
            super(0);
        }

        @Override // kotlin.jvm.functions.Function0
        /* JADX INFO: renamed from: a, reason: merged with bridge method [inline-methods] */
        public final CoroutineDispatcher invoke() {
            return (CoroutineDispatcher) f.this.b.invoke();
        }
    }

    public static final class g extends Lambda implements Function0 {
        public g() {
            super(0);
        }

        @Override // kotlin.jvm.functions.Function0
        /* JADX INFO: renamed from: a, reason: merged with bridge method [inline-methods] */
        public final CoroutineDispatcher invoke() {
            return (CoroutineDispatcher) f.this.a.invoke();
        }
    }

    public f(Function0 function0, Function0 function02, Function0 function03) {
        this.a = function0;
        this.b = function02;
        this.c = function03;
    }

    public final CoroutineDispatcher b() {
        return (CoroutineDispatcher) this.f.getValue();
    }

    public final CoroutineDispatcher c() {
        return (CoroutineDispatcher) this.e.getValue();
    }
}
