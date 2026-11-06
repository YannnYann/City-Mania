package io.bidmachine.analytics.internal.a;

import kotlin.Lazy;
import kotlin.LazyKt__LazyJVMKt;
import kotlin.jvm.functions.Function0;
import kotlin.jvm.internal.Lambda;

/* JADX INFO: renamed from: io.bidmachine.analytics.internal.a.b, reason: case insensitive filesystem */
/* JADX INFO: loaded from: classes4.dex */
public final class C4106b {
    private final Lazy a;
    private final Lazy b = LazyKt__LazyJVMKt.lazy(a.a);

    /* JADX INFO: renamed from: io.bidmachine.analytics.internal.a.b$a */
    public static final class a extends Lambda implements Function0 {
        public static final a a = new a();

        public a() {
            super(0);
        }

        @Override // kotlin.jvm.functions.Function0
        /* JADX INFO: renamed from: a, reason: merged with bridge method [inline-methods] */
        public final io.bidmachine.analytics.internal.q.a invoke() {
            return new io.bidmachine.analytics.internal.q.a();
        }
    }

    /* JADX INFO: renamed from: io.bidmachine.analytics.internal.a.b$b, reason: collision with other inner class name */
    public static final class C1119b extends Lambda implements Function0 {
        final /* synthetic */ io.bidmachine.analytics.internal.J.b a;

        /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
        public C1119b(io.bidmachine.analytics.internal.J.b bVar) {
            super(0);
            this.a = bVar;
        }

        @Override // kotlin.jvm.functions.Function0
        /* JADX INFO: renamed from: a, reason: merged with bridge method [inline-methods] */
        public final io.bidmachine.analytics.internal.q.b invoke() {
            return new io.bidmachine.analytics.internal.q.b(this.a);
        }
    }

    public C4106b(io.bidmachine.analytics.internal.J.b bVar) {
        this.a = LazyKt__LazyJVMKt.lazy(new C1119b(bVar));
    }

    public final io.bidmachine.analytics.internal.q.a a() {
        return (io.bidmachine.analytics.internal.q.a) this.b.getValue();
    }

    public final io.bidmachine.analytics.internal.q.b b() {
        return (io.bidmachine.analytics.internal.q.b) this.a.getValue();
    }
}
