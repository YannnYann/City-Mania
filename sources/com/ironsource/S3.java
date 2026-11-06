package com.ironsource;

import com.vungle.ads.internal.protos.Sdk;
import kotlin.jvm.internal.DefaultConstructorMarker;
import kotlin.jvm.internal.Intrinsics;

/* JADX INFO: loaded from: classes3.dex */
public final class S3 {
    private final C3659ie a;
    private final L9 b;
    private final C3521b3 c;
    private final Wb d;
    private final K1 e;
    private final C3516ag f;
    private final com.ironsource.mediationsdk.adquality.a g;

    public static final class a {
        private C3659ie a;
        private L9 b;
        private C3521b3 c;
        private Wb d;
        private K1 e;
        private C3516ag f;
        private com.ironsource.mediationsdk.adquality.a g;

        public a() {
            this(null, null, null, null, null, null, null, Sdk.SDKError.Reason.ASSET_FAILED_MAX_SPACE_EXCEEDED_VALUE, null);
        }

        public final a a(C3659ie c3659ie, L9 l9, C3521b3 c3521b3, Wb wb, K1 k1, C3516ag c3516ag, com.ironsource.mediationsdk.adquality.a aVar) {
            return new a(c3659ie, l9, c3521b3, wb, k1, c3516ag, aVar);
        }

        public final C3659ie b() {
            return this.a;
        }

        public final L9 c() {
            return this.b;
        }

        public final C3521b3 d() {
            return this.c;
        }

        public final Wb e() {
            return this.d;
        }

        public boolean equals(Object obj) {
            if (this == obj) {
                return true;
            }
            if (!(obj instanceof a)) {
                return false;
            }
            a aVar = (a) obj;
            return Intrinsics.areEqual(this.a, aVar.a) && Intrinsics.areEqual(this.b, aVar.b) && Intrinsics.areEqual(this.c, aVar.c) && Intrinsics.areEqual(this.d, aVar.d) && Intrinsics.areEqual(this.e, aVar.e) && Intrinsics.areEqual(this.f, aVar.f) && Intrinsics.areEqual(this.g, aVar.g);
        }

        public final K1 f() {
            return this.e;
        }

        public final C3516ag g() {
            return this.f;
        }

        public final com.ironsource.mediationsdk.adquality.a h() {
            return this.g;
        }

        public int hashCode() {
            C3659ie c3659ie = this.a;
            int iHashCode = (c3659ie == null ? 0 : c3659ie.hashCode()) * 31;
            L9 l9 = this.b;
            int iHashCode2 = (iHashCode + (l9 == null ? 0 : l9.hashCode())) * 31;
            C3521b3 c3521b3 = this.c;
            int iHashCode3 = (iHashCode2 + (c3521b3 == null ? 0 : c3521b3.hashCode())) * 31;
            Wb wb = this.d;
            int iHashCode4 = (iHashCode3 + (wb == null ? 0 : wb.hashCode())) * 31;
            K1 k1 = this.e;
            int iHashCode5 = (iHashCode4 + (k1 == null ? 0 : k1.hashCode())) * 31;
            C3516ag c3516ag = this.f;
            int iHashCode6 = (iHashCode5 + (c3516ag == null ? 0 : c3516ag.hashCode())) * 31;
            com.ironsource.mediationsdk.adquality.a aVar = this.g;
            return iHashCode6 + (aVar != null ? aVar.hashCode() : 0);
        }

        public final com.ironsource.mediationsdk.adquality.a i() {
            return this.g;
        }

        public final K1 j() {
            return this.e;
        }

        public final C3521b3 k() {
            return this.c;
        }

        public final L9 l() {
            return this.b;
        }

        public final Wb m() {
            return this.d;
        }

        public final C3659ie n() {
            return this.a;
        }

        public final C3516ag o() {
            return this.f;
        }

        public String toString() {
            return "Builder(rewardedVideoConfigurations=" + this.a + ", interstitialConfigurations=" + this.b + ", bannerConfigurations=" + this.c + ", nativeAdConfigurations=" + this.d + ", applicationConfigurations=" + this.e + ", testSuiteSettings=" + this.f + ", adQualityConfigurations=" + this.g + ")";
        }

        public a(C3659ie c3659ie, L9 l9, C3521b3 c3521b3, Wb wb, K1 k1, C3516ag c3516ag, com.ironsource.mediationsdk.adquality.a aVar) {
            this.a = c3659ie;
            this.b = l9;
            this.c = c3521b3;
            this.d = wb;
            this.e = k1;
            this.f = c3516ag;
            this.g = aVar;
        }

        public static /* synthetic */ a a(a aVar, C3659ie c3659ie, L9 l9, C3521b3 c3521b3, Wb wb, K1 k1, C3516ag c3516ag, com.ironsource.mediationsdk.adquality.a aVar2, int i, Object obj) {
            if ((i & 1) != 0) {
                c3659ie = aVar.a;
            }
            if ((i & 2) != 0) {
                l9 = aVar.b;
            }
            if ((i & 4) != 0) {
                c3521b3 = aVar.c;
            }
            if ((i & 8) != 0) {
                wb = aVar.d;
            }
            if ((i & 16) != 0) {
                k1 = aVar.e;
            }
            if ((i & 32) != 0) {
                c3516ag = aVar.f;
            }
            if ((i & 64) != 0) {
                aVar2 = aVar.g;
            }
            C3516ag c3516ag2 = c3516ag;
            com.ironsource.mediationsdk.adquality.a aVar3 = aVar2;
            K1 k12 = k1;
            C3521b3 c3521b32 = c3521b3;
            return aVar.a(c3659ie, l9, c3521b32, wb, k12, c3516ag2, aVar3);
        }

        public final void b(C3659ie c3659ie) {
            this.a = c3659ie;
        }

        public final void a(C3516ag c3516ag) {
            this.f = c3516ag;
        }

        public final void b(L9 l9) {
            this.b = l9;
        }

        public final a a(C3659ie c3659ie) {
            this.a = c3659ie;
            return this;
        }

        public final void b(C3521b3 c3521b3) {
            this.c = c3521b3;
        }

        public final a a(L9 l9) {
            this.b = l9;
            return this;
        }

        public final void b(Wb wb) {
            this.d = wb;
        }

        public final a a(C3521b3 c3521b3) {
            this.c = c3521b3;
            return this;
        }

        public final void b(K1 k1) {
            this.e = k1;
        }

        public final a a(Wb wb) {
            this.d = wb;
            return this;
        }

        public final void b(com.ironsource.mediationsdk.adquality.a aVar) {
            this.g = aVar;
        }

        public final a a(K1 k1) {
            this.e = k1;
            return this;
        }

        public final a b(C3516ag c3516ag) {
            this.f = c3516ag;
            return this;
        }

        public final a a(com.ironsource.mediationsdk.adquality.a aVar) {
            this.g = aVar;
            return this;
        }

        public /* synthetic */ a(C3659ie c3659ie, L9 l9, C3521b3 c3521b3, Wb wb, K1 k1, C3516ag c3516ag, com.ironsource.mediationsdk.adquality.a aVar, int i, DefaultConstructorMarker defaultConstructorMarker) {
            this((i & 1) != 0 ? null : c3659ie, (i & 2) != 0 ? null : l9, (i & 4) != 0 ? null : c3521b3, (i & 8) != 0 ? null : wb, (i & 16) != 0 ? null : k1, (i & 32) != 0 ? null : c3516ag, (i & 64) != 0 ? null : aVar);
        }

        public final S3 a() {
            return new S3(this.a, this.b, this.c, this.d, this.e, this.f, this.g, null);
        }
    }

    public /* synthetic */ S3(C3659ie c3659ie, L9 l9, C3521b3 c3521b3, Wb wb, K1 k1, C3516ag c3516ag, com.ironsource.mediationsdk.adquality.a aVar, DefaultConstructorMarker defaultConstructorMarker) {
        this(c3659ie, l9, c3521b3, wb, k1, c3516ag, aVar);
    }

    public final com.ironsource.mediationsdk.adquality.a a() {
        return this.g;
    }

    public final K1 b() {
        return this.e;
    }

    public final C3521b3 c() {
        return this.c;
    }

    public final L9 d() {
        return this.b;
    }

    public final Wb e() {
        return this.d;
    }

    public final C3659ie f() {
        return this.a;
    }

    public final C3516ag g() {
        return this.f;
    }

    public String toString() {
        return "configurations(\n" + this.a + "\n" + this.b + "\n" + this.c + "\n" + this.d + ")";
    }

    private S3(C3659ie c3659ie, L9 l9, C3521b3 c3521b3, Wb wb, K1 k1, C3516ag c3516ag, com.ironsource.mediationsdk.adquality.a aVar) {
        this.a = c3659ie;
        this.b = l9;
        this.c = c3521b3;
        this.d = wb;
        this.e = k1;
        this.f = c3516ag;
        this.g = aVar;
    }
}
