package com.google.crypto.tink;

import com.google.crypto.tink.proto.Keyset;
import com.google.crypto.tink.shaded.protobuf.ExtensionRegistryLite;
import java.io.ByteArrayInputStream;
import java.io.IOException;
import java.io.InputStream;

/* JADX INFO: loaded from: classes3.dex */
public final class BinaryKeysetReader implements KeysetReader {
    public final InputStream inputStream;

    public static KeysetReader withBytes(final byte[] bytes) {
        return new BinaryKeysetReader(new ByteArrayInputStream(bytes));
    }

    public BinaryKeysetReader(InputStream stream) {
        this.inputStream = stream;
    }

    @Override // com.google.crypto.tink.KeysetReader
    public Keyset read() throws IOException {
        try {
            return Keyset.parseFrom(this.inputStream, ExtensionRegistryLite.getEmptyRegistry());
        } finally {
            this.inputStream.close();
        }
    }
}
