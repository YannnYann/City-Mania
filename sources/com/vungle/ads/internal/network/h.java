package com.vungle.ads.internal.network;

/* JADX INFO: loaded from: classes4.dex */
public final class h {
    public static final void a(Throwable th) throws Throwable {
        if ((th instanceof ThreadDeath) || (th instanceof LinkageError)) {
            throw th;
        }
    }
}
