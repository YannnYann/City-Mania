package com.google.crypto.tink.aead.internal;

import com.google.crypto.tink.subtle.Bytes;
import java.nio.ByteBuffer;
import java.nio.ByteOrder;
import java.security.GeneralSecurityException;
import java.security.InvalidKeyException;

/* JADX INFO: loaded from: classes3.dex */
public abstract class InsecureNonceChaCha20Base {
    public final int initialCounter;
    public int[] key;

    public abstract int[] createInitialState(final int[] nonce, int counter);

    public abstract int nonceSizeInBytes();

    public InsecureNonceChaCha20Base(final byte[] key, int initialCounter) throws InvalidKeyException {
        if (key.length != 32) {
            throw new InvalidKeyException("The key length in bytes must be 32.");
        }
        this.key = ChaCha20Util.toIntArray(key);
        this.initialCounter = initialCounter;
    }

    public byte[] decrypt(final byte[] nonce, ByteBuffer ciphertext) throws GeneralSecurityException {
        ByteBuffer byteBufferAllocate = ByteBuffer.allocate(ciphertext.remaining());
        process(nonce, byteBufferAllocate, ciphertext);
        return byteBufferAllocate.array();
    }

    public final void process(final byte[] nonce, ByteBuffer output, ByteBuffer input) throws GeneralSecurityException {
        if (nonce.length != nonceSizeInBytes()) {
            throw new GeneralSecurityException("The nonce length (in bytes) must be " + nonceSizeInBytes());
        }
        int iRemaining = input.remaining();
        int i = iRemaining / 64;
        int i2 = i + 1;
        for (int i3 = 0; i3 < i2; i3++) {
            ByteBuffer byteBufferChacha20Block = chacha20Block(nonce, this.initialCounter + i3);
            if (i3 == i) {
                Bytes.xor(output, input, byteBufferChacha20Block, iRemaining % 64);
            } else {
                Bytes.xor(output, input, byteBufferChacha20Block, 64);
            }
        }
    }

    public ByteBuffer chacha20Block(final byte[] nonce, int counter) {
        int[] iArrCreateInitialState = createInitialState(ChaCha20Util.toIntArray(nonce), counter);
        int[] iArr = (int[]) iArrCreateInitialState.clone();
        ChaCha20Util.shuffleState(iArr);
        for (int i = 0; i < iArrCreateInitialState.length; i++) {
            iArrCreateInitialState[i] = iArrCreateInitialState[i] + iArr[i];
        }
        ByteBuffer byteBufferOrder = ByteBuffer.allocate(64).order(ByteOrder.LITTLE_ENDIAN);
        byteBufferOrder.asIntBuffer().put(iArrCreateInitialState, 0, 16);
        return byteBufferOrder;
    }
}
