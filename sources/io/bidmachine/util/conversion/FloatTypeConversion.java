package io.bidmachine.util.conversion;

import kotlin.jvm.internal.Intrinsics;

/* JADX INFO: compiled from: FloatTypeConversion.kt */
/* JADX INFO: loaded from: classes5.dex */
public final class FloatTypeConversion extends BaseTypeConversion<Float> {
    /* JADX WARN: Can't rename method to resolve collision */
    @Override // io.bidmachine.util.conversion.BaseTypeConversion
    public Float to(Object value) {
        Intrinsics.checkNotNullParameter(value, "value");
        if (value instanceof Integer) {
            return Float.valueOf(((Number) value).intValue());
        }
        if (value instanceof Long) {
            return Float.valueOf(((Number) value).longValue());
        }
        if (value instanceof String) {
            return (Float) TypeConversion.toOrDefault$default(this, (String) value, null, 2, null);
        }
        return to(value.toString());
    }

    /* JADX WARN: Can't rename method to resolve collision */
    @Override // io.bidmachine.util.conversion.BaseTypeConversion
    public Float to(String value) {
        Intrinsics.checkNotNullParameter(value, "value");
        try {
            return Float.valueOf(Float.parseFloat(value));
        } catch (Throwable unused) {
            return null;
        }
    }
}
