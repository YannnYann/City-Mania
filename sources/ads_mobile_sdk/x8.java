package ads_mobile_sdk;

import com.google.android.libraries.ads.mobile.sdk.appopen.AppOpenAdRequest;
import com.google.android.libraries.ads.mobile.sdk.common.AgeRestrictedTreatment;
import com.google.android.libraries.ads.mobile.sdk.common.BaseRequest;
import com.google.android.libraries.ads.mobile.sdk.common.RequestConfiguration;
import com.google.android.libraries.ads.mobile.sdk.internal.signals.Signals;
import com.ironsource.C3522b4;
import java.util.ArrayList;
import java.util.LinkedHashMap;
import kotlin.collections.CollectionsKt___CollectionsKt;
import kotlin.jvm.internal.Intrinsics;

/* JADX INFO: loaded from: classes.dex */
public final class x8 implements oe3 {
    public final BaseRequest a;
    public final long b;
    public final RequestConfiguration.TagForChildDirectedTreatment c;
    public final RequestConfiguration.TagForUnderAgeOfConsent d;
    public final AgeRestrictedTreatment e;
    public final RequestConfiguration.MaxAdContentRating f;
    public final boolean g;
    public final j53 h;
    public final int i;
    public final boolean j;
    public final boolean k;
    public final ex0 l;
    public final long m;
    public final boolean n;
    public final boolean o;

    public x8(BaseRequest adRequest, long j, RequestConfiguration.TagForChildDirectedTreatment tfcd, RequestConfiguration.TagForUnderAgeOfConsent tfuac, AgeRestrictedTreatment ageRestrictedTreatment, RequestConfiguration.MaxAdContentRating maxAdContentRating, boolean z, j53 requestType, int i, boolean z2, boolean z3, ex0 flags, long j2, boolean z4, boolean z5) {
        Intrinsics.checkNotNullParameter(adRequest, "adRequest");
        Intrinsics.checkNotNullParameter(tfcd, "tfcd");
        Intrinsics.checkNotNullParameter(tfuac, "tfuac");
        Intrinsics.checkNotNullParameter(maxAdContentRating, "maxAdContentRating");
        Intrinsics.checkNotNullParameter(requestType, "requestType");
        Intrinsics.checkNotNullParameter(flags, "flags");
        this.a = adRequest;
        this.b = j;
        this.c = tfcd;
        this.d = tfuac;
        this.e = ageRestrictedTreatment;
        this.f = maxAdContentRating;
        this.g = z;
        this.h = requestType;
        this.i = i;
        this.j = z2;
        this.k = z3;
        this.l = flags;
        this.m = j2;
        this.n = z4;
        this.o = z5;
    }

    @Override // ads_mobile_sdk.oe3
    public final void a(Signals signals) {
        Intrinsics.checkNotNullParameter(signals, "signals");
        signals.requestTimeMilliseconds = this.b;
        signals.adUnitId = this.a.getAdUnitId();
        signals.contentUrl = this.a.getContentUrl();
        if (!this.a.getCustomTargeting().isEmpty() || !this.a.getCategoryExclusions().isEmpty()) {
            LinkedHashMap linkedHashMap = new LinkedHashMap();
            linkedHashMap.putAll(this.a.getCustomTargeting());
            if (!this.a.getCategoryExclusions().isEmpty()) {
                linkedHashMap.put("excl_cat", CollectionsKt___CollectionsKt.joinToString$default(this.a.getCategoryExclusions(), ",", null, null, 0, null, null, 62, null));
            }
            signals.customTargeting = linkedHashMap;
        }
        signals.googleExtrasBundle = this.a.getGoogleExtrasBundle();
        if (!this.a.getKeywords().isEmpty()) {
            signals.keywords = new ArrayList<>(this.a.getKeywords());
        }
        if (!this.a.getNeighboringContentUrls().isEmpty()) {
            signals.neighboringContentUrls = CollectionsKt___CollectionsKt.toSet(this.a.getNeighboringContentUrls());
        }
        signals.publisherProvidedId = this.a.getPublisherProvidedId();
        signals.requestAgent = this.a.getRequestAgent();
        signals.tagForChildDirectedTreatment = this.c.getValue() == 1 ? 1 : 0;
        signals.tagForUnderAgeOfConsent = this.d.getValue() == 1 ? 1 : 0;
        AgeRestrictedTreatment ageRestrictedTreatment = this.e;
        if (ageRestrictedTreatment != null) {
            signals.tagForAgeTreatment = Integer.valueOf(ageRestrictedTreatment.getValue());
        }
        if (this.f.getValue().length() > 0) {
            signals.maxAdContentRating = this.f.getValue();
        }
        signals.isTestRequest = this.g;
        signals.publisherPrivacyPersonalizationState = Integer.valueOf(this.i);
        j53 j53Var = this.h;
        if (j53Var == j53.j) {
            signals.isRewarded = Boolean.TRUE;
        }
        if (j53Var == j53.k) {
            signals.isRewardedInterstitial = Boolean.TRUE;
        }
        signals.manualImpressionsEnabled = this.j;
        if (this.k) {
            signals.isPrefetchRequest = Boolean.TRUE;
        }
        ex0 ex0Var = this.l;
        ex0Var.getClass();
        Intrinsics.checkNotNullParameter("gads:enable_time_since_sdk_init:enabled", C3522b4.i.W);
        Boolean bool = Boolean.FALSE;
        ir irVar = yr.b;
        if (((Boolean) ex0Var.a("gads:enable_time_since_sdk_init:enabled", bool, irVar)).booleanValue()) {
            signals.a(Long.valueOf(this.m));
        }
        if (this.n) {
            signals.c();
        }
        if (this.o) {
            cl2 cl2Var = this.l.v;
            cl2Var.getClass();
            Intrinsics.checkNotNullParameter("gads:pc:enabled", C3522b4.i.W);
            Boolean bool2 = Boolean.TRUE;
            if (((Boolean) cl2Var.a("gads:pc:enabled", bool2, irVar)).booleanValue()) {
                signals.persistentCacheRequest = bool2;
            }
        }
        ex0 ex0Var2 = this.l;
        ex0Var2.getClass();
        Intrinsics.checkNotNullParameter("gads:cpaf:enabled", C3522b4.i.W);
        Boolean bool3 = Boolean.TRUE;
        if (((Boolean) ex0Var2.a("gads:cpaf:enabled", bool3, irVar)).booleanValue()) {
            BaseRequest baseRequest = this.a;
            if ((baseRequest instanceof AppOpenAdRequest) && ((AppOpenAdRequest) baseRequest).a()) {
                signals.crossProcessRequest = bool3;
            }
        }
    }

    public final boolean equals(Object obj) {
        if (this == obj) {
            return true;
        }
        if (!(obj instanceof x8)) {
            return false;
        }
        x8 x8Var = (x8) obj;
        return Intrinsics.areEqual(this.a, x8Var.a) && this.b == x8Var.b && this.c == x8Var.c && this.d == x8Var.d && this.e == x8Var.e && this.f == x8Var.f && this.g == x8Var.g && this.h == x8Var.h && this.i == x8Var.i && this.j == x8Var.j && this.k == x8Var.k && Intrinsics.areEqual(this.l, x8Var.l) && this.m == x8Var.m && this.n == x8Var.n && this.o == x8Var.o;
    }

    /* JADX WARN: Multi-variable type inference failed */
    /* JADX WARN: Type inference failed for: r2v11, types: [int] */
    /* JADX WARN: Type inference failed for: r2v17, types: [int] */
    /* JADX WARN: Type inference failed for: r2v19, types: [int] */
    /* JADX WARN: Type inference failed for: r2v25, types: [int] */
    /* JADX WARN: Type inference failed for: r2v26 */
    /* JADX WARN: Type inference failed for: r2v27 */
    /* JADX WARN: Type inference failed for: r2v28 */
    /* JADX WARN: Type inference failed for: r2v29 */
    /* JADX WARN: Type inference failed for: r2v30 */
    /* JADX WARN: Type inference failed for: r2v31 */
    /* JADX WARN: Type inference failed for: r2v32 */
    /* JADX WARN: Type inference failed for: r2v33 */
    /* JADX WARN: Type inference failed for: r3v0 */
    /* JADX WARN: Type inference failed for: r3v1, types: [int] */
    /* JADX WARN: Type inference failed for: r3v2 */
    public final int hashCode() {
        int iHashCode = (this.d.hashCode() + ((this.c.hashCode() + ((Long.hashCode(this.b) + (this.a.hashCode() * 31)) * 31)) * 31)) * 31;
        AgeRestrictedTreatment ageRestrictedTreatment = this.e;
        int iHashCode2 = (this.f.hashCode() + ((iHashCode + (ageRestrictedTreatment == null ? 0 : ageRestrictedTreatment.hashCode())) * 31)) * 31;
        boolean z = this.g;
        ?? r2 = z;
        if (z) {
            r2 = 1;
        }
        int iA = y1.a(this.i, (this.h.hashCode() + ((iHashCode2 + r2) * 31)) * 31, 31);
        boolean z2 = this.j;
        ?? r22 = z2;
        if (z2) {
            r22 = 1;
        }
        int i = (iA + r22) * 31;
        boolean z3 = this.k;
        ?? r23 = z3;
        if (z3) {
            r23 = 1;
        }
        int iHashCode3 = (Long.hashCode(this.m) + ((this.l.hashCode() + ((i + r23) * 31)) * 31)) * 31;
        boolean z4 = this.n;
        ?? r24 = z4;
        if (z4) {
            r24 = 1;
        }
        int i2 = (iHashCode3 + r24) * 31;
        boolean z5 = this.o;
        return i2 + (z5 ? 1 : z5);
    }

    public final String toString() {
        return "AdRequestSignal(adRequest=" + this.a + ", timestamp=" + this.b + ", tfcd=" + this.c + ", tfuac=" + this.d + ", ageRestrictedTreatment=" + this.e + ", maxAdContentRating=" + this.f + ", isTestRequest=" + this.g + ", requestType=" + this.h + ", publisherPrivacyPersonalizationState=" + this.i + ", manualImpressionsRequested=" + this.j + ", isPrefetchRequest=" + this.k + ", flags=" + this.l + ", timeSinceSdkInitMs=" + this.m + ", isS2SRecursiveRequest=" + this.n + ", isPersistentCacheFillRequest=" + this.o + ")";
    }
}
