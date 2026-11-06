package io.bidmachine;

import com.explorestack.protobuf.Struct;
import com.explorestack.protobuf.Value;
import io.bidmachine.rendering.model.engagedclick.EngagedClickReport;
import io.bidmachine.utils.ProtoUtilsKt;
import kotlin.jvm.internal.Intrinsics;

/* JADX INFO: loaded from: classes4.dex */
public final class EngagedClickTrackingObjectImplKt {
    private static final String KEY_ACTION = "action";
    private static final String KEY_AMBIENT_DIFF = "ambient_diff";
    private static final String KEY_CREATIVE_PROFILE = "creative_profile";
    private static final String KEY_DIFF_SCORE = "diff_score";
    private static final String KEY_ENGAGED_CLICK_CONTEXT = "engaged_click_context";
    private static final String KEY_INTERACTION_DURATION_MS = "interaction_duration_ms";
    private static final String KEY_PROFILE_SOURCE = "profile_source";

    /* JADX INFO: Access modifiers changed from: private */
    public static final Value toContextValue(EngagedClickReport engagedClickReport) {
        try {
            Struct.Builder builderNewBuilder = Struct.newBuilder();
            Intrinsics.checkNotNullExpressionValue(builderNewBuilder, "newBuilder()");
            Struct.Builder builderPutField = ProtoUtilsKt.putField(ProtoUtilsKt.putField(ProtoUtilsKt.putField(ProtoUtilsKt.putField(builderNewBuilder, "action", engagedClickReport.getEngagedClickAction().getValue()), KEY_CREATIVE_PROFILE, engagedClickReport.getProfile().getValue()), KEY_PROFILE_SOURCE, engagedClickReport.getSource().getValue()), KEY_INTERACTION_DURATION_MS, Long.valueOf(engagedClickReport.getInteractionDurationMs()));
            Double diffScore = engagedClickReport.getDiffScore();
            if (diffScore != null) {
                ProtoUtilsKt.putField(builderPutField, KEY_DIFF_SCORE, Double.valueOf(diffScore.doubleValue()));
            }
            Double ambientDiff = engagedClickReport.getAmbientDiff();
            if (ambientDiff != null) {
                ProtoUtilsKt.putField(builderPutField, KEY_AMBIENT_DIFF, Double.valueOf(ambientDiff.doubleValue()));
            }
            return ProtoUtilsKt.toProtoValue(builderPutField);
        } catch (Throwable unused) {
            return null;
        }
    }
}
