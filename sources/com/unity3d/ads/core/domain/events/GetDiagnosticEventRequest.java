package com.unity3d.ads.core.domain.events;

import com.google.protobuf.ByteString;
import com.unity3d.ads.core.domain.GetSharedDataTimestamps;
import gatewayprotocol.v1.DiagnosticEventKt;
import gatewayprotocol.v1.DiagnosticEventRequestOuterClass;
import gatewayprotocol.v1.DiagnosticTagKt;
import java.util.ArrayList;
import java.util.List;
import java.util.Map;
import kotlin.collections.MapsKt__MapsKt;
import kotlin.jvm.internal.Intrinsics;
import kotlinx.coroutines.flow.MutableStateFlow;
import kotlinx.coroutines.flow.StateFlowKt;

/* JADX INFO: compiled from: GetDiagnosticEventRequest.kt */
/* JADX INFO: loaded from: classes4.dex */
public final class GetDiagnosticEventRequest {
    private final GetSharedDataTimestamps getSharedDataTimestamps;
    private final MutableStateFlow<Integer> uniqueId;

    public final DiagnosticEventRequestOuterClass.DiagnosticEvent invoke(DiagnosticEventRequestOuterClass.DiagnosticEventType diagnosticEventType, String str, Map<String, String> map, Map<String, Integer> map2, Double d, Boolean bool, ByteString byteString, String str2, DiagnosticEventRequestOuterClass.DiagnosticAdType diagnosticAdType, Integer num, ByteString byteString2) {
        Integer value;
        Integer numValueOf;
        Intrinsics.checkNotNullParameter(diagnosticEventType, "diagnosticEventType");
        DiagnosticEventKt.Dsl.Companion companion = DiagnosticEventKt.Dsl.Companion;
        DiagnosticEventRequestOuterClass.DiagnosticEvent.Builder builderNewBuilder = DiagnosticEventRequestOuterClass.DiagnosticEvent.newBuilder();
        Intrinsics.checkNotNullExpressionValue(builderNewBuilder, "newBuilder(...)");
        DiagnosticEventKt.Dsl dsl_create = companion._create(builderNewBuilder);
        Map<String, String> mutableMap = map != null ? MapsKt__MapsKt.toMutableMap(map) : null;
        String strRemove = mutableMap != null ? mutableMap.remove("reason") : null;
        String strRemove2 = mutableMap != null ? mutableMap.remove("reason_debug") : null;
        MutableStateFlow<Integer> mutableStateFlow = this.uniqueId;
        do {
            value = mutableStateFlow.getValue();
            numValueOf = Integer.valueOf(value.intValue() + 1);
        } while (!mutableStateFlow.compareAndSet(value, numValueOf));
        dsl_create.setEventId(numValueOf.intValue());
        dsl_create.setEventType(diagnosticEventType);
        if (str != null) {
            dsl_create.setCustomEventType(str);
        }
        dsl_create.setTimestamps(this.getSharedDataTimestamps.invoke());
        if (d != null) {
            dsl_create.setTimeValue(d.doubleValue());
        }
        if (bool != null) {
            dsl_create.setIsHeaderBidding(bool.booleanValue());
        }
        if (byteString != null) {
            dsl_create.setImpressionOpportunityId(byteString);
        }
        if (str2 != null) {
            dsl_create.setPlacementId(str2);
        }
        if (diagnosticAdType != null) {
            dsl_create.setAdType(diagnosticAdType);
        }
        if (num != null) {
            dsl_create.setHeaderBiddingTokenNumber(num.intValue());
        }
        if (strRemove != null) {
            dsl_create.setReason(strRemove);
        }
        if (strRemove2 != null) {
            dsl_create.setReasonDebug(strRemove2);
        }
        if (byteString2 != null) {
            dsl_create.setErrorToken(byteString2);
        }
        dsl_create.addAllTags(dsl_create.getTags(), getTags(mutableMap, map2));
        return dsl_create._build();
    }

    public GetDiagnosticEventRequest(GetSharedDataTimestamps getSharedDataTimestamps) {
        Intrinsics.checkNotNullParameter(getSharedDataTimestamps, "getSharedDataTimestamps");
        this.getSharedDataTimestamps = getSharedDataTimestamps;
        this.uniqueId = StateFlowKt.MutableStateFlow(-1);
    }

    private final List<DiagnosticEventRequestOuterClass.DiagnosticTag> getTags(Map<String, String> map, Map<String, Integer> map2) {
        ArrayList arrayList = new ArrayList();
        if (map != null) {
            ArrayList arrayList2 = new ArrayList(map.size());
            for (Map.Entry<String, String> entry : map.entrySet()) {
                DiagnosticTagKt.Dsl.Companion companion = DiagnosticTagKt.Dsl.Companion;
                DiagnosticEventRequestOuterClass.DiagnosticTag.Builder builderNewBuilder = DiagnosticEventRequestOuterClass.DiagnosticTag.newBuilder();
                Intrinsics.checkNotNullExpressionValue(builderNewBuilder, "newBuilder(...)");
                DiagnosticTagKt.Dsl dsl_create = companion._create(builderNewBuilder);
                DiagnosticEventRequestOuterClass.DiagnosticTagType tag = getTag(entry.getKey());
                dsl_create.setType(tag);
                if (tag == DiagnosticEventRequestOuterClass.DiagnosticTagType.DIAGNOSTIC_TAG_TYPE_CUSTOM) {
                    dsl_create.setCustomTagType(entry.getKey());
                }
                dsl_create.setStringValue(entry.getValue());
                arrayList2.add(dsl_create._build());
            }
            arrayList.addAll(arrayList2);
        }
        if (map2 != null) {
            ArrayList arrayList3 = new ArrayList(map2.size());
            for (Map.Entry<String, Integer> entry2 : map2.entrySet()) {
                DiagnosticTagKt.Dsl.Companion companion2 = DiagnosticTagKt.Dsl.Companion;
                DiagnosticEventRequestOuterClass.DiagnosticTag.Builder builderNewBuilder2 = DiagnosticEventRequestOuterClass.DiagnosticTag.newBuilder();
                Intrinsics.checkNotNullExpressionValue(builderNewBuilder2, "newBuilder(...)");
                DiagnosticTagKt.Dsl dsl_create2 = companion2._create(builderNewBuilder2);
                DiagnosticEventRequestOuterClass.DiagnosticTagType tag2 = getTag(entry2.getKey());
                dsl_create2.setType(tag2);
                if (tag2 == DiagnosticEventRequestOuterClass.DiagnosticTagType.DIAGNOSTIC_TAG_TYPE_CUSTOM) {
                    dsl_create2.setCustomTagType(entry2.getKey());
                }
                dsl_create2.setIntValue(entry2.getValue().intValue());
                arrayList3.add(dsl_create2._build());
            }
            arrayList.addAll(arrayList3);
        }
        return arrayList;
    }

    /* JADX WARN: Failed to restore switch over string. Please report as a decompilation issue */
    private final DiagnosticEventRequestOuterClass.DiagnosticTagType getTag(String str) {
        switch (str.hashCode()) {
            case -2140823688:
                if (str.equals("cache_source")) {
                    return DiagnosticEventRequestOuterClass.DiagnosticTagType.DIAGNOSTIC_TAG_TYPE_CACHE;
                }
                break;
            case -989163880:
                if (str.equals("protocol")) {
                    return DiagnosticEventRequestOuterClass.DiagnosticTagType.DIAGNOSTIC_TAG_TYPE_PROTOCOL;
                }
                break;
            case -896505829:
                if (str.equals("source")) {
                    return DiagnosticEventRequestOuterClass.DiagnosticTagType.DIAGNOSTIC_TAG_TYPE_SOURCE;
                }
                break;
            case 116079:
                if (str.equals("url")) {
                    return DiagnosticEventRequestOuterClass.DiagnosticTagType.DIAGNOSTIC_TAG_TYPE_HOST;
                }
                break;
            case 109757585:
                if (str.equals("state")) {
                    return DiagnosticEventRequestOuterClass.DiagnosticTagType.DIAGNOSTIC_TAG_TYPE_STATE;
                }
                break;
            case 123374419:
                if (str.equals("is_retry")) {
                    return DiagnosticEventRequestOuterClass.DiagnosticTagType.DIAGNOSTIC_TAG_TYPE_IS_RETRY;
                }
                break;
            case 1439091211:
                if (str.equals("complete_state")) {
                    return DiagnosticEventRequestOuterClass.DiagnosticTagType.DIAGNOSTIC_TAG_TYPE_COMPLETE_STATE;
                }
                break;
            case 2105542229:
                if (str.equals("size_kb")) {
                    return DiagnosticEventRequestOuterClass.DiagnosticTagType.DIAGNOSTIC_TAG_TYPE_SIZE_KB;
                }
                break;
        }
        return DiagnosticEventRequestOuterClass.DiagnosticTagType.DIAGNOSTIC_TAG_TYPE_CUSTOM;
    }
}
