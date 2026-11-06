package com.unity3d.ads.core.domain.adload;

import com.unity3d.ads.core.data.repository.AdRepository;
import com.unity3d.ads.core.data.repository.CampaignRepository;
import com.unity3d.ads.core.data.repository.SessionRepository;
import com.unity3d.ads.core.domain.AdRefresh;
import com.unity3d.ads.core.domain.CacheAssets;
import kotlin.coroutines.Continuation;
import kotlin.coroutines.jvm.internal.ContinuationImpl;
import kotlin.coroutines.jvm.internal.DebugMetadata;
import kotlin.jvm.internal.Intrinsics;

/* JADX INFO: compiled from: AndroidWebViewLessLoadStrategy.kt */
/* JADX INFO: loaded from: classes4.dex */
public final class AndroidWebViewLessLoadStrategy implements WebViewLessLoadStrategy {
    private final AdRefresh adRefresh;
    private final AdRepository adRepository;
    private final CacheAssets cacheAssets;
    private final CampaignRepository campaignRepository;
    private final SessionRepository sessionRepository;

    /* JADX INFO: renamed from: com.unity3d.ads.core.domain.adload.AndroidWebViewLessLoadStrategy$invoke$1, reason: invalid class name */
    /* JADX INFO: compiled from: AndroidWebViewLessLoadStrategy.kt */
    @DebugMetadata(c = "com.unity3d.ads.core.domain.adload.AndroidWebViewLessLoadStrategy", f = "AndroidWebViewLessLoadStrategy.kt", l = {51, 58}, m = "invoke")
    public static final class AnonymousClass1 extends ContinuationImpl {
        Object L$0;
        Object L$1;
        Object L$2;
        Object L$3;
        boolean Z$0;
        int label;
        /* synthetic */ Object result;

        public AnonymousClass1(Continuation<? super AnonymousClass1> continuation) {
            super(continuation);
        }

        @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
        public final Object invokeSuspend(Object obj) {
            this.result = obj;
            this.label |= Integer.MIN_VALUE;
            return AndroidWebViewLessLoadStrategy.this.invoke(null, null, null, null, null, null, null, false, this);
        }
    }

    public AndroidWebViewLessLoadStrategy(AdRepository adRepository, CampaignRepository campaignRepository, CacheAssets cacheAssets, AdRefresh adRefresh, SessionRepository sessionRepository) {
        Intrinsics.checkNotNullParameter(adRepository, "adRepository");
        Intrinsics.checkNotNullParameter(campaignRepository, "campaignRepository");
        Intrinsics.checkNotNullParameter(cacheAssets, "cacheAssets");
        Intrinsics.checkNotNullParameter(adRefresh, "adRefresh");
        Intrinsics.checkNotNullParameter(sessionRepository, "sessionRepository");
        this.adRepository = adRepository;
        this.campaignRepository = campaignRepository;
        this.cacheAssets = cacheAssets;
        this.adRefresh = adRefresh;
        this.sessionRepository = sessionRepository;
    }

    /* JADX WARN: Removed duplicated region for block: B:36:0x0119  */
    /* JADX WARN: Removed duplicated region for block: B:7:0x0017  */
    @Override // com.unity3d.ads.core.domain.adload.WebViewLessLoadStrategy
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct code enable 'Show inconsistent code' option in preferences
    */
    public java.lang.Object invoke(kotlinx.coroutines.CoroutineScope r31, java.lang.String r32, com.unity3d.ads.UnityAdsLoadOptions r33, com.google.protobuf.ByteString r34, gatewayprotocol.v1.AdResponseOuterClass.AdResponse r35, java.lang.String r36, gatewayprotocol.v1.DiagnosticEventRequestOuterClass.DiagnosticAdType r37, boolean r38, kotlin.coroutines.Continuation<? super com.unity3d.ads.core.data.model.LoadResult> r39) {
        /*
            Method dump skipped, instruction units count: 345
            To view this dump change 'Code comments level' option to 'DEBUG'
        */
        throw new UnsupportedOperationException("Method not decompiled: com.unity3d.ads.core.domain.adload.AndroidWebViewLessLoadStrategy.invoke(kotlinx.coroutines.CoroutineScope, java.lang.String, com.unity3d.ads.UnityAdsLoadOptions, com.google.protobuf.ByteString, gatewayprotocol.v1.AdResponseOuterClass$AdResponse, java.lang.String, gatewayprotocol.v1.DiagnosticEventRequestOuterClass$DiagnosticAdType, boolean, kotlin.coroutines.Continuation):java.lang.Object");
    }
}
