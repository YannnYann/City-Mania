package io.bidmachine.rendering.internal.controller;

import io.bidmachine.rendering.internal.InterfaceC4239b;
import io.bidmachine.rendering.internal.t;
import io.bidmachine.rendering.utils.taskmanager.CancelableTask;
import kotlin.jvm.internal.Intrinsics;

/* JADX INFO: loaded from: classes5.dex */
public final class d extends CancelableTask {
    public final InterfaceC4239b b;

    public d(InterfaceC4239b adElement) {
        Intrinsics.checkNotNullParameter(adElement, "adElement");
        this.b = adElement;
    }

    @Override // io.bidmachine.rendering.utils.taskmanager.CancelableTask
    public void runTask() {
        try {
            this.b.a();
        } catch (Throwable th) {
            t.b(th);
        }
    }
}
