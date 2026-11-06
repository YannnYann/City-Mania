package com.unity3d.ads.core.domain;

import com.google.protobuf.ByteString;
import com.unity3d.ads.core.data.model.AdObject;
import com.unity3d.ads.core.domain.SendDiagnosticEvent;
import com.unity3d.services.core.properties.ClientProperties;
import com.unity3d.services.core.properties.SdkProperties;
import com.vungle.ads.internal.protos.Sdk;
import java.util.Map;
import kotlin.TuplesKt;
import kotlin.collections.MapsKt__MapsKt;
import kotlin.jvm.internal.Intrinsics;

/* JADX INFO: compiled from: CommonCheckForGameIdAndTestModeChanges.kt */
/* JADX INFO: loaded from: classes4.dex */
public final class CommonCheckForGameIdAndTestModeChanges implements CheckForGameIdAndTestModeChanges {
    private final GetGameId getGameId;
    private final SendDiagnosticEvent sendDiagnosticEvent;

    public CommonCheckForGameIdAndTestModeChanges(GetGameId getGameId, SendDiagnosticEvent sendDiagnosticEvent) {
        Intrinsics.checkNotNullParameter(getGameId, "getGameId");
        Intrinsics.checkNotNullParameter(sendDiagnosticEvent, "sendDiagnosticEvent");
        this.getGameId = getGameId;
        this.sendDiagnosticEvent = sendDiagnosticEvent;
    }

    @Override // com.unity3d.ads.core.domain.CheckForGameIdAndTestModeChanges
    public void invoke(boolean z) {
        String strInvoke = this.getGameId.invoke();
        if (strInvoke == null) {
            strInvoke = "null";
        }
        String previousGameId = ClientProperties.getPreviousGameId();
        if (previousGameId == null) {
            previousGameId = "null";
        }
        Map<String, String> mapMapOf = MapsKt__MapsKt.mapOf(TuplesKt.to("previous_game_id", previousGameId), TuplesKt.to("game_id", strInvoke));
        if (Intrinsics.areEqual(previousGameId, "null")) {
            return;
        }
        if (!Intrinsics.areEqual(strInvoke, previousGameId)) {
            sendDiagnostic("native_initialize_game_id_changed", mapMapOf, z);
        } else {
            sendDiagnostic("native_initialize_game_id_same", mapMapOf, z);
        }
        boolean zIsTestMode = SdkProperties.isTestMode();
        boolean previousTestMode = SdkProperties.getPreviousTestMode();
        Map<String, String> mapMapOf2 = MapsKt__MapsKt.mapOf(TuplesKt.to("previous_test_mode", String.valueOf(previousTestMode)), TuplesKt.to("test_mode", String.valueOf(zIsTestMode)));
        if (zIsTestMode != previousTestMode) {
            sendDiagnostic("native_initialize_test_mode_changed", mapMapOf2, z);
        } else {
            sendDiagnostic("native_initialize_test_mode_same", mapMapOf2, z);
        }
    }

    private final void sendDiagnostic(String str, Map<String, String> map, boolean z) {
        if (z) {
            return;
        }
        SendDiagnosticEvent.DefaultImpls.invoke$default(this.sendDiagnosticEvent, str, (Double) null, map, (Map) null, (AdObject) null, (Integer) null, (ByteString) null, Sdk.SDKError.Reason.INVALID_ADS_ENDPOINT_VALUE, (Object) null);
    }
}
