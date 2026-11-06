package com.unity3d.ads.core.domain;

import com.google.protobuf.ByteString;
import com.unity3d.ads.core.data.model.AdObject;
import com.unity3d.ads.core.data.repository.SessionRepository;
import com.unity3d.ads.core.domain.SendDiagnosticEvent;
import com.unity3d.ads.core.extensions.MapExtensionsKt;
import gatewayprotocol.v1.DiagnosticEventRequestOuterClass;
import java.util.Map;
import kotlin.TuplesKt;
import kotlin.collections.MapsKt__MapsKt;
import kotlin.jvm.internal.Intrinsics;

/* JADX INFO: compiled from: ValidateExtrasSize.kt */
/* JADX INFO: loaded from: classes4.dex */
public final class ValidateExtrasSize {
    private final SendDiagnosticEvent sendDiagnosticEvent;
    private final SessionRepository sessionRepository;

    public ValidateExtrasSize(SessionRepository sessionRepository, SendDiagnosticEvent sendDiagnosticEvent) {
        Intrinsics.checkNotNullParameter(sessionRepository, "sessionRepository");
        Intrinsics.checkNotNullParameter(sendDiagnosticEvent, "sendDiagnosticEvent");
        this.sessionRepository = sessionRepository;
        this.sendDiagnosticEvent = sendDiagnosticEvent;
    }

    public static /* synthetic */ void invoke$default(ValidateExtrasSize validateExtrasSize, Map map, String str, AdObject adObject, int i, Object obj) {
        if ((i & 4) != 0) {
            adObject = null;
        }
        validateExtrasSize.invoke(map, str, adObject);
    }

    public final void invoke(Map<String, String> extras, String source, AdObject adObject) {
        int maxExtrasSizeKb;
        int iSizeInKb;
        Intrinsics.checkNotNullParameter(extras, "extras");
        Intrinsics.checkNotNullParameter(source, "source");
        if (!extras.isEmpty() && (maxExtrasSizeKb = this.sessionRepository.getNativeConfiguration().getMaxExtrasSizeKb()) > 0 && (iSizeInKb = MapExtensionsKt.sizeInKb(extras)) >= maxExtrasSizeKb) {
            SendDiagnosticEvent.DefaultImpls.invoke$default(this.sendDiagnosticEvent, DiagnosticEventRequestOuterClass.DiagnosticEventType.DIAGNOSTIC_EVENT_TYPE_NATIVE_EXTRAS_EXCEEDED_SIZE, (Double) null, MapsKt__MapsKt.mapOf(TuplesKt.to("source", source), TuplesKt.to("size_kb", String.valueOf(iSizeInKb))), (Map) null, adObject, (Integer) null, (ByteString) null, 106, (Object) null);
        }
    }
}
