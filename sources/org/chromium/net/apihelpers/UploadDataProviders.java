package org.chromium.net.apihelpers;

import android.os.ParcelFileDescriptor;
import java.io.File;
import java.io.FileInputStream;
import java.io.IOException;
import java.nio.ByteBuffer;
import java.nio.channels.FileChannel;
import org.chromium.net.UploadDataProvider;
import org.chromium.net.UploadDataSink;

/* JADX INFO: loaded from: classes5.dex */
public final class UploadDataProviders {

    public interface FileChannelProvider {
        FileChannel getChannel() throws IOException;
    }

    public static UploadDataProvider create(final File file) {
        return new FileUploadProvider(new FileChannelProvider() { // from class: org.chromium.net.apihelpers.UploadDataProviders.1
            @Override // org.chromium.net.apihelpers.UploadDataProviders.FileChannelProvider
            public FileChannel getChannel() throws IOException {
                return new FileInputStream(file).getChannel();
            }
        });
    }

    public static UploadDataProvider create(final ParcelFileDescriptor fd) {
        return new FileUploadProvider(new FileChannelProvider() { // from class: org.chromium.net.apihelpers.UploadDataProviders.2
            @Override // org.chromium.net.apihelpers.UploadDataProviders.FileChannelProvider
            public FileChannel getChannel() throws IOException {
                if (fd.getStatSize() != -1) {
                    return new ParcelFileDescriptor.AutoCloseInputStream(fd).getChannel();
                }
                fd.close();
                throw new IllegalArgumentException("Not a file: " + String.valueOf(fd));
            }
        });
    }

    public static UploadDataProvider create(ByteBuffer buffer) {
        return new ByteBufferUploadProvider(buffer.slice());
    }

    public static UploadDataProvider create(byte[] data, int offset, int length) {
        return new ByteBufferUploadProvider(ByteBuffer.wrap(data, offset, length).slice());
    }

    public static UploadDataProvider create(byte[] data) {
        return create(data, 0, data.length);
    }

    public static final class FileUploadProvider extends UploadDataProvider {
        public volatile FileChannel mChannel;
        public final Object mLock;
        public final FileChannelProvider mProvider;

        public FileUploadProvider(FileChannelProvider provider) {
            this.mLock = new Object();
            this.mProvider = provider;
        }

        @Override // org.chromium.net.UploadDataProvider
        public long getLength() throws IOException {
            return getChannel().size();
        }

        @Override // org.chromium.net.UploadDataProvider
        public void read(UploadDataSink uploadDataSink, ByteBuffer byteBuffer) throws IOException {
            if (!byteBuffer.hasRemaining()) {
                throw new IllegalStateException("Cronet passed a buffer with no bytes remaining");
            }
            FileChannel channel = getChannel();
            int i = 0;
            while (i == 0) {
                int i2 = channel.read(byteBuffer);
                if (i2 == -1) {
                    break;
                } else {
                    i += i2;
                }
            }
            uploadDataSink.onReadSucceeded(false);
        }

        @Override // org.chromium.net.UploadDataProvider
        public void rewind(UploadDataSink uploadDataSink) throws IOException {
            getChannel().position(0L);
            uploadDataSink.onRewindSucceeded();
        }

        public final FileChannel getChannel() throws IOException {
            if (this.mChannel == null) {
                synchronized (this.mLock) {
                    try {
                        if (this.mChannel == null) {
                            this.mChannel = this.mProvider.getChannel();
                        }
                    } finally {
                    }
                }
            }
            return this.mChannel;
        }

        @Override // org.chromium.net.UploadDataProvider, java.io.Closeable, java.lang.AutoCloseable
        public void close() throws IOException {
            FileChannel fileChannel = this.mChannel;
            if (fileChannel != null) {
                fileChannel.close();
            }
        }
    }

    public static final class ByteBufferUploadProvider extends UploadDataProvider {
        public final ByteBuffer mUploadBuffer;

        public ByteBufferUploadProvider(ByteBuffer uploadBuffer) {
            this.mUploadBuffer = uploadBuffer;
        }

        @Override // org.chromium.net.UploadDataProvider
        public long getLength() {
            return this.mUploadBuffer.limit();
        }

        @Override // org.chromium.net.UploadDataProvider
        public void read(UploadDataSink uploadDataSink, ByteBuffer byteBuffer) {
            if (!byteBuffer.hasRemaining()) {
                throw new IllegalStateException("Cronet passed a buffer with no bytes remaining");
            }
            if (byteBuffer.remaining() >= this.mUploadBuffer.remaining()) {
                byteBuffer.put(this.mUploadBuffer);
            } else {
                int iLimit = this.mUploadBuffer.limit();
                ByteBuffer byteBuffer2 = this.mUploadBuffer;
                byteBuffer.put(this.mUploadBuffer);
            }
            uploadDataSink.onReadSucceeded(false);
        }

        @Override // org.chromium.net.UploadDataProvider
        public void rewind(UploadDataSink uploadDataSink) {
            uploadDataSink.onRewindSucceeded();
        }
    }
}
