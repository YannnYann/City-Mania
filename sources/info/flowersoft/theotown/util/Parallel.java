package info.flowersoft.theotown.util;

import java.util.List;

/* JADX INFO: loaded from: classes4.dex */
public final class Parallel {

    public interface Worker {
        void work(int i, int i2, int i3);
    }

    public static int autoThreadCount() {
        return Runtime.getRuntime().availableProcessors();
    }

    public static int sizePerWorker(int i, int i2) {
        return ((i + i2) - 1) / i2;
    }

    public static boolean computeParallel(int i, int i2, final Worker worker) {
        int iSizePerWorker = sizePerWorker(i2, i);
        int i3 = i - 1;
        Thread[] threadArr = new Thread[i3];
        for (final int i4 = 0; i4 < i3; i4++) {
            final int i5 = i4 * iSizePerWorker;
            final int iMin = Math.min(i5 + iSizePerWorker, i2);
            Thread thread = new Thread(new Runnable() { // from class: info.flowersoft.theotown.util.Parallel$$ExternalSyntheticLambda1
                @Override // java.lang.Runnable
                public final void run() {
                    worker.work(i4, i5, iMin);
                }
            });
            thread.start();
            threadArr[i4] = thread;
        }
        worker.work(i3, iSizePerWorker * i3, i2);
        return join(threadArr);
    }

    public static Thread[] startParallel(int i, int i2, final Worker worker) {
        if (i2 < i) {
            i = i2;
        }
        if (i == 0) {
            return new Thread[0];
        }
        int iSizePerWorker = sizePerWorker(i2, i);
        Thread[] threadArr = new Thread[i];
        for (final int i3 = 0; i3 < i; i3++) {
            final int i4 = i3 * iSizePerWorker;
            final int iMin = Math.min(i4 + iSizePerWorker, i2);
            Thread thread = new Thread(new Runnable() { // from class: info.flowersoft.theotown.util.Parallel$$ExternalSyntheticLambda0
                @Override // java.lang.Runnable
                public final void run() {
                    worker.work(i3, i4, iMin);
                }
            });
            thread.start();
            threadArr[i3] = thread;
        }
        return threadArr;
    }

    public static boolean join(Thread[] threadArr) {
        for (int i = 0; i < threadArr.length; i++) {
            try {
                threadArr[i].join();
            } catch (InterruptedException unused) {
                for (int i2 = i + 1; i2 < threadArr.length; i2++) {
                    threadArr[i2].interrupt();
                }
                return false;
            }
        }
        return true;
    }

    public static boolean join(List<Thread> list) {
        for (int i = 0; i < list.size(); i++) {
            try {
                list.get(i).join();
            } catch (InterruptedException unused) {
                for (int i2 = i + 1; i2 < list.size(); i2++) {
                    list.get(i).interrupt();
                }
                return false;
            }
        }
        return true;
    }
}
