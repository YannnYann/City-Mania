package kotlin.io;

import java.io.Closeable;
import kotlin.ExceptionsKt__ExceptionsKt;

/* JADX INFO: compiled from: Closeable.kt */
/* JADX INFO: loaded from: classes5.dex */
public final class CloseableKt {
    public static final void closeFinally(Closeable closeable, Throwable th) {
        if (closeable != null) {
            if (th == null) {
                closeable.close();
                return;
            }
            try {
                closeable.close();
            } catch (Throwable th2) {
                ExceptionsKt__ExceptionsKt.addSuppressed(th, th2);
            }
        }
    }
}
