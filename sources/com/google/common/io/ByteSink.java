package com.google.common.io;

import com.google.common.base.Preconditions;
import java.io.IOException;
import java.io.OutputStream;

/* JADX INFO: loaded from: classes3.dex */
public abstract class ByteSink {
    public abstract OutputStream openStream() throws IOException;

    public void write(byte[] bytes) throws Throwable {
        Preconditions.checkNotNull(bytes);
        try {
            OutputStream outputStream = (OutputStream) Closer.create().register(openStream());
            outputStream.write(bytes);
            outputStream.flush();
        } finally {
        }
    }
}
