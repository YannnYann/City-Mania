package io.bidmachine.media3.common;

import io.bidmachine.media3.common.util.Util;
import java.util.Collections;
import java.util.PriorityQueue;

/* JADX INFO: loaded from: classes5.dex */
public final class PriorityTaskManager {
    public final Object lock = new Object();
    public final PriorityQueue<Integer> queue = new PriorityQueue<>(10, Collections.reverseOrder());
    public int highestPriority = Integer.MIN_VALUE;

    public void add(int i) {
        synchronized (this.lock) {
            this.queue.add(Integer.valueOf(i));
            this.highestPriority = Math.max(this.highestPriority, i);
        }
    }

    public void remove(int i) {
        synchronized (this.lock) {
            this.queue.remove(Integer.valueOf(i));
            this.highestPriority = this.queue.isEmpty() ? Integer.MIN_VALUE : ((Integer) Util.castNonNull(this.queue.peek())).intValue();
            this.lock.notifyAll();
        }
    }
}
