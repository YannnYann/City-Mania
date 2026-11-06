package io.bidmachine;

import java.util.concurrent.LinkedBlockingQueue;
import java.util.concurrent.ThreadPoolExecutor;
import java.util.concurrent.TimeUnit;

/* JADX INFO: renamed from: io.bidmachine.a, reason: case insensitive filesystem */
/* JADX INFO: loaded from: classes4.dex */
public class C4102a extends ThreadPoolExecutor {
    public static volatile C4102a a;

    public C4102a(int i) {
        super(i, i, 0L, TimeUnit.MILLISECONDS, new LinkedBlockingQueue());
    }

    public static C4102a a() {
        if (a == null) {
            synchronized (C4102a.class) {
                try {
                    if (a == null) {
                        a = new C4102a(Runtime.getRuntime().availableProcessors() * 2);
                    }
                } finally {
                }
            }
        }
        return a;
    }
}
