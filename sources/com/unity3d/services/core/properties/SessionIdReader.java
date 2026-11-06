package com.unity3d.services.core.properties;

import java.util.UUID;
import kotlin.jvm.internal.Intrinsics;

/* JADX INFO: compiled from: SessionIdReader.kt */
/* JADX INFO: loaded from: classes4.dex */
public final class SessionIdReader {
    public static final SessionIdReader INSTANCE = new SessionIdReader();
    private static final String sessionId;

    private SessionIdReader() {
    }

    static {
        String string = UUID.randomUUID().toString();
        Intrinsics.checkNotNullExpressionValue(string, "toString(...)");
        sessionId = string;
    }

    public final String getSessionId() {
        return sessionId;
    }
}
