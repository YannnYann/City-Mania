package io.bidmachine.util.conversion;

import kotlin.jvm.internal.Intrinsics;

/* JADX INFO: compiled from: BooleanTypeConversion.kt */
/* JADX INFO: loaded from: classes5.dex */
public final class BooleanTypeConversion extends BaseTypeConversion<Boolean> {
    /* JADX WARN: Can't rename method to resolve collision */
    @Override // io.bidmachine.util.conversion.BaseTypeConversion
    public Boolean to(Object value) {
        Intrinsics.checkNotNullParameter(value, "value");
        if (value instanceof Boolean) {
            return (Boolean) value;
        }
        if (value instanceof String) {
            return to((String) value);
        }
        return null;
    }

    /* JADX WARN: Can't rename method to resolve collision */
    @Override // io.bidmachine.util.conversion.BaseTypeConversion
    public Boolean to(String value) {
        Intrinsics.checkNotNullParameter(value, "value");
        return Boolean.valueOf(Boolean.parseBoolean(value));
    }
}
