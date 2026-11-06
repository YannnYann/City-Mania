package io.bidmachine;

import android.content.Context;
import io.bidmachine.internal.AbstractC4220d;
import kotlin.jvm.internal.Intrinsics;

/* JADX INFO: loaded from: classes4.dex */
public final class BidMachineInitLegacyProvider extends AbstractC4220d {
    @Override // io.bidmachine.internal.AbstractC4220d
    public void preInitialize(Context context) {
        Intrinsics.checkNotNullParameter(context, "context");
        k.k(context);
    }
}
