package com.google.common.primitives;

import com.google.common.base.Preconditions;

/* JADX INFO: loaded from: classes3.dex */
public final class UnsignedBytes {
    public static int toInt(byte value) {
        return value & 255;
    }

    public static byte checkedCast(long value) {
        Preconditions.checkArgument((value >> 8) == 0, "out of range: %s", value);
        return (byte) value;
    }
}
