package io.bidmachine.ads.networks.adaptiverendering;

import com.explorestack.protobuf.ListValue;
import com.explorestack.protobuf.Struct;
import com.explorestack.protobuf.Value;
import io.bidmachine.core.UtilsKt;
import io.bidmachine.rendering.model.BrokenCreativeAlgorithmParams;
import io.bidmachine.rendering.model.BrokenCreativeAlgorithmResult;
import io.bidmachine.rendering.model.BrokenCreativeEvent;
import io.bidmachine.util.Error;
import io.bidmachine.utils.BMError;
import io.bidmachine.utils.ProtoUtilsKt;
import java.util.HashMap;
import java.util.Map;
import kotlin.jvm.functions.Function1;
import kotlin.jvm.internal.Intrinsics;
import kotlin.jvm.internal.Lambda;

/* JADX INFO: loaded from: classes4.dex */
public final class AdaptiveRenderingAdapterKt {

    public static final class a extends Lambda implements Function1 {
        public static final a a = new a();

        public a() {
            super(1);
        }

        @Override // kotlin.jvm.functions.Function1
        /* JADX INFO: renamed from: a, reason: merged with bridge method [inline-methods] */
        public final Value invoke(BrokenCreativeAlgorithmResult brokenCreativeAlgorithmResult) {
            Intrinsics.checkNotNullParameter(brokenCreativeAlgorithmResult, "brokenCreativeAlgorithmResult");
            BrokenCreativeAlgorithmParams algorithmParams = brokenCreativeAlgorithmResult.getAlgorithmParams();
            Struct.Builder builderNewBuilder = Struct.newBuilder();
            Intrinsics.checkNotNullExpressionValue(builderNewBuilder, "newBuilder()");
            Struct structBuild = ProtoUtilsKt.putField(ProtoUtilsKt.putField(ProtoUtilsKt.putField(builderNewBuilder, "name", algorithmParams.getType().getKey()), "weight", Float.valueOf(algorithmParams.getWeight())), "threshold", Float.valueOf(algorithmParams.getThreshold())).build();
            Intrinsics.checkNotNullExpressionValue(structBuild, "brokenCreativeAlgorithmR…build()\n                }");
            Struct.Builder builderNewBuilder2 = Struct.newBuilder();
            Intrinsics.checkNotNullExpressionValue(builderNewBuilder2, "newBuilder()");
            return ProtoUtilsKt.toProtoValue(ProtoUtilsKt.putField(ProtoUtilsKt.putField(ProtoUtilsKt.putField(builderNewBuilder2, "algorithm", structBuild), "result", Integer.valueOf(UtilsKt.convertToInt(brokenCreativeAlgorithmResult.isBroken()))), "duration", Long.valueOf(brokenCreativeAlgorithmResult.getDurationMs())));
        }
    }

    public static final BMError toBMError(Error error) {
        Intrinsics.checkNotNullParameter(error, "<this>");
        return new BMError(108, error.getMessage());
    }

    public static final Map<String, Object> toEventParams(BrokenCreativeEvent brokenCreativeEvent) {
        Intrinsics.checkNotNullParameter(brokenCreativeEvent, "<this>");
        try {
            ListValue listValueMapNotNullToProtoListValue = ProtoUtilsKt.mapNotNullToProtoListValue(brokenCreativeEvent.getAlgorithmResults(), a.a);
            Struct.Builder builderNewBuilder = Struct.newBuilder();
            Intrinsics.checkNotNullExpressionValue(builderNewBuilder, "newBuilder()");
            Value protoValue = ProtoUtilsKt.toProtoValue(ProtoUtilsKt.putField(ProtoUtilsKt.putField(ProtoUtilsKt.putField(ProtoUtilsKt.putField(ProtoUtilsKt.putField(builderNewBuilder, "result", Double.valueOf(brokenCreativeEvent.isBroken())), "phase", Integer.valueOf(brokenCreativeEvent.getAdPhaseSequence())), "component", brokenCreativeEvent.getAdElementName()), "duration", Long.valueOf(brokenCreativeEvent.getDurationMs())), "algorithms", listValueMapNotNullToProtoListValue));
            HashMap map = new HashMap();
            map.put("adaptive_rendering_context", protoValue);
            return map;
        } catch (Throwable unused) {
            return null;
        }
    }

    public static final BMError toBMError(Error error, BMError baseBMError) {
        Intrinsics.checkNotNullParameter(error, "<this>");
        Intrinsics.checkNotNullParameter(baseBMError, "baseBMError");
        return new BMError(baseBMError, -1, error.getMessage());
    }
}
