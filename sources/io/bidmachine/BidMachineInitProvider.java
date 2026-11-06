package io.bidmachine;

import android.content.Context;
import io.bidmachine.internal.AbstractC4220d;
import io.bidmachine.internal.K;
import kotlin.jvm.internal.Intrinsics;

/* JADX INFO: loaded from: classes4.dex */
public final class BidMachineInitProvider extends AbstractC4220d {
    private final K startupWatcherThread;

    public BidMachineInitProvider() {
        K k = new K(System.currentTimeMillis(), null, null, null, 14, null);
        this.startupWatcherThread = k;
        k.start();
    }

    @Override // io.bidmachine.internal.AbstractC4220d, android.content.ContentProvider
    public boolean onCreate() {
        Context context = getContext();
        if (context != null) {
            this.startupWatcherThread.a(context);
        }
        this.startupWatcherThread.d();
        boolean zOnCreate = super.onCreate();
        this.startupWatcherThread.c();
        return zOnCreate;
    }

    @Override // io.bidmachine.internal.AbstractC4220d
    public void preInitialize(Context context) {
        Intrinsics.checkNotNullParameter(context, "context");
        k.k(context);
    }
}
