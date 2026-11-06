package com.google.common.util.concurrent;

import java.util.concurrent.locks.LockSupport;

/* JADX INFO: loaded from: classes3.dex */
public final class OverflowAvoidingLockSupport {
    public static void parkNanos(Object blocker, long nanos) {
        LockSupport.parkNanos(blocker, Math.min(nanos, 2147483647999999999L));
    }
}
