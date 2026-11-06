package io.bidmachine;

import android.content.Context;
import io.bidmachine.core.Logger;
import io.bidmachine.core.TimeManager;
import io.bidmachine.core.Utils;
import io.bidmachine.internal.Q;
import java.util.Iterator;
import java.util.UUID;
import java.util.concurrent.CopyOnWriteArraySet;

/* JADX INFO: loaded from: classes4.dex */
public class SessionManager {
    public static final String SESSION_ID_EMPTY = "";
    private static final String TAG = "SessionManager";
    private static volatile SessionManager instance;
    private volatile Context applicationContext;
    private long pauseTime;
    private long resumeTime;
    private long sessionResetAfterSec;
    private long sessionStartTime;
    private final Q versionManager = new Q();
    private final SessionManagerKtWrapper sessionManagerKtWrapper = new SessionManagerKtWrapper(this);
    private String sessionId = "";
    private final CopyOnWriteArraySet<Observer> observers = new CopyOnWriteArraySet<>();

    public interface Observer {
        void onSessionEvent(Status status);
    }

    public enum Status {
        START,
        RESUME,
        PAUSE
    }

    public static /* synthetic */ void $r8$lambda$D2AvPDd8aGXxNFQ2wsnvUAQAgRo(SessionManager sessionManager, Context context) {
        sessionManager.versionManager.c(context, sessionManager.sessionManagerKtWrapper);
        n.B(context);
        n.a(context);
    }

    private SessionManager() {
        startNewSession();
    }

    public static SessionManager get() {
        SessionManager sessionManager;
        SessionManager sessionManager2 = instance;
        if (sessionManager2 != null) {
            return sessionManager2;
        }
        synchronized (SessionManager.class) {
            try {
                sessionManager = instance;
                if (sessionManager == null) {
                    sessionManager = new SessionManager();
                    instance = sessionManager;
                }
            } catch (Throwable th) {
                throw th;
            }
        }
        return sessionManager;
    }

    private long getLastSessionDurationMs() {
        Context context = this.applicationContext;
        if (context != null) {
            return n.s(context);
        }
        Logger.w(TAG, "Context not attached");
        return 0L;
    }

    private void notifyObservers(Status status) {
        Iterator<Observer> it = this.observers.iterator();
        while (it.hasNext()) {
            it.next().onSessionEvent(status);
        }
    }

    private void onContextAttached() {
        onNewSessionStarted();
    }

    private void onNewSessionStarted() {
        Utils.ifNotNull(this.applicationContext, new Executable() { // from class: io.bidmachine.SessionManager$$ExternalSyntheticLambda0
            @Override // io.bidmachine.Executable
            public final void execute(Object obj) {
                SessionManager.$r8$lambda$D2AvPDd8aGXxNFQ2wsnvUAQAgRo(this.f$0, (Context) obj);
            }
        });
        notifyObservers(Status.START);
        Logger.d(TAG, "New session started");
    }

    private void onSessionPaused() {
        Utils.ifNotNull(this.applicationContext, new Executable() { // from class: io.bidmachine.SessionManager$$ExternalSyntheticLambda2
            @Override // io.bidmachine.Executable
            public final void execute(Object obj) {
                SessionManager sessionManager = this.f$0;
                sessionManager.versionManager.b((Context) obj, sessionManager.sessionManagerKtWrapper);
            }
        });
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void saveCurrentSessionDuration(final Context context) {
        Utils.onBackgroundThread(new Runnable() { // from class: io.bidmachine.SessionManager$$ExternalSyntheticLambda3
            @Override // java.lang.Runnable
            public final void run() {
                n.e(context, this.f$0.getSessionDurationMs());
            }
        });
    }

    public void addObserver(Observer observer) {
        this.observers.add(observer);
    }

    public synchronized void attachContext(Context context) {
        boolean z = this.applicationContext == null;
        this.applicationContext = context.getApplicationContext();
        if (z) {
            onContextAttached();
        }
    }

    public int getLastSessionDurationSec() {
        return (int) (getLastSessionDurationMs() / 1000);
    }

    public int getSessionCount() {
        Context context = this.applicationContext;
        if (context != null) {
            return n.v(context);
        }
        Logger.w(TAG, "Context not attached");
        return 0;
    }

    public long getSessionDurationMs() {
        if (this.resumeTime == 0) {
            return 0L;
        }
        return TimeManager.currentTimeMillis() - this.sessionStartTime;
    }

    public int getSessionDurationSec() {
        return (int) (getSessionDurationMs() / 1000);
    }

    public String getSessionId() {
        return this.sessionId;
    }

    public long getSessionStartTime() {
        return this.sessionStartTime;
    }

    public void pause() {
        if (this.resumeTime == 0) {
            return;
        }
        this.pauseTime = TimeManager.currentTimeMillis();
        onSessionPaused();
        notifyObservers(Status.PAUSE);
        Utils.ifNotNull(this.applicationContext, new Executable() { // from class: io.bidmachine.SessionManager$$ExternalSyntheticLambda1
            @Override // io.bidmachine.Executable
            public final void execute(Object obj) {
                this.f$0.saveCurrentSessionDuration((Context) obj);
            }
        });
        Logger.d(TAG, "Session paused: " + getSessionDurationSec() + " sec.");
    }

    public void removeObserver(Observer observer) {
        this.observers.remove(observer);
    }

    /* JADX WARN: Removed duplicated region for block: B:9:0x001f  */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct code enable 'Show inconsistent code' option in preferences
    */
    public void resume() {
        /*
            r8 = this;
            long r0 = io.bidmachine.core.TimeManager.currentTimeMillis()
            long r2 = r8.sessionResetAfterSec
            r4 = 0
            int r6 = (r2 > r4 ? 1 : (r2 == r4 ? 0 : -1))
            if (r6 <= 0) goto L1f
            long r6 = r8.pauseTime
            int r4 = (r6 > r4 ? 1 : (r6 == r4 ? 0 : -1))
            if (r4 <= 0) goto L1f
            long r4 = r0 - r6
            r6 = 1000(0x3e8, double:4.94E-321)
            long r2 = r2 * r6
            int r2 = (r4 > r2 ? 1 : (r4 == r2 ? 0 : -1))
            if (r2 < 0) goto L1f
            r8.startNewSession()
            goto L2b
        L1f:
            io.bidmachine.SessionManager$Status r2 = io.bidmachine.SessionManager.Status.RESUME
            r8.notifyObservers(r2)
            java.lang.String r2 = "SessionManager"
            java.lang.String r3 = "Session resumed"
            io.bidmachine.core.Logger.d(r2, r3)
        L2b:
            r8.resumeTime = r0
            return
        */
        throw new UnsupportedOperationException("Method not decompiled: io.bidmachine.SessionManager.resume():void");
    }

    public void setSessionResetAfter(long j) {
        this.sessionResetAfterSec = j;
    }

    public void startNewSession() {
        this.sessionId = UUID.randomUUID().toString();
        this.sessionStartTime = TimeManager.currentTimeMillis();
        this.pauseTime = 0L;
        this.resumeTime = 0L;
        onNewSessionStarted();
    }
}
