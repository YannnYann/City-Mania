package io.bidmachine.util.viewabilityhandler;

import android.view.View;
import io.bidmachine.util.Error;
import io.bidmachine.util.viewabilitytracker.ViewabilityTracker;
import io.bidmachine.util.viewabilitytracker.ViewabilityTrackerImpl;
import io.bidmachine.util.viewabilitytracker.ViewabilityTrackerListener;
import io.bidmachine.util.viewabilitytracker.model.ActionEvent;
import io.bidmachine.util.viewabilitytracker.model.ViewabilityTrackerParams;
import io.bidmachine.util.visibilitytracking.VisibilityParams;
import io.bidmachine.util.visibilitytracking.VisibilityTracker;
import io.bidmachine.util.visibilitytracking.VisibilityTrackerImpl;
import io.bidmachine.util.visibilitytracking.VisibilityTrackerListener;
import java.util.concurrent.atomic.AtomicBoolean;
import kotlin.jvm.internal.Intrinsics;

/* JADX INFO: compiled from: ViewabilityHandler.kt */
/* JADX INFO: loaded from: classes5.dex */
public final class ViewabilityHandler {
    public final AtomicBoolean isViewabilityTracked;
    public final AtomicBoolean isViewable;
    public final ViewabilityHandlerListener viewabilityHandlerListener;
    public final ViewabilityTracker viewabilityTracker;
    public final VisibilityTracker visibilityTracker;

    public ViewabilityHandler(ViewabilityTrackerParams viewabilityTrackerParams, VisibilityParams visibilityParams, ViewabilityHandlerListener viewabilityHandlerListener) {
        Intrinsics.checkNotNullParameter(visibilityParams, "visibilityParams");
        Intrinsics.checkNotNullParameter(viewabilityHandlerListener, "viewabilityHandlerListener");
        this.viewabilityHandlerListener = viewabilityHandlerListener;
        this.viewabilityTracker = viewabilityTrackerParams != null ? new ViewabilityTrackerImpl(viewabilityTrackerParams, new ViewabilityListener()) : null;
        this.visibilityTracker = new VisibilityTrackerImpl(visibilityParams, new VisibilityListener());
        this.isViewabilityTracked = new AtomicBoolean(false);
        this.isViewable = new AtomicBoolean(false);
    }

    public final boolean isViewabilityTracked() {
        return this.isViewabilityTracked.get();
    }

    public final boolean isViewable() {
        return this.isViewable.get();
    }

    public final void start(View view) {
        Intrinsics.checkNotNullParameter(view, "view");
        ViewabilityTracker viewabilityTracker = this.viewabilityTracker;
        if (viewabilityTracker != null) {
            viewabilityTracker.start(view);
        }
        this.visibilityTracker.start(view);
    }

    public final void stop() {
        ViewabilityTracker viewabilityTracker = this.viewabilityTracker;
        if (viewabilityTracker != null) {
            viewabilityTracker.stop();
        }
        this.visibilityTracker.stop();
        this.isViewable.set(false);
    }

    public final void destroy() {
        ViewabilityTracker viewabilityTracker = this.viewabilityTracker;
        if (viewabilityTracker != null) {
            viewabilityTracker.destroy();
        }
        this.visibilityTracker.destroy();
    }

    public final void processOnViewabilityEvent(ActionEvent actionEvent) {
        Intrinsics.checkNotNullParameter(actionEvent, "actionEvent");
        notifyOnViewabilityEvent(actionEvent);
        if (actionEvent.isBillable()) {
            notifyOnViewabilityTracked();
            notifyOnViewabilityChanged(true);
        }
    }

    public final void processOnViewOnScreen() {
        if (this.viewabilityTracker == null) {
            notifyOnViewabilityTracked();
        }
        notifyOnViewabilityChanged(true);
    }

    public final void notifyOnViewabilityTracked() {
        if (this.isViewabilityTracked.compareAndSet(false, true)) {
            this.viewabilityHandlerListener.onViewabilityTracked();
        }
    }

    public final void notifyOnViewabilityEvent(ActionEvent actionEvent) {
        Intrinsics.checkNotNullParameter(actionEvent, "actionEvent");
        this.viewabilityHandlerListener.onViewabilityEvent(actionEvent);
    }

    public final void notifyOnViewabilityChanged(boolean z) {
        if (this.isViewabilityTracked.get() && this.isViewable.compareAndSet(!z, z)) {
            this.viewabilityHandlerListener.onViewabilityChanged(z);
        }
    }

    public final void notifyOnVerifyingFailed(ActionEvent actionEvent, Error error) {
        Intrinsics.checkNotNullParameter(actionEvent, "actionEvent");
        Intrinsics.checkNotNullParameter(error, "error");
        this.viewabilityHandlerListener.onViewabilityError(actionEvent, error);
    }

    /* JADX INFO: compiled from: ViewabilityHandler.kt */
    public final class ViewabilityListener implements ViewabilityTrackerListener {
        public ViewabilityListener() {
        }

        @Override // io.bidmachine.util.viewabilitytracker.ViewabilityTrackerListener
        public void onVerifyingSuccess(ActionEvent actionEvent) {
            Intrinsics.checkNotNullParameter(actionEvent, "actionEvent");
            ViewabilityHandler.this.processOnViewabilityEvent(actionEvent);
        }

        @Override // io.bidmachine.util.viewabilitytracker.ViewabilityTrackerListener
        public void onVerifyingFailed(ActionEvent actionEvent, Error error) {
            Intrinsics.checkNotNullParameter(actionEvent, "actionEvent");
            Intrinsics.checkNotNullParameter(error, "error");
            ViewabilityHandler.this.notifyOnVerifyingFailed(actionEvent, error);
        }
    }

    /* JADX INFO: compiled from: ViewabilityHandler.kt */
    public final class VisibilityListener implements VisibilityTrackerListener {
        public VisibilityListener() {
        }

        @Override // io.bidmachine.util.visibilitytracking.VisibilityTrackerListener
        public void onViewOnScreen() {
            ViewabilityHandler.this.processOnViewOnScreen();
        }

        @Override // io.bidmachine.util.visibilitytracking.VisibilityTrackerListener
        public void onViewOutOfScreen() {
            ViewabilityHandler.this.notifyOnViewabilityChanged(false);
        }
    }
}
