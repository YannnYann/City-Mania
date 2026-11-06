package io.bidmachine.util.conversion;

import kotlin.jvm.internal.Intrinsics;

/* JADX INFO: compiled from: IntTypeConversion.kt */
/* JADX INFO: loaded from: classes5.dex */
public final class IntTypeConversion extends BaseTypeConversion<Integer> {
    /* JADX WARN: Can't rename method to resolve collision */
    @Override // io.bidmachine.util.conversion.BaseTypeConversion
    public Integer to(Object value) {
        Intrinsics.checkNotNullParameter(value, "value");
        if (value instanceof Number) {
            return Integer.valueOf(((Number) value).intValue());
        }
        if (value instanceof String) {
            return (Integer) TypeConversion.toOrDefault$default(this, (String) value, null, 2, null);
        }
        return null;
    }

    /* JADX WARN: Can't rename method to resolve collision */
    @Override // io.bidmachine.util.conversion.BaseTypeConversion
    public Integer to(String value) {
        Intrinsics.checkNotNullParameter(value, "value");
        try {
            return Integer.valueOf(Integer.parseInt(value));
        } catch (Throwable unused) {
            return null;
        }
    }
}
