package io.blueflower.stapel2d.util;

import java.io.IOException;
import java.io.InputStream;
import java.io.OutputStream;
import kotlin.jvm.internal.Intrinsics;

/* JADX INFO: compiled from: StreamCopyUtil.kt */
/* JADX INFO: loaded from: classes5.dex */
public final class StreamCopyUtil {
    public static final StreamCopyUtil INSTANCE = new StreamCopyUtil();
    public static final StreamCopyUtil$copyBuffer$1 copyBuffer = new ThreadLocal<byte[]>() { // from class: io.blueflower.stapel2d.util.StreamCopyUtil$copyBuffer$1
        @Override // java.lang.ThreadLocal
        public byte[] initialValue() {
            return new byte[8192];
        }
    };

    public static final byte[] getBuffer() {
        byte[] bArr = copyBuffer.get();
        Intrinsics.checkNotNullExpressionValue(bArr, "get(...)");
        return bArr;
    }

    public static final void copyTo(InputStream inputStream, OutputStream outputStream) throws IOException {
        Intrinsics.checkNotNullParameter(inputStream, "inputStream");
        Intrinsics.checkNotNullParameter(outputStream, "outputStream");
        byte[] bArr = copyBuffer.get();
        while (true) {
            int i = inputStream.read(bArr);
            if (i < 0) {
                return;
            } else {
                outputStream.write(bArr, 0, i);
            }
        }
    }
}
