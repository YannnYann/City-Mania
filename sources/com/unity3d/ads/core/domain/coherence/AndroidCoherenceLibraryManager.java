package com.unity3d.ads.core.domain.coherence;

import android.content.Context;
import com.google.protobuf.ByteString;
import com.unity3d.ads.core.data.model.AdObject;
import com.unity3d.ads.core.domain.SendDiagnosticEvent;
import com.unity3d.ads.core.extensions.TimeExtensionsKt;
import com.unity3d.ads.core.log.Logger;
import com.unity3d.coherence.CoherenceInitConfig;
import com.unity3d.coherence.CoherenceLibrary;
import com.unity3d.coherence.CommonAttributesConfig;
import com.vungle.ads.internal.protos.Sdk;
import java.util.Map;
import java.util.concurrent.atomic.AtomicBoolean;
import kotlin.Unit;
import kotlin.jvm.internal.Intrinsics;
import kotlin.time.TimeSource$Monotonic;

/* JADX INFO: compiled from: AndroidCoherenceLibraryManager.kt */
/* JADX INFO: loaded from: classes4.dex */
public final class AndroidCoherenceLibraryManager implements CoherenceLibraryManager {
    private final Context appContext;
    private final AtomicBoolean initialized;
    private final Logger logger;
    private final SendDiagnosticEvent sendDiagnosticEvent;

    public AndroidCoherenceLibraryManager(Context context, Logger logger, SendDiagnosticEvent sendDiagnosticEvent) {
        Intrinsics.checkNotNullParameter(context, "context");
        Intrinsics.checkNotNullParameter(logger, "logger");
        Intrinsics.checkNotNullParameter(sendDiagnosticEvent, "sendDiagnosticEvent");
        this.logger = logger;
        this.sendDiagnosticEvent = sendDiagnosticEvent;
        this.appContext = context.getApplicationContext();
        this.initialized = new AtomicBoolean(false);
    }

    private final void initialize() {
        if (this.initialized.get()) {
            return;
        }
        synchronized (this) {
            if (this.initialized.get()) {
                return;
            }
            CoherenceInitConfig coherenceInitConfigBuild = new CoherenceInitConfig.Builder(this.appContext).setSource(2).build();
            Intrinsics.checkNotNullExpressionValue(coherenceInitConfigBuild, "build(...)");
            long jM2921markNowz9LOYto = TimeSource$Monotonic.INSTANCE.m2921markNowz9LOYto();
            CoherenceLibrary.init(coherenceInitConfigBuild);
            this.initialized.set(true);
            Unit unit = Unit.INSTANCE;
            SendDiagnosticEvent.DefaultImpls.invoke$default(this.sendDiagnosticEvent, "native_coherence_init_time", Double.valueOf(TimeExtensionsKt.elapsedMillis(TimeSource$Monotonic.ValueTimeMark.m2922boximpl(jM2921markNowz9LOYto))), (Map) null, (Map) null, (AdObject) null, (Integer) null, (ByteString) null, Sdk.SDKError.Reason.INVALID_LOG_ERROR_ENDPOINT_VALUE, (Object) null);
        }
    }

    @Override // com.unity3d.ads.core.domain.coherence.CoherenceLibraryManager
    public byte[] getCommonAttributes() {
        try {
            initialize();
            CommonAttributesConfig commonAttributesConfigBuild = new CommonAttributesConfig.Builder().build();
            Intrinsics.checkNotNullExpressionValue(commonAttributesConfigBuild, "build(...)");
            long jM2921markNowz9LOYto = TimeSource$Monotonic.INSTANCE.m2921markNowz9LOYto();
            byte[] commonAttributes = CoherenceLibrary.getInstance().getAttributesProvider().getCommonAttributes(commonAttributesConfigBuild);
            if (commonAttributes == null) {
                return commonAttributes;
            }
            SendDiagnosticEvent.DefaultImpls.invoke$default(this.sendDiagnosticEvent, "native_coherence_get_common_attributes_time", Double.valueOf(TimeExtensionsKt.elapsedMillis(TimeSource$Monotonic.ValueTimeMark.m2922boximpl(jM2921markNowz9LOYto))), (Map) null, (Map) null, (AdObject) null, (Integer) null, (ByteString) null, Sdk.SDKError.Reason.INVALID_LOG_ERROR_ENDPOINT_VALUE, (Object) null);
            return commonAttributes;
        } catch (Throwable th) {
            this.logger.error("CoherenceLibrary fetching payload failed", th);
            return null;
        }
    }
}
