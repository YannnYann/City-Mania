package org.chromium.net.impl;

import java.nio.ByteBuffer;

/* JADX INFO: loaded from: classes5.dex */
public final class Preconditions {
    public static void checkDirect(ByteBuffer buffer) {
        if (!buffer.isDirect()) {
            throw new IllegalArgumentException("byteBuffer must be a direct ByteBuffer.");
        }
    }

    public static void checkHasRemaining(ByteBuffer buffer) {
        if (!buffer.hasRemaining()) {
            throw new IllegalArgumentException("ByteBuffer is already full.");
        }
    }
}
