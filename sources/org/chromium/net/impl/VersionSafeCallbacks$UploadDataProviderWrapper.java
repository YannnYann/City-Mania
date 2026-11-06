package org.chromium.net.impl;

import java.io.IOException;
import java.nio.ByteBuffer;
import org.chromium.net.UploadDataProvider;
import org.chromium.net.UploadDataSink;

/* JADX INFO: loaded from: classes5.dex */
public final class VersionSafeCallbacks$UploadDataProviderWrapper extends UploadDataProvider {
    public final UploadDataProvider mWrappedProvider;

    public VersionSafeCallbacks$UploadDataProviderWrapper(UploadDataProvider provider) {
        this.mWrappedProvider = provider;
    }

    @Override // org.chromium.net.UploadDataProvider
    public long getLength() throws IOException {
        return this.mWrappedProvider.getLength();
    }

    @Override // org.chromium.net.UploadDataProvider
    public void read(UploadDataSink uploadDataSink, ByteBuffer byteBuffer) throws IOException {
        this.mWrappedProvider.read(uploadDataSink, byteBuffer);
    }

    @Override // org.chromium.net.UploadDataProvider
    public void rewind(UploadDataSink uploadDataSink) throws IOException {
        this.mWrappedProvider.rewind(uploadDataSink);
    }

    @Override // org.chromium.net.UploadDataProvider, java.io.Closeable, java.lang.AutoCloseable
    public void close() throws IOException {
        this.mWrappedProvider.close();
    }
}
