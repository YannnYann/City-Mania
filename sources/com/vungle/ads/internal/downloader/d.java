package com.vungle.ads.internal.downloader;

/* JADX INFO: loaded from: classes4.dex */
public final class d {
    public int a;

    public final int a() {
        return this.a;
    }

    public final String toString() {
        StringBuilder sbA = com.iab.omid.library.vungle.internal.l.a("Progress(status=");
        sbA.append(this.a);
        sbA.append(')');
        return sbA.toString();
    }

    public final void a(int i) {
        this.a = i;
    }
}
