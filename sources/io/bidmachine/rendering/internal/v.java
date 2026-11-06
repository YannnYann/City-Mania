package io.bidmachine.rendering.internal;

import io.bidmachine.rendering.model.MethodParams;
import kotlin.jvm.internal.Intrinsics;

/* JADX INFO: loaded from: classes5.dex */
public final class v extends G {
    public final String d;

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public v(MethodParams methodParams, io.bidmachine.rendering.internal.event.a eventCallback) {
        super(eventCallback);
        Intrinsics.checkNotNullParameter(methodParams, "methodParams");
        Intrinsics.checkNotNullParameter(eventCallback, "eventCallback");
        this.d = methodParams.getName();
    }

    @Override // io.bidmachine.rendering.internal.G
    public String r() {
        return this.d;
    }
}
