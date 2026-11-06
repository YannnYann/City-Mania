package io.bidmachine.utils;

import io.bidmachine.iab.utils.IabClickCallback;
import io.bidmachine.unified.UnifiedAdCallback;
import io.bidmachine.util.ProcessUrlResult;
import io.bidmachine.util.SafeExecutable;
import kotlin.jvm.internal.Intrinsics;

/* JADX INFO: loaded from: classes5.dex */
public final class ClickPostMethod implements SafeExecutable<ProcessUrlResult> {
    public final UnifiedAdCallback callback;
    public final IabClickCallback iabClickCallback;

    public ClickPostMethod(UnifiedAdCallback callback, IabClickCallback iabClickCallback) {
        Intrinsics.checkNotNullParameter(callback, "callback");
        Intrinsics.checkNotNullParameter(iabClickCallback, "iabClickCallback");
        this.callback = callback;
        this.iabClickCallback = iabClickCallback;
    }

    @Override // io.bidmachine.util.SafeExecutable
    public void onExecute(ProcessUrlResult input) {
        Intrinsics.checkNotNullParameter(input, "input");
        if (input.isSuccess()) {
            this.iabClickCallback.clickVerified();
            UnifiedAdCallback.onAdClicked$default(this.callback, input.getSystemComponent(), null, 2, null);
        }
        this.iabClickCallback.clickHandled();
    }
}
