package com.ironsource;

/* JADX INFO: renamed from: com.ironsource.hg, reason: case insensitive filesystem */
/* JADX INFO: loaded from: classes3.dex */
public interface InterfaceC3643hg {
    static /* synthetic */ void a(InterfaceC3643hg interfaceC3643hg, Runnable runnable, long j, int i, Object obj) {
        if (obj != null) {
            throw new UnsupportedOperationException("Super calls with default arguments not supported in this target, function: postReleaseTask");
        }
        if ((i & 2) != 0) {
            j = 0;
        }
        interfaceC3643hg.a(runnable, j);
    }

    void a(Runnable runnable);

    void a(Runnable runnable, long j);
}
