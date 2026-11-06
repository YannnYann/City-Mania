package androidx.room.util;

/* JADX INFO: loaded from: classes.dex */
public class SneakyThrow {
    public static void reThrow(Exception exc) throws Throwable {
        sneakyThrow(exc);
    }

    public static <E extends Throwable> void sneakyThrow(Throwable th) throws Throwable {
        throw th;
    }
}
