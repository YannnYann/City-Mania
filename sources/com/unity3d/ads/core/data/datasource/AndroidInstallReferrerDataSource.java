package com.unity3d.ads.core.data.datasource;

import android.content.Context;
import com.android.installreferrer.api.InstallReferrerClient;
import com.android.installreferrer.api.InstallReferrerStateListener;
import com.google.protobuf.ByteString;
import com.unity3d.ads.core.data.model.AdObject;
import com.unity3d.ads.core.domain.SendDiagnosticEvent;
import com.vungle.ads.internal.protos.Sdk;
import gatewayprotocol.v1.InitializationRequestOuterClass;
import java.util.Map;
import kotlin.Result;
import kotlin.ResultKt;
import kotlin.Unit;
import kotlin.coroutines.Continuation;
import kotlin.coroutines.intrinsics.IntrinsicsKt__IntrinsicsJvmKt;
import kotlin.coroutines.intrinsics.IntrinsicsKt__IntrinsicsKt;
import kotlin.coroutines.jvm.internal.ContinuationImpl;
import kotlin.coroutines.jvm.internal.DebugMetadata;
import kotlin.coroutines.jvm.internal.DebugProbesKt;
import kotlin.coroutines.jvm.internal.SuspendLambda;
import kotlin.jvm.functions.Function2;
import kotlin.jvm.internal.DefaultConstructorMarker;
import kotlin.jvm.internal.Intrinsics;
import kotlinx.coroutines.BuildersKt__Builders_commonKt;
import kotlinx.coroutines.CancellableContinuation;
import kotlinx.coroutines.CancellableContinuationImpl;
import kotlinx.coroutines.CoroutineScope;

/* JADX INFO: compiled from: AndroidInstallReferrerDataSource.kt */
/* JADX INFO: loaded from: classes4.dex */
public final class AndroidInstallReferrerDataSource implements InstallReferrerDataSource {
    public static final Companion Companion = new Companion(null);
    private static final long TIME_OUT_MS = 500;
    private final Context appContext;
    private final CoroutineScope scope;
    private final SendDiagnosticEvent sendDiagnosticEvent;

    /* JADX INFO: renamed from: com.unity3d.ads.core.data.datasource.AndroidInstallReferrerDataSource$invoke$1, reason: invalid class name */
    /* JADX INFO: compiled from: AndroidInstallReferrerDataSource.kt */
    @DebugMetadata(c = "com.unity3d.ads.core.data.datasource.AndroidInstallReferrerDataSource", f = "AndroidInstallReferrerDataSource.kt", l = {35}, m = "invoke")
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
            return AndroidInstallReferrerDataSource.this.invoke(this);
        }
    }

    public AndroidInstallReferrerDataSource(Context appContext, SendDiagnosticEvent sendDiagnosticEvent, CoroutineScope scope) {
        Intrinsics.checkNotNullParameter(appContext, "appContext");
        Intrinsics.checkNotNullParameter(sendDiagnosticEvent, "sendDiagnosticEvent");
        Intrinsics.checkNotNullParameter(scope, "scope");
        this.appContext = appContext;
        this.sendDiagnosticEvent = sendDiagnosticEvent;
        this.scope = scope;
    }

    /* JADX INFO: compiled from: AndroidInstallReferrerDataSource.kt */
    public static final class Companion {
        public /* synthetic */ Companion(DefaultConstructorMarker defaultConstructorMarker) {
            this();
        }

        private Companion() {
        }
    }

    /* JADX INFO: renamed from: com.unity3d.ads.core.data.datasource.AndroidInstallReferrerDataSource$invoke$2, reason: invalid class name */
    /* JADX INFO: compiled from: AndroidInstallReferrerDataSource.kt */
    @DebugMetadata(c = "com.unity3d.ads.core.data.datasource.AndroidInstallReferrerDataSource$invoke$2", f = "AndroidInstallReferrerDataSource.kt", l = {111}, m = "invokeSuspend")
    public static final class AnonymousClass2 extends SuspendLambda implements Function2<CoroutineScope, Continuation<? super InitializationRequestOuterClass.InstallReferrer>, Object> {
        Object L$0;
        int label;

        public AnonymousClass2(Continuation<? super AnonymousClass2> continuation) {
            super(2, continuation);
        }

        @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
        public final Continuation<Unit> create(Object obj, Continuation<?> continuation) {
            return AndroidInstallReferrerDataSource.this.new AnonymousClass2(continuation);
        }

        @Override // kotlin.jvm.functions.Function2
        public final Object invoke(CoroutineScope coroutineScope, Continuation<? super InitializationRequestOuterClass.InstallReferrer> continuation) {
            return ((AnonymousClass2) create(coroutineScope, continuation)).invokeSuspend(Unit.INSTANCE);
        }

        @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
        public final Object invokeSuspend(Object obj) {
            Object coroutine_suspended = IntrinsicsKt__IntrinsicsKt.getCOROUTINE_SUSPENDED();
            int i = this.label;
            if (i != 0) {
                if (i != 1) {
                    throw new IllegalStateException("call to 'resume' before 'invoke' with coroutine");
                }
                ResultKt.throwOnFailure(obj);
                return obj;
            }
            ResultKt.throwOnFailure(obj);
            final AndroidInstallReferrerDataSource androidInstallReferrerDataSource = AndroidInstallReferrerDataSource.this;
            this.L$0 = androidInstallReferrerDataSource;
            this.label = 1;
            final CancellableContinuationImpl cancellableContinuationImpl = new CancellableContinuationImpl(IntrinsicsKt__IntrinsicsJvmKt.intercepted(this), 1);
            cancellableContinuationImpl.initCancellability();
            try {
                final InstallReferrerClient installReferrerClientBuild = InstallReferrerClient.newBuilder(androidInstallReferrerDataSource.appContext).build();
                installReferrerClientBuild.startConnection(new InstallReferrerStateListener() { // from class: com.unity3d.ads.core.data.datasource.AndroidInstallReferrerDataSource$invoke$2$1$1
                    public void onInstallReferrerSetupFinished(int i2) {
                        if (i2 == 0) {
                            if (BuildersKt__Builders_commonKt.launch$default(androidInstallReferrerDataSource.scope, null, null, new AndroidInstallReferrerDataSource$invoke$2$1$1$onInstallReferrerSetupFinished$job$1(installReferrerClientBuild, androidInstallReferrerDataSource, cancellableContinuationImpl, null), 3, null).isActive()) {
                                return;
                            }
                            try {
                                installReferrerClientBuild.endConnection();
                            } catch (Throwable unused) {
                            }
                            androidInstallReferrerDataSource.onError(cancellableContinuationImpl);
                            return;
                        }
                        try {
                            installReferrerClientBuild.endConnection();
                        } catch (Throwable unused2) {
                        }
                        androidInstallReferrerDataSource.onError(cancellableContinuationImpl);
                    }

                    public void onInstallReferrerServiceDisconnected() {
                        androidInstallReferrerDataSource.onError(cancellableContinuationImpl);
                    }
                });
            } catch (Throwable unused) {
                androidInstallReferrerDataSource.onError(cancellableContinuationImpl);
            }
            Object result = cancellableContinuationImpl.getResult();
            if (result == IntrinsicsKt__IntrinsicsKt.getCOROUTINE_SUSPENDED()) {
                DebugProbesKt.probeCoroutineSuspended(this);
            }
            return result == coroutine_suspended ? coroutine_suspended : result;
        }
    }

    /* JADX WARN: Removed duplicated region for block: B:7:0x0013  */
    @Override // com.unity3d.ads.core.data.datasource.InstallReferrerDataSource
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct code enable 'Show inconsistent code' option in preferences
    */
    public java.lang.Object invoke(kotlin.coroutines.Continuation<? super gatewayprotocol.v1.InitializationRequestOuterClass.InstallReferrer> r15) {
        /*
            r14 = this;
            boolean r0 = r15 instanceof com.unity3d.ads.core.data.datasource.AndroidInstallReferrerDataSource.AnonymousClass1
            if (r0 == 0) goto L13
            r0 = r15
            com.unity3d.ads.core.data.datasource.AndroidInstallReferrerDataSource$invoke$1 r0 = (com.unity3d.ads.core.data.datasource.AndroidInstallReferrerDataSource.AnonymousClass1) r0
            int r1 = r0.label
            r2 = -2147483648(0xffffffff80000000, float:-0.0)
            r3 = r1 & r2
            if (r3 == 0) goto L13
            int r1 = r1 - r2
            r0.label = r1
            goto L18
        L13:
            com.unity3d.ads.core.data.datasource.AndroidInstallReferrerDataSource$invoke$1 r0 = new com.unity3d.ads.core.data.datasource.AndroidInstallReferrerDataSource$invoke$1
            r0.<init>(r15)
        L18:
            java.lang.Object r15 = r0.result
            java.lang.Object r1 = kotlin.coroutines.intrinsics.IntrinsicsKt__IntrinsicsKt.getCOROUTINE_SUSPENDED()
            int r2 = r0.label
            r3 = 0
            r4 = 1
            if (r2 == 0) goto L32
            if (r2 != r4) goto L2a
            kotlin.ResultKt.throwOnFailure(r15)     // Catch: kotlinx.coroutines.TimeoutCancellationException -> L50
            goto L4d
        L2a:
            java.lang.IllegalStateException r15 = new java.lang.IllegalStateException
            java.lang.String r0 = "call to 'resume' before 'invoke' with coroutine"
            r15.<init>(r0)
            throw r15
        L32:
            kotlin.ResultKt.throwOnFailure(r15)
            kotlin.time.Duration$Companion r15 = kotlin.time.Duration.Companion     // Catch: kotlinx.coroutines.TimeoutCancellationException -> L50
            kotlin.time.DurationUnit r15 = kotlin.time.DurationUnit.MILLISECONDS     // Catch: kotlinx.coroutines.TimeoutCancellationException -> L50
            r5 = 500(0x1f4, double:2.47E-321)
            long r5 = kotlin.time.DurationKt.toDuration(r5, r15)     // Catch: kotlinx.coroutines.TimeoutCancellationException -> L50
            com.unity3d.ads.core.data.datasource.AndroidInstallReferrerDataSource$invoke$2 r15 = new com.unity3d.ads.core.data.datasource.AndroidInstallReferrerDataSource$invoke$2     // Catch: kotlinx.coroutines.TimeoutCancellationException -> L50
            r15.<init>(r3)     // Catch: kotlinx.coroutines.TimeoutCancellationException -> L50
            r0.label = r4     // Catch: kotlinx.coroutines.TimeoutCancellationException -> L50
            java.lang.Object r15 = kotlinx.coroutines.TimeoutKt.m2940withTimeoutKLykuaI(r5, r15, r0)     // Catch: kotlinx.coroutines.TimeoutCancellationException -> L50
            if (r15 != r1) goto L4d
            return r1
        L4d:
            gatewayprotocol.v1.InitializationRequestOuterClass$InstallReferrer r15 = (gatewayprotocol.v1.InitializationRequestOuterClass.InstallReferrer) r15     // Catch: kotlinx.coroutines.TimeoutCancellationException -> L50
            return r15
        L50:
            com.unity3d.ads.core.domain.SendDiagnosticEvent r4 = r14.sendDiagnosticEvent
            r12 = 126(0x7e, float:1.77E-43)
            r13 = 0
            java.lang.String r5 = "install_referral_fetch_timed_out"
            r6 = 0
            r7 = 0
            r8 = 0
            r9 = 0
            r10 = 0
            r11 = 0
            com.unity3d.ads.core.domain.SendDiagnosticEvent.DefaultImpls.invoke$default(r4, r5, r6, r7, r8, r9, r10, r11, r12, r13)
            return r3
        */
        throw new UnsupportedOperationException("Method not decompiled: com.unity3d.ads.core.data.datasource.AndroidInstallReferrerDataSource.invoke(kotlin.coroutines.Continuation):java.lang.Object");
    }

    /* JADX INFO: Access modifiers changed from: private */
    public final void onError(CancellableContinuation<? super InitializationRequestOuterClass.InstallReferrer> cancellableContinuation) {
        Object objM2760constructorimpl;
        try {
            cancellableContinuation.resumeWith(Result.m2760constructorimpl(null));
            objM2760constructorimpl = Result.m2760constructorimpl(Unit.INSTANCE);
        } catch (Throwable th) {
            Result.Companion companion = Result.Companion;
            objM2760constructorimpl = Result.m2760constructorimpl(ResultKt.createFailure(th));
        }
        if (Result.m2766isSuccessimpl(objM2760constructorimpl)) {
            SendDiagnosticEvent.DefaultImpls.invoke$default(this.sendDiagnosticEvent, "install_referral_fetch_failed", (Double) null, (Map) null, (Map) null, (AdObject) null, (Integer) null, (ByteString) null, Sdk.SDKError.Reason.ASSET_FAILED_INSUFFICIENT_SPACE_VALUE, (Object) null);
        }
    }
}
