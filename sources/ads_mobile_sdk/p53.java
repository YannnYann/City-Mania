package ads_mobile_sdk;

import java.io.ByteArrayInputStream;
import java.io.Closeable;
import java.nio.charset.Charset;
import kotlin.jvm.internal.Intrinsics;
import kotlin.text.Charsets;

/* JADX INFO: loaded from: classes.dex */
public final class p53 implements Closeable {
    public final byte[] a;

    public p53(byte[] bytes) {
        Intrinsics.checkNotNullParameter(bytes, "bytes");
        this.a = bytes;
    }

    public static String a(p53 p53Var) {
        Charset charset = Charsets.UTF_8;
        p53Var.getClass();
        Intrinsics.checkNotNullParameter(charset, "charset");
        return new String(p53Var.a, charset);
    }

    @Override // java.io.Closeable, java.lang.AutoCloseable
    public final void close() {
    }

    public final ByteArrayInputStream a() {
        return new ByteArrayInputStream(this.a);
    }
}
