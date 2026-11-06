package org.chromium.net.impl;

import java.io.FileInputStream;
import java.io.IOException;
import java.io.InputStream;
import java.nio.ByteBuffer;
import java.nio.channels.ReadableByteChannel;
import java.util.concurrent.atomic.AtomicBoolean;

/* JADX INFO: loaded from: classes5.dex */
public final class InputStreamChannel implements ReadableByteChannel {
    public final InputStream mInputStream;
    public final AtomicBoolean mIsOpen = new AtomicBoolean(true);

    public InputStreamChannel(InputStream inputStream) {
        this.mInputStream = inputStream;
    }

    public static ReadableByteChannel wrap(InputStream inputStream) {
        if (inputStream instanceof FileInputStream) {
            return ((FileInputStream) inputStream).getChannel();
        }
        return new InputStreamChannel(inputStream);
    }

    @Override // java.nio.channels.ReadableByteChannel
    public int read(ByteBuffer dst) throws IOException {
        if (dst.hasArray()) {
            int i = this.mInputStream.read(dst.array(), dst.arrayOffset() + dst.position(), dst.remaining());
            if (i > 0) {
            }
            return i;
        }
        byte[] bArr = new byte[Math.min(16384, Math.min(Math.max(this.mInputStream.available(), 4096), dst.remaining()))];
        int i2 = this.mInputStream.read(bArr);
        if (i2 > 0) {
            dst.put(bArr, 0, i2);
        }
        return i2;
    }

    @Override // java.nio.channels.Channel
    public boolean isOpen() {
        return this.mIsOpen.get();
    }

    @Override // java.nio.channels.Channel, java.io.Closeable, java.lang.AutoCloseable
    public void close() throws IOException {
        if (this.mIsOpen.compareAndSet(true, false)) {
            this.mInputStream.close();
        }
    }
}
