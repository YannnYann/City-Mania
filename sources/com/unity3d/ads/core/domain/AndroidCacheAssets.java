package com.unity3d.ads.core.domain;

import kotlin.coroutines.Continuation;
import kotlin.coroutines.jvm.internal.ContinuationImpl;
import kotlin.coroutines.jvm.internal.DebugMetadata;
import kotlin.jvm.internal.Intrinsics;
import kotlinx.coroutines.CoroutineScope;

/* JADX INFO: compiled from: AndroidCacheAssets.kt */
/* JADX INFO: loaded from: classes4.dex */
public final class AndroidCacheAssets implements CacheAssets {
    private final CacheFile cacheFile;
    private final CoroutineScope scope;
    private final SendDiagnosticEvent sendDiagnosticEvent;

    /* JADX INFO: renamed from: com.unity3d.ads.core.domain.AndroidCacheAssets$invoke$1, reason: invalid class name */
    /* JADX INFO: compiled from: AndroidCacheAssets.kt */
    @DebugMetadata(c = "com.unity3d.ads.core.domain.AndroidCacheAssets", f = "AndroidCacheAssets.kt", l = {58}, m = "invoke")
    public static final class AnonymousClass1 extends ContinuationImpl {
        int label;
        /* synthetic */ Object result;

        public AnonymousClass1(Continuation<? super AnonymousClass1> continuation) {
            super(continuation);
        }

        @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
        public final Object invokeSuspend(Object obj) {
            this.result = obj;
            this.label |= Integer.MIN_VALUE;
            return AndroidCacheAssets.this.invoke(null, null, this);
        }
    }

    public AndroidCacheAssets(CoroutineScope scope, CacheFile cacheFile, SendDiagnosticEvent sendDiagnosticEvent) {
        Intrinsics.checkNotNullParameter(scope, "scope");
        Intrinsics.checkNotNullParameter(cacheFile, "cacheFile");
        Intrinsics.checkNotNullParameter(sendDiagnosticEvent, "sendDiagnosticEvent");
        this.scope = scope;
        this.cacheFile = cacheFile;
        this.sendDiagnosticEvent = sendDiagnosticEvent;
    }

    /* JADX WARN: Removed duplicated region for block: B:7:0x0017  */
    @Override // com.unity3d.ads.core.domain.CacheAssets
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct code enable 'Show inconsistent code' option in preferences
    */
    public java.lang.Object invoke(com.unity3d.ads.core.data.model.AdObject r17, java.util.List<gatewayprotocol.v1.CampaignMetadataOuterClass.CampaignAsset> r18, kotlin.coroutines.Continuation<? super com.unity3d.ads.core.domain.CacheAssetsEvent> r19) {
        /*
            Method dump skipped, instruction units count: 229
            To view this dump change 'Code comments level' option to 'DEBUG'
        */
        throw new UnsupportedOperationException("Method not decompiled: com.unity3d.ads.core.domain.AndroidCacheAssets.invoke(com.unity3d.ads.core.data.model.AdObject, java.util.List, kotlin.coroutines.Continuation):java.lang.Object");
    }
}
