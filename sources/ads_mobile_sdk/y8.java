package ads_mobile_sdk;

import android.content.Context;
import android.os.SystemClock;
import com.google.android.libraries.ads.mobile.sdk.banner.BannerRequest;
import com.google.android.libraries.ads.mobile.sdk.common.AgeRestrictedTreatment;
import com.google.android.libraries.ads.mobile.sdk.common.BaseRequest;
import com.google.android.libraries.ads.mobile.sdk.common.RequestConfiguration;
import java.util.Optional;
import kotlin.coroutines.Continuation;
import kotlin.jvm.internal.Intrinsics;
import kotlin.jvm.optionals.OptionalsKt;

/* JADX INFO: loaded from: classes.dex */
public final class y8 implements rh3 {
    public final tx a;
    public final BaseRequest b;
    public final Optional c;
    public final l43 d;
    public final Context e;
    public final j53 f;
    public final boolean g;
    public final ex0 h;
    public final long i;
    public final boolean j;
    public final Optional k;

    public y8(tx clock, BaseRequest adRequest, Optional bannerRequest, l43 requestConfigurationWrapper, Context context, j53 requestType, boolean z, ex0 flags, long j, boolean z2, Optional isPersistentCacheFillRequest) {
        Intrinsics.checkNotNullParameter(clock, "clock");
        Intrinsics.checkNotNullParameter(adRequest, "adRequest");
        Intrinsics.checkNotNullParameter(bannerRequest, "bannerRequest");
        Intrinsics.checkNotNullParameter(requestConfigurationWrapper, "requestConfigurationWrapper");
        Intrinsics.checkNotNullParameter(context, "context");
        Intrinsics.checkNotNullParameter(requestType, "requestType");
        Intrinsics.checkNotNullParameter(flags, "flags");
        Intrinsics.checkNotNullParameter(isPersistentCacheFillRequest, "isPersistentCacheFillRequest");
        this.a = clock;
        this.b = adRequest;
        this.c = bannerRequest;
        this.d = requestConfigurationWrapper;
        this.e = context;
        this.f = requestType;
        this.g = z;
        this.h = flags;
        this.i = j;
        this.j = z2;
        this.k = isPersistentCacheFillRequest;
    }

    @Override // ads_mobile_sdk.rh3
    public final y11 f() {
        return y11.AD_REQUEST;
    }

    @Override // ads_mobile_sdk.rh3
    public final Object s(Continuation continuation) {
        RequestConfiguration requestConfigurationA = this.d.a();
        m21 m21Var = o21.f;
        boolean zIsTestDevice = (jn0.a() && this.b.getGoogleExtrasBundle().getBoolean("_emulatorLiveAds", false)) ? false : requestConfigurationA.isTestDevice(this.e);
        this.a.getClass();
        long jElapsedRealtime = SystemClock.elapsedRealtime();
        BaseRequest baseRequest = this.b;
        RequestConfiguration.TagForChildDirectedTreatment tagForChildDirectedTreatment = requestConfigurationA.getTagForChildDirectedTreatment();
        RequestConfiguration.TagForUnderAgeOfConsent tagForUnderAgeOfConsent = requestConfigurationA.getTagForUnderAgeOfConsent();
        AgeRestrictedTreatment ageRestrictedTreatmentInternal = requestConfigurationA.getAgeRestrictedTreatmentInternal();
        RequestConfiguration.MaxAdContentRating maxAdContentRating = requestConfigurationA.getMaxAdContentRating();
        j53 j53Var = this.f;
        int value = requestConfigurationA.getPublisherPrivacyPersonalizationState().getValue();
        BannerRequest bannerRequest = (BannerRequest) OptionalsKt.getOrNull(this.c);
        boolean manualImpressionRequested = bannerRequest != null ? bannerRequest.getManualImpressionRequested() : false;
        boolean z = this.g;
        ex0 ex0Var = this.h;
        long j = jElapsedRealtime - this.i;
        boolean z2 = this.j;
        Boolean bool = (Boolean) OptionalsKt.getOrNull(this.k);
        return new q01(new x8(baseRequest, jElapsedRealtime, tagForChildDirectedTreatment, tagForUnderAgeOfConsent, ageRestrictedTreatmentInternal, maxAdContentRating, zIsTestDevice, j53Var, value, manualImpressionRequested, z, ex0Var, j, z2, bool != null ? bool.booleanValue() : false));
    }
}
