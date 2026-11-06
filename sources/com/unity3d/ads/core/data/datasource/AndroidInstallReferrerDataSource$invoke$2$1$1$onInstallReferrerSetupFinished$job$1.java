package com.unity3d.ads.core.data.datasource;

import android.os.RemoteException;
import com.android.installreferrer.api.InstallReferrerClient;
import com.android.installreferrer.api.ReferrerDetails;
import com.google.protobuf.ByteString;
import com.unity3d.ads.core.data.model.AdObject;
import com.unity3d.ads.core.domain.SendDiagnosticEvent;
import com.vungle.ads.internal.protos.Sdk;
import gatewayprotocol.v1.InitializationRequestOuterClass;
import gatewayprotocol.v1.InstallReferrerKt;
import java.util.Map;
import java.util.concurrent.CancellationException;
import kotlin.Result;
import kotlin.ResultKt;
import kotlin.Unit;
import kotlin.coroutines.Continuation;
import kotlin.coroutines.intrinsics.IntrinsicsKt__IntrinsicsKt;
import kotlin.coroutines.jvm.internal.DebugMetadata;
import kotlin.coroutines.jvm.internal.SuspendLambda;
import kotlin.jvm.functions.Function2;
import kotlin.jvm.internal.Intrinsics;
import kotlinx.coroutines.CancellableContinuation;
import kotlinx.coroutines.CoroutineScope;

/* JADX INFO: compiled from: AndroidInstallReferrerDataSource.kt */
/* JADX INFO: loaded from: classes4.dex */
@DebugMetadata(c = "com.unity3d.ads.core.data.datasource.AndroidInstallReferrerDataSource$invoke$2$1$1$onInstallReferrerSetupFinished$job$1", f = "AndroidInstallReferrerDataSource.kt", l = {}, m = "invokeSuspend")
public final class AndroidInstallReferrerDataSource$invoke$2$1$1$onInstallReferrerSetupFinished$job$1 extends SuspendLambda implements Function2<CoroutineScope, Continuation<? super Unit>, Object> {
    final /* synthetic */ CancellableContinuation<InitializationRequestOuterClass.InstallReferrer> $continuation;
    final /* synthetic */ InstallReferrerClient $referrerClient;
    private /* synthetic */ Object L$0;
    int label;
    final /* synthetic */ AndroidInstallReferrerDataSource this$0;

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    /* JADX WARN: Multi-variable type inference failed */
    public AndroidInstallReferrerDataSource$invoke$2$1$1$onInstallReferrerSetupFinished$job$1(InstallReferrerClient installReferrerClient, AndroidInstallReferrerDataSource androidInstallReferrerDataSource, CancellableContinuation<? super InitializationRequestOuterClass.InstallReferrer> cancellableContinuation, Continuation<? super AndroidInstallReferrerDataSource$invoke$2$1$1$onInstallReferrerSetupFinished$job$1> continuation) {
        super(2, continuation);
        this.$referrerClient = installReferrerClient;
        this.this$0 = androidInstallReferrerDataSource;
        this.$continuation = cancellableContinuation;
    }

    @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
    public final Continuation<Unit> create(Object obj, Continuation<?> continuation) {
        AndroidInstallReferrerDataSource$invoke$2$1$1$onInstallReferrerSetupFinished$job$1 androidInstallReferrerDataSource$invoke$2$1$1$onInstallReferrerSetupFinished$job$1 = new AndroidInstallReferrerDataSource$invoke$2$1$1$onInstallReferrerSetupFinished$job$1(this.$referrerClient, this.this$0, this.$continuation, continuation);
        androidInstallReferrerDataSource$invoke$2$1$1$onInstallReferrerSetupFinished$job$1.L$0 = obj;
        return androidInstallReferrerDataSource$invoke$2$1$1$onInstallReferrerSetupFinished$job$1;
    }

    @Override // kotlin.jvm.functions.Function2
    public final Object invoke(CoroutineScope coroutineScope, Continuation<? super Unit> continuation) {
        return ((AndroidInstallReferrerDataSource$invoke$2$1$1$onInstallReferrerSetupFinished$job$1) create(coroutineScope, continuation)).invokeSuspend(Unit.INSTANCE);
    }

    @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
    public final Object invokeSuspend(Object obj) {
        Object objM2760constructorimpl;
        IntrinsicsKt__IntrinsicsKt.getCOROUTINE_SUSPENDED();
        if (this.label != 0) {
            throw new IllegalStateException("call to 'resume' before 'invoke' with coroutine");
        }
        ResultKt.throwOnFailure(obj);
        try {
            try {
                try {
                    try {
                        ReferrerDetails installReferrer = this.$referrerClient.getInstallReferrer();
                        CancellableContinuation<InitializationRequestOuterClass.InstallReferrer> cancellableContinuation = this.$continuation;
                        try {
                            Result.Companion companion = Result.Companion;
                            InstallReferrerKt.Dsl.Companion companion2 = InstallReferrerKt.Dsl.Companion;
                            InitializationRequestOuterClass.InstallReferrer.Builder builderNewBuilder = InitializationRequestOuterClass.InstallReferrer.newBuilder();
                            Intrinsics.checkNotNullExpressionValue(builderNewBuilder, "newBuilder(...)");
                            InstallReferrerKt.Dsl dsl_create = companion2._create(builderNewBuilder);
                            String installReferrer2 = installReferrer.getInstallReferrer();
                            if (installReferrer2 != null) {
                                dsl_create.setUrl(installReferrer2);
                            }
                            dsl_create.setClickTime(installReferrer.getReferrerClickTimestampSeconds());
                            dsl_create.setInstallTime(installReferrer.getInstallBeginTimestampServerSeconds());
                            dsl_create.setInstantExperienceLunch(installReferrer.getGooglePlayInstantParam());
                            cancellableContinuation.resumeWith(Result.m2760constructorimpl(dsl_create._build()));
                            objM2760constructorimpl = Result.m2760constructorimpl(Unit.INSTANCE);
                        } catch (Throwable th) {
                            Result.Companion companion3 = Result.Companion;
                            objM2760constructorimpl = Result.m2760constructorimpl(ResultKt.createFailure(th));
                        }
                        if (Result.m2766isSuccessimpl(objM2760constructorimpl)) {
                            SendDiagnosticEvent.DefaultImpls.invoke$default(this.this$0.sendDiagnosticEvent, "install_referral_fetch_completed", (Double) null, (Map) null, (Map) null, (AdObject) null, (Integer) null, (ByteString) null, Sdk.SDKError.Reason.ASSET_FAILED_INSUFFICIENT_SPACE_VALUE, (Object) null);
                        }
                    } finally {
                    }
                } catch (CancellationException e) {
                    throw e;
                }
            } catch (Throwable unused) {
                this.this$0.onError(this.$continuation);
            }
        } catch (RemoteException unused2) {
            this.this$0.onError(this.$continuation);
        }
        try {
            this.$referrerClient.endConnection();
        } catch (Throwable unused3) {
        }
        return Unit.INSTANCE;
    }
}
