package io.bidmachine.rendering.internal;

import kotlin.Unit;
import kotlin.jvm.functions.Function0;
import kotlin.jvm.internal.Intrinsics;
import kotlin.jvm.internal.Lambda;

/* JADX INFO: loaded from: classes5.dex */
public abstract class p {

    public static final class a extends Lambda implements Function0 {
        public final /* synthetic */ Function0 a;

        /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
        public a(Function0 function0) {
            super(0);
            this.a = function0;
        }

        public final void a() {
            try {
                this.a.invoke();
            } catch (Throwable th) {
                try {
                    t.b(th);
                    Unit unit = Unit.INSTANCE;
                } catch (Throwable unused) {
                }
            }
        }

        @Override // kotlin.jvm.functions.Function0
        public /* bridge */ /* synthetic */ Object invoke() {
            a();
            return Unit.INSTANCE;
        }
    }

    public static final Function0 a(Function0 block) {
        Intrinsics.checkNotNullParameter(block, "block");
        return new a(block);
    }
}
