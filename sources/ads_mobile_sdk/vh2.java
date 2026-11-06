package ads_mobile_sdk;

import android.content.Context;
import android.os.Bundle;
import android.widget.ImageView;
import com.google.android.libraries.ads.mobile.sdk.banner.AdSize;
import com.google.android.libraries.ads.mobile.sdk.banner.BannerAdRequest;
import com.google.android.libraries.ads.mobile.sdk.banner.BannerRequest;
import com.google.android.libraries.ads.mobile.sdk.common.AdChoicesPlacement;
import com.google.android.libraries.ads.mobile.sdk.common.AdRequest;
import com.google.android.libraries.ads.mobile.sdk.common.BaseRequest;
import com.google.android.libraries.ads.mobile.sdk.common.VideoOptions;
import com.google.android.libraries.ads.mobile.sdk.nativead.NativeAd;
import com.google.android.libraries.ads.mobile.sdk.nativead.NativeAdRequest;
import com.google.android.libraries.ads.mobile.sdk.nativead.NativeRequest;
import com.google.android.libraries.ads.mobile.sdk.rewarded.ServerSideVerificationOptions;
import com.google.gson.Gson;
import com.google.gson.JsonArray;
import com.google.gson.JsonElement;
import com.google.gson.JsonObject;
import com.google.gson.JsonSyntaxException;
import com.ironsource.C3522b4;
import java.util.ArrayList;
import java.util.Iterator;
import java.util.List;
import java.util.Map;
import kotlin.Unit;
import kotlin.collections.CollectionsKt__CollectionsJVMKt;
import kotlin.collections.CollectionsKt__CollectionsKt;
import kotlin.coroutines.Continuation;
import kotlin.coroutines.intrinsics.IntrinsicsKt__IntrinsicsKt;
import kotlin.jvm.internal.Intrinsics;
import kotlin.text.StringsKt__StringNumberConversionsKt;
import kotlin.text.StringsKt__StringsKt;

/* JADX INFO: loaded from: classes.dex */
public final class vh2 implements r41 {
    public final sh2 a;
    public final ur3 b;
    public final ex0 c;
    public final Gson d;
    public final k32 e;
    public final Context f;

    public vh2(sh2 outOfContextTester, ur3 traceLogger, ex0 flags, Gson gson, k32 nativeAdUtil, Context applicationContext) {
        Intrinsics.checkNotNullParameter(outOfContextTester, "outOfContextTester");
        Intrinsics.checkNotNullParameter(traceLogger, "traceLogger");
        Intrinsics.checkNotNullParameter(flags, "flags");
        Intrinsics.checkNotNullParameter(gson, "gson");
        Intrinsics.checkNotNullParameter(nativeAdUtil, "nativeAdUtil");
        Intrinsics.checkNotNullParameter(applicationContext, "applicationContext");
        this.a = outOfContextTester;
        this.b = traceLogger;
        this.c = flags;
        this.d = gson;
        this.e = nativeAdUtil;
        this.f = applicationContext;
    }

    @Override // ads_mobile_sdk.r41
    public final u11 g() {
        return u11.GMSG_OUT_OF_CONTEXT_TESTING;
    }

    /* JADX WARN: Multi-variable type inference failed */
    public final v01 b(Map map) {
        AdSize adSize;
        NativeAd.NativeMediaAspectRatio nativeMediaAspectRatio;
        AdRequest adRequest;
        boolean z;
        boolean zAreEqual;
        VideoOptions videoOptions;
        boolean z2;
        Integer intOrNull;
        VideoOptions videoOptionsBuild;
        String str;
        String str2 = (String) map.get("adUnitId");
        if (str2 != null && !StringsKt__StringsKt.isBlank(str2)) {
            String str3 = (String) map.get("format");
            if (str3 != null) {
                j53.b.getClass();
                j53 j53VarA = h53.a(str3);
                if (j53VarA != null) {
                    if (j53VarA == j53.d) {
                        return new m01("No OOCT format specified.");
                    }
                    AdSize adSize2 = AdSize.BANNER;
                    NativeAd.NativeMediaAspectRatio nativeMediaAspectRatio2 = NativeAd.NativeMediaAspectRatio.UNKNOWN;
                    AdChoicesPlacement adChoicesPlacementA = AdChoicesPlacement.TOP_RIGHT;
                    ImageView.ScaleType scaleTypeValueOf = ImageView.ScaleType.CENTER_INSIDE;
                    String str4 = (String) map.get("serverSideVerificationUserId");
                    ServerSideVerificationOptions serverSideVerificationOptions = (str4 == null || (str = (String) map.get("serverSideVerificationRewardString")) == null) ? null : new ServerSideVerificationOptions(str4, str);
                    if (this.c.k0()) {
                        Object obj = map.get("adUnitId");
                        Intrinsics.checkNotNull(obj);
                        AdRequest.Builder builder = new AdRequest.Builder((String) obj);
                        String str5 = (String) map.get("keywords");
                        if (str5 != null) {
                            Iterator it = a(str5, "keywords").iterator();
                            while (it.hasNext()) {
                                builder.addKeyword((String) it.next());
                            }
                        }
                        Bundle bundle = new Bundle();
                        String str6 = (String) map.get("networkExtras");
                        if (str6 != null) {
                            try {
                                bundle.putAll(ds1.a(str6));
                            } catch (JsonSyntaxException e) {
                                ((as3) this.b).a("Failed to parse OOCT network extras.", (Throwable) e);
                            }
                        }
                        bundle.putString("request_origin", "inspector_ooct");
                        builder.setGoogleExtrasBundle(bundle);
                        String str7 = (String) map.get("customTargeting");
                        if (str7 != null) {
                            try {
                                for (Map.Entry<String, JsonElement> entry : ((JsonObject) this.d.fromJson(str7, JsonObject.class)).entrySet()) {
                                    Intrinsics.checkNotNull(entry);
                                    String key = entry.getKey();
                                    JsonElement value = entry.getValue();
                                    if (value.isJsonPrimitive() && value.getAsJsonPrimitive().isString()) {
                                        Intrinsics.checkNotNull(key);
                                        String asString = value.getAsJsonPrimitive().getAsString();
                                        Intrinsics.checkNotNullExpressionValue(asString, "getAsString(...)");
                                        builder.putCustomTargeting(key, asString);
                                    }
                                }
                            } catch (JsonSyntaxException e2) {
                                ((as3) this.b).a("Failed to parse OOCT custom targeting.", (Throwable) e2);
                            }
                        }
                        String str8 = (String) map.get("contentUrl");
                        if (str8 != null) {
                        }
                        String str9 = (String) map.get("neighboringContentUrlStrings");
                        if (str9 != null) {
                        }
                        String str10 = (String) map.get("publisherProvidedId");
                        if (str10 != null) {
                        }
                        String str11 = (String) map.get("categoryExclusions");
                        if (str11 != null) {
                            Iterator it2 = a(str11, "categoryExclusions").iterator();
                            while (it2.hasNext()) {
                                builder.addCategoryExclusion((String) it2.next());
                            }
                        }
                        AdRequest adRequestBuild = builder.build();
                        AdSize adSizeA = a(map);
                        NativeAd.NativeMediaAspectRatio nativeMediaAspectRatioB = this.e.b((String) map.get("mediaAspectRatio"));
                        adChoicesPlacementA = this.e.a((String) map.get("preferredAdChoicesPosition"));
                        if (map.containsKey("clickToExpandRequested") || map.containsKey("customControlsRequested") || map.containsKey("startMuted")) {
                            VideoOptions.Builder builder2 = new VideoOptions.Builder();
                            String str12 = (String) map.get("startMuted");
                            if (str12 != null) {
                                builder2.setStartMuted(Intrinsics.areEqual(str12, "1"));
                            }
                            String str13 = (String) map.get("customControlsRequested");
                            if (str13 != null) {
                                builder2.setCustomControlsRequested(Intrinsics.areEqual(str13, "1"));
                            }
                            String str14 = (String) map.get("clickToExpandRequested");
                            if (str14 != null) {
                                builder2.setClickToExpandRequested(Intrinsics.areEqual(str14, "1"));
                            }
                            videoOptionsBuild = builder2.build();
                        } else {
                            videoOptionsBuild = null;
                        }
                        String str15 = (String) map.get("disableImageLoading");
                        zAreEqual = str15 != null ? Intrinsics.areEqual(str15, "1") : false;
                        String str16 = (String) map.get("customMuteThisAdRequested");
                        if (str16 != null) {
                            boolean zAreEqual2 = Intrinsics.areEqual(str16, "1");
                            nativeMediaAspectRatio = nativeMediaAspectRatioB;
                            z = zAreEqual2;
                            videoOptions = videoOptionsBuild;
                        } else {
                            nativeMediaAspectRatio = nativeMediaAspectRatioB;
                            videoOptions = videoOptionsBuild;
                            z = false;
                        }
                        adSize = adSizeA;
                        adRequest = adRequestBuild;
                    } else {
                        adSize = adSize2;
                        nativeMediaAspectRatio = nativeMediaAspectRatio2;
                        adRequest = null;
                        z = false;
                        zAreEqual = false;
                        videoOptions = null;
                    }
                    String str17 = (String) map.get("bannerPosition");
                    String str18 = "CENTER";
                    AdRequest adRequest2 = adRequest;
                    if (str17 != null) {
                        int iHashCode = str17.hashCode();
                        z2 = z;
                        if (iHashCode == 83253 ? str17.equals("TOP") : iHashCode == 1965067819 ? str17.equals("BOTTOM") : !(iHashCode != 1984282709 || !str17.equals("CENTER"))) {
                            str18 = str17;
                        }
                    } else {
                        z2 = z;
                    }
                    String str19 = (String) map.get(C3522b4.j.Q);
                    boolean zAreEqual3 = str19 != null ? Intrinsics.areEqual(str19, "1") : false;
                    String str20 = (String) map.get("customNativeTemplates");
                    List listA = str20 != null ? a(str20, "customNativeTemplates") : null;
                    String str21 = (String) map.get("imageScaleType");
                    if (str21 != null) {
                        try {
                            scaleTypeValueOf = ImageView.ScaleType.valueOf(str21);
                        } catch (IllegalArgumentException e3) {
                            ((as3) this.b).a("Failed to parse OOCT image scale type: " + str21, (Throwable) e3);
                        }
                    }
                    String str22 = (String) map.get("bannerWidthConstraint");
                    return new q01(new uh2(str2, j53VarA, adChoicesPlacementA, adRequest2, adSize, z2, listA, zAreEqual, nativeMediaAspectRatio, serverSideVerificationOptions, videoOptions, str18, zAreEqual3, scaleTypeValueOf, (str22 == null || (intOrNull = StringsKt__StringNumberConversionsKt.toIntOrNull(str22)) == null) ? 0 : intOrNull.intValue()));
                }
            }
            return new m01("No OOCT format specified.");
        }
        return new m01("No OOCT ad unit ID specified.");
    }

    /* JADX WARN: Can't fix incorrect switch cases order, some code will duplicate */
    /* JADX WARN: Code restructure failed: missing block: B:16:0x005d, code lost:
    
        if (r1.equals("INLINE_ADAPTIVE_PORTRAIT") == false) goto L64;
     */
    /* JADX WARN: Code restructure failed: missing block: B:18:0x0061, code lost:
    
        r6 = r17;
        r5 = "INLINE_ADAPTIVE";
     */
    /* JADX WARN: Code restructure failed: missing block: B:20:0x006d, code lost:
    
        if (r1.equals("LARGE_ANCHORED_ADAPTIVE_LANDSCAPE") == false) goto L64;
     */
    /* JADX WARN: Code restructure failed: missing block: B:23:0x0075, code lost:
    
        if (r1.equals("ANCHORED_ADAPTIVE") == false) goto L64;
     */
    /* JADX WARN: Code restructure failed: missing block: B:26:0x007d, code lost:
    
        if (r1.equals("LARGE_ANCHORED_ADAPTIVE_PORTRAIT") == false) goto L64;
     */
    /* JADX WARN: Code restructure failed: missing block: B:29:0x0085, code lost:
    
        if (r1.equals("LARGE_ANCHORED_ADAPTIVE") == false) goto L64;
     */
    /* JADX WARN: Code restructure failed: missing block: B:37:0x009a, code lost:
    
        if (r1.equals("FIXED") == false) goto L64;
     */
    /* JADX WARN: Code restructure failed: missing block: B:40:0x00a2, code lost:
    
        if (r1.equals("ANCHORED_ADAPTIVE_LANDSCAPE") == false) goto L64;
     */
    /* JADX WARN: Code restructure failed: missing block: B:43:0x00ac, code lost:
    
        if (r1.equals("INLINE_ADAPTIVE_MAX_HEIGHT") == false) goto L64;
     */
    /* JADX WARN: Code restructure failed: missing block: B:45:0x00b0, code lost:
    
        if (r17 == null) goto L54;
     */
    /* JADX WARN: Code restructure failed: missing block: B:46:0x00b2, code lost:
    
        if (r16 != null) goto L48;
     */
    /* JADX WARN: Code restructure failed: missing block: B:49:0x00b9, code lost:
    
        if (kotlin.jvm.internal.Intrinsics.areEqual(r1, "FIXED") == false) goto L52;
     */
    /* JADX WARN: Code restructure failed: missing block: B:51:0x00c8, code lost:
    
        return new com.google.android.libraries.ads.mobile.sdk.banner.AdSize(r17.intValue(), r16.intValue());
     */
    /* JADX WARN: Code restructure failed: missing block: B:53:0x00d7, code lost:
    
        return com.google.android.libraries.ads.mobile.sdk.banner.AdSize.Companion.getInlineAdaptiveBannerAdSize(r17.intValue(), r16.intValue());
     */
    /* JADX WARN: Code restructure failed: missing block: B:54:0x00d8, code lost:
    
        r3 = r19.b;
        r4 = new java.lang.NumberFormatException("Width (" + r2 + ") or height (" + r5 + ") is not a number.");
        r2 = new java.lang.StringBuilder();
        r2.append("Failed to create ");
        r2.append(r1);
        r2.append(" ad size.");
        ((ads_mobile_sdk.as3) r3).a(r2.toString(), (java.lang.Throwable) r4);
     */
    /* JADX WARN: Code restructure failed: missing block: B:55:0x0112, code lost:
    
        return com.google.android.libraries.ads.mobile.sdk.banner.AdSize.BANNER;
     */
    /* JADX WARN: Code restructure failed: missing block: B:57:0x0117, code lost:
    
        if (r1.equals("INLINE_ADAPTIVE_LANDSCAPE") == false) goto L64;
     */
    /* JADX WARN: Code restructure failed: missing block: B:60:0x011e, code lost:
    
        if (r1.equals("ANCHORED_ADAPTIVE_PORTRAIT") == false) goto L64;
     */
    /* JADX WARN: Failed to restore switch over string. Please report as a decompilation issue */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct code enable 'Show inconsistent code' option in preferences
    */
    public final com.google.android.libraries.ads.mobile.sdk.banner.AdSize a(java.util.Map r20) {
        /*
            Method dump skipped, instruction units count: 674
            To view this dump change 'Code comments level' option to 'DEBUG'
        */
        throw new UnsupportedOperationException("Method not decompiled: ads_mobile_sdk.vh2.a(java.util.Map):com.google.android.libraries.ads.mobile.sdk.banner.AdSize");
    }

    @Override // ads_mobile_sdk.r41
    public final Object a(r31 r31Var, Map map, Continuation continuation) {
        Object objA;
        List listListOf;
        String str = (String) map.get("action");
        if (str == null) {
            return Unit.INSTANCE;
        }
        if (StringsKt__StringsKt.isBlank(str)) {
            xs3.a("No OOCT action specified.", null, 6);
            return Unit.INSTANCE;
        }
        v01 v01VarB = b(map);
        if (v01VarB instanceof i01) {
            xs3.a((i01) v01VarB, false);
            return Unit.INSTANCE;
        }
        Intrinsics.checkNotNull(v01VarB, "null cannot be cast to non-null type com.google.android.libraries.ads.mobile.sdk.internal.util.GmaResult.Success<T of com.google.android.libraries.ads.mobile.sdk.internal.util.GmaResult.Companion.returnIfError>");
        uh2 uh2Var = (uh2) ((q01) v01VarB).b;
        if (Intrinsics.areEqual(str, "load")) {
            sh2 sh2Var = this.a;
            sh2Var.getClass();
            int iOrdinal = uh2Var.b.ordinal();
            if (iOrdinal == 1) {
                AdRequest adRequestBuild = uh2Var.d;
                if (adRequestBuild == null) {
                    adRequestBuild = new AdRequest.Builder(uh2Var.a).build();
                }
                dy2 dy2Var = (dy2) sh2Var.e.get();
                j53 j53Var = j53.e;
                uh0 uh0Var = (uh0) dy2Var;
                uh0Var.getClass();
                uh0Var.d = j53Var;
                uh0 uh0Var2 = (uh0) ((dy2) uh0Var.a(adRequestBuild));
                uh0Var2.c = adRequestBuild;
                uh0 uh0Var3 = (uh0) ((dy2) ((uh0) ((dy2) uh0Var2.b(true))).a(false));
                kq2.a(uh0Var3.b, AdRequest.class);
                kq2.a(uh0Var3.c, BaseRequest.class);
                kq2.a(uh0Var3.d, j53.class);
                kq2.a(uh0Var3.e, Boolean.class);
                kq2.a(uh0Var3.f, Boolean.class);
                objA = sh2Var.a(new vh0(uh0Var3.a, uh0Var3.b, uh0Var3.c, uh0Var3.d, uh0Var3.e, uh0Var3.f), uh2Var, continuation);
                if (objA != IntrinsicsKt__IntrinsicsKt.getCOROUTINE_SUSPENDED()) {
                    objA = Unit.INSTANCE;
                }
                if (objA != IntrinsicsKt__IntrinsicsKt.getCOROUTINE_SUSPENDED()) {
                    objA = Unit.INSTANCE;
                }
            } else if (iOrdinal == 2) {
                BannerAdRequest.Builder builder = new BannerAdRequest.Builder(uh2Var.a, uh2Var.e);
                VideoOptions videoOptions = uh2Var.k;
                if (videoOptions != null) {
                    builder.setVideoOptions(videoOptions);
                }
                AdRequest adRequest = uh2Var.d;
                if (adRequest != null) {
                    sh2.a(adRequest, builder);
                }
                BannerAdRequest bannerAdRequestBuild = builder.build();
                objA = sh2Var.a(((bz2) ((bz2) ((bz2) ((bz2) ((bz2) ((bz2) sh2Var.f.get()).a(j53.f)).a((AdRequest) bannerAdRequestBuild)).a((BaseRequest) bannerAdRequestBuild)).a((BannerRequest) bannerAdRequestBuild).a(bannerAdRequestBuild).b(true)).a(false)).a(), uh2Var, continuation);
                if (objA != IntrinsicsKt__IntrinsicsKt.getCOROUTINE_SUSPENDED()) {
                    objA = Unit.INSTANCE;
                }
                if (objA != IntrinsicsKt__IntrinsicsKt.getCOROUTINE_SUSPENDED()) {
                    objA = Unit.INSTANCE;
                }
            } else if (iOrdinal == 4) {
                AdRequest adRequestBuild2 = uh2Var.d;
                if (adRequestBuild2 == null) {
                    adRequestBuild2 = new AdRequest.Builder(uh2Var.a).build();
                }
                oz2 oz2Var = (oz2) sh2Var.g.get();
                j53 j53Var2 = j53.h;
                di0 di0Var = (di0) oz2Var;
                di0Var.getClass();
                di0Var.d = j53Var2;
                di0 di0Var2 = (di0) ((oz2) di0Var.a(adRequestBuild2));
                di0Var2.c = adRequestBuild2;
                objA = sh2Var.a(((di0) ((oz2) ((di0) ((oz2) di0Var2.b(true))).a(false))).b(), uh2Var, continuation);
                if (objA != IntrinsicsKt__IntrinsicsKt.getCOROUTINE_SUSPENDED()) {
                    objA = Unit.INSTANCE;
                }
                if (objA != IntrinsicsKt__IntrinsicsKt.getCOROUTINE_SUSPENDED()) {
                    objA = Unit.INSTANCE;
                }
            } else if (iOrdinal == 5) {
                List list = uh2Var.g;
                if (list != null && !list.isEmpty()) {
                    listListOf = CollectionsKt__CollectionsJVMKt.listOf(NativeAd.NativeAdType.CUSTOM_NATIVE);
                } else {
                    listListOf = CollectionsKt__CollectionsJVMKt.listOf(NativeAd.NativeAdType.NATIVE);
                }
                NativeAdRequest.Builder builder2 = new NativeAdRequest.Builder(uh2Var.a, listListOf);
                builder2.setMediaAspectRatio(uh2Var.i);
                builder2.setAdChoicesPlacement(uh2Var.c);
                builder2.a(uh2Var.f);
                VideoOptions videoOptions2 = uh2Var.k;
                if (videoOptions2 != null) {
                    builder2.setVideoOptions(videoOptions2);
                }
                AdRequest adRequest2 = uh2Var.d;
                if (adRequest2 != null) {
                    sh2.a(adRequest2, builder2);
                }
                List<String> list2 = uh2Var.g;
                if (list2 != null) {
                    builder2.setCustomFormatIds(list2);
                }
                if (uh2Var.h) {
                    builder2.disableImageDownloading();
                }
                NativeAdRequest nativeAdRequestBuild = builder2.build();
                objA = sh2Var.a(((vz2) ((vz2) ((vz2) ((vz2) ((vz2) ((vz2) sh2Var.h.get()).a(j53.i)).a((AdRequest) nativeAdRequestBuild)).a((BaseRequest) nativeAdRequestBuild)).a((NativeRequest) nativeAdRequestBuild).a(nativeAdRequestBuild).b(true)).a(false)).a(1).a(), uh2Var, continuation);
                if (objA != IntrinsicsKt__IntrinsicsKt.getCOROUTINE_SUSPENDED()) {
                    objA = Unit.INSTANCE;
                }
                if (objA != IntrinsicsKt__IntrinsicsKt.getCOROUTINE_SUSPENDED()) {
                    objA = Unit.INSTANCE;
                }
            } else if (iOrdinal == 6) {
                objA = sh2Var.a(uh2Var, continuation);
                if (objA != IntrinsicsKt__IntrinsicsKt.getCOROUTINE_SUSPENDED()) {
                    objA = Unit.INSTANCE;
                }
            } else if (iOrdinal != 7 || (objA = sh2Var.a(uh2Var, continuation)) != IntrinsicsKt__IntrinsicsKt.getCOROUTINE_SUSPENDED()) {
                objA = Unit.INSTANCE;
            }
            return objA == IntrinsicsKt__IntrinsicsKt.getCOROUTINE_SUSPENDED() ? objA : Unit.INSTANCE;
        }
        if (Intrinsics.areEqual(str, "show")) {
            sh2 sh2Var2 = this.a;
            sh2Var2.getClass();
            Object objA2 = sh2.a(sh2Var2, uh2Var, continuation);
            return objA2 == IntrinsicsKt__IntrinsicsKt.getCOROUTINE_SUSPENDED() ? objA2 : Unit.INSTANCE;
        }
        return Unit.INSTANCE;
    }

    public final List a(String str, String str2) {
        try {
            ds1 ds1Var = ds1.a;
            JsonArray jsonArray = (JsonArray) this.d.fromJson(str, JsonArray.class);
            ArrayList arrayList = new ArrayList();
            if (jsonArray != null) {
                int i = 0;
                for (JsonElement jsonElement : jsonArray) {
                    int i2 = i + 1;
                    if (i < 0) {
                        CollectionsKt__CollectionsKt.throwIndexOverflow();
                    }
                    JsonElement jsonElement2 = jsonElement;
                    Intrinsics.checkNotNull(jsonElement2);
                    String asString = jsonElement2.getAsString();
                    if (asString != null) {
                        arrayList.add(asString);
                    }
                    i = i2;
                }
            }
            return arrayList;
        } catch (JsonSyntaxException e) {
            ((as3) this.b).a("Failed to parse OOCT string array: " + str2 + ".", (Throwable) e);
            return CollectionsKt__CollectionsKt.emptyList();
        }
    }
}
