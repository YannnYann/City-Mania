package io.bidmachine.util.conversion;

import kotlin.jvm.internal.Intrinsics;

/* JADX INFO: compiled from: StringTypeConversion.kt */
/* JADX INFO: loaded from: classes5.dex */
public final class StringTypeConversion extends BaseTypeConversion<String> {
    @Override // io.bidmachine.util.conversion.BaseTypeConversion
    public String to(String value) {
        Intrinsics.checkNotNullParameter(value, "value");
        return value;
    }

    @Override // io.bidmachine.util.conversion.BaseTypeConversion
    public String to(Object value) {
        Intrinsics.checkNotNullParameter(value, "value");
        return value.toString();
    }
}
