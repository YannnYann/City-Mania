package info.flowersoft.theotown.util;

import com.badlogic.gdx.utils.TimeUtils;

/* JADX INFO: loaded from: classes4.dex */
public class Watchdog {
    public static boolean ACTIVE = true;
    public volatile long lastAliveSign;
    public Object lastHint;
    public Thread thread;
    public final long timeout;
    public final TimeoutHandler timeoutHandler;

    public interface TimeoutHandler {
        void handle(long j, Object obj);
    }

    public Watchdog(long j, TimeoutHandler timeoutHandler) {
        this.timeout = j;
        this.timeoutHandler = timeoutHandler;
    }

    public synchronized void start() {
        try {
            if (this.thread != null) {
                stop();
            }
            if (ACTIVE) {
                this.lastAliveSign = TimeUtils.millis();
                this.lastHint = null;
                Thread thread = new Thread() { // from class: info.flowersoft.theotown.util.Watchdog.1
                    @Override // java.lang.Thread, java.lang.Runnable
                    public void run() {
                        long jMillis;
                        while (true) {
                            try {
                                jMillis = TimeUtils.millis() - Watchdog.this.lastAliveSign;
                                if (jMillis >= Watchdog.this.timeout || isInterrupted()) {
                                    break;
                                } else {
                                    Thread.sleep(1000L);
                                }
                            } catch (InterruptedException unused) {
                                return;
                            }
                        }
                        if (isInterrupted()) {
                            return;
                        }
                        Watchdog.this.timeoutHandler.handle(jMillis, Watchdog.this.lastHint);
                    }
                };
                this.thread = thread;
                thread.start();
            }
        } catch (Throwable th) {
            throw th;
        }
    }

    public synchronized void alive() {
        alive(null);
    }

    public void alive(Object obj) {
        this.lastAliveSign = TimeUtils.millis();
        this.lastHint = obj;
    }

    public synchronized void stop() {
        Thread thread = this.thread;
        if (thread != null) {
            thread.interrupt();
            this.thread = null;
        }
    }
}
