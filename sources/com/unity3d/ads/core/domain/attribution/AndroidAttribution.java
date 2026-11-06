package com.unity3d.ads.core.domain.attribution;

import android.adservices.AdServicesState;
import android.adservices.measurement.MeasurementManager;
import android.annotation.SuppressLint;
import android.content.Context;
import android.net.Uri;
import android.os.OutcomeReceiver;
import android.os.ext.SdkExtensions;
import android.view.InputEvent;
import androidx.core.os.OutcomeReceiverKt$$ExternalSyntheticApiModelOutline0;
import androidx.privacysandbox.ads.adservices.measurement.MeasurementManagerApi33Ext5Impl$$ExternalSyntheticApiModelOutline0;
import androidx.privacysandbox.ads.adservices.measurement.MeasurementManagerApi33Ext5Impl$$ExternalSyntheticApiModelOutline1;
import com.unity3d.ads.adplayer.AdPlayer;
import com.unity3d.ads.adplayer.WebViewContainer;
import com.unity3d.ads.core.data.model.AdObject;
import com.unity3d.ads.core.data.repository.SessionRepository;
import com.unity3d.ads.core.domain.HandleInvocationsFromAdViewer;
import com.unity3d.ads.core.extensions.ProtobufExtensionsKt;
import com.unity3d.services.core.device.Device;
import com.unity3d.services.core.domain.ISDKDispatchers;
import kotlin.Lazy;
import kotlin.LazyKt__LazyJVMKt;
import kotlin.Result;
import kotlin.coroutines.Continuation;
import kotlin.coroutines.SafeContinuation;
import kotlin.coroutines.intrinsics.IntrinsicsKt__IntrinsicsJvmKt;
import kotlin.coroutines.intrinsics.IntrinsicsKt__IntrinsicsKt;
import kotlin.coroutines.jvm.internal.Boxing;
import kotlin.coroutines.jvm.internal.DebugProbesKt;
import kotlin.jvm.functions.Function0;
import kotlin.jvm.internal.Intrinsics;
import kotlinx.coroutines.ExecutorsKt;
import kotlinx.coroutines.flow.StateFlow;

/* JADX INFO: compiled from: AndroidAttribution.kt */
/* JADX INFO: loaded from: classes4.dex */
@SuppressLint({"NewApi", "MissingPermission"})
public final class AndroidAttribution {
    private final ISDKDispatchers dispatchers;
    private final Lazy measurementManager$delegate;
    private final SessionRepository sessionRepository;

    public AndroidAttribution(final Context context, ISDKDispatchers dispatchers, SessionRepository sessionRepository) {
        Intrinsics.checkNotNullParameter(context, "context");
        Intrinsics.checkNotNullParameter(dispatchers, "dispatchers");
        Intrinsics.checkNotNullParameter(sessionRepository, "sessionRepository");
        this.dispatchers = dispatchers;
        this.sessionRepository = sessionRepository;
        this.measurementManager$delegate = LazyKt__LazyJVMKt.lazy(new Function0() { // from class: com.unity3d.ads.core.domain.attribution.AndroidAttribution$$ExternalSyntheticLambda1
            @Override // kotlin.jvm.functions.Function0
            public final Object invoke() {
                return this.f$0.getMeasurementManager(context);
            }
        });
    }

    private final MeasurementManager getMeasurementManager() {
        return MeasurementManagerApi33Ext5Impl$$ExternalSyntheticApiModelOutline1.m(this.measurementManager$delegate.getValue());
    }

    private final Uri getUri(String str, AdObject adObject) {
        Uri uri = Uri.parse(str);
        Intrinsics.checkNotNullExpressionValue(uri, "parse(this)");
        Uri uriBuild = uri.buildUpon().appendQueryParameter("sessionToken", ProtobufExtensionsKt.toBase64$default(this.sessionRepository.getSessionToken(), false, 1, null)).appendQueryParameter(HandleInvocationsFromAdViewer.KEY_TRACKING_TOKEN, ProtobufExtensionsKt.toBase64$default(adObject.getTrackingToken(), false, 1, null)).build();
        Intrinsics.checkNotNullExpressionValue(uriBuild, "build(...)");
        return uriBuild;
    }

    public final Object isAvailable(Continuation<? super Boolean> continuation) throws Throwable {
        if (Device.getApiLevel() < 33) {
            return Boxing.boxBoolean(false);
        }
        if (SdkExtensions.getExtensionVersion(1000000) < 4) {
            return Boxing.boxBoolean(false);
        }
        if (getMeasurementManager() == null) {
            return Boxing.boxBoolean(false);
        }
        if (!AdServicesState.isAdServicesStateEnabled()) {
            return Boxing.boxBoolean(false);
        }
        final SafeContinuation safeContinuation = new SafeContinuation(IntrinsicsKt__IntrinsicsJvmKt.intercepted(continuation));
        MeasurementManager measurementManager = getMeasurementManager();
        if (measurementManager != null) {
            measurementManager.getMeasurementApiStatus(ExecutorsKt.asExecutor(this.dispatchers.getDefault()), OutcomeReceiverKt$$ExternalSyntheticApiModelOutline0.m(new OutcomeReceiver() { // from class: com.unity3d.ads.core.domain.attribution.AndroidAttribution$isAvailable$2$1
                public /* bridge */ /* synthetic */ void onResult(Object obj) {
                    onResult(((Number) obj).intValue());
                }

                public void onResult(int i) {
                    Continuation<Boolean> continuation2 = safeContinuation;
                    Result.Companion companion = Result.Companion;
                    continuation2.resumeWith(Result.m2760constructorimpl(Boolean.valueOf(i == 1)));
                }

                public void onError(Exception error) {
                    Intrinsics.checkNotNullParameter(error, "error");
                    Continuation<Boolean> continuation2 = safeContinuation;
                    Result.Companion companion = Result.Companion;
                    continuation2.resumeWith(Result.m2760constructorimpl(Boolean.FALSE));
                }
            }));
        } else {
            Result.Companion companion = Result.Companion;
            safeContinuation.resumeWith(Result.m2760constructorimpl(Boxing.boxBoolean(false)));
        }
        Object orThrow = safeContinuation.getOrThrow();
        if (orThrow == IntrinsicsKt__IntrinsicsKt.getCOROUTINE_SUSPENDED()) {
            DebugProbesKt.probeCoroutineSuspended(continuation);
        }
        return orThrow;
    }

    public final Object registerView(String str, AdObject adObject, Continuation<? super Boolean> continuation) throws Throwable {
        if (getMeasurementManager() == null) {
            return Boxing.boxBoolean(false);
        }
        final SafeContinuation safeContinuation = new SafeContinuation(IntrinsicsKt__IntrinsicsJvmKt.intercepted(continuation));
        MeasurementManager measurementManager = getMeasurementManager();
        if (measurementManager != null) {
            measurementManager.registerSource(getUri(str, adObject), null, ExecutorsKt.asExecutor(this.dispatchers.getDefault()), OutcomeReceiverKt$$ExternalSyntheticApiModelOutline0.m(new OutcomeReceiver() { // from class: com.unity3d.ads.core.domain.attribution.AndroidAttribution$registerView$2$1
                public void onResult(Object p0) {
                    Intrinsics.checkNotNullParameter(p0, "p0");
                    Continuation<Boolean> continuation2 = safeContinuation;
                    Result.Companion companion = Result.Companion;
                    continuation2.resumeWith(Result.m2760constructorimpl(Boolean.TRUE));
                }

                public void onError(Exception error) {
                    Intrinsics.checkNotNullParameter(error, "error");
                    Continuation<Boolean> continuation2 = safeContinuation;
                    Result.Companion companion = Result.Companion;
                    continuation2.resumeWith(Result.m2760constructorimpl(Boolean.FALSE));
                }
            }));
        } else {
            Result.Companion companion = Result.Companion;
            safeContinuation.resumeWith(Result.m2760constructorimpl(Boxing.boxBoolean(false)));
        }
        Object orThrow = safeContinuation.getOrThrow();
        if (orThrow == IntrinsicsKt__IntrinsicsKt.getCOROUTINE_SUSPENDED()) {
            DebugProbesKt.probeCoroutineSuspended(continuation);
        }
        return orThrow;
    }

    public final Object registerClick(String str, AdObject adObject, Continuation<? super Boolean> continuation) throws Throwable {
        WebViewContainer webViewContainer;
        StateFlow<InputEvent> lastInputEvent;
        InputEvent value;
        if (getMeasurementManager() == null) {
            return Boxing.boxBoolean(false);
        }
        AdPlayer adPlayer = adObject.getAdPlayer();
        if (adPlayer == null || (webViewContainer = adPlayer.getWebViewContainer()) == null || (lastInputEvent = webViewContainer.getLastInputEvent()) == null || (value = lastInputEvent.getValue()) == null) {
            return Boxing.boxBoolean(false);
        }
        final SafeContinuation safeContinuation = new SafeContinuation(IntrinsicsKt__IntrinsicsJvmKt.intercepted(continuation));
        MeasurementManager measurementManager = getMeasurementManager();
        if (measurementManager != null) {
            measurementManager.registerSource(getUri(str, adObject), value, ExecutorsKt.asExecutor(this.dispatchers.getDefault()), OutcomeReceiverKt$$ExternalSyntheticApiModelOutline0.m(new OutcomeReceiver() { // from class: com.unity3d.ads.core.domain.attribution.AndroidAttribution$registerClick$2$1
                public void onResult(Object p0) {
                    Intrinsics.checkNotNullParameter(p0, "p0");
                    Continuation<Boolean> continuation2 = safeContinuation;
                    Result.Companion companion = Result.Companion;
                    continuation2.resumeWith(Result.m2760constructorimpl(Boolean.TRUE));
                }

                public void onError(Exception error) {
                    Intrinsics.checkNotNullParameter(error, "error");
                    Continuation<Boolean> continuation2 = safeContinuation;
                    Result.Companion companion = Result.Companion;
                    continuation2.resumeWith(Result.m2760constructorimpl(Boolean.FALSE));
                }
            }));
        } else {
            Result.Companion companion = Result.Companion;
            safeContinuation.resumeWith(Result.m2760constructorimpl(Boxing.boxBoolean(false)));
        }
        Object orThrow = safeContinuation.getOrThrow();
        if (orThrow == IntrinsicsKt__IntrinsicsKt.getCOROUTINE_SUSPENDED()) {
            DebugProbesKt.probeCoroutineSuspended(continuation);
        }
        return orThrow;
    }

    /* JADX INFO: Access modifiers changed from: private */
    public final MeasurementManager getMeasurementManager(Context context) {
        if (Device.getApiLevel() >= 33 && SdkExtensions.getExtensionVersion(1000000) >= 4) {
            return MeasurementManagerApi33Ext5Impl$$ExternalSyntheticApiModelOutline1.m(context.getSystemService(MeasurementManagerApi33Ext5Impl$$ExternalSyntheticApiModelOutline0.m()));
        }
        return null;
    }
}
