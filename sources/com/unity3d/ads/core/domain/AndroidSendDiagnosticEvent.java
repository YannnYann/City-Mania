package com.unity3d.ads.core.domain;

import com.google.protobuf.ByteString;
import com.unity3d.ads.core.data.datasource.LifecycleDataSource;
import com.unity3d.ads.core.data.model.AdObject;
import com.unity3d.ads.core.data.repository.DiagnosticEventRepository;
import com.unity3d.ads.core.domain.events.GetDiagnosticEventRequest;
import gatewayprotocol.v1.DiagnosticEventRequestOuterClass;
import java.util.LinkedHashMap;
import java.util.Map;
import kotlin.collections.MapsKt__MapsKt;
import kotlin.jvm.internal.Intrinsics;

/* JADX INFO: compiled from: AndroidSendDiagnosticEvent.kt */
/* JADX INFO: loaded from: classes4.dex */
public final class AndroidSendDiagnosticEvent implements SendDiagnosticEvent {
    private final DiagnosticEventRepository diagnosticEventRepository;
    private final GetDiagnosticEventRequest getDiagnosticEventRequest;
    private final LifecycleDataSource lifecycleDataSource;

    public AndroidSendDiagnosticEvent(DiagnosticEventRepository diagnosticEventRepository, GetDiagnosticEventRequest getDiagnosticEventRequest, LifecycleDataSource lifecycleDataSource) {
        Intrinsics.checkNotNullParameter(diagnosticEventRepository, "diagnosticEventRepository");
        Intrinsics.checkNotNullParameter(getDiagnosticEventRequest, "getDiagnosticEventRequest");
        Intrinsics.checkNotNullParameter(lifecycleDataSource, "lifecycleDataSource");
        this.diagnosticEventRepository = diagnosticEventRepository;
        this.getDiagnosticEventRequest = getDiagnosticEventRequest;
        this.lifecycleDataSource = lifecycleDataSource;
    }

    @Override // com.unity3d.ads.core.domain.SendDiagnosticEvent
    public void invoke(String event, Double d, Map<String, String> map, Map<String, Integer> map2, AdObject adObject, Integer num, ByteString byteString) {
        Intrinsics.checkNotNullParameter(event, "event");
        sendEvent(DiagnosticEventRequestOuterClass.DiagnosticEventType.DIAGNOSTIC_EVENT_TYPE_CUSTOM, event, d, map, map2, adObject, num, byteString);
    }

    @Override // com.unity3d.ads.core.domain.SendDiagnosticEvent
    public void invoke(DiagnosticEventRequestOuterClass.DiagnosticEventType event, Double d, Map<String, String> map, Map<String, Integer> map2, AdObject adObject, Integer num, ByteString byteString) {
        Intrinsics.checkNotNullParameter(event, "event");
        sendEvent$default(this, event, null, d, map, map2, adObject, num, byteString, 2, null);
    }

    public static /* synthetic */ void sendEvent$default(AndroidSendDiagnosticEvent androidSendDiagnosticEvent, DiagnosticEventRequestOuterClass.DiagnosticEventType diagnosticEventType, String str, Double d, Map map, Map map2, AdObject adObject, Integer num, ByteString byteString, int i, Object obj) {
        if ((i & 2) != 0) {
            str = null;
        }
        androidSendDiagnosticEvent.sendEvent(diagnosticEventType, str, d, map, map2, adObject, num, byteString);
    }

    private final void sendEvent(DiagnosticEventRequestOuterClass.DiagnosticEventType diagnosticEventType, String str, Double d, Map<String, String> map, Map<String, Integer> map2, AdObject adObject, Integer num, ByteString byteString) {
        Map<String, String> linkedHashMap;
        Boolean boolValueOf = adObject != null ? Boolean.valueOf(adObject.isHeaderBidding()) : null;
        ByteString opportunityId = adObject != null ? adObject.getOpportunityId() : null;
        String placementId = adObject != null ? adObject.getPlacementId() : null;
        DiagnosticEventRequestOuterClass.DiagnosticAdType adType = adObject != null ? adObject.getAdType() : null;
        if (map == null || (linkedHashMap = MapsKt__MapsKt.toMutableMap(map)) == null) {
            linkedHashMap = new LinkedHashMap<>();
        }
        Map<String, String> map3 = linkedHashMap;
        if (adObject != null && adObject.isOfferwallAd()) {
            map3.put("offerwall", "true");
        }
        if ((adObject != null ? adObject.getWebViewLessLoadingRequiredData() : null) != null) {
            map3.put("webviewless", "true");
        }
        map3.put("app_active", String.valueOf(this.lifecycleDataSource.appIsForeground()));
        this.diagnosticEventRepository.addDiagnosticEvent(this.getDiagnosticEventRequest.invoke(diagnosticEventType, str, map3, map2, d, boolValueOf, opportunityId, placementId, adType, num, byteString));
    }
}
