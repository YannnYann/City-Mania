package com.ironsource;

import com.ironsource.Hf;
import kotlin.Unit;
import kotlin.jvm.functions.Function1;
import kotlin.jvm.internal.Intrinsics;

/* JADX INFO: loaded from: classes3.dex */
public interface Ff {

    public static final class a {
        private final Hf.a a;
        private boolean b;

        public a(Hf.a onCancel) {
            Intrinsics.checkNotNullParameter(onCancel, "onCancel");
            this.a = onCancel;
        }

        public final void a() {
            this.a.cancel();
            this.b = true;
        }

        public final boolean b() {
            return this.b;
        }
    }

    default <T> a a(T owner, long j, @InterfaceC3930xb Function1<? super T, Unit> block) {
        Intrinsics.checkNotNullParameter(owner, "owner");
        Intrinsics.checkNotNullParameter(block, "block");
        return b(Gf.b(owner, block), j);
    }

    a a(Runnable runnable, long j);

    a b(@InterfaceC3930xb Runnable runnable, long j);
}
