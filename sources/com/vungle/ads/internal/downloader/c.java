package com.vungle.ads.internal.downloader;

import kotlin.jvm.internal.Intrinsics;

/* JADX INFO: loaded from: classes4.dex */
public final class c {
    public final int a;
    public final Throwable b;
    public final int c;

    public c(int i, Throwable cause, int i2) {
        Intrinsics.checkNotNullParameter(cause, "cause");
        this.a = i;
        this.b = cause;
        this.c = i2;
    }

    public final Throwable a() {
        return this.b;
    }

    public final int b() {
        return this.c;
    }

    public final int c() {
        return this.a;
    }

    public final String toString() {
        StringBuilder sbA = com.iab.omid.library.vungle.internal.l.a("DownloadError(serverCode=");
        sbA.append(this.a);
        sbA.append(", reason=");
        sbA.append(this.c);
        sbA.append(", cause=");
        sbA.append(this.b);
        sbA.append(')');
        return sbA.toString();
    }
}
