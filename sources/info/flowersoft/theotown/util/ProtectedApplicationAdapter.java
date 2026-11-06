package info.flowersoft.theotown.util;

import com.badlogic.gdx.ApplicationListener;
import kotlin.jvm.internal.Intrinsics;

/* JADX INFO: compiled from: ProtectedApplicationAdapter.kt */
/* JADX INFO: loaded from: classes4.dex */
public class ProtectedApplicationAdapter implements ApplicationListener {
    public final ApplicationListener app;
    public final ExceptionManager exceptionManager;

    public ProtectedApplicationAdapter(ApplicationListener app, ExceptionManager exceptionManager) {
        Intrinsics.checkNotNullParameter(app, "app");
        Intrinsics.checkNotNullParameter(exceptionManager, "exceptionManager");
        this.app = app;
        this.exceptionManager = exceptionManager;
    }

    public final ApplicationListener getApp() {
        return this.app;
    }

    public final ExceptionManager getExceptionManager() {
        return this.exceptionManager;
    }

    @Override // com.badlogic.gdx.ApplicationListener
    public void create() {
        if (this.exceptionManager.isPaused()) {
            return;
        }
        try {
            this.app.create();
        } catch (Throwable th) {
            this.exceptionManager.handleException(th);
        }
    }

    @Override // com.badlogic.gdx.ApplicationListener
    public void dispose() {
        if (this.exceptionManager.isPaused()) {
            return;
        }
        try {
            this.app.dispose();
        } catch (Throwable th) {
            this.exceptionManager.handleException(th);
        }
    }

    @Override // com.badlogic.gdx.ApplicationListener
    public void pause() {
        if (this.exceptionManager.isPaused()) {
            return;
        }
        try {
            this.app.pause();
        } catch (Throwable th) {
            this.exceptionManager.handleException(th);
        }
    }

    @Override // com.badlogic.gdx.ApplicationListener
    public void render() {
        if (this.exceptionManager.isPaused()) {
            return;
        }
        try {
            this.app.render();
            this.exceptionManager.indicateReachedEndOfFrame();
        } catch (Throwable th) {
            this.exceptionManager.handleException(th);
        }
    }

    @Override // com.badlogic.gdx.ApplicationListener
    public void resize(int i, int i2) {
        if (this.exceptionManager.isPaused()) {
            return;
        }
        try {
            this.app.resize(i, i2);
        } catch (Throwable th) {
            this.exceptionManager.handleException(th);
        }
    }

    @Override // com.badlogic.gdx.ApplicationListener
    public void resume() {
        if (this.exceptionManager.isPaused()) {
            return;
        }
        try {
            this.app.resume();
        } catch (Throwable th) {
            this.exceptionManager.handleException(th);
        }
    }
}
