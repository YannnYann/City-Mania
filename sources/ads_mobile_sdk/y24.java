package ads_mobile_sdk;

import android.util.Pair;
import java.io.IOException;
import java.io.RandomAccessFile;
import java.nio.ByteBuffer;
import java.nio.ByteOrder;

/* JADX INFO: loaded from: classes.dex */
public abstract class y24 {
    public static Pair a(RandomAccessFile randomAccessFile, int i) throws IOException {
        int i2;
        if (i >= 0 && i <= 65535) {
            long length = randomAccessFile.length();
            if (length < 22) {
                return null;
            }
            ByteBuffer byteBufferAllocate = ByteBuffer.allocate(((int) Math.min(i, length - 22)) + 22);
            ByteOrder byteOrder = ByteOrder.LITTLE_ENDIAN;
            byteBufferAllocate.order(byteOrder);
            long jCapacity = length - ((long) byteBufferAllocate.capacity());
            randomAccessFile.seek(jCapacity);
            randomAccessFile.readFully(byteBufferAllocate.array(), byteBufferAllocate.arrayOffset(), byteBufferAllocate.capacity());
            if (byteBufferAllocate.order() == byteOrder) {
                int iCapacity = byteBufferAllocate.capacity();
                if (iCapacity < 22) {
                    i2 = -1;
                } else {
                    int i3 = iCapacity - 22;
                    int iMin = Math.min(i3, 65535);
                    for (int i4 = 0; i4 < iMin; i4++) {
                        i2 = i3 - i4;
                        if (byteBufferAllocate.getInt(i2) == 101010256 && (byteBufferAllocate.getShort(i2 + 20) & 65535) == i4) {
                            break;
                        }
                    }
                    i2 = -1;
                }
                if (i2 == -1) {
                    return null;
                }
                byteBufferAllocate.position(i2);
                ByteBuffer byteBufferSlice = byteBufferAllocate.slice();
                byteBufferSlice.order(ByteOrder.LITTLE_ENDIAN);
                return Pair.create(byteBufferSlice, Long.valueOf(jCapacity + ((long) i2)));
            }
            throw new IllegalArgumentException("ByteBuffer byte order must be little endian");
        }
        throw new IllegalArgumentException(uj.a("maxCommentSize: ", i));
    }
}
