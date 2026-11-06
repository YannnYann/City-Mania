package com.unity3d.ads.core.domain;

import com.unity3d.ads.core.data.repository.CacheRepository;
import com.unity3d.ads.core.data.repository.SessionRepository;
import kotlin.coroutines.Continuation;
import kotlin.coroutines.jvm.internal.ContinuationImpl;
import kotlin.coroutines.jvm.internal.DebugMetadata;
import kotlin.jvm.internal.Intrinsics;

/* JADX INFO: compiled from: CommonGetIsFileCache.kt */
/* JADX INFO: loaded from: classes4.dex */
public final class CommonGetIsFileCache implements GetIsFileCache {
    private final CacheRepository cacheRepository;
    private final GetAssetFileName getAssetFileName;
    private final SendDiagnosticEvent sendDiagnosticEvent;
    private final SessionRepository sessionRepository;

    /* JADX INFO: renamed from: com.unity3d.ads.core.domain.CommonGetIsFileCache$invoke$1, reason: invalid class name */
    /* JADX INFO: compiled from: CommonGetIsFileCache.kt */
    @DebugMetadata(c = "com.unity3d.ads.core.domain.CommonGetIsFileCache", f = "CommonGetIsFileCache.kt", l = {22}, m = "invoke")
    public static final class AnonymousClass1 extends ContinuationImpl {
        long J$0;
        int label;
        /* synthetic */ Object result;

        public AnonymousClass1(Continuation<? super AnonymousClass1> continuation) {
            super(continuation);
        }

        @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
        public final Object invokeSuspend(Object obj) {
            this.result = obj;
            this.label |= Integer.MIN_VALUE;
            return CommonGetIsFileCache.this.invoke(null, this);
        }
    }

    public CommonGetIsFileCache(CacheRepository cacheRepository, SessionRepository sessionRepository, SendDiagnosticEvent sendDiagnosticEvent, GetAssetFileName getAssetFileName) {
        Intrinsics.checkNotNullParameter(cacheRepository, "cacheRepository");
        Intrinsics.checkNotNullParameter(sessionRepository, "sessionRepository");
        Intrinsics.checkNotNullParameter(sendDiagnosticEvent, "sendDiagnosticEvent");
        Intrinsics.checkNotNullParameter(getAssetFileName, "getAssetFileName");
        this.cacheRepository = cacheRepository;
        this.sessionRepository = sessionRepository;
        this.sendDiagnosticEvent = sendDiagnosticEvent;
        this.getAssetFileName = getAssetFileName;
    }

    /* JADX WARN: Removed duplicated region for block: B:7:0x0013  */
    @Override // com.unity3d.ads.core.domain.GetIsFileCache
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct code enable 'Show inconsistent code' option in preferences
    */
    public java.lang.Object invoke(java.lang.String r13, kotlin.coroutines.Continuation<? super java.lang.Boolean> r14) {
        /*
            r12 = this;
            boolean r0 = r14 instanceof com.unity3d.ads.core.domain.CommonGetIsFileCache.AnonymousClass1
            if (r0 == 0) goto L13
            r0 = r14
            com.unity3d.ads.core.domain.CommonGetIsFileCache$invoke$1 r0 = (com.unity3d.ads.core.domain.CommonGetIsFileCache.AnonymousClass1) r0
            int r1 = r0.label
            r2 = -2147483648(0xffffffff80000000, float:-0.0)
            r3 = r1 & r2
            if (r3 == 0) goto L13
            int r1 = r1 - r2
            r0.label = r1
            goto L18
        L13:
            com.unity3d.ads.core.domain.CommonGetIsFileCache$invoke$1 r0 = new com.unity3d.ads.core.domain.CommonGetIsFileCache$invoke$1
            r0.<init>(r14)
        L18:
            java.lang.Object r14 = r0.result
            java.lang.Object r1 = kotlin.coroutines.intrinsics.IntrinsicsKt__IntrinsicsKt.getCOROUTINE_SUSPENDED()
            int r2 = r0.label
            r3 = 1
            if (r2 == 0) goto L33
            if (r2 != r3) goto L2b
            long r0 = r0.J$0
            kotlin.ResultKt.throwOnFailure(r14)
            goto L65
        L2b:
            java.lang.IllegalStateException r13 = new java.lang.IllegalStateException
            java.lang.String r14 = "call to 'resume' before 'invoke' with coroutine"
            r13.<init>(r14)
            throw r13
        L33:
            kotlin.ResultKt.throwOnFailure(r14)
            kotlin.time.TimeSource$Monotonic r14 = kotlin.time.TimeSource$Monotonic.INSTANCE
            long r4 = r14.m2921markNowz9LOYto()
            com.unity3d.ads.core.data.repository.SessionRepository r14 = r12.sessionRepository
            gatewayprotocol.v1.NativeConfigurationOuterClass$FeatureFlags r14 = r14.getFeatureFlags()
            boolean r14 = r14.getDisableCustomScheme()
            if (r14 == 0) goto L4f
            com.unity3d.ads.core.domain.GetAssetFileName r14 = r12.getAssetFileName
            java.lang.String r13 = r14.invoke(r13)
            goto L57
        L4f:
            java.lang.String r14 = "/"
            r2 = 2
            r6 = 0
            java.lang.String r13 = kotlin.text.StringsKt__StringsKt.substringAfterLast$default(r13, r14, r6, r2, r6)
        L57:
            com.unity3d.ads.core.data.repository.CacheRepository r14 = r12.cacheRepository
            r0.J$0 = r4
            r0.label = r3
            java.lang.Object r14 = r14.doesFileExist(r13, r0)
            if (r14 != r1) goto L64
            return r1
        L64:
            r0 = r4
        L65:
            java.lang.Boolean r14 = (java.lang.Boolean) r14
            boolean r13 = r14.booleanValue()
            com.unity3d.ads.core.domain.SendDiagnosticEvent r2 = r12.sendDiagnosticEvent
            if (r13 == 0) goto L73
            java.lang.String r14 = "native_show_is_file_cached_success_time"
        L71:
            r3 = r14
            goto L76
        L73:
            java.lang.String r14 = "native_show_is_file_cached_failure_time"
            goto L71
        L76:
            kotlin.time.TimeSource$Monotonic$ValueTimeMark r14 = kotlin.time.TimeSource$Monotonic.ValueTimeMark.m2922boximpl(r0)
            double r0 = com.unity3d.ads.core.extensions.TimeExtensionsKt.elapsedMillis(r14)
            java.lang.Double r4 = kotlin.coroutines.jvm.internal.Boxing.boxDouble(r0)
            r10 = 124(0x7c, float:1.74E-43)
            r11 = 0
            r5 = 0
            r6 = 0
            r7 = 0
            r8 = 0
            r9 = 0
            com.unity3d.ads.core.domain.SendDiagnosticEvent.DefaultImpls.invoke$default(r2, r3, r4, r5, r6, r7, r8, r9, r10, r11)
            java.lang.Boolean r13 = kotlin.coroutines.jvm.internal.Boxing.boxBoolean(r13)
            return r13
        */
        throw new UnsupportedOperationException("Method not decompiled: com.unity3d.ads.core.domain.CommonGetIsFileCache.invoke(java.lang.String, kotlin.coroutines.Continuation):java.lang.Object");
    }
}
