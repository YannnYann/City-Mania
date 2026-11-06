package com.vungle.ads.internal;

import android.content.Context;
import com.vungle.ads.AdExpiredError;
import com.vungle.ads.AdExpiredOnPlayError;
import com.vungle.ads.AdMarkupInvalidError;
import com.vungle.ads.AdMarkupJsonError;
import com.vungle.ads.AdNotLoadedCantPlay;
import com.vungle.ads.EmptyBidPayloadError;
import com.vungle.ads.InvalidAdStateError;
import com.vungle.ads.InvalidBannerSizeError;
import com.vungle.ads.InvalidCSBDataError;
import com.vungle.ads.PlacementAdTypeMismatchError;
import com.vungle.ads.PlacementNotFoundError;
import com.vungle.ads.SdkNotInitialized;
import com.vungle.ads.TpatError;
import com.vungle.ads.VungleAdSize;
import com.vungle.ads.VungleAds;
import com.vungle.ads.VungleCSBData;
import com.vungle.ads.VungleError;
import com.vungle.ads.internal.model.j3;
import com.vungle.ads.internal.network.VungleApiClient;
import com.vungle.ads.internal.protos.Sdk;
import com.vungle.ads.internal.util.PathProvider;
import java.util.Iterator;
import java.util.List;
import java.util.Map;
import java.util.concurrent.atomic.AtomicBoolean;
import kotlin.Lazy;
import kotlin.LazyKt__LazyJVMKt;
import kotlin.LazyThreadSafetyMode;
import kotlin.NoWhenBranchMatchedException;
import kotlin.NotImplementedError;
import kotlin.jvm.internal.Intrinsics;
import kotlin.jvm.internal.Reflection;
import kotlin.text.Regex;
import kotlin.text.StringsKt__StringsJVMKt;
import kotlin.text.StringsKt__StringsKt;
import kotlinx.serialization.KSerializer;
import kotlinx.serialization.SerializersKt;
import kotlinx.serialization.json.Json;
import kotlinx.serialization.json.JsonKt;

/* JADX INFO: loaded from: classes4.dex */
public abstract class r implements com.vungle.ads.internal.load.a {
    public static final Json o = JsonKt.Json$default(null, i.a, 1, null);
    public static final Regex p = new Regex("\\$\\{[A-Za-z0-9_:.-]+\\}");
    public final Context a;
    public volatile h b;
    public com.vungle.ads.internal.model.i0 c;
    public j3 d;
    public com.vungle.ads.internal.model.q0 e;
    public com.vungle.ads.internal.load.a f;
    public final Lazy g;
    public com.vungle.ads.internal.load.i h;
    public k2 i;
    public k2 j;
    public final p1 k;
    public final p1 l;
    public com.vungle.ads.internal.util.t m;
    public final AtomicBoolean n;

    public r(Context context) {
        Intrinsics.checkNotNullParameter(context, "context");
        this.a = context;
        this.b = h.a;
        this.g = LazyKt__LazyJVMKt.lazy(LazyThreadSafetyMode.SYNCHRONIZED, new q(context));
        this.k = new p1(Sdk.SDKMetric.SDKMetricType.AD_SHOW_TO_VALIDATION_DURATION_MS);
        this.l = new p1(Sdk.SDKMetric.SDKMetricType.AD_VALIDATION_TO_PRESENT_DURATION_MS);
        this.n = new AtomicBoolean(false);
    }

    public final void a(h value) {
        String strH;
        Intrinsics.checkNotNullParameter(value, "value");
        if (value.a()) {
            com.vungle.ads.internal.load.i iVar = this.h;
            if (iVar != null) {
                iVar.a();
            }
            com.vungle.ads.internal.model.i0 i0Var = this.c;
            if (i0Var != null && (strH = i0Var.h()) != null) {
                ((com.vungle.ads.internal.task.r) ((com.vungle.ads.internal.task.g) LazyKt__LazyJVMKt.lazy(LazyThreadSafetyMode.SYNCHRONIZED, new j(this.a)).getValue())).a(com.vungle.ads.internal.task.a.a(strH, null, 2));
            }
        }
        this.b = this.b.b(value);
        com.vungle.ads.internal.util.t tVar = this.m;
        if (tVar == null) {
            return;
        }
        tVar.a(this.b);
    }

    public void a(com.vungle.ads.internal.model.i0 advertisement) {
        Intrinsics.checkNotNullParameter(advertisement, "advertisement");
    }

    public abstract boolean a(VungleAdSize vungleAdSize);

    public abstract boolean a(j3 j3Var);

    public abstract VungleAdSize b();

    public void b(com.vungle.ads.internal.model.i0 advertisement) {
        Intrinsics.checkNotNullParameter(advertisement, "advertisement");
    }

    public final com.vungle.ads.internal.model.i0 c() {
        return this.c;
    }

    public final Context d() {
        return this.a;
    }

    public final com.vungle.ads.internal.util.t e() {
        return this.m;
    }

    public final j3 f() {
        return this.d;
    }

    public final p1 g() {
        return this.k;
    }

    public final p1 h() {
        return this.l;
    }

    public final boolean i() {
        return this.b == h.d || this.b == h.e;
    }

    public InvalidAdStateError j() {
        if (this.b == h.d) {
            return new InvalidAdStateError(Sdk.SDKError.Reason.AD_IS_PLAYING, "Current ad is playing");
        }
        if (this.b == h.e) {
            return new InvalidAdStateError(Sdk.SDKError.Reason.AD_IS_PLAYING, "Current ad is playing, impression logged");
        }
        if (this.b == h.c) {
            return null;
        }
        return new InvalidAdStateError(Sdk.SDKError.Reason.AD_NOT_LOADED, this.b + " is not READY");
    }

    @Override // com.vungle.ads.internal.load.a
    public final void onFailure(VungleError error) throws Throwable {
        Intrinsics.checkNotNullParameter(error, "error");
        a(h.g);
        k2 k2Var = this.j;
        if (k2Var != null) {
            k2Var.a(Sdk.SDKMetric.SDKMetricType.AD_LOAD_TO_FAIL_CALLBACK_DURATION_MS);
            k2Var.d();
            AnalyticsClient.INSTANCE.a(k2Var, this.m, error.getCode() + '-' + error.getErrorMessage());
        }
        com.vungle.ads.internal.load.a aVar = this.f;
        if (aVar != null) {
            aVar.onFailure(error);
        }
    }

    @Override // com.vungle.ads.internal.load.a
    public final void onSuccess(com.vungle.ads.internal.model.i0 advertisement) throws Throwable {
        Intrinsics.checkNotNullParameter(advertisement, "advertisement");
        this.c = advertisement;
        ConfigManager configManager = ConfigManager.INSTANCE;
        j3 j3Var = this.d;
        String strB = j3Var != null ? j3Var.b() : null;
        configManager.getClass();
        j3 j3VarA = ConfigManager.a(strB);
        if (j3VarA != null) {
            this.d = j3VarA;
        }
        b(advertisement);
        a(h.c);
        a(advertisement);
        com.vungle.ads.internal.load.a aVar = this.f;
        if (aVar != null) {
            aVar.onSuccess(advertisement);
        }
        k2 k2Var = this.j;
        if (k2Var != null) {
            if (!advertisement.b()) {
                k2Var.a(Sdk.SDKMetric.SDKMetricType.AD_LOAD_TO_CALLBACK_DURATION_MS);
            }
            k2Var.d();
            AnalyticsClient.a(AnalyticsClient.INSTANCE, k2Var, this.m, 4);
        }
        k2 k2Var2 = this.i;
        if (k2Var2 != null) {
            if (!advertisement.b()) {
                k2Var2.a(Sdk.SDKMetric.SDKMetricType.AD_REQUEST_TO_CALLBACK_DURATION_MS);
            }
            k2Var2.d();
            AnalyticsClient.a(AnalyticsClient.INSTANCE, k2Var2, this.m, 4);
            Lazy lazy = LazyKt__LazyJVMKt.lazy(LazyThreadSafetyMode.SYNCHRONIZED, new o(this.a));
            List listA = com.vungle.ads.internal.model.i0.a(advertisement, "ad.loadDuration", String.valueOf(k2Var2.c()), 4);
            if (listA != null) {
                Iterator it = listA.iterator();
                while (it.hasNext()) {
                    ((com.vungle.ads.internal.network.r) lazy.getValue()).a(new com.vungle.ads.internal.network.p((String) it.next()).b("ad.loadDuration").a(this.m).a(), false);
                }
            }
        }
    }

    public final VungleError a(boolean z) {
        VungleError adExpiredError;
        com.vungle.ads.internal.model.i iVarK;
        VungleError vungleErrorJ = j();
        com.vungle.ads.internal.model.i0 i0Var = this.c;
        if (i0Var == null) {
            vungleErrorJ = new AdNotLoadedCantPlay("adv is null on onPlay=" + z);
        } else if (vungleErrorJ == null) {
            Integer num = null;
            if (!i0Var.v()) {
                return null;
            }
            StringBuilder sbA = com.iab.omid.library.vungle.internal.l.a("Ad expiry: ");
            com.vungle.ads.internal.model.i0 i0Var2 = this.c;
            if (i0Var2 != null && (iVarK = i0Var2.k()) != null) {
                num = iVarK.d;
            }
            sbA.append(num);
            sbA.append(", device: ");
            sbA.append(System.currentTimeMillis());
            String string = sbA.toString();
            if (z) {
                adExpiredError = new AdExpiredOnPlayError(string);
            } else {
                adExpiredError = new AdExpiredError(string);
            }
            vungleErrorJ = adExpiredError;
        }
        if (z) {
            vungleErrorJ.setLogEntry$vungle_ads_release(this.m).logErrorNoReturnValue$vungle_ads_release();
        }
        return vungleErrorJ;
    }

    public final void a(String placementId, String str, VungleCSBData vungleCSBData, com.vungle.ads.internal.load.a adLoaderCallback) {
        String strK;
        String strK2;
        Sdk.SDKError.Reason reason;
        com.vungle.ads.internal.util.t tVar;
        long jValueOf;
        Intrinsics.checkNotNullParameter(placementId, "placementId");
        Intrinsics.checkNotNullParameter(adLoaderCallback, "adLoaderCallback");
        com.vungle.ads.internal.util.t tVar2 = this.m;
        if (tVar2 != null) {
            tVar2.a(this.b);
        }
        h hVar = this.b;
        e eVar = h.a;
        if (hVar == eVar && (tVar = this.m) != null) {
            if (vungleCSBData != null) {
                jValueOf = Long.valueOf(vungleCSBData.getPhase() == 2 ? 4L : 3L);
            } else if (str == null || str.length() == 0) {
                jValueOf = 1L;
            } else {
                jValueOf = 2L;
            }
            tVar.a(jValueOf);
        }
        AnalyticsClient analyticsClient = AnalyticsClient.INSTANCE;
        AnalyticsClient.a(analyticsClient, Sdk.SDKMetric.SDKMetricType.LOAD_AD_API, 0L, this.m, null, 10);
        k2 k2Var = new k2(Sdk.SDKMetric.SDKMetricType.AD_LOAD_TO_CALLBACK_ADO_DURATION_MS);
        this.j = k2Var;
        k2Var.e();
        this.f = adLoaderCallback;
        if (!VungleAds.Companion.isInitialized()) {
            adLoaderCallback.onFailure(new SdkNotInitialized("SDK not initialized").setLogEntry$vungle_ads_release(this.m).logError$vungle_ads_release());
            return;
        }
        ConfigManager.INSTANCE.getClass();
        j3 j3VarA = ConfigManager.a(placementId);
        if (j3VarA != null) {
            this.d = j3VarA;
            if (!a(j3VarA)) {
                adLoaderCallback.onFailure(new PlacementAdTypeMismatchError(j3VarA.b()).setLogEntry$vungle_ads_release(this.m).logError$vungle_ads_release());
                return;
            } else if (vungleCSBData == null && j3VarA.a() && (str == null || str.length() == 0)) {
                adLoaderCallback.onFailure(new EmptyBidPayloadError(placementId).setLogEntry$vungle_ads_release(this.m).logError$vungle_ads_release());
                return;
            }
        } else {
            if (ConfigManager.b() != -1 && ((str == null || str.length() == 0) && vungleCSBData == null)) {
                adLoaderCallback.onFailure(new PlacementNotFoundError(placementId).setLogEntry$vungle_ads_release(this.m).logError$vungle_ads_release());
                return;
            }
            boolean z = com.vungle.ads.internal.util.v.a;
            com.vungle.ads.internal.util.u.c("AdInternal", "Create temp placement for " + placementId);
            if ((str != null && str.length() != 0) || vungleCSBData != null) {
                AnalyticsClient.a(analyticsClient, Sdk.SDKMetric.SDKMetricType.TEMP_PLACEMENT_BID_LOAD, 0L, this.m, null, 10);
            }
            j3VarA = new j3(placementId);
            this.d = j3VarA;
        }
        j3 j3Var = j3VarA;
        VungleAdSize vungleAdSizeB = b();
        if (!a(vungleAdSizeB)) {
            adLoaderCallback.onFailure(new InvalidBannerSizeError(vungleAdSizeB != null ? vungleAdSizeB.toString() : null).setLogEntry$vungle_ads_release(this.m).logError$vungle_ads_release());
            return;
        }
        if (this.b != eVar) {
            switch (this.b.ordinal()) {
                case 0:
                    throw new NotImplementedError(null, 1, null);
                case 1:
                    reason = Sdk.SDKError.Reason.AD_IS_LOADING;
                    break;
                case 2:
                    reason = Sdk.SDKError.Reason.AD_ALREADY_LOADED;
                    break;
                case 3:
                    reason = Sdk.SDKError.Reason.AD_IS_PLAYING;
                    break;
                case 4:
                    reason = Sdk.SDKError.Reason.AD_IS_PLAYING;
                    break;
                case 5:
                    reason = Sdk.SDKError.Reason.AD_CONSUMED;
                    break;
                case 6:
                    reason = Sdk.SDKError.Reason.AD_ALREADY_FAILED;
                    break;
                default:
                    throw new NoWhenBranchMatchedException();
            }
            adLoaderCallback.onFailure(new InvalidAdStateError(reason, this.b + " state is incorrect for load").setLogEntry$vungle_ads_release(this.m).logError$vungle_ads_release());
            return;
        }
        k2 k2Var2 = new k2(Sdk.SDKMetric.SDKMetricType.AD_REQUEST_TO_CALLBACK_ADO_DURATION_MS);
        this.i = k2Var2;
        k2Var2.e();
        if (str != null && str.length() != 0) {
            try {
                Json json = o;
                KSerializer<Object> kSerializerSerializer = SerializersKt.serializer(json.getSerializersModule(), Reflection.typeOf(com.vungle.ads.internal.model.q0.class));
                Intrinsics.checkNotNull(kSerializerSerializer, "null cannot be cast to non-null type kotlinx.serialization.KSerializer<T of kotlinx.serialization.internal.Platform_commonKt.cast>");
                this.e = (com.vungle.ads.internal.model.q0) json.decodeFromString(kSerializerSerializer, str);
            } catch (IllegalArgumentException e) {
                StringBuilder sbA = com.iab.omid.library.vungle.internal.l.a("Unable to decode payload into BidPayload object. Error: ");
                sbA.append(e.getLocalizedMessage());
                adLoaderCallback.onFailure(new AdMarkupInvalidError(sbA.toString()).setLogEntry$vungle_ads_release(this.m).logError$vungle_ads_release());
                return;
            } catch (Throwable th) {
                adLoaderCallback.onFailure(new AdMarkupJsonError(th.getLocalizedMessage()).setLogEntry$vungle_ads_release(this.m).logError$vungle_ads_release());
                return;
            }
        }
        if (vungleCSBData != null) {
            double bidFloor = vungleCSBData.getBidFloor();
            InvalidCSBDataError invalidCSBDataError = bidFloor < 0.0d ? new InvalidCSBDataError("bidFloor must be >= 0, got: " + bidFloor) : null;
            if (invalidCSBDataError == null) {
                int phase = vungleCSBData.getPhase();
                invalidCSBDataError = (1 > phase || phase >= 3) ? new InvalidCSBDataError("phase must be 1 or 2, got: " + phase) : null;
                if (invalidCSBDataError == null) {
                    invalidCSBDataError = vungleCSBData.getAuctionId().length() > 500 ? new InvalidCSBDataError("auctionId exceeds maximum length of 500") : null;
                    if (invalidCSBDataError == null) {
                        invalidCSBDataError = vungleCSBData.getCreativeId().length() > 500 ? new InvalidCSBDataError("creativeId exceeds maximum length of 500") : null;
                        if (invalidCSBDataError == null) {
                            invalidCSBDataError = vungleCSBData.getAdUnitId().length() > 500 ? new InvalidCSBDataError("adUnitId exceeds maximum length of 500") : null;
                        }
                    }
                    if (invalidCSBDataError == null) {
                        Map<String, String> extras = vungleCSBData.getExtras();
                        if (extras == null) {
                            invalidCSBDataError = null;
                        } else if (extras.size() > 50) {
                            StringBuilder sbA2 = com.iab.omid.library.vungle.internal.l.a("extras map exceeds maximum of 50 entries, got: ");
                            sbA2.append(extras.size());
                            invalidCSBDataError = new InvalidCSBDataError(sbA2.toString());
                        } else {
                            for (Map.Entry<String, String> entry : extras.entrySet()) {
                                String key = entry.getKey();
                                String value = entry.getValue();
                                if (key.length() == 0) {
                                    invalidCSBDataError = new InvalidCSBDataError("extras contains empty key");
                                    break;
                                }
                                if (key.length() > 100) {
                                    invalidCSBDataError = new InvalidCSBDataError(com.iab.omid.library.vungle.d.a("extras key exceeds maximum length of 100: ", key));
                                    break;
                                } else if (value.length() > 500) {
                                    invalidCSBDataError = new InvalidCSBDataError("extras value for key '" + key + "' exceeds maximum length of 500");
                                    break;
                                }
                            }
                            invalidCSBDataError = null;
                        }
                    }
                }
            }
            if (invalidCSBDataError != null) {
                adLoaderCallback.onFailure(invalidCSBDataError.setLogEntry$vungle_ads_release(this.m).logError$vungle_ads_release());
                return;
            }
        }
        a(h.b);
        Context context = this.a;
        LazyThreadSafetyMode lazyThreadSafetyMode = LazyThreadSafetyMode.SYNCHRONIZED;
        Lazy lazy = LazyKt__LazyJVMKt.lazy(lazyThreadSafetyMode, new k(context));
        Lazy lazy2 = LazyKt__LazyJVMKt.lazy(lazyThreadSafetyMode, new l(this.a));
        Lazy lazy3 = LazyKt__LazyJVMKt.lazy(lazyThreadSafetyMode, new m(this.a));
        Lazy lazy4 = LazyKt__LazyJVMKt.lazy(lazyThreadSafetyMode, new n(this.a));
        if (vungleCSBData != null) {
            com.vungle.ads.internal.util.t tVar3 = this.m;
            this.h = new com.vungle.ads.internal.load.j(this.a, (VungleApiClient) this.g.getValue(), (com.vungle.ads.internal.executor.d) lazy2.getValue(), (com.vungle.ads.internal.omsdk.c) lazy.getValue(), (com.vungle.ads.internal.downloader.n) lazy4.getValue(), (PathProvider) lazy3.getValue(), new com.vungle.ads.internal.load.b(j3Var, null, vungleAdSizeB, vungleCSBData, (tVar3 == null || (strK2 = tVar3.k()) == null || StringsKt__StringsKt.isBlank(strK2)) ? null : strK2));
        } else if (str == null || str.length() == 0) {
            com.vungle.ads.internal.util.t tVar4 = this.m;
            this.h = new com.vungle.ads.internal.load.l(this.a, (VungleApiClient) this.g.getValue(), (com.vungle.ads.internal.executor.d) lazy2.getValue(), (com.vungle.ads.internal.omsdk.c) lazy.getValue(), (com.vungle.ads.internal.downloader.n) lazy4.getValue(), (PathProvider) lazy3.getValue(), new com.vungle.ads.internal.load.b(j3Var, null, vungleAdSizeB, null, (tVar4 == null || (strK = tVar4.k()) == null || StringsKt__StringsKt.isBlank(strK)) ? null : strK));
        } else {
            this.h = new com.vungle.ads.internal.load.p(this.a, (VungleApiClient) this.g.getValue(), (com.vungle.ads.internal.executor.d) lazy2.getValue(), (com.vungle.ads.internal.omsdk.c) lazy.getValue(), (com.vungle.ads.internal.downloader.n) lazy4.getValue(), (PathProvider) lazy3.getValue(), new com.vungle.ads.internal.load.b(j3Var, this.e, vungleAdSizeB));
        }
        com.vungle.ads.internal.load.i iVar = this.h;
        if (iVar != null) {
            iVar.a(this.m);
        }
        com.vungle.ads.internal.load.i iVar2 = this.h;
        if (iVar2 != null) {
            iVar2.a(this);
        }
    }

    public final void a() {
        com.vungle.ads.internal.load.i iVar = this.h;
        if (iVar != null) {
            iVar.a();
        }
    }

    public final boolean a(int i) {
        return this.b == h.c && i == 304;
    }

    public final void a(List list, String str, double d, String str2) {
        if (!this.n.compareAndSet(false, true)) {
            boolean z = com.vungle.ads.internal.util.v.a;
            com.vungle.ads.internal.util.u.a("AdInternal", "CSB notification (" + str2 + ") skipped: an outcome was already sent for this ad");
            return;
        }
        Lazy lazy = LazyKt__LazyJVMKt.lazy(LazyThreadSafetyMode.SYNCHRONIZED, new p(this.a));
        String strValueOf = (Double.isInfinite(d) || Double.isNaN(d) || d <= 0.0d) ? "" : String.valueOf(d);
        Iterator it = list.iterator();
        while (it.hasNext()) {
            String str3 = (String) it.next();
            String strReplace = p.replace(StringsKt__StringsJVMKt.replace$default(str3, str, strValueOf, false, 4, (Object) null), "");
            if (!StringsKt__StringsKt.contains$default((CharSequence) strReplace, '{', false, 2, (Object) null) && !StringsKt__StringsKt.contains$default((CharSequence) strReplace, '}', false, 2, (Object) null)) {
                if (com.vungle.ads.internal.util.o.a(strReplace)) {
                    ((com.vungle.ads.internal.network.r) lazy.getValue()).a(new com.vungle.ads.internal.network.p(strReplace).b(str2).a(this.m).d().a(), false);
                } else {
                    String str4 = "tpat key: " + str2 + ", " + com.iab.omid.library.vungle.d.a("Invalid URL skipped: ", strReplace);
                    boolean z2 = com.vungle.ads.internal.util.v.a;
                    com.vungle.ads.internal.util.u.c("AdInternal", str4);
                    new TpatError(Sdk.SDKError.Reason.TPAT_ERROR, str4).setLogEntry$vungle_ads_release(this.m).logErrorNoReturnValue$vungle_ads_release();
                }
            } else {
                String str5 = "tpat key: " + str2 + ", " + com.iab.omid.library.vungle.d.a("Malformed macro in URL: ", str3);
                boolean z3 = com.vungle.ads.internal.util.v.a;
                com.vungle.ads.internal.util.u.c("AdInternal", str5);
                new TpatError(Sdk.SDKError.Reason.TPAT_ERROR, str5).setLogEntry$vungle_ads_release(this.m).logErrorNoReturnValue$vungle_ads_release();
            }
        }
    }
}
