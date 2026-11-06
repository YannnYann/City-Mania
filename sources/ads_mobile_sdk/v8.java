package ads_mobile_sdk;

import android.os.Bundle;
import com.google.android.libraries.ads.mobile.sdk.appopen.AppOpenAdRequest;
import com.google.android.libraries.ads.mobile.sdk.banner.AdSize;
import com.google.android.libraries.ads.mobile.sdk.banner.BannerAdRequest;
import com.google.android.libraries.ads.mobile.sdk.common.AdChoicesPlacement;
import com.google.android.libraries.ads.mobile.sdk.common.AdRequest;
import com.google.android.libraries.ads.mobile.sdk.common.AgeRestrictedTreatment;
import com.google.android.libraries.ads.mobile.sdk.common.RequestConfiguration;
import com.google.android.libraries.ads.mobile.sdk.common.VideoOptions;
import com.google.android.libraries.ads.mobile.sdk.iconad.IconAdPlacement;
import com.google.android.libraries.ads.mobile.sdk.iconad.IconAdRequest;
import com.google.android.libraries.ads.mobile.sdk.nativead.NativeAd;
import com.google.android.libraries.ads.mobile.sdk.nativead.NativeAdRequest;
import com.google.android.libraries.ads.mobile.sdk.swipeableinterstitial.SwipeableInterstitialAdRequest;
import com.ironsource.C3522b4;
import java.util.ArrayList;
import java.util.Arrays;
import java.util.Collection;
import java.util.Iterator;
import java.util.LinkedHashMap;
import java.util.List;
import java.util.Map;
import java.util.Objects;
import java.util.Set;
import java.util.WeakHashMap;
import java.util.concurrent.CancellationException;
import kotlin.Pair;
import kotlin.TuplesKt;
import kotlin.collections.ArraysKt___ArraysKt;
import kotlin.collections.CollectionsKt__CollectionsJVMKt;
import kotlin.collections.CollectionsKt__CollectionsKt;
import kotlin.collections.CollectionsKt__IterablesKt;
import kotlin.collections.CollectionsKt__MutableCollectionsKt;
import kotlin.collections.CollectionsKt___CollectionsKt;
import kotlin.collections.MapsKt__MapsJVMKt;
import kotlin.collections.SetsKt__SetsJVMKt;
import kotlin.io.CloseableKt;
import kotlin.jvm.internal.Intrinsics;
import kotlin.ranges.RangesKt___RangesKt;
import kotlinx.coroutines.TimeoutCancellationException;

/* JADX INFO: loaded from: classes.dex */
public final class v8 {
    public final cl2 a;
    public final l43 b;

    public v8(cl2 flags, l43 requestConfigurationWrapper) {
        Intrinsics.checkNotNullParameter(flags, "flags");
        Intrinsics.checkNotNullParameter(requestConfigurationWrapper, "requestConfigurationWrapper");
        this.a = flags;
        this.b = requestConfigurationWrapper;
    }

    public static void a(BannerAdRequest bannerAdRequest, LinkedHashMap linkedHashMap, Set set) {
        AdSize adSize = bannerAdRequest.getAdSize();
        if (!set.contains(C3522b4.i.O) && !b(adSize)) {
            linkedHashMap.put(C3522b4.i.O, adSize);
        }
        List<AdSize> adSizes = bannerAdRequest.getAdSizes();
        if (!set.contains("adSizes") && !b(adSizes)) {
            linkedHashMap.put("adSizes", adSizes);
        }
        VideoOptions videoOptions = bannerAdRequest.getVideoOptions();
        if (!set.contains("videoOptions") && !b(videoOptions)) {
            linkedHashMap.put("videoOptions", videoOptions);
        }
        Boolean boolValueOf = Boolean.valueOf(bannerAdRequest.getManualImpressionRequested());
        if (set.contains("manualImpressionRequested") || b(boolValueOf)) {
            return;
        }
        linkedHashMap.put("manualImpressionRequested", boolValueOf);
    }

    public static void a(AdRequest adRequest, LinkedHashMap linkedHashMap, Set set) {
        String adUnitId = adRequest.getAdUnitId();
        if (!set.contains("adUnitId") && !b(adUnitId)) {
            linkedHashMap.put("adUnitId", adUnitId);
        }
        Set<String> categoryExclusions = adRequest.getCategoryExclusions();
        if (!set.contains("categoryExclusions") && !b(categoryExclusions)) {
            linkedHashMap.put("categoryExclusions", categoryExclusions);
        }
        String contentUrl = adRequest.getContentUrl();
        if (!set.contains("contentUrl") && !b(contentUrl)) {
            linkedHashMap.put("contentUrl", contentUrl);
        }
        Map<String, String> customTargeting = adRequest.getCustomTargeting();
        if (!set.contains("customTargeting") && !b(customTargeting)) {
            linkedHashMap.put("customTargeting", customTargeting);
        }
        a("googleExtrasBundle", adRequest.getGoogleExtrasBundle(), linkedHashMap, set);
        Set<String> keywords = adRequest.getKeywords();
        if (!set.contains("keywords") && !b(keywords)) {
            linkedHashMap.put("keywords", keywords);
        }
        Set<String> neighboringContentUrls = adRequest.getNeighboringContentUrls();
        if (!set.contains("neighboringContentUrls") && !b(neighboringContentUrls)) {
            linkedHashMap.put("neighboringContentUrls", neighboringContentUrls);
        }
        if (!set.contains("adSourceExtrasBundles")) {
            for (Map.Entry<String, Bundle> entry : adRequest.getAdSourceExtrasBundles().entrySet()) {
                String key = entry.getKey();
                a("adSourceExtrasBundles." + key, entry.getValue(), linkedHashMap, set);
            }
        }
        String publisherProvidedId = adRequest.getPublisherProvidedId();
        if (!set.contains("publisherProvidedId") && !b(publisherProvidedId)) {
            linkedHashMap.put("publisherProvidedId", publisherProvidedId);
        }
        String requestAgent = adRequest.getRequestAgent();
        if (!set.contains("requestAgent") && !b(requestAgent)) {
            linkedHashMap.put("requestAgent", requestAgent);
        }
        Long lValueOf = Long.valueOf(adRequest.getPlacementId());
        if (!set.contains("placementId") && !b(lValueOf)) {
            linkedHashMap.put("placementId", lValueOf);
        }
        Boolean boolValueOf = Boolean.valueOf(adRequest.getSkipUninitializedAdapters());
        if (set.contains("skipUninitializedAdapters") || b(boolValueOf)) {
            return;
        }
        linkedHashMap.put("skipUninitializedAdapters", boolValueOf);
    }

    public static void a(IconAdRequest iconAdRequest, LinkedHashMap linkedHashMap, Set set) {
        IconAdPlacement iconAdPlacement = iconAdRequest.getIconAdPlacement();
        if (!set.contains("iconAdPlacement") && !b(iconAdPlacement)) {
            linkedHashMap.put("iconAdPlacement", iconAdPlacement);
        }
        AdChoicesPlacement adChoicesPlacement = iconAdRequest.getAdChoicesPlacement();
        if (!set.contains("adChoicesPlacement") && !b(adChoicesPlacement)) {
            linkedHashMap.put("adChoicesPlacement", adChoicesPlacement);
        }
        String correlator = iconAdRequest.getCorrelator();
        if (!set.contains("correlator") && !b(correlator)) {
            linkedHashMap.put("correlator", correlator);
        }
        Boolean boolValueOf = Boolean.valueOf(iconAdRequest.isImageLoadingDisabled());
        if (!set.contains("isImageLoadingDisabled") && !b(boolValueOf)) {
            linkedHashMap.put("isImageLoadingDisabled", boolValueOf);
        }
        Boolean boolValueOf2 = Boolean.valueOf(iconAdRequest.getAdPersistenceEnabled());
        if (!set.contains("adPersistenceEnabled") && !b(boolValueOf2)) {
            linkedHashMap.put("adPersistenceEnabled", boolValueOf2);
        }
        Set<String> excludedAppIds = iconAdRequest.getExcludedAppIds();
        if (set.contains("excludedAppIds") || b(excludedAppIds)) {
            return;
        }
        linkedHashMap.put("excludedAppIds", excludedAppIds);
    }

    public static void a(NativeAdRequest nativeAdRequest, LinkedHashMap linkedHashMap, Set set) {
        List<NativeAd.NativeAdType> nativeAdTypes = nativeAdRequest.getNativeAdTypes();
        if (!set.contains("nativeAdTypes") && !b(nativeAdTypes)) {
            linkedHashMap.put("nativeAdTypes", nativeAdTypes);
        }
        List<String> customFormatIds = nativeAdRequest.getCustomFormatIds();
        if (!set.contains("customFormatIds") && !b(customFormatIds)) {
            linkedHashMap.put("customFormatIds", customFormatIds);
        }
        Boolean boolValueOf = Boolean.valueOf(nativeAdRequest.isImageLoadingDisabled());
        if (!set.contains("isImageLoadingDisabled") && !b(boolValueOf)) {
            linkedHashMap.put("isImageLoadingDisabled", boolValueOf);
        }
        NativeAd.NativeMediaAspectRatio mediaAspectRatio = nativeAdRequest.getMediaAspectRatio();
        if (!set.contains("mediaAspectRatio") && !b(mediaAspectRatio)) {
            linkedHashMap.put("mediaAspectRatio", mediaAspectRatio);
        }
        AdChoicesPlacement adChoicesPlacement = nativeAdRequest.getAdChoicesPlacement();
        if (!set.contains("adChoicesPlacement") && !b(adChoicesPlacement)) {
            linkedHashMap.put("adChoicesPlacement", adChoicesPlacement);
        }
        VideoOptions videoOptions = nativeAdRequest.getVideoOptions();
        if (!set.contains("videoOptions") && !b(videoOptions)) {
            linkedHashMap.put("videoOptions", videoOptions);
        }
        NativeAd.SwipeGestureDirection customClickGestureDirection = nativeAdRequest.getCustomClickGestureDirection();
        if (!set.contains("customClickGestureDirection") && !b(customClickGestureDirection)) {
            linkedHashMap.put("customClickGestureDirection", customClickGestureDirection);
        }
        Boolean boolValueOf2 = Boolean.valueOf(nativeAdRequest.getCustomClickGestureAllowTaps());
        if (!set.contains("customClickGestureAllowTaps") && !b(boolValueOf2)) {
            linkedHashMap.put("customClickGestureAllowTaps", boolValueOf2);
        }
        Boolean boolValueOf3 = Boolean.valueOf(nativeAdRequest.getCustomMuteThisAdRequested());
        if (!set.contains("customMuteThisAdRequested") && !b(boolValueOf3)) {
            linkedHashMap.put("customMuteThisAdRequested", boolValueOf3);
        }
        AdSize adSize = nativeAdRequest.getAdSize();
        if (!set.contains(C3522b4.i.O) && !b(adSize)) {
            linkedHashMap.put(C3522b4.i.O, adSize);
        }
        List<AdSize> adSizes = nativeAdRequest.getAdSizes();
        if (!set.contains("adSizes") && !b(adSizes)) {
            linkedHashMap.put("adSizes", adSizes);
        }
        Boolean boolValueOf4 = Boolean.valueOf(nativeAdRequest.getManualImpressionRequested());
        if (!set.contains("manualImpressionRequested") && !b(boolValueOf4)) {
            linkedHashMap.put("manualImpressionRequested", boolValueOf4);
        }
        Boolean boolValueOf5 = Boolean.valueOf(nativeAdRequest.getAdPersistenceEnabled());
        if (set.contains("adPersistenceEnabled") || b(boolValueOf5)) {
            return;
        }
        linkedHashMap.put("adPersistenceEnabled", boolValueOf5);
    }

    public final Set b(AdRequest adRequest) {
        Set setCreateSetBuilder = SetsKt__SetsJVMKt.createSetBuilder();
        cl2 cl2Var = this.a;
        cl2Var.getClass();
        List defaultValue = CollectionsKt__CollectionsKt.listOf((Object[]) new String[]{"categoryExclusions", "contentUrl", "customTargeting", "googleExtrasBundle", "adSourceExtrasBundles"});
        Intrinsics.checkNotNullParameter("gads:pc:ad_request:cache_key_param_denylist", C3522b4.i.W);
        Intrinsics.checkNotNullParameter(defaultValue, "defaultValue");
        qr qrVar = yr.g;
        setCreateSetBuilder.addAll((List) cl2Var.a("gads:pc:ad_request:cache_key_param_denylist", defaultValue, qrVar));
        if (adRequest instanceof NativeAdRequest) {
            cl2 cl2Var2 = this.a;
            cl2Var2.getClass();
            List defaultValue2 = CollectionsKt__CollectionsKt.emptyList();
            Intrinsics.checkNotNullParameter("gads:pc:native_ad_request:cache_key_param_denylist", C3522b4.i.W);
            Intrinsics.checkNotNullParameter(defaultValue2, "defaultValue");
            setCreateSetBuilder.addAll((List) cl2Var2.a("gads:pc:native_ad_request:cache_key_param_denylist", defaultValue2, qrVar));
        } else if (adRequest instanceof IconAdRequest) {
            cl2 cl2Var3 = this.a;
            cl2Var3.getClass();
            List defaultValue3 = CollectionsKt__CollectionsJVMKt.listOf("correlator");
            Intrinsics.checkNotNullParameter("gads:pc:icon_ad_request:cache_key_param_denylist", C3522b4.i.W);
            Intrinsics.checkNotNullParameter(defaultValue3, "defaultValue");
            setCreateSetBuilder.addAll((List) cl2Var3.a("gads:pc:icon_ad_request:cache_key_param_denylist", defaultValue3, qrVar));
        } else if (adRequest instanceof BannerAdRequest) {
            cl2 cl2Var4 = this.a;
            cl2Var4.getClass();
            List defaultValue4 = CollectionsKt__CollectionsKt.emptyList();
            Intrinsics.checkNotNullParameter("gads:pc:banner_ad_request:cache_key_param_denylist", C3522b4.i.W);
            Intrinsics.checkNotNullParameter(defaultValue4, "defaultValue");
            setCreateSetBuilder.addAll((List) cl2Var4.a("gads:pc:banner_ad_request:cache_key_param_denylist", defaultValue4, qrVar));
        } else if (adRequest instanceof SwipeableInterstitialAdRequest) {
            cl2 cl2Var5 = this.a;
            cl2Var5.getClass();
            List defaultValue5 = CollectionsKt__CollectionsKt.emptyList();
            Intrinsics.checkNotNullParameter("gads:pc:swipeable_interstitial_ad_request:cache_key_param_denylist", C3522b4.i.W);
            Intrinsics.checkNotNullParameter(defaultValue5, "defaultValue");
            setCreateSetBuilder.addAll((List) cl2Var5.a("gads:pc:swipeable_interstitial_ad_request:cache_key_param_denylist", defaultValue5, qrVar));
        } else if (adRequest instanceof AppOpenAdRequest) {
            cl2 cl2Var6 = this.a;
            cl2Var6.getClass();
            List defaultValue6 = CollectionsKt__CollectionsKt.emptyList();
            Intrinsics.checkNotNullParameter("gads:pc:app_open_ad_request:cache_key_param_denylist", C3522b4.i.W);
            Intrinsics.checkNotNullParameter(defaultValue6, "defaultValue");
            setCreateSetBuilder.addAll((List) cl2Var6.a("gads:pc:app_open_ad_request:cache_key_param_denylist", defaultValue6, qrVar));
        }
        return SetsKt__SetsJVMKt.build(setCreateSetBuilder);
    }

    public final void a(LinkedHashMap linkedHashMap, Set set) {
        RequestConfiguration requestConfigurationA = this.b.a();
        a("tagForChildDirectedTreatment", requestConfigurationA.getTagForChildDirectedTreatment(), linkedHashMap, set);
        RequestConfiguration.TagForUnderAgeOfConsent tagForUnderAgeOfConsent = requestConfigurationA.getTagForUnderAgeOfConsent();
        if (!set.contains("tagForUnderAgeOfConsent") && !b(tagForUnderAgeOfConsent)) {
            linkedHashMap.put("tagForUnderAgeOfConsent", tagForUnderAgeOfConsent);
        }
        RequestConfiguration.MaxAdContentRating maxAdContentRating = requestConfigurationA.getMaxAdContentRating();
        if (!set.contains("maxAdContentRating") && !b(maxAdContentRating)) {
            linkedHashMap.put("maxAdContentRating", maxAdContentRating);
        }
        List<String> testDeviceIds = requestConfigurationA.getTestDeviceIds();
        if (!set.contains("testDeviceIds") && !b(testDeviceIds)) {
            linkedHashMap.put("testDeviceIds", testDeviceIds);
        }
        RequestConfiguration.PublisherPrivacyPersonalizationState publisherPrivacyPersonalizationState = requestConfigurationA.getPublisherPrivacyPersonalizationState();
        if (!set.contains("publisherPrivacyPersonalizationState") && !b(publisherPrivacyPersonalizationState)) {
            linkedHashMap.put("publisherPrivacyPersonalizationState", publisherPrivacyPersonalizationState);
        }
        AgeRestrictedTreatment ageRestrictedTreatmentInternal = requestConfigurationA.getAgeRestrictedTreatmentInternal();
        if (!set.contains("ageRestrictedTreatmentInternal") && !b(ageRestrictedTreatmentInternal)) {
            linkedHashMap.put("ageRestrictedTreatmentInternal", ageRestrictedTreatmentInternal);
        }
        Boolean boolValueOf = Boolean.valueOf(requestConfigurationA.a());
        if (set.contains("isCoarseLocationCollectionEnabled") || b(boolValueOf)) {
            return;
        }
        linkedHashMap.put("isCoarseLocationCollectionEnabled", boolValueOf);
    }

    public static Object a(Object obj) {
        if (obj instanceof byte[]) {
            return CollectionsKt___CollectionsKt.toList(ArraysKt___ArraysKt.sorted((byte[]) obj));
        }
        if (obj instanceof short[]) {
            return CollectionsKt___CollectionsKt.toList(ArraysKt___ArraysKt.sorted((short[]) obj));
        }
        if (obj instanceof int[]) {
            return CollectionsKt___CollectionsKt.toList(ArraysKt___ArraysKt.sorted((int[]) obj));
        }
        if (obj instanceof long[]) {
            return CollectionsKt___CollectionsKt.toList(ArraysKt___ArraysKt.sorted((long[]) obj));
        }
        if (obj instanceof float[]) {
            return CollectionsKt___CollectionsKt.toList(ArraysKt___ArraysKt.sorted((float[]) obj));
        }
        if (obj instanceof double[]) {
            return CollectionsKt___CollectionsKt.toList(ArraysKt___ArraysKt.sorted((double[]) obj));
        }
        if (obj instanceof boolean[]) {
            return CollectionsKt___CollectionsKt.sortedWith(ArraysKt___ArraysKt.toList((boolean[]) obj), new p8());
        }
        if (obj instanceof char[]) {
            return CollectionsKt___CollectionsKt.toList(ArraysKt___ArraysKt.sorted((char[]) obj));
        }
        if (obj instanceof Object[]) {
            Object[] objArr = (Object[]) obj;
            ArrayList arrayList = new ArrayList(objArr.length);
            for (Object obj2 : objArr) {
                arrayList.add(a(obj2));
            }
            return CollectionsKt___CollectionsKt.sortedWith(arrayList, new q8());
        }
        if (obj instanceof List) {
            Iterable iterable = (Iterable) obj;
            ArrayList arrayList2 = new ArrayList(CollectionsKt__IterablesKt.collectionSizeOrDefault(iterable, 10));
            Iterator it = iterable.iterator();
            while (it.hasNext()) {
                arrayList2.add(a(it.next()));
            }
            return CollectionsKt___CollectionsKt.sortedWith(arrayList2, new r8());
        }
        if (obj instanceof Set) {
            Iterable iterable2 = (Iterable) obj;
            ArrayList arrayList3 = new ArrayList(CollectionsKt__IterablesKt.collectionSizeOrDefault(iterable2, 10));
            Iterator it2 = iterable2.iterator();
            while (it2.hasNext()) {
                arrayList3.add(a(it2.next()));
            }
            return CollectionsKt___CollectionsKt.sortedWith(arrayList3, new s8());
        }
        if (!(obj instanceof Map)) {
            return obj instanceof Enum ? ((Enum) obj).name() : obj;
        }
        List<Map.Entry> listSortedWith = CollectionsKt___CollectionsKt.sortedWith(((Map) obj).entrySet(), new t8());
        LinkedHashMap linkedHashMap = new LinkedHashMap(RangesKt___RangesKt.coerceAtLeast(MapsKt__MapsJVMKt.mapCapacity(CollectionsKt__IterablesKt.collectionSizeOrDefault(listSortedWith, 10)), 16));
        for (Map.Entry entry : listSortedWith) {
            Pair pair = TuplesKt.to(entry.getKey(), a(entry.getValue()));
            linkedHashMap.put(pair.getFirst(), pair.getSecond());
        }
        return linkedHashMap;
    }

    public static boolean b(Object obj) {
        if (obj == null) {
            return true;
        }
        return obj instanceof String ? ((CharSequence) obj).length() == 0 : obj instanceof Collection ? ((Collection) obj).isEmpty() : obj instanceof Map ? ((Map) obj).isEmpty() : obj instanceof Bundle ? ((Bundle) obj).isEmpty() : obj instanceof Object[] ? ((Object[]) obj).length == 0 : obj instanceof int[] ? ((int[]) obj).length == 0 : obj instanceof long[] ? ((long[]) obj).length == 0 : obj instanceof byte[] ? ((byte[]) obj).length == 0 : obj instanceof short[] ? ((short[]) obj).length == 0 : obj instanceof float[] ? ((float[]) obj).length == 0 : obj instanceof double[] ? ((double[]) obj).length == 0 : obj instanceof boolean[] ? ((boolean[]) obj).length == 0 : (obj instanceof char[]) && ((char[]) obj).length == 0;
    }

    /* JADX WARN: Finally extract failed */
    public final String a(AdRequest request) {
        Intrinsics.checkNotNullParameter(request, "request");
        s11 s11Var = s11.CUI_NAME_PERSISTENT_CACHE_KEY_GENERATE;
        WeakHashMap weakHashMap = hs3.a;
        rr3 rr3VarA = hs3.a(s11Var, CollectionsKt__CollectionsKt.emptyList(), true);
        try {
            LinkedHashMap linkedHashMap = new LinkedHashMap();
            Set setB = b(request);
            a(linkedHashMap, setB);
            a(request, linkedHashMap, setB);
            if (request instanceof NativeAdRequest) {
                a((NativeAdRequest) request, linkedHashMap, setB);
            } else if (request instanceof IconAdRequest) {
                a((IconAdRequest) request, linkedHashMap, setB);
            } else if (request instanceof BannerAdRequest) {
                a((BannerAdRequest) request, linkedHashMap, setB);
            } else if (request instanceof SwipeableInterstitialAdRequest) {
                SwipeableInterstitialAdRequest swipeableInterstitialAdRequest = (SwipeableInterstitialAdRequest) request;
                AdSize adSize = swipeableInterstitialAdRequest.getAdSize();
                if (!setB.contains(C3522b4.i.O) && !b(adSize)) {
                    linkedHashMap.put(C3522b4.i.O, adSize);
                }
                Integer numValueOf = Integer.valueOf(swipeableInterstitialAdRequest.getMaxScreenHoldDurationSeconds());
                if (!setB.contains("maxScreenHoldDurationSeconds") && !b(numValueOf)) {
                    linkedHashMap.put("maxScreenHoldDurationSeconds", numValueOf);
                }
            } else if (request instanceof AppOpenAdRequest) {
                AppOpenAdRequest appOpenAdRequest = (AppOpenAdRequest) request;
                Boolean boolValueOf = Boolean.valueOf(appOpenAdRequest.a());
                if (!setB.contains("crossProcessRequested") && !b(boolValueOf)) {
                    linkedHashMap.put("crossProcessRequested", boolValueOf);
                }
                Boolean boolValueOf2 = Boolean.valueOf(appOpenAdRequest.getAdPersistenceEnabled());
                if (!setB.contains("adPersistenceEnabled") && !b(boolValueOf2)) {
                    linkedHashMap.put("adPersistenceEnabled", boolValueOf2);
                }
            }
            List<Map.Entry> listSortedWith = CollectionsKt___CollectionsKt.sortedWith(linkedHashMap.entrySet(), new u8());
            ArrayList arrayList = new ArrayList();
            for (Map.Entry entry : listSortedWith) {
                CollectionsKt__MutableCollectionsKt.addAll(arrayList, CollectionsKt__CollectionsKt.listOf(entry.getKey(), a(entry.getValue())));
            }
            Object[] array = arrayList.toArray(new Object[0]);
            String strValueOf = String.valueOf(Objects.hash(Arrays.copyOf(array, array.length)));
            CloseableKt.closeFinally(rr3VarA, null);
            return strValueOf;
        } catch (Throwable th) {
            try {
                rr3VarA.b(th);
                if (!(th instanceof v24)) {
                    if (!(th instanceof TimeoutCancellationException) && !(th instanceof CancellationException)) {
                        rr3VarA.a(th);
                    }
                    if (!(th instanceof TimeoutCancellationException)) {
                        if (!(th instanceof CancellationException)) {
                            if (th instanceof w01) {
                                throw th;
                            }
                            throw new b01(th);
                        }
                        throw new wz0(th);
                    }
                    throw new i21(th);
                }
                throw th;
            } catch (Throwable th2) {
                try {
                    throw th2;
                } catch (Throwable th3) {
                    CloseableKt.closeFinally(rr3VarA, th2);
                    throw th3;
                }
            }
        }
    }

    public static void a(String str, Bundle bundle, LinkedHashMap linkedHashMap, Set set) {
        for (String str2 : bundle.keySet()) {
            if (!set.contains(str2)) {
                Object obj = bundle.get(str2);
                if (obj instanceof Bundle) {
                    a(str + "." + str2, (Bundle) obj, linkedHashMap, set);
                } else if (!b(obj)) {
                    linkedHashMap.put(str + "." + str2, obj);
                }
            }
        }
    }

    public static void a(String str, Object obj, LinkedHashMap linkedHashMap, Set set) {
        if (set.contains(str) || b(obj)) {
            return;
        }
        linkedHashMap.put(str, obj);
    }
}
