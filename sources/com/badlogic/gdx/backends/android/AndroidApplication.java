package com.badlogic.gdx.backends.android;

import android.annotation.TargetApi;
import android.app.Activity;
import android.content.Context;
import android.content.Intent;
import android.content.res.Configuration;
import android.os.Build;
import android.os.Handler;
import android.view.Window;
import android.view.WindowManager;
import android.widget.FrameLayout;
import com.badlogic.gdx.Application;
import com.badlogic.gdx.ApplicationListener;
import com.badlogic.gdx.ApplicationLogger;
import com.badlogic.gdx.Audio;
import com.badlogic.gdx.Files;
import com.badlogic.gdx.Gdx;
import com.badlogic.gdx.Graphics;
import com.badlogic.gdx.LifecycleListener;
import com.badlogic.gdx.Net;
import com.badlogic.gdx.Preferences;
import com.badlogic.gdx.backends.android.keyboardheight.AndroidXKeyboardHeightProvider;
import com.badlogic.gdx.backends.android.keyboardheight.KeyboardHeightProvider;
import com.badlogic.gdx.backends.android.keyboardheight.StandardKeyboardHeightProvider;
import com.badlogic.gdx.backends.android.surfaceview.FillResolutionStrategy;
import com.badlogic.gdx.backends.android.surfaceview.ResolutionStrategy;
import com.badlogic.gdx.utils.Array;
import com.badlogic.gdx.utils.ArraySupplier;
import com.badlogic.gdx.utils.Clipboard;
import com.badlogic.gdx.utils.GdxRuntimeException;
import com.badlogic.gdx.utils.SnapshotArray;
import com.ironsource.mediationsdk.metadata.a;
import com.vungle.ads.internal.protos.Sdk;

/* JADX INFO: loaded from: classes.dex */
public class AndroidApplication extends Activity implements AndroidApplicationBase {
    public ApplicationLogger applicationLogger;
    public AndroidAudio audio;
    public AndroidClipboard clipboard;
    public AndroidFiles files;
    public AndroidGraphics graphics;
    public Handler handler;
    public AndroidInput input;
    public KeyboardHeightProvider keyboardHeightProvider;
    public ApplicationListener listener;
    public AndroidNet net;
    public boolean firstResume = true;
    public final Array<Runnable> runnables = new Array<>();
    public final Array<Runnable> executedRunnables = new Array<>();
    public final SnapshotArray<LifecycleListener> lifecycleListeners = new SnapshotArray<>(new ArraySupplier() { // from class: com.badlogic.gdx.backends.android.AndroidApplication$$ExternalSyntheticLambda1
        @Override // com.badlogic.gdx.utils.ArraySupplier
        public final Object get(int i) {
            return AndroidApplication.$r8$lambda$BtB91wIZPQnDpTLquYLkCi0Pg8o(i);
        }
    });
    public final Array<AndroidEventListener> androidEventListeners = new Array<>();
    public int logLevel = 2;
    public boolean useImmersiveMode = false;
    public int wasFocusChanged = -1;
    public boolean isWaitingForAudio = false;
    public boolean renderUnderCutout = false;

    @Override // com.badlogic.gdx.backends.android.AndroidApplicationBase
    public Context getContext() {
        return this;
    }

    public static /* synthetic */ LifecycleListener[] $r8$lambda$BtB91wIZPQnDpTLquYLkCi0Pg8o(int i) {
        return new LifecycleListener[i];
    }

    public void initialize(ApplicationListener applicationListener, AndroidApplicationConfiguration androidApplicationConfiguration) {
        init(applicationListener, androidApplicationConfiguration, false);
    }

    public final void init(ApplicationListener applicationListener, AndroidApplicationConfiguration androidApplicationConfiguration, boolean z) {
        if (getVersion() < 21) {
            throw new GdxRuntimeException("libGDX requires Android API Level 21 or later.");
        }
        androidApplicationConfiguration.nativeLoader.load();
        setApplicationLogger(new AndroidApplicationLogger());
        AndroidGraphics androidGraphicsCreateGraphics = createGraphics(androidApplicationConfiguration);
        this.graphics = androidGraphicsCreateGraphics;
        this.input = createInput(this, this, androidGraphicsCreateGraphics.view, androidApplicationConfiguration);
        this.audio = createAudio(this, androidApplicationConfiguration);
        this.files = createFiles();
        this.net = new AndroidNet(this, androidApplicationConfiguration);
        this.listener = applicationListener;
        this.handler = new Handler();
        this.useImmersiveMode = androidApplicationConfiguration.useImmersiveMode;
        this.clipboard = new AndroidClipboard(this);
        this.renderUnderCutout = androidApplicationConfiguration.renderUnderCutout;
        addLifecycleListener(new LifecycleListener() { // from class: com.badlogic.gdx.backends.android.AndroidApplication.1
            @Override // com.badlogic.gdx.LifecycleListener
            public void resume() {
            }

            @Override // com.badlogic.gdx.LifecycleListener
            public void pause() {
                AndroidApplication.this.audio.pause();
            }

            @Override // com.badlogic.gdx.LifecycleListener
            public void dispose() {
                AndroidApplication.this.audio.dispose();
            }
        });
        Gdx.app = this;
        Gdx.input = getInput();
        Gdx.audio = getAudio();
        Gdx.files = getFiles();
        Gdx.graphics = getGraphics();
        Gdx.net = getNet();
        if (!z) {
            try {
                requestWindowFeature(1);
            } catch (Exception e) {
                log("AndroidApplication", "Content already displayed, cannot request FEATURE_NO_TITLE", e);
            }
            getWindow().setFlags(1024, 1024);
            getWindow().clearFlags(a.o);
            setContentView(this.graphics.getView(), createLayoutParams());
        }
        createWakeLock(androidApplicationConfiguration.useWakelock);
        useImmersiveMode(this.useImmersiveMode);
        if (this.useImmersiveMode) {
            new AndroidVisibilityListener().createListener(this);
        }
        if (getResources().getConfiguration().keyboard != 1) {
            this.input.setKeyboardAvailable(true);
        }
        setLayoutInDisplayCutoutMode(this.renderUnderCutout);
        if (Build.VERSION.SDK_INT >= 30) {
            this.keyboardHeightProvider = new AndroidXKeyboardHeightProvider(this);
        } else {
            this.keyboardHeightProvider = new StandardKeyboardHeightProvider(this);
        }
    }

    public FrameLayout.LayoutParams createLayoutParams() {
        FrameLayout.LayoutParams layoutParams = new FrameLayout.LayoutParams(-1, -1);
        layoutParams.gravity = 17;
        return layoutParams;
    }

    public void createWakeLock(boolean z) {
        if (z) {
            getWindow().addFlags(Sdk.SDKError.Reason.INVALID_TPAT_KEY_VALUE);
        }
    }

    @TargetApi(28)
    public final void setLayoutInDisplayCutoutMode(boolean z) {
        int i;
        if (!z || (i = Build.VERSION.SDK_INT) < 28) {
            return;
        }
        WindowManager.LayoutParams attributes = getWindow().getAttributes();
        if (i < 30) {
            attributes.layoutInDisplayCutoutMode = 1;
        } else if (i < 35) {
            attributes.layoutInDisplayCutoutMode = 3;
        }
    }

    @Override // android.app.Activity, android.view.Window.Callback
    public void onWindowFocusChanged(boolean z) {
        super.onWindowFocusChanged(z);
        useImmersiveMode(this.useImmersiveMode);
        if (z) {
            this.wasFocusChanged = 1;
            if (this.isWaitingForAudio) {
                this.audio.resume();
                this.isWaitingForAudio = false;
                return;
            }
            return;
        }
        this.wasFocusChanged = 0;
    }

    @Override // com.badlogic.gdx.backends.android.AndroidApplicationBase
    public void useImmersiveMode(boolean z) {
        if (z) {
            getWindow().getDecorView().setSystemUiVisibility(5894);
        }
    }

    @Override // android.app.Activity
    public void onPause() {
        boolean zIsContinuousRendering = this.graphics.isContinuousRendering();
        boolean z = AndroidGraphics.enforceContinuousRendering;
        AndroidGraphics.enforceContinuousRendering = true;
        this.graphics.setContinuousRendering(true);
        this.graphics.pause();
        this.input.onPause();
        if (isFinishing()) {
            this.graphics.clearManagedCaches();
            this.graphics.destroy();
        }
        AndroidGraphics.enforceContinuousRendering = z;
        this.graphics.setContinuousRendering(zIsContinuousRendering);
        this.graphics.onPauseGLSurfaceView();
        super.onPause();
        this.keyboardHeightProvider.setKeyboardHeightObserver(null);
    }

    @Override // android.app.Activity
    public void onResume() {
        Gdx.app = this;
        Gdx.input = getInput();
        Gdx.audio = getAudio();
        Gdx.files = getFiles();
        Gdx.graphics = getGraphics();
        Gdx.net = getNet();
        this.input.onResume();
        AndroidGraphics androidGraphics = this.graphics;
        if (androidGraphics != null) {
            androidGraphics.onResumeGLSurfaceView();
        }
        if (!this.firstResume) {
            this.graphics.resume();
        } else {
            this.firstResume = false;
        }
        this.isWaitingForAudio = true;
        int i = this.wasFocusChanged;
        if (i == 1 || i == -1) {
            this.audio.resume();
            this.isWaitingForAudio = false;
        }
        super.onResume();
        this.keyboardHeightProvider.setKeyboardHeightObserver((DefaultAndroidInput) Gdx.input);
        ((AndroidGraphics) getGraphics()).getView().post(new Runnable() { // from class: com.badlogic.gdx.backends.android.AndroidApplication.2
            @Override // java.lang.Runnable
            public void run() {
                AndroidApplication.this.keyboardHeightProvider.start();
            }
        });
    }

    @Override // android.app.Activity
    public void onDestroy() {
        this.keyboardHeightProvider.close();
        super.onDestroy();
    }

    @Override // com.badlogic.gdx.Application
    public ApplicationListener getApplicationListener() {
        return this.listener;
    }

    public Audio getAudio() {
        return this.audio;
    }

    @Override // com.badlogic.gdx.backends.android.AndroidApplicationBase
    public AndroidInput getInput() {
        return this.input;
    }

    public Files getFiles() {
        return this.files;
    }

    @Override // com.badlogic.gdx.Application
    public Graphics getGraphics() {
        return this.graphics;
    }

    public Net getNet() {
        return this.net;
    }

    @Override // com.badlogic.gdx.Application
    public Application.ApplicationType getType() {
        return Application.ApplicationType.Android;
    }

    @Override // com.badlogic.gdx.Application
    public int getVersion() {
        return Build.VERSION.SDK_INT;
    }

    @Override // com.badlogic.gdx.Application
    public Preferences getPreferences(String str) {
        return new AndroidPreferences(getSharedPreferences(str, 0));
    }

    @Override // com.badlogic.gdx.Application
    public Clipboard getClipboard() {
        return this.clipboard;
    }

    @Override // com.badlogic.gdx.Application
    public void postRunnable(Runnable runnable) {
        synchronized (this.runnables) {
            this.runnables.add(runnable);
            Gdx.graphics.requestRendering();
        }
    }

    @Override // android.app.Activity, android.content.ComponentCallbacks
    public void onConfigurationChanged(Configuration configuration) {
        super.onConfigurationChanged(configuration);
        this.input.setKeyboardAvailable(configuration.hardKeyboardHidden == 1);
    }

    @Override // com.badlogic.gdx.Application
    public void debug(String str, String str2) {
        if (this.logLevel >= 3) {
            getApplicationLogger().debug(str, str2);
        }
    }

    @Override // com.badlogic.gdx.Application
    public void log(String str, String str2) {
        if (this.logLevel >= 2) {
            getApplicationLogger().log(str, str2);
        }
    }

    @Override // com.badlogic.gdx.Application
    public void log(String str, String str2, Throwable th) {
        if (this.logLevel >= 2) {
            getApplicationLogger().log(str, str2, th);
        }
    }

    @Override // com.badlogic.gdx.Application
    public void error(String str, String str2) {
        if (this.logLevel >= 1) {
            getApplicationLogger().error(str, str2);
        }
    }

    @Override // com.badlogic.gdx.Application
    public void error(String str, String str2, Throwable th) {
        if (this.logLevel >= 1) {
            getApplicationLogger().error(str, str2, th);
        }
    }

    @Override // com.badlogic.gdx.Application
    public void setLogLevel(int i) {
        this.logLevel = i;
    }

    public void setApplicationLogger(ApplicationLogger applicationLogger) {
        this.applicationLogger = applicationLogger;
    }

    public ApplicationLogger getApplicationLogger() {
        return this.applicationLogger;
    }

    @Override // com.badlogic.gdx.Application
    public void addLifecycleListener(LifecycleListener lifecycleListener) {
        synchronized (this.lifecycleListeners) {
            this.lifecycleListeners.add(lifecycleListener);
        }
    }

    @Override // com.badlogic.gdx.Application
    public void removeLifecycleListener(LifecycleListener lifecycleListener) {
        synchronized (this.lifecycleListeners) {
            this.lifecycleListeners.removeValue(lifecycleListener, true);
        }
    }

    @Override // android.app.Activity
    public void onActivityResult(int i, int i2, Intent intent) {
        super.onActivityResult(i, i2, intent);
        synchronized (this.androidEventListeners) {
            int i3 = 0;
            while (true) {
                try {
                    Array<AndroidEventListener> array = this.androidEventListeners;
                    if (i3 < array.size) {
                        array.get(i3).onActivityResult(i, i2, intent);
                        i3++;
                    }
                } catch (Throwable th) {
                    throw th;
                }
            }
        }
    }

    public void addAndroidEventListener(AndroidEventListener androidEventListener) {
        synchronized (this.androidEventListeners) {
            this.androidEventListeners.add(androidEventListener);
        }
    }

    public void removeAndroidEventListener(AndroidEventListener androidEventListener) {
        synchronized (this.androidEventListeners) {
            this.androidEventListeners.removeValue(androidEventListener, true);
        }
    }

    @Override // com.badlogic.gdx.backends.android.AndroidApplicationBase
    public Array<Runnable> getRunnables() {
        return this.runnables;
    }

    @Override // com.badlogic.gdx.backends.android.AndroidApplicationBase
    public Array<Runnable> getExecutedRunnables() {
        return this.executedRunnables;
    }

    @Override // com.badlogic.gdx.backends.android.AndroidApplicationBase
    public SnapshotArray<LifecycleListener> getLifecycleListeners() {
        return this.lifecycleListeners;
    }

    @Override // com.badlogic.gdx.backends.android.AndroidApplicationBase
    public Window getApplicationWindow() {
        return getWindow();
    }

    @Override // com.badlogic.gdx.backends.android.AndroidApplicationBase
    public Handler getHandler() {
        return this.handler;
    }

    public AndroidAudio createAudio(Context context, AndroidApplicationConfiguration androidApplicationConfiguration) {
        if (!androidApplicationConfiguration.disableAudio) {
            return new DefaultAndroidAudio(context, androidApplicationConfiguration);
        }
        return new DisabledAndroidAudio();
    }

    public AndroidInput createInput(Application application, Context context, Object obj, AndroidApplicationConfiguration androidApplicationConfiguration) {
        return new DefaultAndroidInput(this, this, this.graphics.view, androidApplicationConfiguration);
    }

    public AndroidFiles createFiles() {
        getFilesDir();
        return new DefaultAndroidFiles(getAssets(), this, true);
    }

    public AndroidGraphics createGraphics(AndroidApplicationConfiguration androidApplicationConfiguration) {
        ResolutionStrategy fillResolutionStrategy = androidApplicationConfiguration.resolutionStrategy;
        if (fillResolutionStrategy == null) {
            fillResolutionStrategy = new FillResolutionStrategy();
        }
        return new AndroidGraphics(this, androidApplicationConfiguration, fillResolutionStrategy);
    }

    public KeyboardHeightProvider getKeyboardHeightProvider() {
        return this.keyboardHeightProvider;
    }
}
