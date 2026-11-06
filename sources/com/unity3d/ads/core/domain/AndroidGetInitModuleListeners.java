package com.unity3d.ads.core.domain;

import com.google.protobuf.ByteString;
import com.unity3d.ads.UnityAdsInitModuleListener;
import com.unity3d.ads.core.data.model.AdObject;
import com.unity3d.ads.core.domain.SendDiagnosticEvent;
import com.unity3d.ads.core.extensions.TimeExtensionsKt;
import com.unity3d.ads.core.log.Logger;
import com.vungle.ads.internal.protos.Sdk;
import gatewayprotocol.v1.DiagnosticEventRequestOuterClass;
import java.util.ArrayList;
import java.util.Iterator;
import java.util.List;
import java.util.Map;
import java.util.ServiceLoader;
import kotlin.Lazy;
import kotlin.LazyKt__LazyJVMKt;
import kotlin.TuplesKt;
import kotlin.collections.MapsKt__MapsJVMKt;
import kotlin.jvm.functions.Function0;
import kotlin.jvm.internal.DefaultConstructorMarker;
import kotlin.jvm.internal.Intrinsics;
import kotlin.time.TimeSource$Monotonic;

/* JADX INFO: compiled from: AndroidGetInitModuleListeners.kt */
/* JADX INFO: loaded from: classes4.dex */
public final class AndroidGetInitModuleListeners implements GetInitModuleListeners {
    private final ClassLoader classLoader;
    private final Logger logger;
    private final Lazy moduleListeners$delegate;
    private final SendDiagnosticEvent sendDiagnosticEvent;

    public AndroidGetInitModuleListeners(SendDiagnosticEvent sendDiagnosticEvent, Logger logger, ClassLoader classLoader) {
        Intrinsics.checkNotNullParameter(sendDiagnosticEvent, "sendDiagnosticEvent");
        Intrinsics.checkNotNullParameter(logger, "logger");
        this.sendDiagnosticEvent = sendDiagnosticEvent;
        this.logger = logger;
        this.classLoader = classLoader;
        this.moduleListeners$delegate = LazyKt__LazyJVMKt.lazy(new Function0() { // from class: com.unity3d.ads.core.domain.AndroidGetInitModuleListeners$$ExternalSyntheticLambda0
            @Override // kotlin.jvm.functions.Function0
            public final Object invoke() {
                return this.f$0.discover();
            }
        });
    }

    public /* synthetic */ AndroidGetInitModuleListeners(SendDiagnosticEvent sendDiagnosticEvent, Logger logger, ClassLoader classLoader, int i, DefaultConstructorMarker defaultConstructorMarker) {
        this(sendDiagnosticEvent, logger, (i & 4) != 0 ? AndroidGetInitModuleListeners.class.getClassLoader() : classLoader);
    }

    private final List<UnityAdsInitModuleListener> getModuleListeners() {
        return (List) this.moduleListeners$delegate.getValue();
    }

    @Override // com.unity3d.ads.core.domain.GetInitModuleListeners
    public List<UnityAdsInitModuleListener> invoke() {
        return getModuleListeners();
    }

    /* JADX INFO: Access modifiers changed from: private */
    public final List<UnityAdsInitModuleListener> discover() {
        long jM2921markNowz9LOYto = TimeSource$Monotonic.INSTANCE.m2921markNowz9LOYto();
        SendDiagnosticEvent.DefaultImpls.invoke$default(this.sendDiagnosticEvent, DiagnosticEventRequestOuterClass.DiagnosticEventType.DIAGNOSTIC_EVENT_TYPE_NATIVE_MODULE_DISCOVERY_STARTED, (Double) null, (Map) null, (Map) null, (AdObject) null, (Integer) null, (ByteString) null, Sdk.SDKError.Reason.ASSET_FAILED_INSUFFICIENT_SPACE_VALUE, (Object) null);
        ArrayList arrayList = new ArrayList();
        try {
            Iterator it = ServiceLoader.load(UnityAdsInitModuleListener.class, this.classLoader).iterator();
            Intrinsics.checkNotNullExpressionValue(it, "iterator(...)");
            while (it.hasNext()) {
                try {
                    Object next = it.next();
                    Intrinsics.checkNotNullExpressionValue(next, "next(...)");
                    arrayList.add(next);
                } catch (Throwable th) {
                    this.logger.error("Failed to load an init module listener", th);
                }
            }
        } catch (Throwable th2) {
            this.logger.error("Init module listener discovery failed", th2);
        }
        SendDiagnosticEvent.DefaultImpls.invoke$default(this.sendDiagnosticEvent, DiagnosticEventRequestOuterClass.DiagnosticEventType.DIAGNOSTIC_EVENT_TYPE_NATIVE_MODULE_DISCOVERY_COMPLETED_TIME, Double.valueOf(TimeExtensionsKt.elapsedMillis(TimeSource$Monotonic.ValueTimeMark.m2922boximpl(jM2921markNowz9LOYto))), (Map) null, MapsKt__MapsJVMKt.mapOf(TuplesKt.to("module_count", Integer.valueOf(arrayList.size()))), (AdObject) null, (Integer) null, (ByteString) null, Sdk.SDKError.Reason.GZIP_ENCODE_ERROR_VALUE, (Object) null);
        return arrayList;
    }
}
