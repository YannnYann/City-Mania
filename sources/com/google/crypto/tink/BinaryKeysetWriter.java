package com.google.crypto.tink;

import com.google.crypto.tink.proto.Keyset;
import java.io.IOException;
import java.io.OutputStream;

/* JADX INFO: loaded from: classes3.dex */
public final class BinaryKeysetWriter implements KeysetWriter {
    public final OutputStream outputStream;

    public BinaryKeysetWriter(OutputStream stream) {
        this.outputStream = stream;
    }

    public static KeysetWriter withOutputStream(OutputStream stream) {
        return new BinaryKeysetWriter(stream);
    }

    @Override // com.google.crypto.tink.KeysetWriter
    public void write(Keyset keyset) throws IOException {
        try {
            keyset.writeTo(this.outputStream);
        } finally {
            this.outputStream.close();
        }
    }
}
