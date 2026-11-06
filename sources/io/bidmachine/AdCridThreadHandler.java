package io.bidmachine;

import io.bidmachine.core.Logger;
import io.bidmachine.utils.Tag;
import kotlin.jvm.internal.Intrinsics;

/* JADX INFO: loaded from: classes4.dex */
public final class AdCridThreadHandler {
    private final String name;
    private final Runnable runnable;
    private final Tag tag;
    private Thread thread;

    public AdCridThreadHandler(String crid) {
        Intrinsics.checkNotNullParameter(crid, "crid");
        this.tag = new Tag("AdCridThreadManager");
        String str = "io.bidmachine.crid." + crid;
        this.name = str;
        Runnable runnable = new Runnable() { // from class: io.bidmachine.AdCridThreadHandler$$ExternalSyntheticLambda0
            @Override // java.lang.Runnable
            public final void run() {
                AdCridThreadHandler.runnable$lambda$0(this.f$0);
            }
        };
        this.runnable = runnable;
        Thread thread = new Thread(runnable, str);
        thread.start();
        this.thread = thread;
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static final void runnable$lambda$0(AdCridThreadHandler this$0) {
        Intrinsics.checkNotNullParameter(this$0, "this$0");
        Thread threadCurrentThread = Thread.currentThread();
        try {
            Logger.d(this$0.tag, this$0.name + " started");
            Thread.sleep(Long.MAX_VALUE);
        } catch (InterruptedException unused) {
            threadCurrentThread.interrupt();
        }
    }

    public final void destroy() {
        Thread thread = this.thread;
        if (thread != null) {
            thread.interrupt();
        }
        this.thread = null;
        Logger.d(this.tag, this.name + " stopped");
    }
}
