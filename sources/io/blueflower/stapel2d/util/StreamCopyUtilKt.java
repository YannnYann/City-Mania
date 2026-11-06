package io.blueflower.stapel2d.util;

import java.io.IOException;
import java.io.InputStream;
import java.io.OutputStream;
import kotlin.jvm.internal.Intrinsics;

/* JADX INFO: compiled from: StreamCopyUtil.kt */
/* JADX INFO: loaded from: classes5.dex */
public final class StreamCopyUtilKt {
    public static final void copyTo(InputStream inputStream, OutputStream outputStream) throws IOException {
        Intrinsics.checkNotNullParameter(inputStream, "<this>");
        Intrinsics.checkNotNullParameter(outputStream, "outputStream");
        StreamCopyUtil.copyTo(inputStream, outputStream);
    }
}
