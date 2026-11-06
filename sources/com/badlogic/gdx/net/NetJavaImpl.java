package com.badlogic.gdx.net;

import com.badlogic.gdx.utils.ObjectMap;
import java.net.HttpURLConnection;
import java.util.concurrent.BlockingQueue;
import java.util.concurrent.Future;
import java.util.concurrent.LinkedBlockingQueue;
import java.util.concurrent.SynchronousQueue;
import java.util.concurrent.ThreadFactory;
import java.util.concurrent.ThreadPoolExecutor;
import java.util.concurrent.TimeUnit;
import java.util.concurrent.atomic.AtomicInteger;

/* JADX INFO: loaded from: classes.dex */
public class NetJavaImpl {
    public final ObjectMap<Object, HttpURLConnection> connections;
    public final ThreadPoolExecutor executorService;
    public final ObjectMap<Object, Object> listeners;
    public final ObjectMap<Object, Future<?>> tasks;

    public NetJavaImpl(int i) {
        boolean z = i == Integer.MAX_VALUE;
        ThreadPoolExecutor threadPoolExecutor = new ThreadPoolExecutor(z ? 0 : i, i, 60L, TimeUnit.SECONDS, (BlockingQueue<Runnable>) (z ? new SynchronousQueue() : new LinkedBlockingQueue()), new ThreadFactory() { // from class: com.badlogic.gdx.net.NetJavaImpl.1
            public AtomicInteger threadID = new AtomicInteger();

            @Override // java.util.concurrent.ThreadFactory
            public Thread newThread(Runnable runnable) {
                Thread thread = new Thread(runnable, "NetThread" + this.threadID.getAndIncrement());
                thread.setDaemon(true);
                return thread;
            }
        });
        this.executorService = threadPoolExecutor;
        threadPoolExecutor.allowCoreThreadTimeOut(!z);
        this.connections = new ObjectMap<>();
        this.listeners = new ObjectMap<>();
        this.tasks = new ObjectMap<>();
    }
}
