package com.unity3d.ads.core.domain;

import android.util.Base64;
import com.unity3d.ads.core.data.repository.SessionRepository;
import com.unity3d.ads.core.log.Logger;
import com.unity3d.services.core.network.core.HttpClient;
import com.unity3d.services.core.network.model.HttpRequest;
import com.unity3d.services.core.network.model.RequestType;
import kotlin.ResultKt;
import kotlin.TuplesKt;
import kotlin.Unit;
import kotlin.collections.CollectionsKt__CollectionsJVMKt;
import kotlin.collections.MapsKt__MapsKt;
import kotlin.coroutines.Continuation;
import kotlin.coroutines.intrinsics.IntrinsicsKt__IntrinsicsKt;
import kotlin.coroutines.jvm.internal.DebugMetadata;
import kotlin.coroutines.jvm.internal.SuspendLambda;
import kotlin.jvm.functions.Function2;
import kotlin.jvm.internal.DefaultConstructorMarker;
import kotlin.jvm.internal.Intrinsics;
import kotlinx.coroutines.BuildersKt;
import kotlinx.coroutines.CoroutineDispatcher;
import kotlinx.coroutines.CoroutineScope;

/* JADX INFO: compiled from: AndroidScreenshotUploader.kt */
/* JADX INFO: loaded from: classes4.dex */
public final class AndroidScreenshotUploader {
    public static final String CONTENT_TYPE_HEADER = "Content-Type";
    public static final Companion Companion = new Companion(null);
    public static final String SCREENSHOT_PATH = "adviewer/screenshots";
    public static final String SESSION_TOKEN_HEADER = "uads_session_token";
    private static final int UPLOAD_TIMEOUT_MS = 10000;
    private final HttpClientProvider httpClientProvider;
    private final CoroutineDispatcher ioDispatcher;
    private final Logger logger;
    private final SessionRepository sessionRepository;

    public AndroidScreenshotUploader(CoroutineDispatcher ioDispatcher, HttpClientProvider httpClientProvider, SessionRepository sessionRepository, Logger logger) {
        Intrinsics.checkNotNullParameter(ioDispatcher, "ioDispatcher");
        Intrinsics.checkNotNullParameter(httpClientProvider, "httpClientProvider");
        Intrinsics.checkNotNullParameter(sessionRepository, "sessionRepository");
        Intrinsics.checkNotNullParameter(logger, "logger");
        this.ioDispatcher = ioDispatcher;
        this.httpClientProvider = httpClientProvider;
        this.sessionRepository = sessionRepository;
        this.logger = logger;
    }

    /* JADX INFO: renamed from: com.unity3d.ads.core.domain.AndroidScreenshotUploader$invoke$2, reason: invalid class name */
    /* JADX INFO: compiled from: AndroidScreenshotUploader.kt */
    @DebugMetadata(c = "com.unity3d.ads.core.domain.AndroidScreenshotUploader$invoke$2", f = "AndroidScreenshotUploader.kt", l = {50, 50}, m = "invokeSuspend")
    public static final class AnonymousClass2 extends SuspendLambda implements Function2<CoroutineScope, Continuation<? super Object>, Object> {
        final /* synthetic */ byte[] $bytes;
        final /* synthetic */ String $contentType;
        final /* synthetic */ String $id;
        Object L$0;
        int label;

        /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
        public AnonymousClass2(String str, byte[] bArr, String str2, Continuation<? super AnonymousClass2> continuation) {
            super(2, continuation);
            this.$id = str;
            this.$bytes = bArr;
            this.$contentType = str2;
        }

        @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
        public final Continuation<Unit> create(Object obj, Continuation<?> continuation) {
            return AndroidScreenshotUploader.this.new AnonymousClass2(this.$id, this.$bytes, this.$contentType, continuation);
        }

        @Override // kotlin.jvm.functions.Function2
        public /* bridge */ /* synthetic */ Object invoke(CoroutineScope coroutineScope, Continuation<? super Object> continuation) {
            return invoke2(coroutineScope, (Continuation<Object>) continuation);
        }

        /* JADX INFO: renamed from: invoke, reason: avoid collision after fix types in other method */
        public final Object invoke2(CoroutineScope coroutineScope, Continuation<Object> continuation) {
            return ((AnonymousClass2) create(coroutineScope, continuation)).invokeSuspend(Unit.INSTANCE);
        }

        @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
        public final Object invokeSuspend(Object obj) {
            Object objInvoke;
            HttpRequest httpRequest;
            Object coroutine_suspended = IntrinsicsKt__IntrinsicsKt.getCOROUTINE_SUSPENDED();
            int i = this.label;
            try {
                if (i == 0) {
                    ResultKt.throwOnFailure(obj);
                    String strEncodeToString = Base64.encodeToString(AndroidScreenshotUploader.this.sessionRepository.getSessionToken().toByteArray(), 2);
                    HttpRequest httpRequest2 = new HttpRequest(AndroidScreenshotUploader.this.sessionRepository.getGatewayUrl(), "adviewer/screenshots/" + this.$id, RequestType.POST, this.$bytes, MapsKt__MapsKt.mapOf(TuplesKt.to("Content-Type", CollectionsKt__CollectionsJVMKt.listOf(this.$contentType)), TuplesKt.to("uads_session_token", CollectionsKt__CollectionsJVMKt.listOf(strEncodeToString))), null, null, this.$contentType, null, null, 10000, 10000, 10000, 0, false, null, null, 0, 254816, null);
                    HttpClientProvider httpClientProvider = AndroidScreenshotUploader.this.httpClientProvider;
                    this.L$0 = httpRequest2;
                    this.label = 1;
                    objInvoke = httpClientProvider.invoke(this);
                    if (objInvoke != coroutine_suspended) {
                        httpRequest = httpRequest2;
                    }
                } else {
                    if (i != 1) {
                        if (i != 2) {
                            throw new IllegalStateException("call to 'resume' before 'invoke' with coroutine");
                        }
                        ResultKt.throwOnFailure(obj);
                        return obj;
                    }
                    HttpRequest httpRequest3 = (HttpRequest) this.L$0;
                    ResultKt.throwOnFailure(obj);
                    httpRequest = httpRequest3;
                    objInvoke = obj;
                }
                this.L$0 = null;
                this.label = 2;
                Object objExecute$default = HttpClient.DefaultImpls.execute$default((HttpClient) objInvoke, httpRequest, false, this, 2, null);
                return objExecute$default == coroutine_suspended ? coroutine_suspended : objExecute$default;
            } catch (Exception e) {
                AndroidScreenshotUploader.this.logger.error("Screenshot upload failed for " + this.$id, e);
                return Unit.INSTANCE;
            }
        }
    }

    public final Object invoke(String str, byte[] bArr, String str2, Continuation<? super Unit> continuation) {
        Object objWithContext = BuildersKt.withContext(this.ioDispatcher, new AnonymousClass2(str, bArr, str2, null), continuation);
        return objWithContext == IntrinsicsKt__IntrinsicsKt.getCOROUTINE_SUSPENDED() ? objWithContext : Unit.INSTANCE;
    }

    /* JADX INFO: compiled from: AndroidScreenshotUploader.kt */
    public static final class Companion {
        public /* synthetic */ Companion(DefaultConstructorMarker defaultConstructorMarker) {
            this();
        }

        private Companion() {
        }
    }
}
