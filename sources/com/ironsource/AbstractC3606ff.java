package com.ironsource;

import kotlin.jvm.internal.Intrinsics;

/* JADX INFO: renamed from: com.ironsource.ff, reason: case insensitive filesystem */
/* JADX INFO: loaded from: classes3.dex */
public abstract class AbstractC3606ff {
    private final O a;

    public AbstractC3606ff(O o) {
        this.a = o;
    }

    public final O a() {
        return this.a;
    }

    public abstract EnumC3731mf b();

    public final C3882v a(Ob<AbstractC3606ff, C3882v> mapper) {
        Intrinsics.checkNotNullParameter(mapper, "mapper");
        return mapper.a(this);
    }
}
