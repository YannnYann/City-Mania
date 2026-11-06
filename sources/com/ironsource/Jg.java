package com.ironsource;

/* JADX INFO: loaded from: classes3.dex */
public interface Jg {
    static /* synthetic */ Hg a(Jg jg, Pg pg, E e, int i, Object obj) {
        if (obj != null) {
            throw new UnsupportedOperationException("Super calls with default arguments not supported in this target, function: createWaterfall");
        }
        if ((i & 2) != 0) {
            e = null;
        }
        return jg.a(pg, e);
    }

    Hg a(Pg pg, E e);
}
