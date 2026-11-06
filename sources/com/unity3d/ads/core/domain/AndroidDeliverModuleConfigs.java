package com.unity3d.ads.core.domain;

import com.google.protobuf.ByteString;
import com.unity3d.ads.UnityAdsInitModuleListener;
import com.unity3d.ads.core.data.model.AdObject;
import com.unity3d.ads.core.data.repository.SessionRepository;
import com.unity3d.ads.core.domain.SendDiagnosticEvent;
import com.unity3d.ads.core.extensions.ExceptionExtensionsKt;
import com.unity3d.ads.core.extensions.ProtobufExtensionsKt;
import com.unity3d.ads.core.extensions.TimeExtensionsKt;
import gatewayprotocol.v1.DiagnosticEventRequestOuterClass;
import gatewayprotocol.v1.InitializationResponseOuterClass;
import gatewayprotocol.v1.ModuleOuterClass;
import java.util.Iterator;
import java.util.List;
import java.util.Map;
import java.util.concurrent.ConcurrentHashMap;
import kotlin.Result;
import kotlin.ResultKt;
import kotlin.TuplesKt;
import kotlin.Unit;
import kotlin.collections.MapsKt__MapsJVMKt;
import kotlin.collections.MapsKt__MapsKt;
import kotlin.jvm.internal.Intrinsics;
import kotlin.text.StringsKt__StringsJVMKt;
import kotlin.time.TimeSource$Monotonic;
import kotlinx.coroutines.BuildersKt__Builders_commonKt;
import kotlinx.coroutines.CoroutineDispatcher;
import kotlinx.coroutines.CoroutineScope;
import kotlinx.coroutines.sync.Mutex;
import kotlinx.coroutines.sync.MutexKt;

/* JADX INFO: compiled from: AndroidDeliverModuleConfigs.kt */
/* JADX INFO: loaded from: classes4.dex */
public final class AndroidDeliverModuleConfigs implements DeliverModuleConfigs {
    private final GetInitModuleListeners getInitModuleListeners;
    private final GetIsModulesInitEnabled getIsModulesInitEnabled;
    private final CoroutineDispatcher ioDispatcher;
    private final ConcurrentHashMap<UnityAdsInitModuleListener, Mutex> listenerLocks;
    private final CoroutineScope scope;
    private final SendDiagnosticEvent sendDiagnosticEvent;
    private final SessionRepository sessionRepository;

    public AndroidDeliverModuleConfigs(GetInitModuleListeners getInitModuleListeners, SessionRepository sessionRepository, SendDiagnosticEvent sendDiagnosticEvent, CoroutineScope scope, CoroutineDispatcher ioDispatcher, GetIsModulesInitEnabled getIsModulesInitEnabled) {
        Intrinsics.checkNotNullParameter(getInitModuleListeners, "getInitModuleListeners");
        Intrinsics.checkNotNullParameter(sessionRepository, "sessionRepository");
        Intrinsics.checkNotNullParameter(sendDiagnosticEvent, "sendDiagnosticEvent");
        Intrinsics.checkNotNullParameter(scope, "scope");
        Intrinsics.checkNotNullParameter(ioDispatcher, "ioDispatcher");
        Intrinsics.checkNotNullParameter(getIsModulesInitEnabled, "getIsModulesInitEnabled");
        this.getInitModuleListeners = getInitModuleListeners;
        this.sessionRepository = sessionRepository;
        this.sendDiagnosticEvent = sendDiagnosticEvent;
        this.scope = scope;
        this.ioDispatcher = ioDispatcher;
        this.getIsModulesInitEnabled = getIsModulesInitEnabled;
        this.listenerLocks = new ConcurrentHashMap<>();
    }

    @Override // com.unity3d.ads.core.domain.DeliverModuleConfigs
    public void invoke(InitializationResponseOuterClass.InitializationResponse initResponse) {
        Intrinsics.checkNotNullParameter(initResponse, "initResponse");
        if (this.getIsModulesInitEnabled.invoke()) {
            List<UnityAdsInitModuleListener> listInvoke = this.getInitModuleListeners.invoke();
            if (listInvoke.isEmpty()) {
                return;
            }
            Map<String, Object> mapSessionExtras = sessionExtras();
            Iterator<T> it = listInvoke.iterator();
            while (it.hasNext()) {
                BuildersKt__Builders_commonKt.launch$default(this.scope, this.ioDispatcher, null, new AndroidDeliverModuleConfigs$invoke$1$1(this, (UnityAdsInitModuleListener) it.next(), initResponse, mapSessionExtras, null), 2, null);
            }
        }
    }

    @Override // com.unity3d.ads.core.domain.DeliverModuleConfigs
    public void notifyFailure(String reason) {
        Intrinsics.checkNotNullParameter(reason, "reason");
        if (this.getIsModulesInitEnabled.invoke()) {
            List<UnityAdsInitModuleListener> listInvoke = this.getInitModuleListeners.invoke();
            if (listInvoke.isEmpty()) {
                return;
            }
            Iterator<T> it = listInvoke.iterator();
            while (it.hasNext()) {
                BuildersKt__Builders_commonKt.launch$default(this.scope, this.ioDispatcher, null, new AndroidDeliverModuleConfigs$notifyFailure$1$1(this, (UnityAdsInitModuleListener) it.next(), reason, null), 2, null);
            }
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public final Mutex lockFor(UnityAdsInitModuleListener unityAdsInitModuleListener) {
        Mutex mutexPutIfAbsent;
        ConcurrentHashMap<UnityAdsInitModuleListener, Mutex> concurrentHashMap = this.listenerLocks;
        Mutex mutexMutex$default = concurrentHashMap.get(unityAdsInitModuleListener);
        if (mutexMutex$default == null && (mutexPutIfAbsent = concurrentHashMap.putIfAbsent(unityAdsInitModuleListener, (mutexMutex$default = MutexKt.Mutex$default(false, 1, null)))) != null) {
            mutexMutex$default = mutexPutIfAbsent;
        }
        Intrinsics.checkNotNullExpressionValue(mutexMutex$default, "getOrPut(...)");
        return mutexMutex$default;
    }

    private final Map<String, Object> sessionExtras() {
        Object objM2760constructorimpl;
        try {
            Result.Companion companion = Result.Companion;
            objM2760constructorimpl = Result.m2760constructorimpl(MapsKt__MapsKt.mapOf(TuplesKt.to("sessionId", ProtobufExtensionsKt.toUUID(this.sessionRepository.getSessionId()).toString()), TuplesKt.to("sessionToken", this.sessionRepository.getSessionToken().toByteArray())));
        } catch (Throwable th) {
            Result.Companion companion2 = Result.Companion;
            objM2760constructorimpl = Result.m2760constructorimpl(ResultKt.createFailure(th));
        }
        Map mapEmptyMap = MapsKt__MapsKt.emptyMap();
        if (Result.m2765isFailureimpl(objM2760constructorimpl)) {
            objM2760constructorimpl = mapEmptyMap;
        }
        return (Map) objM2760constructorimpl;
    }

    /* JADX INFO: Access modifiers changed from: private */
    public final void deliver(UnityAdsInitModuleListener unityAdsInitModuleListener, InitializationResponseOuterClass.InitializationResponse initializationResponse, Map<String, ? extends Object> map) {
        String strModuleName;
        Throwable th;
        boolean z;
        Object next;
        long jM2921markNowz9LOYto = TimeSource$Monotonic.INSTANCE.m2921markNowz9LOYto();
        try {
            strModuleName = unityAdsInitModuleListener.moduleName();
            try {
                sendModuleDiagnostic$default(this, DiagnosticEventRequestOuterClass.DiagnosticEventType.DIAGNOSTIC_EVENT_TYPE_NATIVE_MODULE_INIT_STARTED, strModuleName, null, null, null, 28, null);
                List<ModuleOuterClass.Module> modulesList = initializationResponse.getModulesList();
                Intrinsics.checkNotNullExpressionValue(modulesList, "getModulesList(...)");
                Iterator<T> it = modulesList.iterator();
                while (true) {
                    if (!it.hasNext()) {
                        next = null;
                        break;
                    } else {
                        next = it.next();
                        if (StringsKt__StringsJVMKt.equals(((ModuleOuterClass.Module) next).getName(), strModuleName, true)) {
                            break;
                        }
                    }
                }
                ModuleOuterClass.Module module = (ModuleOuterClass.Module) next;
                ByteString config = module != null ? module.getConfig() : null;
                try {
                    if (config == null || config.isEmpty()) {
                        String str = "no config for " + strModuleName;
                        unityAdsInitModuleListener.onFailure(str, 2);
                        sendModuleDiagnostic(DiagnosticEventRequestOuterClass.DiagnosticEventType.DIAGNOSTIC_EVENT_TYPE_NATIVE_MODULE_INIT_FAILURE, strModuleName, Double.valueOf(TimeExtensionsKt.elapsedMillis(TimeSource$Monotonic.ValueTimeMark.m2922boximpl(jM2921markNowz9LOYto))), "no_config", str);
                        return;
                    }
                    byte[] byteArray = config.toByteArray();
                    Intrinsics.checkNotNullExpressionValue(byteArray, "toByteArray(...)");
                    unityAdsInitModuleListener.onSuccess(byteArray, map);
                    sendModuleDiagnostic$default(this, DiagnosticEventRequestOuterClass.DiagnosticEventType.DIAGNOSTIC_EVENT_TYPE_NATIVE_MODULE_INIT_SUCCESS, strModuleName, Double.valueOf(TimeExtensionsKt.elapsedMillis(TimeSource$Monotonic.ValueTimeMark.m2922boximpl(jM2921markNowz9LOYto))), null, null, 24, null);
                    return;
                } catch (Throwable th2) {
                    th = th2;
                    z = true;
                }
            } catch (Throwable th3) {
                th = th3;
                th = th;
                z = false;
            }
        } catch (Throwable th4) {
            th = th4;
            strModuleName = "";
        }
        String str2 = strModuleName;
        String message = th.getMessage();
        if (message == null) {
            message = "module init failed";
        }
        if (!z) {
            try {
                Result.Companion companion = Result.Companion;
                unityAdsInitModuleListener.onFailure(message, 3);
                Result.m2760constructorimpl(Unit.INSTANCE);
            } catch (Throwable th5) {
                Result.Companion companion2 = Result.Companion;
                Result.m2760constructorimpl(ResultKt.createFailure(th5));
            }
        }
        sendModuleDiagnostic(DiagnosticEventRequestOuterClass.DiagnosticEventType.DIAGNOSTIC_EVENT_TYPE_NATIVE_MODULE_INIT_FAILURE, str2, Double.valueOf(TimeExtensionsKt.elapsedMillis(TimeSource$Monotonic.ValueTimeMark.m2922boximpl(jM2921markNowz9LOYto))), "uncaught_exception", ExceptionExtensionsKt.getShortenedStackTrace$default(th, 0, 1, null));
    }

    /* JADX INFO: Access modifiers changed from: private */
    public final void fail(UnityAdsInitModuleListener unityAdsInitModuleListener, String str) {
        Object objM2760constructorimpl;
        try {
            Result.Companion companion = Result.Companion;
            unityAdsInitModuleListener.onFailure(str, 1);
            Result.m2760constructorimpl(Unit.INSTANCE);
        } catch (Throwable th) {
            Result.Companion companion2 = Result.Companion;
            Result.m2760constructorimpl(ResultKt.createFailure(th));
        }
        try {
            objM2760constructorimpl = Result.m2760constructorimpl(unityAdsInitModuleListener.moduleName());
        } catch (Throwable th2) {
            Result.Companion companion3 = Result.Companion;
            objM2760constructorimpl = Result.m2760constructorimpl(ResultKt.createFailure(th2));
        }
        if (Result.m2765isFailureimpl(objM2760constructorimpl)) {
            objM2760constructorimpl = "unknown";
        }
        sendModuleDiagnostic$default(this, DiagnosticEventRequestOuterClass.DiagnosticEventType.DIAGNOSTIC_EVENT_TYPE_NATIVE_MODULE_INIT_FAILURE, (String) objM2760constructorimpl, null, "failed", str, 4, null);
    }

    public static /* synthetic */ void sendModuleDiagnostic$default(AndroidDeliverModuleConfigs androidDeliverModuleConfigs, DiagnosticEventRequestOuterClass.DiagnosticEventType diagnosticEventType, String str, Double d, String str2, String str3, int i, Object obj) {
        if ((i & 4) != 0) {
            d = null;
        }
        if ((i & 8) != 0) {
            str2 = null;
        }
        if ((i & 16) != 0) {
            str3 = null;
        }
        androidDeliverModuleConfigs.sendModuleDiagnostic(diagnosticEventType, str, d, str2, str3);
    }

    private final void sendModuleDiagnostic(DiagnosticEventRequestOuterClass.DiagnosticEventType diagnosticEventType, String str, Double d, String str2, String str3) {
        SendDiagnosticEvent sendDiagnosticEvent = this.sendDiagnosticEvent;
        Map mapCreateMapBuilder = MapsKt__MapsJVMKt.createMapBuilder();
        mapCreateMapBuilder.put("module_name", str);
        if (str2 != null) {
        }
        if (str3 != null) {
            mapCreateMapBuilder.put("reason_debug", str3);
        }
        Unit unit = Unit.INSTANCE;
        SendDiagnosticEvent.DefaultImpls.invoke$default(sendDiagnosticEvent, diagnosticEventType, d, MapsKt__MapsJVMKt.build(mapCreateMapBuilder), (Map) null, (AdObject) null, (Integer) null, (ByteString) null, 120, (Object) null);
    }
}
