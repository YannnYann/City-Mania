package com.google.crypto.tink.internal;

import com.google.crypto.tink.util.Bytes;
import java.nio.ByteBuffer;

/* JADX INFO: loaded from: classes3.dex */
public final class OutputPrefixUtil {
    public static final Bytes EMPTY_PREFIX = Bytes.copyFrom(new byte[0]);

    public static final Bytes getLegacyOutputPrefix(int keyId) {
        return Bytes.copyFrom(ByteBuffer.allocate(5).put((byte) 0).putInt(keyId).array());
    }

    public static final Bytes getTinkOutputPrefix(int keyId) {
        return Bytes.copyFrom(ByteBuffer.allocate(5).put((byte) 1).putInt(keyId).array());
    }
}
