package com.ironsource;

import kotlin.jvm.internal.Intrinsics;

/* JADX INFO: renamed from: com.ironsource.d7, reason: case insensitive filesystem */
/* JADX INFO: loaded from: classes3.dex */
public interface InterfaceC3561d7 {

    /* JADX INFO: renamed from: com.ironsource.d7$a */
    public static final class a implements InterfaceC3561d7 {
        private final InterfaceC3464a7 a;

        public a(InterfaceC3464a7 failure) {
            Intrinsics.checkNotNullParameter(failure, "failure");
            this.a = failure;
        }

        public final InterfaceC3464a7 a() {
            return this.a;
        }

        public final InterfaceC3464a7 b() {
            return this.a;
        }

        public boolean equals(Object obj) {
            if (this == obj) {
                return true;
            }
            return (obj instanceof a) && Intrinsics.areEqual(this.a, ((a) obj).a);
        }

        public int hashCode() {
            return this.a.hashCode();
        }

        public String toString() {
            return "Failure(failure=" + this.a + ")";
        }

        public final a a(InterfaceC3464a7 failure) {
            Intrinsics.checkNotNullParameter(failure, "failure");
            return new a(failure);
        }

        public static /* synthetic */ a a(a aVar, InterfaceC3464a7 interfaceC3464a7, int i, Object obj) {
            if ((i & 1) != 0) {
                interfaceC3464a7 = aVar.a;
            }
            return aVar.a(interfaceC3464a7);
        }

        @Override // com.ironsource.InterfaceC3561d7
        public void a(InterfaceC3580e7 handler) {
            Intrinsics.checkNotNullParameter(handler, "handler");
            handler.a(this.a);
        }
    }

    default void a(InterfaceC3580e7 handler) {
        Intrinsics.checkNotNullParameter(handler, "handler");
    }
}
