package io.bidmachine.core;

/* JADX INFO: loaded from: classes4.dex */
public final class UtilsKt {
    public static final Boolean convertToBooleanOrNull(Integer num) {
        if (num != null && num.intValue() == 1) {
            return Boolean.TRUE;
        }
        if (num != null && num.intValue() == 0) {
            return Boolean.FALSE;
        }
        return null;
    }

    public static final int convertToInt(boolean z) {
        return z ? 1 : 0;
    }
}
