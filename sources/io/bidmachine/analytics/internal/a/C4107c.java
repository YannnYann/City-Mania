package io.bidmachine.analytics.internal.a;

import android.content.Context;
import android.database.sqlite.SQLiteDatabase;
import kotlin.Lazy;
import kotlin.LazyKt__LazyJVMKt;
import kotlin.jvm.functions.Function0;
import kotlin.jvm.internal.Lambda;

/* JADX INFO: renamed from: io.bidmachine.analytics.internal.a.c, reason: case insensitive filesystem */
/* JADX INFO: loaded from: classes4.dex */
public final class C4107c {
    private final Context a;
    private final Lazy b = LazyKt__LazyJVMKt.lazy(new b());
    private final Lazy c = LazyKt__LazyJVMKt.lazy(new a());
    private final Lazy d = LazyKt__LazyJVMKt.lazy(new d());
    private final Lazy e = LazyKt__LazyJVMKt.lazy(new f());
    private final Lazy f = LazyKt__LazyJVMKt.lazy(new C1120c());
    private final Lazy g = LazyKt__LazyJVMKt.lazy(new e());

    /* JADX INFO: renamed from: io.bidmachine.analytics.internal.a.c$a */
    public static final class a extends Lambda implements Function0 {
        public a() {
            super(0);
        }

        @Override // kotlin.jvm.functions.Function0
        /* JADX INFO: renamed from: a, reason: merged with bridge method [inline-methods] */
        public final SQLiteDatabase invoke() {
            return C4107c.this.c().getWritableDatabase();
        }
    }

    /* JADX INFO: renamed from: io.bidmachine.analytics.internal.a.c$b */
    public static final class b extends Lambda implements Function0 {
        public b() {
            super(0);
        }

        @Override // kotlin.jvm.functions.Function0
        /* JADX INFO: renamed from: a, reason: merged with bridge method [inline-methods] */
        public final io.bidmachine.analytics.internal.E.a invoke() {
            return new io.bidmachine.analytics.internal.E.a(C4107c.this.a());
        }
    }

    /* JADX INFO: renamed from: io.bidmachine.analytics.internal.a.c$c, reason: collision with other inner class name */
    public static final class C1120c extends Lambda implements Function0 {
        public C1120c() {
            super(0);
        }

        @Override // kotlin.jvm.functions.Function0
        /* JADX INFO: renamed from: a, reason: merged with bridge method [inline-methods] */
        public final io.bidmachine.analytics.internal.H.b invoke() {
            return new io.bidmachine.analytics.internal.H.b(C4107c.this.b());
        }
    }

    /* JADX INFO: renamed from: io.bidmachine.analytics.internal.a.c$d */
    public static final class d extends Lambda implements Function0 {
        public d() {
            super(0);
        }

        @Override // kotlin.jvm.functions.Function0
        /* JADX INFO: renamed from: a, reason: merged with bridge method [inline-methods] */
        public final io.bidmachine.analytics.internal.H.d invoke() {
            io.bidmachine.analytics.internal.H.d dVar = new io.bidmachine.analytics.internal.H.d(C4107c.this.b());
            dVar.b();
            return dVar;
        }
    }

    /* JADX INFO: renamed from: io.bidmachine.analytics.internal.a.c$e */
    public static final class e extends Lambda implements Function0 {
        public e() {
            super(0);
        }

        @Override // kotlin.jvm.functions.Function0
        /* JADX INFO: renamed from: a, reason: merged with bridge method [inline-methods] */
        public final io.bidmachine.analytics.internal.J.a invoke() {
            return new io.bidmachine.analytics.internal.J.a(C4107c.this.a(), null, 0, 6, null);
        }
    }

    /* JADX INFO: renamed from: io.bidmachine.analytics.internal.a.c$f */
    public static final class f extends Lambda implements Function0 {
        public f() {
            super(0);
        }

        @Override // kotlin.jvm.functions.Function0
        /* JADX INFO: renamed from: a, reason: merged with bridge method [inline-methods] */
        public final io.bidmachine.analytics.internal.H.f invoke() {
            io.bidmachine.analytics.internal.H.f fVar = new io.bidmachine.analytics.internal.H.f(C4107c.this.b());
            fVar.b();
            return fVar;
        }
    }

    public C4107c(Context context) {
        this.a = context.getApplicationContext();
    }

    /* JADX INFO: Access modifiers changed from: private */
    public final io.bidmachine.analytics.internal.E.a c() {
        return (io.bidmachine.analytics.internal.E.a) this.b.getValue();
    }

    public final io.bidmachine.analytics.internal.H.a d() {
        return (io.bidmachine.analytics.internal.H.a) this.f.getValue();
    }

    public final io.bidmachine.analytics.internal.H.c e() {
        return (io.bidmachine.analytics.internal.H.c) this.d.getValue();
    }

    public final io.bidmachine.analytics.internal.J.b f() {
        return (io.bidmachine.analytics.internal.J.b) this.g.getValue();
    }

    public final io.bidmachine.analytics.internal.H.e g() {
        return (io.bidmachine.analytics.internal.H.e) this.e.getValue();
    }

    /* JADX INFO: Access modifiers changed from: private */
    public final SQLiteDatabase b() {
        return (SQLiteDatabase) this.c.getValue();
    }

    public final Context a() {
        return this.a;
    }
}
