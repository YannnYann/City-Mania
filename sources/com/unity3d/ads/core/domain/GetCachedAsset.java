package com.unity3d.ads.core.domain;

import android.content.Context;
import android.net.Uri;
import android.webkit.WebResourceResponse;
import com.ironsource.G5;
import com.ironsource.InterfaceC3681k1;
import com.unity3d.ads.core.data.model.CacheResult;
import com.unity3d.ads.core.data.repository.CacheRepository;
import com.unity3d.ads.core.data.repository.SessionRepository;
import com.unity3d.ads.core.extensions.StringExtensionsKt;
import com.unity3d.services.UnityAdsConstants;
import java.io.ByteArrayInputStream;
import java.io.File;
import java.io.FileInputStream;
import java.io.InputStream;
import java.util.Map;
import kotlin.Result;
import kotlin.ResultKt;
import kotlin.TuplesKt;
import kotlin.collections.MapsKt__MapsJVMKt;
import kotlin.collections.MapsKt__MapsKt;
import kotlin.jvm.internal.DefaultConstructorMarker;
import kotlin.jvm.internal.Intrinsics;
import kotlin.text.StringsKt__StringsKt;
import kotlinx.coroutines.BuildersKt__BuildersKt;

/* JADX INFO: compiled from: GetCachedAsset.kt */
/* JADX INFO: loaded from: classes4.dex */
public final class GetCachedAsset {
    public static final Companion Companion = new Companion(null);
    private final CacheRepository cacheRepository;
    private final CacheWebViewAssets cacheWebViewAssets;
    private final Context context;
    private final GetAssetFileName getAssetFileName;
    private final SessionRepository sessionRepository;

    public GetCachedAsset(CacheRepository cacheRepository, SessionRepository sessionRepository, Context context, CacheWebViewAssets cacheWebViewAssets, GetAssetFileName getAssetFileName) {
        Intrinsics.checkNotNullParameter(cacheRepository, "cacheRepository");
        Intrinsics.checkNotNullParameter(sessionRepository, "sessionRepository");
        Intrinsics.checkNotNullParameter(context, "context");
        Intrinsics.checkNotNullParameter(cacheWebViewAssets, "cacheWebViewAssets");
        Intrinsics.checkNotNullParameter(getAssetFileName, "getAssetFileName");
        this.cacheRepository = cacheRepository;
        this.sessionRepository = sessionRepository;
        this.context = context;
        this.cacheWebViewAssets = cacheWebViewAssets;
        this.getAssetFileName = getAssetFileName;
    }

    private final WebResourceResponse getNotFoundResponse() {
        return buildWebResourceResponse("text/html", G5.O, InterfaceC3681k1.a.b.d, "Not Found", MapsKt__MapsKt.emptyMap(), new ByteArrayInputStream(new byte[0]));
    }

    public static /* synthetic */ WebResourceResponse invoke$default(GetCachedAsset getCachedAsset, Uri uri, String str, int i, Object obj) {
        if ((i & 2) != 0) {
            str = "";
        }
        return getCachedAsset.invoke(uri, str);
    }

    public final WebResourceResponse invoke(Uri uri, String webviewType) {
        Intrinsics.checkNotNullParameter(uri, "uri");
        Intrinsics.checkNotNullParameter(webviewType, "webviewType");
        boolean disableCustomScheme = this.sessionRepository.getFeatureFlags().getDisableCustomScheme();
        String host = uri.getHost();
        if (host != null) {
            int iHashCode = host.hashCode();
            if (iHashCode != -1921537799) {
                if (iHashCode == -1920242293 && host.equals(UnityAdsConstants.DefaultUrls.AD_CACHE_DOMAIN)) {
                    return disableCustomScheme ? tryGetWebViewAsset(uri, webviewType) : getLegacyCachedAsset(uri);
                }
            } else if (host.equals(UnityAdsConstants.DefaultUrls.AD_ASSET_DOMAIN)) {
                return getBundledAsset(uri);
            }
        }
        return tryGetWebViewAsset(uri, webviewType);
    }

    private final WebResourceResponse getLegacyCachedAsset(Uri uri) {
        Object objM2760constructorimpl;
        String string = uri.toString();
        Intrinsics.checkNotNullExpressionValue(string, "toString(...)");
        CacheResult cacheResult = (CacheResult) BuildersKt__BuildersKt.runBlocking$default(null, new GetCachedAsset$getLegacyCachedAsset$result$1(this, StringsKt__StringsKt.substringAfterLast$default(string, "/", (String) null, 2, (Object) null), null), 1, null);
        if (cacheResult instanceof CacheResult.Success) {
            File file = ((CacheResult.Success) cacheResult).getCachedFile().getFile();
            if (file == null) {
                return null;
            }
            try {
                Result.Companion companion = Result.Companion;
                objM2760constructorimpl = Result.m2760constructorimpl(new FileInputStream(file));
            } catch (Throwable th) {
                Result.Companion companion2 = Result.Companion;
                objM2760constructorimpl = Result.m2760constructorimpl(ResultKt.createFailure(th));
            }
            if (Result.m2765isFailureimpl(objM2760constructorimpl)) {
                objM2760constructorimpl = null;
            }
            FileInputStream fileInputStream = (FileInputStream) objM2760constructorimpl;
            if (fileInputStream == null) {
                return null;
            }
            String absolutePath = file.getAbsolutePath();
            Intrinsics.checkNotNull(absolutePath);
            return new WebResourceResponse(StringExtensionsKt.guessMimeType(absolutePath), null, fileInputStream);
        }
        return getNotFoundResponse();
    }

    private final WebResourceResponse getBundledAsset(Uri uri) {
        String strSubstringAfter$default = StringsKt__StringsKt.substringAfter$default(String.valueOf(uri.getPath()), "/", (String) null, 2, (Object) null);
        try {
            InputStream inputStreamOpen = this.context.getAssets().open(strSubstringAfter$default);
            Intrinsics.checkNotNullExpressionValue(inputStreamOpen, "open(...)");
            return new WebResourceResponse(StringExtensionsKt.guessMimeType(strSubstringAfter$default), null, inputStreamOpen);
        } catch (Exception unused) {
            return getNotFoundResponse();
        }
    }

    private final WebResourceResponse tryGetWebViewAsset(Uri uri, String str) {
        Object objM2760constructorimpl;
        File file;
        Object objM2760constructorimpl2;
        StringBuilder sb = new StringBuilder();
        sb.append(str);
        sb.append('/');
        String string = uri.toString();
        Intrinsics.checkNotNullExpressionValue(string, "toString(...)");
        sb.append(StringsKt__StringsKt.substringAfterLast$default(StringsKt__StringsKt.substringBefore$default(string, "?", (String) null, 2, (Object) null), "/", (String) null, 2, (Object) null));
        String string2 = sb.toString();
        File file2 = this.cacheWebViewAssets.getCached().get(string2);
        if (file2 != null) {
            try {
                Result.Companion companion = Result.Companion;
                objM2760constructorimpl = Result.m2760constructorimpl(new FileInputStream(file2));
            } catch (Throwable th) {
                Result.Companion companion2 = Result.Companion;
                objM2760constructorimpl = Result.m2760constructorimpl(ResultKt.createFailure(th));
            }
            if (Result.m2765isFailureimpl(objM2760constructorimpl)) {
                objM2760constructorimpl = null;
            }
            FileInputStream fileInputStream = (FileInputStream) objM2760constructorimpl;
            if (fileInputStream == null) {
                return null;
            }
            return new WebResourceResponse(StringExtensionsKt.guessMimeType(string2), null, fileInputStream);
        }
        String string3 = uri.toString();
        Intrinsics.checkNotNullExpressionValue(string3, "toString(...)");
        CacheResult cacheResult = (CacheResult) BuildersKt__BuildersKt.runBlocking$default(null, new GetCachedAsset$tryGetWebViewAsset$result$1(this, this.getAssetFileName.invoke(string3), null), 1, null);
        if (!(cacheResult instanceof CacheResult.Success) || (file = ((CacheResult.Success) cacheResult).getCachedFile().getFile()) == null) {
            return null;
        }
        try {
            Result.Companion companion3 = Result.Companion;
            objM2760constructorimpl2 = Result.m2760constructorimpl(new FileInputStream(file));
        } catch (Throwable th2) {
            Result.Companion companion4 = Result.Companion;
            objM2760constructorimpl2 = Result.m2760constructorimpl(ResultKt.createFailure(th2));
        }
        if (Result.m2765isFailureimpl(objM2760constructorimpl2)) {
            objM2760constructorimpl2 = null;
        }
        FileInputStream fileInputStream2 = (FileInputStream) objM2760constructorimpl2;
        if (fileInputStream2 == null) {
            return null;
        }
        String absolutePath = file.getAbsolutePath();
        Intrinsics.checkNotNull(absolutePath);
        return buildWebResourceResponse(StringExtensionsKt.guessMimeType(absolutePath), null, 200, "OK", MapsKt__MapsJVMKt.mapOf(TuplesKt.to("Access-Control-Allow-Origin", "*")), fileInputStream2);
    }

    private final WebResourceResponse buildWebResourceResponse(String str, String str2, int i, String str3, Map<String, String> map, InputStream inputStream) {
        return new WebResourceResponse(str, str2, i, Companion.reasonPhraseOrDefault$unity_ads_defaultRelease(str3, i), map, inputStream);
    }

    /* JADX INFO: compiled from: GetCachedAsset.kt */
    public static final class Companion {
        public /* synthetic */ Companion(DefaultConstructorMarker defaultConstructorMarker) {
            this();
        }

        private Companion() {
        }

        public final String reasonPhraseOrDefault$unity_ads_defaultRelease(String reasonPhrase, int i) {
            Intrinsics.checkNotNullParameter(reasonPhrase, "reasonPhrase");
            if (!StringsKt__StringsKt.isBlank(reasonPhrase)) {
                return reasonPhrase;
            }
            return "Status " + i;
        }
    }
}
