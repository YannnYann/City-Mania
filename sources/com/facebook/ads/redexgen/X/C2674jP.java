package com.facebook.ads.redexgen.X;

import java.util.Comparator;

/* JADX INFO: renamed from: com.facebook.ads.redexgen.X.jP, reason: case insensitive filesystem */
/* JADX INFO: loaded from: assets/audience_network/classes.dex */
public class C2674jP implements Comparator<Thread> {
    public final /* synthetic */ C2675jQ A00;
    public final /* synthetic */ Thread A01;

    public C2674jP(C2675jQ c2675jQ, Thread thread) {
        this.A00 = c2675jQ;
        this.A01 = thread;
    }

    /* JADX INFO: Access modifiers changed from: private */
    @Override // java.util.Comparator
    /* JADX INFO: renamed from: A00, reason: merged with bridge method [inline-methods] */
    public final int compare(Thread thread, Thread thread2) {
        if (thread == thread2) {
            return 0;
        }
        if (thread == this.A01) {
            return -1;
        }
        if (thread2 == this.A01) {
            return 1;
        }
        return thread2.getName().compareTo(thread.getName());
    }
}
