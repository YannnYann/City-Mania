package com.ironsource;

import kotlin.jvm.internal.Intrinsics;

/* JADX INFO: loaded from: classes3.dex */
public interface Ee {

    public static final class a implements Ee {
        private final C3841se a;

        public a(C3841se error) {
            Intrinsics.checkNotNullParameter(error, "error");
            this.a = error;
        }

        public final C3841se a() {
            return this.a;
        }

        public final C3841se b() {
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
            return "Failure(error=" + this.a + ")";
        }

        public final a a(C3841se error) {
            Intrinsics.checkNotNullParameter(error, "error");
            return new a(error);
        }

        public static /* synthetic */ a a(a aVar, C3841se c3841se, int i, Object obj) {
            if ((i & 1) != 0) {
                c3841se = aVar.a;
            }
            return aVar.a(c3841se);
        }
    }

    public static final class b implements Ee {
        private final Ae a;

        public b(Ae sdkInitResponse) {
            Intrinsics.checkNotNullParameter(sdkInitResponse, "sdkInitResponse");
            this.a = sdkInitResponse;
        }

        public final Ae a() {
            return this.a;
        }

        public final Ae b() {
            return this.a;
        }

        public boolean equals(Object obj) {
            if (this == obj) {
                return true;
            }
            return (obj instanceof b) && Intrinsics.areEqual(this.a, ((b) obj).a);
        }

        public int hashCode() {
            return this.a.hashCode();
        }

        public String toString() {
            return "Success(sdkInitResponse=" + this.a + ")";
        }

        public final b a(Ae sdkInitResponse) {
            Intrinsics.checkNotNullParameter(sdkInitResponse, "sdkInitResponse");
            return new b(sdkInitResponse);
        }

        public static /* synthetic */ b a(b bVar, Ae ae, int i, Object obj) {
            if ((i & 1) != 0) {
                ae = bVar.a;
            }
            return bVar.a(ae);
        }
    }
}
