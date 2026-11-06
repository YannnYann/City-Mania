package io.bidmachine.media3.common.util;

import android.os.Looper;
import com.google.common.base.Function;

/* JADX INFO: loaded from: classes5.dex */
public final class BackgroundThreadStateHandler<T> {
    public final HandlerWrapper backgroundHandler;
    public T backgroundState;
    public final HandlerWrapper foregroundHandler;
    public T foregroundState;
    public final StateChangeListener<T> onStateChanged;
    public int pendingOperations;

    public interface StateChangeListener<T> {
        void onStateChanged(T t, T t2);
    }

    public BackgroundThreadStateHandler(T t, Looper looper, Looper looper2, Clock clock, StateChangeListener<T> stateChangeListener) {
        this.backgroundHandler = clock.createHandler(looper, null);
        this.foregroundHandler = clock.createHandler(looper2, null);
        this.foregroundState = t;
        this.backgroundState = t;
        this.onStateChanged = stateChangeListener;
    }

    public T get() {
        Looper looperMyLooper = Looper.myLooper();
        if (looperMyLooper == this.foregroundHandler.getLooper()) {
            return this.foregroundState;
        }
        Assertions.checkState(looperMyLooper == this.backgroundHandler.getLooper());
        return this.backgroundState;
    }

    public void updateStateAsync(Function<T, T> function, final Function<T, T> function2) {
        Assertions.checkState(Looper.myLooper() == this.foregroundHandler.getLooper());
        this.pendingOperations++;
        this.backgroundHandler.post(new Runnable() { // from class: io.bidmachine.media3.common.util.BackgroundThreadStateHandler$$ExternalSyntheticLambda1
            @Override // java.lang.Runnable
            public final void run() {
                BackgroundThreadStateHandler.$r8$lambda$VTzRKxpHOTwoFTDc52AoXsJK854(this.f$0, function2);
            }
        });
        updateStateInForeground(function.apply(this.foregroundState));
    }

    public static /* synthetic */ void $r8$lambda$VTzRKxpHOTwoFTDc52AoXsJK854(final BackgroundThreadStateHandler backgroundThreadStateHandler, Function function) {
        final T t = (T) function.apply(backgroundThreadStateHandler.backgroundState);
        backgroundThreadStateHandler.backgroundState = t;
        backgroundThreadStateHandler.foregroundHandler.post(new Runnable() { // from class: io.bidmachine.media3.common.util.BackgroundThreadStateHandler$$ExternalSyntheticLambda2
            @Override // java.lang.Runnable
            public final void run() {
                BackgroundThreadStateHandler.$r8$lambda$ILjiu2PMdO4pQ_WoLM98xu79lto(this.f$0, t);
            }
        });
    }

    public static /* synthetic */ void $r8$lambda$ILjiu2PMdO4pQ_WoLM98xu79lto(BackgroundThreadStateHandler backgroundThreadStateHandler, Object obj) {
        int i = backgroundThreadStateHandler.pendingOperations - 1;
        backgroundThreadStateHandler.pendingOperations = i;
        if (i == 0) {
            backgroundThreadStateHandler.updateStateInForeground(obj);
        }
    }

    public void setStateInBackground(final T t) {
        this.backgroundState = t;
        this.foregroundHandler.post(new Runnable() { // from class: io.bidmachine.media3.common.util.BackgroundThreadStateHandler$$ExternalSyntheticLambda0
            @Override // java.lang.Runnable
            public final void run() {
                BackgroundThreadStateHandler.m2553$r8$lambda$NnM2jeN9N9iIZbQT844dqEqJFE(this.f$0, t);
            }
        });
    }

    /* JADX INFO: renamed from: $r8$lambda$NnM2jeN9N9iIZb-QT844dqEqJFE, reason: not valid java name */
    public static /* synthetic */ void m2553$r8$lambda$NnM2jeN9N9iIZbQT844dqEqJFE(BackgroundThreadStateHandler backgroundThreadStateHandler, Object obj) {
        if (backgroundThreadStateHandler.pendingOperations == 0) {
            backgroundThreadStateHandler.updateStateInForeground(obj);
        }
    }

    public void runInBackground(Runnable runnable) {
        this.backgroundHandler.post(runnable);
    }

    public final void updateStateInForeground(T t) {
        T t2 = this.foregroundState;
        this.foregroundState = t;
        if (t2.equals(t)) {
            return;
        }
        this.onStateChanged.onStateChanged(t2, t);
    }
}
