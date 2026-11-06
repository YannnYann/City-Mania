package io.bidmachine;

import kotlin.jvm.internal.Intrinsics;

/* JADX INFO: loaded from: classes4.dex */
public final class SessionManagerKtWrapper {
    private final SessionManager sessionManager;

    public SessionManagerKtWrapper(SessionManager sessionManager) {
        Intrinsics.checkNotNullParameter(sessionManager, "sessionManager");
        this.sessionManager = sessionManager;
    }

    public final /* synthetic */ long getSessionDurationMs() {
        return this.sessionManager.getSessionDurationMs();
    }

    public final /* synthetic */ long getSessionStartTime() {
        return this.sessionManager.getSessionStartTime();
    }
}
