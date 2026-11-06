package com.badlogic.gdx.backends.android;

import android.content.Context;
import android.content.Intent;
import android.os.Handler;
import android.view.Window;
import android.view.WindowManager;
import com.badlogic.gdx.Application;
import com.badlogic.gdx.LifecycleListener;
import com.badlogic.gdx.utils.Array;
import com.badlogic.gdx.utils.SnapshotArray;

/* JADX INFO: loaded from: classes.dex */
public interface AndroidApplicationBase extends Application {
    Window getApplicationWindow();

    Context getContext();

    Array<Runnable> getExecutedRunnables();

    Handler getHandler();

    AndroidInput getInput();

    SnapshotArray<LifecycleListener> getLifecycleListeners();

    Array<Runnable> getRunnables();

    WindowManager getWindowManager();

    void startActivity(Intent intent);

    void useImmersiveMode(boolean z);
}
