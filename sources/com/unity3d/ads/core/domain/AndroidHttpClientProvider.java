package com.unity3d.ads.core.domain;

import android.content.Context;
import com.google.android.gms.net.CronetProviderInstaller;
import com.google.android.gms.tasks.OnCompleteListener;
import com.google.android.gms.tasks.Task;
import com.google.protobuf.ByteString;
import com.unity3d.ads.core.configuration.MediationTraitsMetadataReader;
import com.unity3d.ads.core.data.model.AdObject;
import com.unity3d.ads.core.domain.SendDiagnosticEvent;
import com.unity3d.services.core.di.ServiceProvider;
import com.unity3d.services.core.domain.ISDKDispatchers;
import com.unity3d.services.core.network.core.CronetClient;
import com.unity3d.services.core.network.core.CronetEngineBuilderFactory;
import com.unity3d.services.core.network.core.HttpClient;
import com.unity3d.services.core.network.core.OkHttp3Client;
import com.vungle.ads.internal.protos.Sdk;
import java.util.Map;
import kotlin.Result;
import kotlin.TuplesKt;
import kotlin.collections.MapsKt__MapsJVMKt;
import kotlin.coroutines.Continuation;
import kotlin.coroutines.intrinsics.IntrinsicsKt__IntrinsicsJvmKt;
import kotlin.coroutines.intrinsics.IntrinsicsKt__IntrinsicsKt;
import kotlin.coroutines.jvm.internal.ContinuationImpl;
import kotlin.coroutines.jvm.internal.DebugMetadata;
import kotlin.coroutines.jvm.internal.DebugProbesKt;
import kotlin.jvm.internal.Intrinsics;
import kotlinx.coroutines.CancellableContinuation;
import kotlinx.coroutines.CancellableContinuationImpl;
import kotlinx.coroutines.ExecutorsKt;
import kotlinx.coroutines.sync.Mutex;
import kotlinx.coroutines.sync.MutexKt;
import okhttp3.OkHttpClient;
import org.chromium.net.CronetEngine;

/* JADX INFO: compiled from: AndroidHttpClientProvider.kt */
/* JADX INFO: loaded from: classes4.dex */
public final class AndroidHttpClientProvider implements HttpClientProvider {
    private HttpClient cachedClient;
    private final Context context;
    private final CronetEngineBuilderFactory cronetEngineBuilderFactory;
    private final ISDKDispatchers dispatchers;
    private final IsCronetFallbackAvailable isCronetFallbackAvailable;
    private final MediationTraitsMetadataReader mediationTraitsMetadataReader;
    private final Mutex mutex;
    private final SendDiagnosticEvent sendDiagnosticEvent;

    /* JADX INFO: renamed from: com.unity3d.ads.core.domain.AndroidHttpClientProvider$createHttpClient$1, reason: invalid class name */
    /* JADX INFO: compiled from: AndroidHttpClientProvider.kt */
    @DebugMetadata(c = "com.unity3d.ads.core.domain.AndroidHttpClientProvider", f = "AndroidHttpClientProvider.kt", l = {85}, m = "createHttpClient")
    public static final class AnonymousClass1 extends ContinuationImpl {
        long J$0;
        Object L$0;
        int label;
        /* synthetic */ Object result;

        public AnonymousClass1(Continuation<? super AnonymousClass1> continuation) {
            super(continuation);
        }

        @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
        public final Object invokeSuspend(Object obj) {
            this.result = obj;
            this.label |= Integer.MIN_VALUE;
            return AndroidHttpClientProvider.this.createHttpClient(this);
        }
    }

    /* JADX INFO: renamed from: com.unity3d.ads.core.domain.AndroidHttpClientProvider$invoke$1, reason: invalid class name and case insensitive filesystem */
    /* JADX INFO: compiled from: AndroidHttpClientProvider.kt */
    @DebugMetadata(c = "com.unity3d.ads.core.domain.AndroidHttpClientProvider", f = "AndroidHttpClientProvider.kt", l = {145, 58}, m = "invoke")
    public static final class C40271 extends ContinuationImpl {
        Object L$0;
        int label;
        /* synthetic */ Object result;

        public C40271(Continuation<? super C40271> continuation) {
            super(continuation);
        }

        @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
        public final Object invokeSuspend(Object obj) {
            this.result = obj;
            this.label |= Integer.MIN_VALUE;
            return AndroidHttpClientProvider.this.invoke(this);
        }
    }

    public AndroidHttpClientProvider(ISDKDispatchers dispatchers, SendDiagnosticEvent sendDiagnosticEvent, Context context, CronetEngineBuilderFactory cronetEngineBuilderFactory, MediationTraitsMetadataReader mediationTraitsMetadataReader, IsCronetFallbackAvailable isCronetFallbackAvailable) {
        Intrinsics.checkNotNullParameter(dispatchers, "dispatchers");
        Intrinsics.checkNotNullParameter(sendDiagnosticEvent, "sendDiagnosticEvent");
        Intrinsics.checkNotNullParameter(context, "context");
        Intrinsics.checkNotNullParameter(cronetEngineBuilderFactory, "cronetEngineBuilderFactory");
        Intrinsics.checkNotNullParameter(mediationTraitsMetadataReader, "mediationTraitsMetadataReader");
        Intrinsics.checkNotNullParameter(isCronetFallbackAvailable, "isCronetFallbackAvailable");
        this.dispatchers = dispatchers;
        this.sendDiagnosticEvent = sendDiagnosticEvent;
        this.context = context;
        this.cronetEngineBuilderFactory = cronetEngineBuilderFactory;
        this.mediationTraitsMetadataReader = mediationTraitsMetadataReader;
        this.isCronetFallbackAvailable = isCronetFallbackAvailable;
        this.mutex = MutexKt.Mutex$default(false, 1, null);
    }

    /* JADX WARN: Removed duplicated region for block: B:7:0x0013  */
    @Override // com.unity3d.ads.core.domain.HttpClientProvider
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct code enable 'Show inconsistent code' option in preferences
    */
    public java.lang.Object invoke(kotlin.coroutines.Continuation<? super com.unity3d.services.core.network.core.HttpClient> r8) throws java.lang.Throwable {
        /*
            r7 = this;
            boolean r0 = r8 instanceof com.unity3d.ads.core.domain.AndroidHttpClientProvider.C40271
            if (r0 == 0) goto L13
            r0 = r8
            com.unity3d.ads.core.domain.AndroidHttpClientProvider$invoke$1 r0 = (com.unity3d.ads.core.domain.AndroidHttpClientProvider.C40271) r0
            int r1 = r0.label
            r2 = -2147483648(0xffffffff80000000, float:-0.0)
            r3 = r1 & r2
            if (r3 == 0) goto L13
            int r1 = r1 - r2
            r0.label = r1
            goto L18
        L13:
            com.unity3d.ads.core.domain.AndroidHttpClientProvider$invoke$1 r0 = new com.unity3d.ads.core.domain.AndroidHttpClientProvider$invoke$1
            r0.<init>(r8)
        L18:
            java.lang.Object r8 = r0.result
            java.lang.Object r1 = kotlin.coroutines.intrinsics.IntrinsicsKt__IntrinsicsKt.getCOROUTINE_SUSPENDED()
            int r2 = r0.label
            r3 = 2
            r4 = 1
            r5 = 0
            if (r2 == 0) goto L44
            if (r2 == r4) goto L3b
            if (r2 != r3) goto L33
            java.lang.Object r0 = r0.L$0
            kotlinx.coroutines.sync.Mutex r0 = (kotlinx.coroutines.sync.Mutex) r0
            kotlin.ResultKt.throwOnFailure(r8)     // Catch: java.lang.Throwable -> L31
            goto L6a
        L31:
            r8 = move-exception
            goto L76
        L33:
            java.lang.IllegalStateException r8 = new java.lang.IllegalStateException
            java.lang.String r0 = "call to 'resume' before 'invoke' with coroutine"
            r8.<init>(r0)
            throw r8
        L3b:
            java.lang.Object r2 = r0.L$0
            kotlinx.coroutines.sync.Mutex r2 = (kotlinx.coroutines.sync.Mutex) r2
            kotlin.ResultKt.throwOnFailure(r8)
            r8 = r2
            goto L54
        L44:
            kotlin.ResultKt.throwOnFailure(r8)
            kotlinx.coroutines.sync.Mutex r8 = r7.mutex
            r0.L$0 = r8
            r0.label = r4
            java.lang.Object r2 = r8.lock(r5, r0)
            if (r2 != r1) goto L54
            goto L66
        L54:
            com.unity3d.services.core.network.core.HttpClient r2 = r7.cachedClient     // Catch: java.lang.Throwable -> L72
            if (r2 == 0) goto L5c
            r8.unlock(r5)
            return r2
        L5c:
            r0.L$0 = r8     // Catch: java.lang.Throwable -> L72
            r0.label = r3     // Catch: java.lang.Throwable -> L72
            java.lang.Object r0 = r7.createHttpClient(r0)     // Catch: java.lang.Throwable -> L72
            if (r0 != r1) goto L67
        L66:
            return r1
        L67:
            r6 = r0
            r0 = r8
            r8 = r6
        L6a:
            com.unity3d.services.core.network.core.HttpClient r8 = (com.unity3d.services.core.network.core.HttpClient) r8     // Catch: java.lang.Throwable -> L31
            r7.cachedClient = r8     // Catch: java.lang.Throwable -> L31
            r0.unlock(r5)
            return r8
        L72:
            r0 = move-exception
            r6 = r0
            r0 = r8
            r8 = r6
        L76:
            r0.unlock(r5)
            throw r8
        */
        throw new UnsupportedOperationException("Method not decompiled: com.unity3d.ads.core.domain.AndroidHttpClientProvider.invoke(kotlin.coroutines.Continuation):java.lang.Object");
    }

    /* JADX INFO: Access modifiers changed from: private */
    /* JADX WARN: Removed duplicated region for block: B:25:0x0076  */
    /* JADX WARN: Removed duplicated region for block: B:34:0x00b9  */
    /* JADX WARN: Removed duplicated region for block: B:37:0x00d2 A[RETURN] */
    /* JADX WARN: Removed duplicated region for block: B:38:0x00d3  */
    /* JADX WARN: Removed duplicated region for block: B:7:0x0017  */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct code enable 'Show inconsistent code' option in preferences
    */
    public final java.lang.Object createHttpClient(kotlin.coroutines.Continuation<? super com.unity3d.services.core.network.core.HttpClient> r18) {
        /*
            Method dump skipped, instruction units count: 281
            To view this dump change 'Code comments level' option to 'DEBUG'
        */
        throw new UnsupportedOperationException("Method not decompiled: com.unity3d.ads.core.domain.AndroidHttpClientProvider.createHttpClient(kotlin.coroutines.Continuation):java.lang.Object");
    }

    public final OkHttp3Client getOkHttp3Client() {
        return new OkHttp3Client(this.dispatchers, new OkHttpClient());
    }

    /* JADX INFO: Access modifiers changed from: private */
    public final Object buildNetworkClient(final Context context, final ISDKDispatchers iSDKDispatchers, final HttpClientSelection httpClientSelection, Continuation<? super HttpClient> continuation) {
        final CancellableContinuationImpl cancellableContinuationImpl = new CancellableContinuationImpl(IntrinsicsKt__IntrinsicsJvmKt.intercepted(continuation), 1);
        cancellableContinuationImpl.initCancellability();
        CronetProviderInstaller.installProvider(context).addOnCompleteListener(ExecutorsKt.asExecutor(iSDKDispatchers.getIo()), new OnCompleteListener() { // from class: com.unity3d.ads.core.domain.AndroidHttpClientProvider$buildNetworkClient$2$1
            @Override // com.google.android.gms.tasks.OnCompleteListener
            public final void onComplete(Task<Void> it) {
                String str;
                String message;
                Intrinsics.checkNotNullParameter(it, "it");
                str = "Errored without message.";
                if (it.isSuccessful()) {
                    try {
                        CronetEngine.Builder builderCreateCronetEngineBuilder = this.this$0.cronetEngineBuilderFactory.createCronetEngineBuilder(context);
                        if (httpClientSelection == HttpClientSelection.CRONET_WITH_QUIC) {
                            builderCreateCronetEngineBuilder.enableQuic(true);
                            builderCreateCronetEngineBuilder.addQuicHint(ServiceProvider.GATEWAY_HOST, 443, 443);
                            builderCreateCronetEngineBuilder.addQuicHint(ServiceProvider.CDN_CREATIVES_HOST, 443, 443);
                        }
                        CronetEngine cronetEngineBuild = builderCreateCronetEngineBuilder.build();
                        CancellableContinuation<HttpClient> cancellableContinuation = cancellableContinuationImpl;
                        Result.Companion companion = Result.Companion;
                        Intrinsics.checkNotNull(cronetEngineBuild);
                        cancellableContinuation.resumeWith(Result.m2760constructorimpl(new CronetClient(cronetEngineBuild, iSDKDispatchers)));
                        return;
                    } catch (Throwable th) {
                        SendDiagnosticEvent sendDiagnosticEvent = this.this$0.sendDiagnosticEvent;
                        String message2 = th.getMessage();
                        SendDiagnosticEvent.DefaultImpls.invoke$default(sendDiagnosticEvent, "native_cronet_engine_error", (Double) null, MapsKt__MapsJVMKt.mapOf(TuplesKt.to("reason", message2 != null ? message2 : "Errored without message.")), (Map) null, (AdObject) null, (Integer) null, (ByteString) null, Sdk.SDKError.Reason.INVALID_ADS_ENDPOINT_VALUE, (Object) null);
                        CancellableContinuation<HttpClient> cancellableContinuation2 = cancellableContinuationImpl;
                        Result.Companion companion2 = Result.Companion;
                        cancellableContinuation2.resumeWith(Result.m2760constructorimpl(this.this$0.getOkHttp3Client()));
                        return;
                    }
                }
                SendDiagnosticEvent sendDiagnosticEvent2 = this.this$0.sendDiagnosticEvent;
                Exception exception = it.getException();
                if (exception != null && (message = exception.getMessage()) != null) {
                    str = message;
                }
                SendDiagnosticEvent.DefaultImpls.invoke$default(sendDiagnosticEvent2, "native_cronet_install_error", (Double) null, MapsKt__MapsJVMKt.mapOf(TuplesKt.to("reason", str)), (Map) null, (AdObject) null, (Integer) null, (ByteString) null, Sdk.SDKError.Reason.INVALID_ADS_ENDPOINT_VALUE, (Object) null);
                CancellableContinuation<HttpClient> cancellableContinuation3 = cancellableContinuationImpl;
                Result.Companion companion3 = Result.Companion;
                cancellableContinuation3.resumeWith(Result.m2760constructorimpl(this.this$0.getOkHttp3Client()));
            }
        });
        Object result = cancellableContinuationImpl.getResult();
        if (result == IntrinsicsKt__IntrinsicsKt.getCOROUTINE_SUSPENDED()) {
            DebugProbesKt.probeCoroutineSuspended(continuation);
        }
        return result;
    }
}
