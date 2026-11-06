package io.bidmachine;

import com.explorestack.protobuf.Struct;
import io.bidmachine.utils.ProtoUtils;
import java.util.LinkedHashMap;
import java.util.Map;
import kotlin.jvm.internal.Intrinsics;

/* JADX INFO: loaded from: classes4.dex */
public final class CustomParams {
    private final Map<String, Object> customMap = new LinkedHashMap();

    /* JADX INFO: renamed from: addParams, reason: collision with other method in class */
    public /* bridge */ /* synthetic */ Object m2444addParams(Map map) {
        return addParams((Map<String, String>) map);
    }

    public final void fillStructBuilder(Struct.Builder builder) {
        Intrinsics.checkNotNullParameter(builder, "builder");
        ProtoUtils.fillStructWithPrimitiveValues(builder, this.customMap);
    }

    public CustomParams addParams(Map<String, String> params) {
        Intrinsics.checkNotNullParameter(params, "params");
        this.customMap.putAll(params);
        return this;
    }

    /* JADX INFO: renamed from: addParam, reason: merged with bridge method [inline-methods] */
    public CustomParams m2442addParam(String key, String value) {
        Intrinsics.checkNotNullParameter(key, "key");
        Intrinsics.checkNotNullParameter(value, "value");
        this.customMap.put(key, value);
        return this;
    }

    /* JADX INFO: renamed from: addParam, reason: merged with bridge method [inline-methods] */
    public CustomParams m2441addParam(String key, int i) {
        Intrinsics.checkNotNullParameter(key, "key");
        this.customMap.put(key, Integer.valueOf(i));
        return this;
    }

    /* JADX INFO: renamed from: addParam, reason: merged with bridge method [inline-methods] */
    public CustomParams m2440addParam(String key, float f) {
        Intrinsics.checkNotNullParameter(key, "key");
        this.customMap.put(key, Float.valueOf(f));
        return this;
    }

    /* JADX INFO: renamed from: addParam, reason: merged with bridge method [inline-methods] */
    public CustomParams m2439addParam(String key, double d) {
        Intrinsics.checkNotNullParameter(key, "key");
        this.customMap.put(key, Double.valueOf(d));
        return this;
    }

    /* JADX INFO: renamed from: addParam, reason: merged with bridge method [inline-methods] */
    public CustomParams m2443addParam(String key, boolean z) {
        Intrinsics.checkNotNullParameter(key, "key");
        this.customMap.put(key, Boolean.valueOf(z));
        return this;
    }
}
