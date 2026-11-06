package com.badlogic.gdx;

import com.badlogic.gdx.utils.Clipboard;

/* JADX INFO: loaded from: classes.dex */
public interface Application {

    public enum ApplicationType {
        Android,
        Desktop,
        HeadlessDesktop,
        Applet,
        WebGL,
        iOS
    }

    void addLifecycleListener(LifecycleListener lifecycleListener);

    void debug(String str, String str2);

    void error(String str, String str2);

    void error(String str, String str2, Throwable th);

    ApplicationListener getApplicationListener();

    Clipboard getClipboard();

    Graphics getGraphics();

    Preferences getPreferences(String str);

    ApplicationType getType();

    int getVersion();

    void log(String str, String str2);

    void log(String str, String str2, Throwable th);

    void postRunnable(Runnable runnable);

    void removeLifecycleListener(LifecycleListener lifecycleListener);

    void setLogLevel(int i);
}
