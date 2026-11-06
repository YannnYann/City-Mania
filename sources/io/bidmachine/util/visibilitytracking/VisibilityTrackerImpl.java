package io.bidmachine.util.visibilitytracking;

import android.view.View;
import android.view.ViewTreeObserver;
import io.bidmachine.util.ViewUtilsKt;
import io.bidmachine.util.log.LoggerInstance;
import io.bidmachine.util.log.TagLogger;
import io.bidmachine.util.viewabilitytracker.metric.Metric;
import io.bidmachine.util.viewabilitytracker.metric.ViewabilityGeometryMetric;
import io.bidmachine.util.viewabilitytracker.metric.ViewabilityLifecycleMetric;
import io.bidmachine.util.viewabilitytracker.metric.ViewabilityOverlapMetric;
import io.bidmachine.util.viewabilitytracker.metric.ViewabilityVisibilityMetric;
import java.lang.ref.WeakReference;
import java.util.ArrayList;
import java.util.Collection;
import java.util.Iterator;
import java.util.concurrent.atomic.AtomicBoolean;
import kotlin.Unit;
import kotlin.collections.CollectionsKt__CollectionsJVMKt;
import kotlin.coroutines.Continuation;
import kotlin.coroutines.jvm.internal.DebugMetadata;
import kotlin.coroutines.jvm.internal.SuspendLambda;
import kotlin.jvm.functions.Function0;
import kotlin.jvm.functions.Function2;
import kotlin.jvm.internal.DefaultConstructorMarker;
import kotlin.jvm.internal.Intrinsics;
import kotlinx.coroutines.BuildersKt__Builders_commonKt;
import kotlinx.coroutines.CoroutineScope;
import kotlinx.coroutines.CoroutineScopeKt;
import kotlinx.coroutines.Dispatchers;
import kotlinx.coroutines.JobKt__JobKt;
import kotlinx.coroutines.SupervisorKt;

/* JADX INFO: compiled from: VisibilityTrackerImpl.kt */
/* JADX INFO: loaded from: classes5.dex */
public final class VisibilityTrackerImpl implements VisibilityTracker {
    public static final Companion Companion = new Companion(null);
    public final AtomicBoolean isCheckerScheduled;
    public final AtomicBoolean isStarted;
    public final AtomicBoolean isViewOnScreen;
    public final Object lock;
    public final TagLogger logger;
    public final Collection<Metric> metricList;
    public final ViewTreeObserver.OnPreDrawListener onPreDrawListener;
    public final CoroutineScope uiScope;
    public final VisibilityTrackerListener visibilityTrackerListener;
    public WeakReference<View> weakView;

    public VisibilityTrackerImpl(VisibilityParams visibilityParams, VisibilityTrackerListener visibilityTrackerListener) {
        Intrinsics.checkNotNullParameter(visibilityParams, "visibilityParams");
        Intrinsics.checkNotNullParameter(visibilityTrackerListener, "visibilityTrackerListener");
        this.visibilityTrackerListener = visibilityTrackerListener;
        this.logger = new TagLogger("VisibilityTracker", null, 2, null);
        this.lock = new Object();
        this.onPreDrawListener = new ViewPreDrawListener();
        this.isStarted = new AtomicBoolean(false);
        this.isCheckerScheduled = new AtomicBoolean(false);
        this.isViewOnScreen = new AtomicBoolean(false);
        this.uiScope = CoroutineScopeKt.CoroutineScope(SupervisorKt.SupervisorJob$default(null, 1, null).plus(Dispatchers.getMain().getImmediate()));
        ArrayList arrayList = new ArrayList();
        Float fValueOf = Float.valueOf(1.0f);
        arrayList.add(new ViewabilityGeometryMetric(true, fValueOf, fValueOf, fValueOf));
        if (!visibilityParams.isIgnoreWindowFocus()) {
            arrayList.add(new ViewabilityLifecycleMetric(CollectionsKt__CollectionsJVMKt.listOf(ViewabilityLifecycleMetric.State.HAS_WINDOW_FOCUS)));
        }
        arrayList.add(new ViewabilityVisibilityMetric(ViewabilityVisibilityMetric.Scope.PARENT_VIEW, visibilityParams.getMinVisiblePercentage()));
        if (!visibilityParams.isIgnoreOverlap()) {
            arrayList.add(new ViewabilityOverlapMetric(ViewabilityOverlapMetric.Scope.VIEW_SIBLINGS, visibilityParams.getMinVisiblePercentage()));
        }
        this.metricList = arrayList;
    }

    @Override // io.bidmachine.util.visibilitytracking.VisibilityTracker
    public void start(final View view) {
        Intrinsics.checkNotNullParameter(view, "view");
        if (this.isStarted.compareAndSet(false, true)) {
            synchronized (this.lock) {
                LoggerInstance.d$default(this.logger, null, new Function0<String>() { // from class: io.bidmachine.util.visibilitytracking.VisibilityTrackerImpl$start$1$1
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

    @Override // io.bidmachine.util.visibilitytracking.VisibilityTracker
    public void stop() {
        synchronized (this.lock) {
            try {
                this.isStarted.set(false);
                final View view = getView();
                if (view != null) {
                    LoggerInstance.d$default(this.logger, null, new Function0<String>() { // from class: io.bidmachine.util.visibilitytracking.VisibilityTrackerImpl$stop$1$1
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
                stopCheck();
                this.isCheckerScheduled.set(false);
                this.isViewOnScreen.set(false);
                Unit unit = Unit.INSTANCE;
            } catch (Throwable th) {
                throw th;
            }
        }
    }

    @Override // io.bidmachine.util.visibilitytracking.VisibilityTracker
    public void destroy() {
        stop();
        WeakReference<View> weakReference = this.weakView;
        if (weakReference != null) {
            weakReference.clear();
        }
        this.weakView = null;
    }

    public final View getView() {
        WeakReference<View> weakReference = this.weakView;
        if (weakReference != null) {
            return weakReference.get();
        }
        return null;
    }

    public final boolean check(View view) {
        Iterator<T> it = this.metricList.iterator();
        while (it.hasNext()) {
            if (!((Metric) it.next()).check(view)) {
                return false;
            }
            Unit unit = Unit.INSTANCE;
        }
        return true;
    }

    public final void stopCheck() {
        JobKt__JobKt.cancelChildren$default(this.uiScope.getCoroutineContext(), null, 1, null);
    }

    public final void processOnPreDraw() {
        View view = getView();
        if (view != null) {
            ViewUtilsKt.removeOnPreDrawListenerSafely(view, this.onPreDrawListener);
        }
        if (!this.isStarted.get() || this.isCheckerScheduled.compareAndSet(false, true)) {
            stopCheck();
            BuildersKt__Builders_commonKt.launch$default(this.uiScope, Dispatchers.getMain().getImmediate(), null, new AnonymousClass1(null), 2, null);
        }
    }

    /* JADX INFO: renamed from: io.bidmachine.util.visibilitytracking.VisibilityTrackerImpl$processOnPreDraw$1, reason: invalid class name */
    /* JADX INFO: compiled from: VisibilityTrackerImpl.kt */
    @DebugMetadata(c = "io.bidmachine.util.visibilitytracking.VisibilityTrackerImpl$processOnPreDraw$1", f = "VisibilityTrackerImpl.kt", l = {141}, m = "invokeSuspend")
    public static final class AnonymousClass1 extends SuspendLambda implements Function2<CoroutineScope, Continuation<? super Unit>, Object> {
        public /* synthetic */ Object L$0;
        public int label;

        public AnonymousClass1(Continuation<? super AnonymousClass1> continuation) {
            super(2, continuation);
        }

        @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
        public final Continuation<Unit> create(Object obj, Continuation<?> continuation) {
            AnonymousClass1 anonymousClass1 = VisibilityTrackerImpl.this.new AnonymousClass1(continuation);
            anonymousClass1.L$0 = obj;
            return anonymousClass1;
        }

        @Override // kotlin.jvm.functions.Function2
        public final Object invoke(CoroutineScope coroutineScope, Continuation<? super Unit> continuation) {
            return ((AnonymousClass1) create(coroutineScope, continuation)).invokeSuspend(Unit.INSTANCE);
        }

        /* JADX WARN: Removed duplicated region for block: B:19:0x0050 A[Catch: all -> 0x0023, TryCatch #0 {all -> 0x0023, blocks: (B:17:0x004a, B:19:0x0050, B:21:0x0056, B:23:0x005c, B:25:0x0063, B:24:0x0060), top: B:30:0x004a }] */
        /* JADX WARN: Removed duplicated region for block: B:21:0x0056 A[Catch: all -> 0x0023, TryCatch #0 {all -> 0x0023, blocks: (B:17:0x004a, B:19:0x0050, B:21:0x0056, B:23:0x005c, B:25:0x0063, B:24:0x0060), top: B:30:0x004a }] */
        /* JADX WARN: Unsupported multi-entry loop pattern (BACK_EDGE: B:14:0x0045 -> B:16:0x0048). Please report as a decompilation issue!!! */
        @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
        /*
            Code decompiled incorrectly, please refer to instructions dump.
            To view partially-correct code enable 'Show inconsistent code' option in preferences
        */
        public final java.lang.Object invokeSuspend(java.lang.Object r6) {
            /*
                r5 = this;
                java.lang.Object r0 = kotlin.coroutines.intrinsics.IntrinsicsKt__IntrinsicsKt.getCOROUTINE_SUSPENDED()
                int r1 = r5.label
                r2 = 1
                if (r1 == 0) goto L1b
                if (r1 != r2) goto L13
                java.lang.Object r1 = r5.L$0
                kotlinx.coroutines.CoroutineScope r1 = (kotlinx.coroutines.CoroutineScope) r1
                kotlin.ResultKt.throwOnFailure(r6)
                goto L48
            L13:
                java.lang.IllegalStateException r6 = new java.lang.IllegalStateException
                java.lang.String r0 = "call to 'resume' before 'invoke' with coroutine"
                r6.<init>(r0)
                throw r6
            L1b:
                kotlin.ResultKt.throwOnFailure(r6)
                java.lang.Object r6 = r5.L$0
                kotlinx.coroutines.CoroutineScope r6 = (kotlinx.coroutines.CoroutineScope) r6
                r1 = r6
            L23:
                io.bidmachine.util.visibilitytracking.VisibilityTrackerImpl r6 = io.bidmachine.util.visibilitytracking.VisibilityTrackerImpl.this
                java.util.concurrent.atomic.AtomicBoolean r6 = io.bidmachine.util.visibilitytracking.VisibilityTrackerImpl.access$isStarted$p(r6)
                boolean r6 = r6.get()
                if (r6 == 0) goto L66
                io.bidmachine.util.visibilitytracking.VisibilityTrackerImpl r6 = io.bidmachine.util.visibilitytracking.VisibilityTrackerImpl.this
                java.util.concurrent.atomic.AtomicBoolean r6 = io.bidmachine.util.visibilitytracking.VisibilityTrackerImpl.access$isCheckerScheduled$p(r6)
                boolean r6 = r6.get()
                if (r6 == 0) goto L66
                r5.L$0 = r1
                r5.label = r2
                r3 = 100
                java.lang.Object r6 = kotlinx.coroutines.DelayKt.delay(r3, r5)
                if (r6 != r0) goto L48
                return r0
            L48:
                io.bidmachine.util.visibilitytracking.VisibilityTrackerImpl r6 = io.bidmachine.util.visibilitytracking.VisibilityTrackerImpl.this
                android.view.View r3 = io.bidmachine.util.visibilitytracking.VisibilityTrackerImpl.access$getView(r6)     // Catch: java.lang.Throwable -> L23
                if (r3 != 0) goto L56
                r6.stop()     // Catch: java.lang.Throwable -> L23
                kotlin.Unit r6 = kotlin.Unit.INSTANCE     // Catch: java.lang.Throwable -> L23
                return r6
            L56:
                boolean r3 = io.bidmachine.util.visibilitytracking.VisibilityTrackerImpl.access$check(r6, r3)     // Catch: java.lang.Throwable -> L23
                if (r3 == 0) goto L60
                io.bidmachine.util.visibilitytracking.VisibilityTrackerImpl.access$notifyViewOnScreen(r6)     // Catch: java.lang.Throwable -> L23
                goto L63
            L60:
                io.bidmachine.util.visibilitytracking.VisibilityTrackerImpl.access$notifyViewOutOfScreen(r6)     // Catch: java.lang.Throwable -> L23
            L63:
                kotlin.Unit r6 = kotlin.Unit.INSTANCE     // Catch: java.lang.Throwable -> L23
                goto L23
            L66:
                kotlin.Unit r6 = kotlin.Unit.INSTANCE
                return r6
            */
            throw new UnsupportedOperationException("Method not decompiled: io.bidmachine.util.visibilitytracking.VisibilityTrackerImpl.AnonymousClass1.invokeSuspend(java.lang.Object):java.lang.Object");
        }
    }

    public final void notifyViewOnScreen() {
        if (this.isViewOnScreen.compareAndSet(false, true)) {
            this.visibilityTrackerListener.onViewOnScreen();
        }
    }

    public final void notifyViewOutOfScreen() {
        if (this.isViewOnScreen.compareAndSet(true, false)) {
            this.visibilityTrackerListener.onViewOutOfScreen();
        }
    }

    /* JADX INFO: compiled from: VisibilityTrackerImpl.kt */
    public static final class Companion {
        public /* synthetic */ Companion(DefaultConstructorMarker defaultConstructorMarker) {
            this();
        }

        public Companion() {
        }
    }

    /* JADX INFO: compiled from: VisibilityTrackerImpl.kt */
    public final class ViewPreDrawListener implements ViewTreeObserver.OnPreDrawListener {
        public ViewPreDrawListener() {
        }

        @Override // android.view.ViewTreeObserver.OnPreDrawListener
        public boolean onPreDraw() {
            VisibilityTrackerImpl.this.processOnPreDraw();
            return true;
        }
    }
}
