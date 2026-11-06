package io.bidmachine.util.conversion;

import kotlin.jvm.internal.Intrinsics;

/* JADX INFO: compiled from: LongTypeConversion.kt */
/* JADX INFO: loaded from: classes5.dex */
public final class LongTypeConversion extends BaseTypeConversion<Long> {
    /* JADX WARN: Can't rename method to resolve collision */
    @Override // io.bidmachine.util.conversion.BaseTypeConversion
    public Long to(Object value) {
        Intrinsics.checkNotNullParameter(value, "value");
        if (value instanceof Number) {
            return Long.valueOf(((Number) value).longValue());
        }
        if (value instanceof String) {
            return (Long) TypeConversion.toOrDefault$default(this, (String) value, null, 2, null);
        }
        return null;
    }

    /* JADX WARN: Can't rename method to resolve collision */
    @Override // io.bidmachine.util.conversion.BaseTypeConversion
    public Long to(String value) {
        Intrinsics.checkNotNullParameter(value, "value");
        try {
            return Long.valueOf(Long.parseLong(value));
        } catch (Throwable unused) {
            return null;
        }
    }
}
