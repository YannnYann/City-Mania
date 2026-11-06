package com.vungle.ads.internal.omsdk;

import android.util.Base64;
import android.view.View;
import com.iab.omid.library.vungle.adsession.AdEvents;
import com.iab.omid.library.vungle.adsession.AdSession;
import com.iab.omid.library.vungle.adsession.AdSessionConfiguration;
import com.iab.omid.library.vungle.adsession.AdSessionContext;
import com.iab.omid.library.vungle.adsession.CreativeType;
import com.iab.omid.library.vungle.adsession.ImpressionType;
import com.iab.omid.library.vungle.adsession.Owner;
import com.iab.omid.library.vungle.adsession.Partner;
import com.iab.omid.library.vungle.adsession.VerificationScriptResource;
import com.iab.omid.library.vungle.adsession.media.InteractionType;
import com.iab.omid.library.vungle.adsession.media.MediaEvents;
import com.iab.omid.library.vungle.adsession.media.Position;
import com.iab.omid.library.vungle.adsession.media.VastProperties;
import com.unity3d.services.UnityAdsConstants;
import com.vungle.ads.BuildConfig;
import com.vungle.ads.internal.model.g3;
import com.vungle.ads.internal.util.u;
import com.vungle.ads.internal.util.v;
import java.net.URL;
import kotlin.Result;
import kotlin.ResultKt;
import kotlin.Unit;
import kotlin.collections.CollectionsKt__CollectionsJVMKt;
import kotlin.jvm.internal.Intrinsics;
import kotlin.jvm.internal.Reflection;
import kotlin.text.Charsets;
import kotlinx.serialization.KSerializer;
import kotlinx.serialization.SerializersKt;
import kotlinx.serialization.json.Json;
import kotlinx.serialization.json.JsonKt;

/* JADX INFO: loaded from: classes4.dex */
public final class b {
    public final boolean a;
    public AdSession b;
    public AdEvents c;
    public MediaEvents d;

    public b(String omSdkData, String omSdkJS, boolean z) {
        Object objM2760constructorimpl;
        g3 g3Var;
        Intrinsics.checkNotNullParameter(omSdkData, "omSdkData");
        Intrinsics.checkNotNullParameter(omSdkJS, "omSdkJS");
        this.a = z;
        Json jsonJson$default = JsonKt.Json$default(null, a.a, 1, null);
        try {
            Result.Companion companion = Result.Companion;
            AdSessionConfiguration adSessionConfigurationA = z ? a(CreativeType.VIDEO) : a(CreativeType.NATIVE_DISPLAY);
            Partner partnerCreatePartner = Partner.createPartner(BuildConfig.OMSDK_PARTNER_NAME, BuildConfig.VERSION_NAME);
            byte[] decoded = Base64.decode(omSdkData, 0);
            if (decoded != null) {
                Intrinsics.checkNotNullExpressionValue(decoded, "decoded");
                String str = new String(decoded, Charsets.UTF_8);
                KSerializer<Object> kSerializerSerializer = SerializersKt.serializer(jsonJson$default.getSerializersModule(), Reflection.typeOf(g3.class));
                Intrinsics.checkNotNull(kSerializerSerializer, "null cannot be cast to non-null type kotlinx.serialization.KSerializer<T of kotlinx.serialization.internal.Platform_commonKt.cast>");
                g3Var = (g3) jsonJson$default.decodeFromString(kSerializerSerializer, str);
            } else {
                g3Var = null;
            }
            if ((g3Var != null ? g3Var.c() : null) == null) {
                boolean z2 = v.a;
                u.b("NativeAd-OMTracker", "Invalid OMSDK data: missing vendorURL");
            } else {
                VerificationScriptResource verificationScriptResource = VerificationScriptResource.createVerificationScriptResourceWithParameters(g3Var.b(), new URL(g3Var.c()), g3Var.a());
                Intrinsics.checkNotNullExpressionValue(verificationScriptResource, "verificationScriptResource");
                this.b = AdSession.createAdSession(adSessionConfigurationA, AdSessionContext.createNativeAdSessionContext(partnerCreatePartner, omSdkJS, CollectionsKt__CollectionsJVMKt.listOf(verificationScriptResource), null, null));
            }
            objM2760constructorimpl = Result.m2760constructorimpl(Unit.INSTANCE);
        } catch (Throwable th) {
            Result.Companion companion2 = Result.Companion;
            objM2760constructorimpl = Result.m2760constructorimpl(ResultKt.createFailure(th));
        }
        Throwable thM2763exceptionOrNullimpl = Result.m2763exceptionOrNullimpl(objM2760constructorimpl);
        if (thM2763exceptionOrNullimpl != null) {
            boolean z3 = v.a;
            u.a("NativeAd-OMTracker", "error occured when create omsdk adSession:", thM2763exceptionOrNullimpl);
        }
    }

    public final void a(View view) {
        Object objM2760constructorimpl;
        Integer numValueOf;
        Intrinsics.checkNotNullParameter(view, "view");
        boolean z = v.a;
        u.a("NativeAd-OMTracker", "start OM tracker");
        try {
            Result.Companion companion = Result.Companion;
            AdSession adSession = this.b;
            if (adSession != null) {
                this.c = AdEvents.createAdEvents(adSession);
                if (this.a) {
                    this.d = MediaEvents.createMediaEvents(adSession);
                }
                adSession.registerAdView(view);
                adSession.start();
                if (this.a) {
                    VastProperties vastPropertiesCreateVastPropertiesForNonSkippableMedia = VastProperties.createVastPropertiesForNonSkippableMedia(false, Position.STANDALONE);
                    AdEvents adEvents = this.c;
                    if (adEvents != null) {
                        adEvents.loaded(vastPropertiesCreateVastPropertiesForNonSkippableMedia);
                    }
                } else {
                    AdEvents adEvents2 = this.c;
                    if (adEvents2 != null) {
                        adEvents2.loaded();
                    }
                }
                numValueOf = Integer.valueOf(u.a("NativeAd-OMTracker", "track event: loaded"));
            } else {
                numValueOf = null;
            }
            objM2760constructorimpl = Result.m2760constructorimpl(numValueOf);
        } catch (Throwable th) {
            Result.Companion companion2 = Result.Companion;
            objM2760constructorimpl = Result.m2760constructorimpl(ResultKt.createFailure(th));
        }
        Throwable thM2763exceptionOrNullimpl = Result.m2763exceptionOrNullimpl(objM2760constructorimpl);
        if (thM2763exceptionOrNullimpl != null) {
            boolean z2 = v.a;
            u.a("NativeAd-OMTracker", "error occured when start omsdk adSession:", thM2763exceptionOrNullimpl);
        }
    }

    public final void b() {
        Unit unit;
        boolean z = v.a;
        u.a("NativeAd-OMTracker", "track event: onStateCompleted");
        try {
            Result.Companion companion = Result.Companion;
            MediaEvents mediaEvents = this.d;
            if (mediaEvents != null) {
                mediaEvents.complete();
                unit = Unit.INSTANCE;
            } else {
                unit = null;
            }
            Result.m2760constructorimpl(unit);
        } catch (Throwable th) {
            Result.Companion companion2 = Result.Companion;
            Result.m2760constructorimpl(ResultKt.createFailure(th));
        }
    }

    public final void c() {
        Unit unit;
        boolean z = v.a;
        u.a("NativeAd-OMTracker", "track event: onStatePaused");
        try {
            Result.Companion companion = Result.Companion;
            MediaEvents mediaEvents = this.d;
            if (mediaEvents != null) {
                mediaEvents.pause();
                unit = Unit.INSTANCE;
            } else {
                unit = null;
            }
            Result.m2760constructorimpl(unit);
        } catch (Throwable th) {
            Result.Companion companion2 = Result.Companion;
            Result.m2760constructorimpl(ResultKt.createFailure(th));
        }
    }

    public final void d() {
        Unit unit;
        boolean z = v.a;
        u.a("NativeAd-OMTracker", "track event: onStatePlay");
        try {
            Result.Companion companion = Result.Companion;
            MediaEvents mediaEvents = this.d;
            if (mediaEvents != null) {
                mediaEvents.resume();
                unit = Unit.INSTANCE;
            } else {
                unit = null;
            }
            Result.m2760constructorimpl(unit);
        } catch (Throwable th) {
            Result.Companion companion2 = Result.Companion;
            Result.m2760constructorimpl(ResultKt.createFailure(th));
        }
    }

    public final void e() {
        Unit unit;
        boolean z = v.a;
        u.a("NativeAd-OMTracker", "track event: onUserInteraction");
        try {
            Result.Companion companion = Result.Companion;
            MediaEvents mediaEvents = this.d;
            if (mediaEvents != null) {
                mediaEvents.adUserInteraction(InteractionType.CLICK);
                unit = Unit.INSTANCE;
            } else {
                unit = null;
            }
            Result.m2760constructorimpl(unit);
        } catch (Throwable th) {
            Result.Companion companion2 = Result.Companion;
            Result.m2760constructorimpl(ResultKt.createFailure(th));
        }
    }

    public final void a(float f, float f2) {
        Unit unit;
        boolean z = v.a;
        u.a("NativeAd-OMTracker", "track event: onQuartileStart duration=" + f + " volume=" + f2);
        try {
            Result.Companion companion = Result.Companion;
            MediaEvents mediaEvents = this.d;
            if (mediaEvents != null) {
                mediaEvents.start(f, f2);
                unit = Unit.INSTANCE;
            } else {
                unit = null;
            }
            Result.m2760constructorimpl(unit);
        } catch (Throwable th) {
            Result.Companion companion2 = Result.Companion;
            Result.m2760constructorimpl(ResultKt.createFailure(th));
        }
    }

    public final void a(int i) {
        boolean z = v.a;
        u.a("NativeAd-OMTracker", "track event: onQuartileChanged quartile=" + i);
        Unit unit = null;
        if (i == 5) {
            try {
                Result.Companion companion = Result.Companion;
                MediaEvents mediaEvents = this.d;
                if (mediaEvents != null) {
                    mediaEvents.firstQuartile();
                    unit = Unit.INSTANCE;
                }
                Result.m2760constructorimpl(unit);
                return;
            } catch (Throwable th) {
                Result.Companion companion2 = Result.Companion;
                Result.m2760constructorimpl(ResultKt.createFailure(th));
                return;
            }
        }
        if (i == 6) {
            try {
                Result.Companion companion3 = Result.Companion;
                MediaEvents mediaEvents2 = this.d;
                if (mediaEvents2 != null) {
                    mediaEvents2.midpoint();
                    unit = Unit.INSTANCE;
                }
                Result.m2760constructorimpl(unit);
                return;
            } catch (Throwable th2) {
                Result.Companion companion4 = Result.Companion;
                Result.m2760constructorimpl(ResultKt.createFailure(th2));
                return;
            }
        }
        if (i != 7) {
            return;
        }
        try {
            Result.Companion companion5 = Result.Companion;
            MediaEvents mediaEvents3 = this.d;
            if (mediaEvents3 != null) {
                mediaEvents3.thirdQuartile();
                unit = Unit.INSTANCE;
            }
            Result.m2760constructorimpl(unit);
        } catch (Throwable th3) {
            Result.Companion companion6 = Result.Companion;
            Result.m2760constructorimpl(ResultKt.createFailure(th3));
        }
    }

    public final void a(boolean z) {
        boolean z2 = v.a;
        u.a("NativeAd-OMTracker", "track event: onMuteChanged muted=" + z);
        Unit unit = null;
        if (z) {
            try {
                Result.Companion companion = Result.Companion;
                MediaEvents mediaEvents = this.d;
                if (mediaEvents != null) {
                    mediaEvents.volumeChange(UnityAdsConstants.SafeGuards.InitRequestRetryPolicy.MIN_JITTER_PCT);
                    unit = Unit.INSTANCE;
                }
                Result.m2760constructorimpl(unit);
                return;
            } catch (Throwable th) {
                Result.Companion companion2 = Result.Companion;
                Result.m2760constructorimpl(ResultKt.createFailure(th));
                return;
            }
        }
        try {
            Result.Companion companion3 = Result.Companion;
            MediaEvents mediaEvents2 = this.d;
            if (mediaEvents2 != null) {
                mediaEvents2.volumeChange(1.0f);
                unit = Unit.INSTANCE;
            }
            Result.m2760constructorimpl(unit);
        } catch (Throwable th2) {
            Result.Companion companion4 = Result.Companion;
            Result.m2760constructorimpl(ResultKt.createFailure(th2));
        }
    }

    public final void a() {
        Unit unit;
        boolean z = v.a;
        u.a("NativeAd-OMTracker", "track event: impressionOccurred");
        try {
            Result.Companion companion = Result.Companion;
            AdEvents adEvents = this.c;
            if (adEvents != null) {
                adEvents.impressionOccurred();
                unit = Unit.INSTANCE;
            } else {
                unit = null;
            }
            Result.m2760constructorimpl(unit);
        } catch (Throwable th) {
            Result.Companion companion2 = Result.Companion;
            Result.m2760constructorimpl(ResultKt.createFailure(th));
        }
    }

    public static AdSessionConfiguration a(CreativeType creativeType) {
        ImpressionType impressionType = ImpressionType.BEGIN_TO_RENDER;
        Owner owner = Owner.NATIVE;
        AdSessionConfiguration adSessionConfigurationCreateAdSessionConfiguration = AdSessionConfiguration.createAdSessionConfiguration(creativeType, impressionType, owner, creativeType == CreativeType.NATIVE_DISPLAY ? Owner.NONE : owner, false);
        Intrinsics.checkNotNullExpressionValue(adSessionConfigurationCreateAdSessionConfiguration, "createAdSessionConfigura…          false\n        )");
        return adSessionConfigurationCreateAdSessionConfiguration;
    }
}
