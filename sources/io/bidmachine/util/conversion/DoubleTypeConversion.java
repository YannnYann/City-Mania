package io.bidmachine.util.conversion;

import kotlin.jvm.internal.Intrinsics;

/* JADX INFO: compiled from: DoubleTypeConversion.kt */
/* JADX INFO: loaded from: classes5.dex */
public final class DoubleTypeConversion extends BaseTypeConversion<Double> {
    /* JADX WARN: Can't rename method to resolve collision */
    @Override // io.bidmachine.util.conversion.BaseTypeConversion
    public Double to(Object value) {
        Intrinsics.checkNotNullParameter(value, "value");
        if (value instanceof Integer) {
            return Double.valueOf(((Number) value).intValue());
        }
        if (value instanceof Long) {
            return Double.valueOf(((Number) value).longValue());
        }
        if (value instanceof String) {
            return (Double) TypeConversion.toOrDefault$default(this, (String) value, null, 2, null);
        }
        return to(value.toString());
    }

    /* JADX WARN: Can't rename method to resolve collision */
    @Override // io.bidmachine.util.conversion.BaseTypeConversion
    public Double to(String value) {
        Intrinsics.checkNotNullParameter(value, "value");
        try {
            return Double.valueOf(Double.parseDouble(value));
        } catch (Throwable unused) {
            return null;
        }
    }
}
