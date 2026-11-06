package com.ironsource;

import com.ironsource.mediationsdk.logger.IronSourceError;
import kotlin.jvm.internal.Intrinsics;

/* JADX INFO: renamed from: com.ironsource.ve, reason: case insensitive filesystem */
/* JADX INFO: loaded from: classes3.dex */
public final class C3897ve extends IllegalArgumentException {
    private final IronSourceError a;
    private final int b;

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public C3897ve(IronSourceError error) {
        super(error.getErrorMessage());
        Intrinsics.checkNotNullParameter(error, "error");
        this.a = error;
        this.b = error.getErrorCode();
    }

    public final IronSourceError a() {
        return this.a;
    }

    public final int b() {
        return this.b;
    }
}
