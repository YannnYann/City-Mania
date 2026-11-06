package io.bidmachine.util.viewabilitytracker;

import android.view.View;
import android.view.ViewTreeObserver;
import io.bidmachine.util.Error;
import io.bidmachine.util.ViewUtilsKt;
import io.bidmachine.util.log.LoggerInstance;
import io.bidmachine.util.log.TagLogger;
import io.bidmachine.util.viewabilitytracker.checker.ViewabilityChecker;
import io.bidmachine.util.viewabilitytracker.checker.ViewabilityCheckerImpl;
import io.bidmachine.util.viewabilitytracker.checker.ViewabilityCheckerListener;
import io.bidmachine.util.viewabilitytracker.model.ActionEvent;
import io.bidmachine.util.viewabilitytracker.model.ViewabilityRule;
import io.bidmachine.util.viewabilitytracker.model.ViewabilityTrackerParams;
import java.lang.ref.WeakReference;
import java.util.ArrayList;
import java.util.Iterator;
import java.util.List;
import java.util.concurrent.CopyOnWriteArrayList;
import java.util.concurrent.atomic.AtomicBoolean;
import kotlin.Unit;
import kotlin.collections.CollectionsKt__IterablesKt;
import kotlin.jvm.functions.Function0;
import kotlin.jvm.internal.Intrinsics;

/* JADX INFO: compiled from: ViewabilityTrackerImpl.kt */
/* JADX INFO: loaded from: classes5.dex */
public final class ViewabilityTrackerImpl implements ViewabilityTracker {
    public volatile boolean isBillableCheckPassed;
    public final AtomicBoolean isCheckerStarted;
    public final AtomicBoolean isStarted;
    public final Object lock;
    public final TagLogger logger;
    public final List<ViewabilityChecker> notTrackedCheckerList;
    public final ViewTreeObserver.OnPreDrawListener onPreDrawListener;
    public final List<ViewabilityChecker> viewabilityCheckerList;
    public final ViewabilityTrackerListener viewabilityTrackerListener;
    public WeakReference<View> weakView;

    public ViewabilityTrackerImpl(ViewabilityTrackerParams viewabilityTrackerParams, ViewabilityTrackerListener viewabilityTrackerListener) {
        Intrinsics.checkNotNullParameter(viewabilityTrackerParams, "viewabilityTrackerParams");
        Intrinsics.checkNotNullParameter(viewabilityTrackerListener, "viewabilityTrackerListener");
        this.viewabilityTrackerListener = viewabilityTrackerListener;
        this.logger = new TagLogger("ViewabilityTracker", null, 2, null);
        this.lock = new Object();
        List<ViewabilityRule> viewabilityRuleList = viewabilityTrackerParams.getViewabilityRuleList();
        ArrayList arrayList = new ArrayList(CollectionsKt__IterablesKt.collectionSizeOrDefault(viewabilityRuleList, 10));
        Iterator<T> it = viewabilityRuleList.iterator();
        while (it.hasNext()) {
            arrayList.add(new ViewabilityCheckerImpl((ViewabilityRule) it.next(), new CheckerListener()));
        }
        this.viewabilityCheckerList = arrayList;
        this.onPreDrawListener = new ViewPreDrawListener();
        this.isStarted = new AtomicBoolean(false);
        this.isCheckerStarted = new AtomicBoolean(false);
        this.notTrackedCheckerList = new CopyOnWriteArrayList(arrayList);
    }

    @Override // io.bidmachine.util.viewabilitytracker.ViewabilityTracker
    public void start(final View view) {
        Intrinsics.checkNotNullParameter(view, "view");
        if (!this.notTrackedCheckerList.isEmpty() && this.isStarted.compareAndSet(false, true)) {
            synchronized (this.lock) {
                LoggerInstance.d$default(this.logger, null, new Function0<String>() { // from class: io.bidmachine.util.viewabilitytracker.ViewabilityTrackerImpl$start$1$1
                    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
                    {
                        super(0);
                    }

                    @Override // kotlin.jvm.functions.Function0
                    public final String invoke() {
                        return "Start tracking - " + view;
                    }
                }, 1, null);
                this.weakView = new WeakReference<>(view);
                ViewUtilsKt.addOnPreDrawListenerSafely(view, this.onPreDrawListener);
                Unit unit = Unit.INSTANCE;
            }
        }
    }

    @Override // io.bidmachine.util.viewabilitytracker.ViewabilityTracker
    public void stop() {
        synchronized (this.lock) {
            try {
                this.isStarted.set(false);
                final View view = getView();
                if (view != null) {
                    LoggerInstance.d$default(this.logger, null, new Function0<String>() { // from class: io.bidmachine.util.viewabilitytracker.ViewabilityTrackerImpl$stop$1$1
                        /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
                        {
                            super(0);
                        }

                        @Override // kotlin.jvm.functions.Function0
                        public final String invoke() {
                            return "Stop tracking - " + view;
                        }
                    }, 1, null);
                    ViewUtilsKt.removeOnPreDrawListenerSafely(view, this.onPreDrawListener);
                }
                Iterator<T> it = this.viewabilityCheckerList.iterator();
                while (it.hasNext()) {
                    ((ViewabilityChecker) it.next()).stop();
                }
                this.isCheckerStarted.set(false);
                Unit unit = Unit.INSTANCE;
            } catch (Throwable th) {
                throw th;
            }
        }
    }

    @Override // io.bidmachine.util.viewabilitytracker.ViewabilityTracker
    public void destroy() {
        stop();
        WeakReference<View> weakReference = this.weakView;
        if (weakReference != null) {
            weakReference.clear();
        }
        this.weakView = null;
        Iterator<T> it = this.viewabilityCheckerList.iterator();
        while (it.hasNext()) {
            ((ViewabilityChecker) it.next()).destroy();
        }
    }

    public final View getView() {
        WeakReference<View> weakReference = this.weakView;
        if (weakReference != null) {
            return weakReference.get();
        }
        return null;
    }

    public final void processOnPreDraw(long j) {
        if (this.isCheckerStarted.compareAndSet(false, true)) {
            View view = getView();
            if (view == null) {
                stop();
                return;
            }
            Iterator<T> it = this.notTrackedCheckerList.iterator();
            while (it.hasNext()) {
                ((ViewabilityChecker) it.next()).start(view, j);
            }
        }
    }

    public final void processCheckPassed(ViewabilityChecker viewabilityChecker, ActionEvent actionEvent) {
        if (this.notTrackedCheckerList.contains(viewabilityChecker)) {
            if (actionEvent.isBillable()) {
                this.isBillableCheckPassed = true;
            }
            this.notTrackedCheckerList.remove(viewabilityChecker);
            this.viewabilityTrackerListener.onVerifyingSuccess(actionEvent);
        }
    }

    public final void processCheckFailed(ViewabilityChecker viewabilityChecker, ActionEvent actionEvent, Error error) {
        if (this.notTrackedCheckerList.contains(viewabilityChecker)) {
            this.viewabilityTrackerListener.onVerifyingFailed(actionEvent, error);
        }
    }

    /* JADX INFO: compiled from: ViewabilityTrackerImpl.kt */
    public final class ViewPreDrawListener implements ViewTreeObserver.OnPreDrawListener {
        public ViewPreDrawListener() {
        }

        @Override // android.view.ViewTreeObserver.OnPreDrawListener
        public boolean onPreDraw() {
            ViewabilityTrackerImpl.this.processOnPreDraw(0L);
            return true;
        }
    }

    /* JADX INFO: compiled from: ViewabilityTrackerImpl.kt */
    public final class CheckerListener implements ViewabilityCheckerListener {
        public CheckerListener() {
        }

        @Override // io.bidmachine.util.viewabilitytracker.checker.ViewabilityCheckerListener
        public void onCheckPassed(ViewabilityChecker viewabilityChecker, ActionEvent actionEvent) {
            Intrinsics.checkNotNullParameter(viewabilityChecker, "viewabilityChecker");
            Intrinsics.checkNotNullParameter(actionEvent, "actionEvent");
            ViewabilityTrackerImpl.this.processCheckPassed(viewabilityChecker, actionEvent);
        }

        @Override // io.bidmachine.util.viewabilitytracker.checker.ViewabilityCheckerListener
        public void onCheckFailed(ViewabilityChecker viewabilityChecker, ActionEvent actionEvent, Error error) {
            Intrinsics.checkNotNullParameter(viewabilityChecker, "viewabilityChecker");
            Intrinsics.checkNotNullParameter(actionEvent, "actionEvent");
            Intrinsics.checkNotNullParameter(error, "error");
            ViewabilityTrackerImpl.this.processCheckFailed(viewabilityChecker, actionEvent, error);
        }
    }
}
