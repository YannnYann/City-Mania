package com.ironsource;

import kotlin.jvm.internal.DefaultConstructorMarker;
import kotlin.jvm.internal.Intrinsics;

/* JADX INFO: loaded from: classes3.dex */
public interface Yg {

    public static final class a {
        public static final C0033a a = new C0033a(null);

        /* JADX INFO: renamed from: com.ironsource.Yg$a$a, reason: collision with other inner class name */
        public static final class C0033a {
            public /* synthetic */ C0033a(DefaultConstructorMarker defaultConstructorMarker) {
                this();
            }

            public final Yg a(boolean z, Rg waterfallOperations) {
                Intrinsics.checkNotNullParameter(waterfallOperations, "waterfallOperations");
                return z ? new Wg(waterfallOperations) : new Vg(waterfallOperations);
            }

            private C0033a() {
            }
        }
    }

    void a();

    void a(A a2);

    Pd b();

    default A c() {
        return null;
    }
}
