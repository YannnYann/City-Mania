package com.unity3d.ads.core.data.datasource;

import com.google.protobuf.ByteString;
import com.google.protobuf.kotlin.ByteStringsKt;
import com.unity3d.ads.UnityAdsInitModuleListener;
import com.unity3d.ads.core.data.model.AdObject;
import com.unity3d.ads.core.domain.GetInitModuleListeners;
import com.unity3d.ads.core.domain.GetIsModulesInitEnabled;
import com.unity3d.ads.core.domain.SendDiagnosticEvent;
import com.unity3d.ads.core.extensions.ExceptionExtensionsKt;
import com.unity3d.ads.core.extensions.TimeExtensionsKt;
import com.vungle.ads.internal.protos.Sdk;
import gatewayprotocol.v1.DiagnosticEventRequestOuterClass;
import gatewayprotocol.v1.ModuleInitParamsKt;
import gatewayprotocol.v1.ModuleInitParamsOuterClass;
import java.util.List;
import java.util.Map;
import kotlin.Result;
import kotlin.ResultKt;
import kotlin.TuplesKt;
import kotlin.Unit;
import kotlin.collections.CollectionsKt__CollectionsJVMKt;
import kotlin.collections.CollectionsKt__CollectionsKt;
import kotlin.collections.MapsKt__MapsJVMKt;
import kotlin.collections.MapsKt__MapsKt;
import kotlin.coroutines.Continuation;
import kotlin.coroutines.intrinsics.IntrinsicsKt__IntrinsicsKt;
import kotlin.coroutines.jvm.internal.DebugMetadata;
import kotlin.coroutines.jvm.internal.SuspendLambda;
import kotlin.jvm.functions.Function2;
import kotlin.jvm.internal.Intrinsics;
import kotlin.time.TimeSource$Monotonic;
import kotlinx.coroutines.BuildersKt;
import kotlinx.coroutines.CoroutineDispatcher;
import kotlinx.coroutines.CoroutineScope;

/* JADX INFO: compiled from: AndroidModuleInitParamsDataSource.kt */
/* JADX INFO: loaded from: classes4.dex */
public final class AndroidModuleInitParamsDataSource implements ModuleInitParamsDataSource {
    private final GetInitModuleListeners getInitModuleListeners;
    private final GetIsModulesInitEnabled getIsModulesInitEnabled;
    private final CoroutineDispatcher ioDispatcher;
    private final SendDiagnosticEvent sendDiagnosticEvent;

    public AndroidModuleInitParamsDataSource(GetInitModuleListeners getInitModuleListeners, SendDiagnosticEvent sendDiagnosticEvent, CoroutineDispatcher ioDispatcher, GetIsModulesInitEnabled getIsModulesInitEnabled) {
        Intrinsics.checkNotNullParameter(getInitModuleListeners, "getInitModuleListeners");
        Intrinsics.checkNotNullParameter(sendDiagnosticEvent, "sendDiagnosticEvent");
        Intrinsics.checkNotNullParameter(ioDispatcher, "ioDispatcher");
        Intrinsics.checkNotNullParameter(getIsModulesInitEnabled, "getIsModulesInitEnabled");
        this.getInitModuleListeners = getInitModuleListeners;
        this.sendDiagnosticEvent = sendDiagnosticEvent;
        this.ioDispatcher = ioDispatcher;
        this.getIsModulesInitEnabled = getIsModulesInitEnabled;
    }

    @Override // com.unity3d.ads.core.data.datasource.ModuleInitParamsDataSource
    public Object invoke(Continuation<? super List<ModuleInitParamsOuterClass.ModuleInitParams>> continuation) {
        return !this.getIsModulesInitEnabled.invoke() ? CollectionsKt__CollectionsKt.emptyList() : BuildersKt.withContext(this.ioDispatcher, new AnonymousClass2(null), continuation);
    }

    /* JADX INFO: renamed from: com.unity3d.ads.core.data.datasource.AndroidModuleInitParamsDataSource$invoke$2, reason: invalid class name */
    /* JADX INFO: compiled from: AndroidModuleInitParamsDataSource.kt */
    @DebugMetadata(c = "com.unity3d.ads.core.data.datasource.AndroidModuleInitParamsDataSource$invoke$2", f = "AndroidModuleInitParamsDataSource.kt", l = {}, m = "invokeSuspend")
    public static final class AnonymousClass2 extends SuspendLambda implements Function2<CoroutineScope, Continuation<? super List<? extends ModuleInitParamsOuterClass.ModuleInitParams>>, Object> {
        int label;

        public AnonymousClass2(Continuation<? super AnonymousClass2> continuation) {
            super(2, continuation);
        }

        @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
        public final Continuation<Unit> create(Object obj, Continuation<?> continuation) {
            return AndroidModuleInitParamsDataSource.this.new AnonymousClass2(continuation);
        }

        @Override // kotlin.jvm.functions.Function2
        public /* bridge */ /* synthetic */ Object invoke(CoroutineScope coroutineScope, Continuation<? super List<? extends ModuleInitParamsOuterClass.ModuleInitParams>> continuation) {
            return invoke2(coroutineScope, (Continuation<? super List<ModuleInitParamsOuterClass.ModuleInitParams>>) continuation);
        }

        /* JADX INFO: renamed from: invoke, reason: avoid collision after fix types in other method */
        public final Object invoke2(CoroutineScope coroutineScope, Continuation<? super List<ModuleInitParamsOuterClass.ModuleInitParams>> continuation) {
            return ((AnonymousClass2) create(coroutineScope, continuation)).invokeSuspend(Unit.INSTANCE);
        }

        @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
        public final Object invokeSuspend(Object obj) {
            IntrinsicsKt__IntrinsicsKt.getCOROUTINE_SUSPENDED();
            if (this.label != 0) {
                throw new IllegalStateException("call to 'resume' before 'invoke' with coroutine");
            }
            ResultKt.throwOnFailure(obj);
            return AndroidModuleInitParamsDataSource.this.collectInitParams();
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public final List<ModuleInitParamsOuterClass.ModuleInitParams> collectInitParams() {
        Object objM2760constructorimpl;
        Object objM2760constructorimpl2;
        List listCreateListBuilder = CollectionsKt__CollectionsJVMKt.createListBuilder();
        Map<String, ? extends Object> mapEmptyMap = MapsKt__MapsKt.emptyMap();
        for (UnityAdsInitModuleListener unityAdsInitModuleListener : this.getInitModuleListeners.invoke()) {
            long jM2921markNowz9LOYto = TimeSource$Monotonic.INSTANCE.m2921markNowz9LOYto();
            try {
                Result.Companion companion = Result.Companion;
                String strModuleName = unityAdsInitModuleListener.moduleName();
                SendDiagnosticEvent.DefaultImpls.invoke$default(this.sendDiagnosticEvent, DiagnosticEventRequestOuterClass.DiagnosticEventType.DIAGNOSTIC_EVENT_TYPE_NATIVE_MODULE_INIT_PARAMS_STARTED, (Double) null, MapsKt__MapsJVMKt.mapOf(TuplesKt.to("module_name", strModuleName)), (Map) null, (AdObject) null, (Integer) null, (ByteString) null, Sdk.SDKError.Reason.INVALID_ADS_ENDPOINT_VALUE, (Object) null);
                byte[] bArrInitParams = unityAdsInitModuleListener.initParams(mapEmptyMap);
                if (bArrInitParams != null) {
                    ModuleInitParamsKt.Dsl.Companion companion2 = ModuleInitParamsKt.Dsl.Companion;
                    ModuleInitParamsOuterClass.ModuleInitParams.Builder builderNewBuilder = ModuleInitParamsOuterClass.ModuleInitParams.newBuilder();
                    Intrinsics.checkNotNullExpressionValue(builderNewBuilder, "newBuilder(...)");
                    ModuleInitParamsKt.Dsl dsl_create = companion2._create(builderNewBuilder);
                    dsl_create.setName(strModuleName);
                    dsl_create.setParams(ByteStringsKt.toByteString(bArrInitParams));
                    String name = unityAdsInitModuleListener.getClass().getName();
                    Intrinsics.checkNotNullExpressionValue(name, "getName(...)");
                    dsl_create.setClassName(name);
                    listCreateListBuilder.add(dsl_create._build());
                }
                SendDiagnosticEvent.DefaultImpls.invoke$default(this.sendDiagnosticEvent, DiagnosticEventRequestOuterClass.DiagnosticEventType.DIAGNOSTIC_EVENT_TYPE_NATIVE_MODULE_INIT_PARAMS_SUCCESS_TIME, Double.valueOf(TimeExtensionsKt.elapsedMillis(TimeSource$Monotonic.ValueTimeMark.m2922boximpl(jM2921markNowz9LOYto))), MapsKt__MapsJVMKt.mapOf(TuplesKt.to("module_name", strModuleName)), (Map) null, (AdObject) null, (Integer) null, (ByteString) null, 120, (Object) null);
                objM2760constructorimpl = Result.m2760constructorimpl(Unit.INSTANCE);
            } catch (Throwable th) {
                Result.Companion companion3 = Result.Companion;
                objM2760constructorimpl = Result.m2760constructorimpl(ResultKt.createFailure(th));
            }
            Throwable thM2763exceptionOrNullimpl = Result.m2763exceptionOrNullimpl(objM2760constructorimpl);
            if (thM2763exceptionOrNullimpl != null) {
                try {
                    objM2760constructorimpl2 = Result.m2760constructorimpl(unityAdsInitModuleListener.moduleName());
                } catch (Throwable th2) {
                    Result.Companion companion4 = Result.Companion;
                    objM2760constructorimpl2 = Result.m2760constructorimpl(ResultKt.createFailure(th2));
                }
                if (Result.m2765isFailureimpl(objM2760constructorimpl2)) {
                    objM2760constructorimpl2 = "";
                }
                SendDiagnosticEvent.DefaultImpls.invoke$default(this.sendDiagnosticEvent, DiagnosticEventRequestOuterClass.DiagnosticEventType.DIAGNOSTIC_EVENT_TYPE_NATIVE_MODULE_INIT_PARAMS_FAILURE_TIME, Double.valueOf(TimeExtensionsKt.elapsedMillis(TimeSource$Monotonic.ValueTimeMark.m2922boximpl(jM2921markNowz9LOYto))), MapsKt__MapsKt.mapOf(TuplesKt.to("module_name", (String) objM2760constructorimpl2), TuplesKt.to("reason", "uncaught_exception"), TuplesKt.to("reason_debug", ExceptionExtensionsKt.getShortenedStackTrace$default(thM2763exceptionOrNullimpl, 0, 1, null))), (Map) null, (AdObject) null, (Integer) null, (ByteString) null, 120, (Object) null);
            }
        }
        return CollectionsKt__CollectionsJVMKt.build(listCreateListBuilder);
    }
}
