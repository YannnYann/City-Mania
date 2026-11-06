package com.google.crypto.tink.subtle;

import com.google.android.gms.common.api.Api;
import java.nio.ByteBuffer;
import java.security.GeneralSecurityException;
import java.security.MessageDigest;

/* JADX INFO: loaded from: classes3.dex */
public final class Bytes {
    public static final boolean equal(final byte[] x, final byte[] y) {
        return MessageDigest.isEqual(x, y);
    }

    public static byte[] concat(byte[]... chunks) throws GeneralSecurityException {
        int length = 0;
        for (byte[] bArr : chunks) {
            if (length > Api.BaseClientBuilder.API_PRIORITY_OTHER - bArr.length) {
                throw new GeneralSecurityException("exceeded size limit");
            }
            length += bArr.length;
        }
        byte[] bArr2 = new byte[length];
        int length2 = 0;
        for (byte[] bArr3 : chunks) {
            System.arraycopy(bArr3, 0, bArr2, length2, bArr3.length);
            length2 += bArr3.length;
        }
        return bArr2;
    }

    public static final byte[] xor(final byte[] x, int offsetX, final byte[] y, int offsetY, int len) {
        if (len < 0 || x.length - len < offsetX || y.length - len < offsetY) {
            throw new IllegalArgumentException("That combination of buffers, offsets and length to xor result in out-of-bond accesses.");
        }
        byte[] bArr = new byte[len];
        for (int i = 0; i < len; i++) {
            bArr[i] = (byte) (x[i + offsetX] ^ y[i + offsetY]);
        }
        return bArr;
    }

    public static final void xor(ByteBuffer output, ByteBuffer x, ByteBuffer y, int len) {
        if (len < 0 || x.remaining() < len || y.remaining() < len || output.remaining() < len) {
            throw new IllegalArgumentException("That combination of buffers, offsets and length to xor result in out-of-bond accesses.");
        }
        for (int i = 0; i < len; i++) {
            output.put((byte) (x.get() ^ y.get()));
        }
    }

    public static final byte[] xor(final byte[] x, final byte[] y) {
        if (x.length != y.length) {
            throw new IllegalArgumentException("The lengths of x and y should match.");
        }
        return xor(x, 0, y, 0, x.length);
    }
}
