package com.unity3d.ads.core.log;

import android.util.Log;
import com.unity3d.ads.core.data.repository.SessionRepository;
import com.unity3d.ads.core.domain.CreateFile;
import kotlin.jvm.functions.Function0;
import kotlin.jvm.internal.DefaultConstructorMarker;
import kotlin.jvm.internal.Intrinsics;

/* JADX INFO: compiled from: UnityLogger.kt */
/* JADX INFO: loaded from: classes4.dex */
public final class UnityLogger implements Logger {
    public static final Companion Companion = new Companion(null);
    private static final String LOG_TAG = "UnityAds";
    private LogLevelInternal _fileLogLevel;
    private LogLevelInternal _userLogLevel;
    private final SessionRepository sessionRepository;

    public UnityLogger(SessionRepository sessionRepository, CreateFile createFile) {
        Intrinsics.checkNotNullParameter(sessionRepository, "sessionRepository");
        Intrinsics.checkNotNullParameter(createFile, "createFile");
        this.sessionRepository = sessionRepository;
        this._userLogLevel = LogLevelInternal.INFO;
        try {
            if (createFile.invoke("/data/local/tmp/UnityAdsForceDebugMode").exists()) {
                this._fileLogLevel = LogLevelInternal.TRACE;
                debug("Unity logger initialized in TRACE mode");
            }
        } catch (Throwable unused) {
            Log.w("UnityAds", "An issue occurred reading: /data/local/tmp/UnityAdsForceDebugMode");
        }
    }

    /* JADX INFO: compiled from: UnityLogger.kt */
    public static final class Companion {
        public /* synthetic */ Companion(DefaultConstructorMarker defaultConstructorMarker) {
            this();
        }

        private Companion() {
        }
    }

    @Override // com.unity3d.ads.core.log.Logger
    public LogLevelInternal getLogLevel() {
        if (this.sessionRepository.isNativeConfigReady() && this.sessionRepository.getNativeConfiguration().getDebugSettings().getEnableTracing()) {
            return LogLevelInternal.TRACE;
        }
        LogLevelInternal logLevelInternal = this._fileLogLevel;
        return logLevelInternal == null ? this._userLogLevel : logLevelInternal;
    }

    @Override // com.unity3d.ads.core.log.Logger
    public void setLogLevel(LogLevelInternal value) {
        Intrinsics.checkNotNullParameter(value, "value");
        this._userLogLevel = value;
    }

    private final boolean canLog(int i) {
        return i >= getLogLevel().toAndroidLogLevel();
    }

    @Override // com.unity3d.ads.core.log.Logger
    public void info(String message) {
        Intrinsics.checkNotNullParameter(message, "message");
        if (canLog(4)) {
            Log.i("UnityAds", message);
        }
    }

    @Override // com.unity3d.ads.core.log.Logger
    public void debug(String message) {
        Intrinsics.checkNotNullParameter(message, "message");
        if (canLog(3)) {
            Log.d("UnityAds", message);
        }
    }

    @Override // com.unity3d.ads.core.log.Logger
    public void error(String message, Throwable th) {
        Intrinsics.checkNotNullParameter(message, "message");
        if (canLog(6)) {
            Log.e("UnityAds", message, th);
        }
    }

    @Override // com.unity3d.ads.core.log.Logger
    public void trace(String message, Throwable th) {
        Intrinsics.checkNotNullParameter(message, "message");
        if (canLog(2)) {
            Log.v("UnityAds", message, th);
        }
    }

    @Override // com.unity3d.ads.core.log.Logger
    public void trace(Function0<String> fb) {
        Intrinsics.checkNotNullParameter(fb, "fb");
        if (canLog(2)) {
            Log.v("UnityAds", fb.invoke());
        }
    }

    @Override // com.unity3d.ads.core.log.Logger
    public void debug(Function0<String> fb) {
        Intrinsics.checkNotNullParameter(fb, "fb");
        if (canLog(3)) {
            debug(fb.invoke());
        }
    }
}
