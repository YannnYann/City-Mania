package io.bidmachine.tracking;

import com.explorestack.protobuf.Struct;
import com.explorestack.protobuf.Value;
import io.bidmachine.utils.ProtoUtilsKt;
import java.util.Map;
import kotlin.jvm.internal.Intrinsics;

/* JADX INFO: loaded from: classes5.dex */
public final class EventData {
    public Struct.Builder customParamsBuilder;
    public boolean isBillable;
    public String networkName;
    public Double price;

    public final EventData addCustomParam(String key, Object obj) {
        Intrinsics.checkNotNullParameter(key, "key");
        Struct.Builder builderObtainCustomParamsBuilder = obtainCustomParamsBuilder();
        Value valueOrNull = ProtoUtilsKt.toValueOrNull(obj);
        if (valueOrNull != null) {
            builderObtainCustomParamsBuilder.putFields(key, valueOrNull);
        }
        return this;
    }

    public final EventData addCustomParams(Map<String, ? extends Object> map) {
        Struct.Builder builderObtainCustomParamsBuilder = obtainCustomParamsBuilder();
        if (map != null) {
            for (Map.Entry<String, ? extends Object> entry : map.entrySet()) {
                Value valueOrNull = ProtoUtilsKt.toValueOrNull(entry.getValue());
                if (valueOrNull != null) {
                    builderObtainCustomParamsBuilder.putFields(entry.getKey(), valueOrNull);
                }
            }
        }
        return this;
    }

    public final Struct getCustomParams() {
        Struct.Builder builder = this.customParamsBuilder;
        if (builder != null) {
            return builder.build();
        }
        return null;
    }

    public final String getNetworkName() {
        return this.networkName;
    }

    public final Double getPrice() {
        return this.price;
    }

    public final boolean isBillable() {
        return this.isBillable;
    }

    public final Struct.Builder obtainCustomParamsBuilder() {
        Struct.Builder builder = this.customParamsBuilder;
        if (builder != null) {
            return builder;
        }
        Struct.Builder builderNewBuilder = Struct.newBuilder();
        this.customParamsBuilder = builderNewBuilder;
        Intrinsics.checkNotNullExpressionValue(builderNewBuilder, "newBuilder().also {\n    …amsBuilder = it\n        }");
        return builderNewBuilder;
    }

    public final EventData setCustomParam(String key, String value) {
        Intrinsics.checkNotNullParameter(key, "key");
        Intrinsics.checkNotNullParameter(value, "value");
        obtainCustomParamsBuilder().putFields(key, ProtoUtilsKt.toProtoValue(value));
        return this;
    }

    public final EventData setCustomParams(Map<String, ? extends Object> map) {
        this.customParamsBuilder = ProtoUtilsKt.toStructBuilderOrNull(map);
        return this;
    }

    public final EventData setIsBillable(boolean z) {
        this.isBillable = z;
        return this;
    }

    public final EventData setNetworkName(String str) {
        this.networkName = str;
        return this;
    }

    public final EventData setPrice(Double d) {
        this.price = d;
        return this;
    }
}
