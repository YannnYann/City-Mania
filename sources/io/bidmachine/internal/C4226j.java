package io.bidmachine.internal;

import io.bidmachine.AdProcessCallback;
import io.bidmachine.ExpirationHandler;
import io.bidmachine.utils.BMError;
import kotlin.jvm.internal.Intrinsics;

/* JADX INFO: renamed from: io.bidmachine.internal.j, reason: case insensitive filesystem */
/* JADX INFO: loaded from: classes5.dex */
public final class C4226j implements ExpirationHandler.Listener {
    public final AdProcessCallback a;

    public C4226j(AdProcessCallback adProcessCallback) {
        Intrinsics.checkNotNullParameter(adProcessCallback, "adProcessCallback");
        this.a = adProcessCallback;
    }

    @Override // io.bidmachine.ExpirationHandler.Listener
    public void onExpired() {
        this.a.processLoadFail(new BMError(BMError.TimeoutError, -1, "Creative loading timeout reached"));
    }
}
