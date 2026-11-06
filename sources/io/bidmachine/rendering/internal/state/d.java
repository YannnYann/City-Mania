package io.bidmachine.rendering.internal.state;

import io.bidmachine.rendering.internal.j;
import kotlin.Lazy;
import kotlin.LazyKt__LazyJVMKt;
import kotlin.LazyThreadSafetyMode;
import kotlin.jvm.functions.Function0;
import kotlin.jvm.internal.Intrinsics;
import kotlin.jvm.internal.Lambda;

/* JADX INFO: loaded from: classes5.dex */
public final class d extends c {
    public final j r;
    public final Lazy s;

    public static final class a extends Lambda implements Function0 {
        public a() {
            super(0);
        }

        @Override // kotlin.jvm.functions.Function0
        /* JADX INFO: renamed from: a, reason: merged with bridge method [inline-methods] */
        public final b invoke() {
            d dVar = d.this;
            return new b(dVar, dVar.u());
        }
    }

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public d(String parent, j coroutineDispatchers) {
        super(parent);
        Intrinsics.checkNotNullParameter(parent, "parent");
        Intrinsics.checkNotNullParameter(coroutineDispatchers, "coroutineDispatchers");
        this.r = coroutineDispatchers;
        this.s = LazyKt__LazyJVMKt.lazy(LazyThreadSafetyMode.PUBLICATION, new a());
    }

    public final j u() {
        return this.r;
    }

    public final b v() {
        return (b) this.s.getValue();
    }
}
