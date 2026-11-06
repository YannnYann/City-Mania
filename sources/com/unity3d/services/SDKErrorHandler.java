package com.unity3d.services;

import com.google.protobuf.ByteString;
import com.unity3d.ads.core.data.model.AdObject;
import com.unity3d.ads.core.data.model.CoroutineOpportunity;
import com.unity3d.ads.core.domain.SendDiagnosticEvent;
import com.unity3d.ads.core.extensions.ExceptionExtensionsKt;
import com.unity3d.ads.core.extensions.ProtobufExtensionsKt;
import com.unity3d.services.core.log.DeviceLog;
import com.vungle.ads.internal.protos.Sdk;
import java.util.Map;
import kotlin.ResultKt;
import kotlin.Unit;
import kotlin.collections.MapsKt__MapsJVMKt;
import kotlin.coroutines.Continuation;
import kotlin.coroutines.CoroutineContext;
import kotlin.coroutines.intrinsics.IntrinsicsKt__IntrinsicsKt;
import kotlin.coroutines.jvm.internal.DebugMetadata;
import kotlin.coroutines.jvm.internal.SuspendLambda;
import kotlin.jvm.functions.Function2;
import kotlin.jvm.internal.DefaultConstructorMarker;
import kotlin.jvm.internal.Intrinsics;
import kotlinx.coroutines.BuildersKt__Builders_commonKt;
import kotlinx.coroutines.CoroutineDispatcher;
import kotlinx.coroutines.CoroutineExceptionHandler;
import kotlinx.coroutines.CoroutineName;
import kotlinx.coroutines.CoroutineScope;
import kotlinx.coroutines.CoroutineScopeKt;

/* JADX INFO: compiled from: SDKErrorHandler.kt */
/* JADX INFO: loaded from: classes4.dex */
public final class SDKErrorHandler implements CoroutineExceptionHandler {
    public static final Companion Companion = new Companion(null);
    public static final String UNITY_PACKAGE = "com.unity3d";
    public static final String UNKNOWN_FILE = "unknown";
    private final CoroutineExceptionHandler.Key key;
    private final CoroutineScope scope;
    private final SendDiagnosticEvent sendDiagnosticEvent;

    public SDKErrorHandler(CoroutineDispatcher defaultDispatcher, SendDiagnosticEvent sendDiagnosticEvent) {
        Intrinsics.checkNotNullParameter(defaultDispatcher, "defaultDispatcher");
        Intrinsics.checkNotNullParameter(sendDiagnosticEvent, "sendDiagnosticEvent");
        this.sendDiagnosticEvent = sendDiagnosticEvent;
        CoroutineScope coroutineScopePlus = CoroutineScopeKt.plus(CoroutineScopeKt.CoroutineScope(defaultDispatcher), new CoroutineName("SDKErrorHandler"));
        CoroutineExceptionHandler.Key key = CoroutineExceptionHandler.Key;
        this.scope = CoroutineScopeKt.plus(coroutineScopePlus, new SDKErrorHandler$special$$inlined$CoroutineExceptionHandler$1(key));
        this.key = key;
    }

    @Override // kotlin.coroutines.CoroutineContext
    public <R> R fold(R r, Function2<? super R, ? super CoroutineContext.Element, ? extends R> function2) {
        return (R) CoroutineExceptionHandler.DefaultImpls.fold(this, r, function2);
    }

    @Override // kotlin.coroutines.CoroutineContext.Element, kotlin.coroutines.CoroutineContext
    public <E extends CoroutineContext.Element> E get(CoroutineContext.Key<E> key) {
        return (E) CoroutineExceptionHandler.DefaultImpls.get(this, key);
    }

    @Override // kotlin.coroutines.CoroutineContext
    public CoroutineContext minusKey(CoroutineContext.Key<?> key) {
        return CoroutineExceptionHandler.DefaultImpls.minusKey(this, key);
    }

    @Override // kotlin.coroutines.CoroutineContext
    public CoroutineContext plus(CoroutineContext coroutineContext) {
        return CoroutineExceptionHandler.DefaultImpls.plus(this, coroutineContext);
    }

    @Override // kotlin.coroutines.CoroutineContext.Element
    public CoroutineExceptionHandler.Key getKey() {
        return this.key;
    }

    /* JADX INFO: renamed from: com.unity3d.services.SDKErrorHandler$handleException$1, reason: invalid class name */
    /* JADX INFO: compiled from: SDKErrorHandler.kt */
    @DebugMetadata(c = "com.unity3d.services.SDKErrorHandler$handleException$1", f = "SDKErrorHandler.kt", l = {}, m = "invokeSuspend")
    public static final class AnonymousClass1 extends SuspendLambda implements Function2<CoroutineScope, Continuation<? super Unit>, Object> {
        final /* synthetic */ CoroutineContext $context;
        final /* synthetic */ Throwable $exception;
        int label;

        /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
        public AnonymousClass1(CoroutineContext coroutineContext, Throwable th, Continuation<? super AnonymousClass1> continuation) {
            super(2, continuation);
            this.$context = coroutineContext;
            this.$exception = th;
        }

        @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
        public final Continuation<Unit> create(Object obj, Continuation<?> continuation) {
            return SDKErrorHandler.this.new AnonymousClass1(this.$context, this.$exception, continuation);
        }

        @Override // kotlin.jvm.functions.Function2
        public final Object invoke(CoroutineScope coroutineScope, Continuation<? super Unit> continuation) {
            return ((AnonymousClass1) create(coroutineScope, continuation)).invokeSuspend(Unit.INSTANCE);
        }

        @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
        public final Object invokeSuspend(Object obj) {
            String str;
            IntrinsicsKt__IntrinsicsKt.getCOROUTINE_SUSPENDED();
            if (this.label == 0) {
                ResultKt.throwOnFailure(obj);
                String strRetrieveCoroutineName = SDKErrorHandler.this.retrieveCoroutineName(this.$context);
                ByteString byteStringRetrieveOpportunityId = SDKErrorHandler.this.retrieveOpportunityId(this.$context);
                Throwable th = this.$exception;
                if (th instanceof NullPointerException) {
                    str = "native_exception_npe";
                } else if (th instanceof OutOfMemoryError) {
                    str = "native_exception_oom";
                } else if (th instanceof IllegalStateException) {
                    str = "native_exception_ise";
                } else if (th instanceof SecurityException) {
                    str = "native_exception_se";
                } else {
                    str = th instanceof RuntimeException ? "native_exception_re" : "native_exception";
                }
                String str2 = str;
                String strRetrieveUnityCrashValue = ExceptionExtensionsKt.retrieveUnityCrashValue(th);
                DeviceLog.error("Unity Ads SDK encountered an exception: " + strRetrieveUnityCrashValue);
                SDKErrorHandler.this.sendDiagnostic(str2, strRetrieveUnityCrashValue, strRetrieveCoroutineName, ExceptionExtensionsKt.getShortenedStackTrace(this.$exception, 15), byteStringRetrieveOpportunityId);
                return Unit.INSTANCE;
            }
            throw new IllegalStateException("call to 'resume' before 'invoke' with coroutine");
        }
    }

    @Override // kotlinx.coroutines.CoroutineExceptionHandler
    public void handleException(CoroutineContext context, Throwable exception) {
        Intrinsics.checkNotNullParameter(context, "context");
        Intrinsics.checkNotNullParameter(exception, "exception");
        BuildersKt__Builders_commonKt.launch$default(this.scope, null, null, new AnonymousClass1(context, exception, null), 3, null);
    }

    /* JADX INFO: Access modifiers changed from: private */
    public final void sendDiagnostic(String str, String str2, String str3, String str4, ByteString byteString) {
        SendDiagnosticEvent sendDiagnosticEvent = this.sendDiagnosticEvent;
        Map mapCreateMapBuilder = MapsKt__MapsJVMKt.createMapBuilder();
        mapCreateMapBuilder.put("reason", str2);
        mapCreateMapBuilder.put("reason_debug", str4);
        mapCreateMapBuilder.put("coroutine_name", str3);
        if (byteString != null) {
            String string = ProtobufExtensionsKt.toUUID(byteString).toString();
            Intrinsics.checkNotNullExpressionValue(string, "toString(...)");
            mapCreateMapBuilder.put("impressionOpportunityId", string);
        }
        Unit unit = Unit.INSTANCE;
        SendDiagnosticEvent.DefaultImpls.invoke$default(sendDiagnosticEvent, str, (Double) null, MapsKt__MapsJVMKt.build(mapCreateMapBuilder), (Map) null, (AdObject) null, (Integer) null, (ByteString) null, Sdk.SDKError.Reason.INVALID_ADS_ENDPOINT_VALUE, (Object) null);
    }

    /* JADX INFO: Access modifiers changed from: private */
    public final String retrieveCoroutineName(CoroutineContext coroutineContext) {
        String name;
        CoroutineName coroutineName = (CoroutineName) coroutineContext.get(CoroutineName.Key);
        return (coroutineName == null || (name = coroutineName.getName()) == null) ? "unknown" : name;
    }

    /* JADX INFO: Access modifiers changed from: private */
    public final ByteString retrieveOpportunityId(CoroutineContext coroutineContext) {
        CoroutineOpportunity coroutineOpportunity = (CoroutineOpportunity) coroutineContext.get(CoroutineOpportunity.Key);
        if (coroutineOpportunity != null) {
            return coroutineOpportunity.getValue();
        }
        return null;
    }

    /* JADX INFO: compiled from: SDKErrorHandler.kt */
    public static final class Companion {
        public /* synthetic */ Companion(DefaultConstructorMarker defaultConstructorMarker) {
            this();
        }

        private Companion() {
        }
    }
}
