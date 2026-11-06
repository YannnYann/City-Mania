package io.bidmachine.util.viewabilitytracker.checker;

import android.view.View;
import io.bidmachine.util.Error;
import io.bidmachine.util.log.LoggerInstance;
import io.bidmachine.util.log.TagLogger;
import io.bidmachine.util.viewabilitytracker.metric.Metric;
import io.bidmachine.util.viewabilitytracker.model.ViewabilityMeasurement;
import io.bidmachine.util.viewabilitytracker.model.ViewabilityRule;
import java.lang.ref.WeakReference;
import java.util.Iterator;
import java.util.concurrent.atomic.AtomicBoolean;
import java.util.concurrent.atomic.AtomicInteger;
import kotlin.ResultKt;
import kotlin.Unit;
import kotlin.coroutines.Continuation;
import kotlin.coroutines.intrinsics.IntrinsicsKt__IntrinsicsKt;
import kotlin.coroutines.jvm.internal.DebugMetadata;
import kotlin.coroutines.jvm.internal.SuspendLambda;
import kotlin.jvm.functions.Function0;
import kotlin.jvm.functions.Function2;
import kotlin.jvm.internal.Intrinsics;
import kotlin.time.Duration;
import kotlin.time.DurationKt;
import kotlin.time.DurationUnit;
import kotlinx.coroutines.BuildersKt__Builders_commonKt;
import kotlinx.coroutines.CoroutineScope;
import kotlinx.coroutines.CoroutineScopeKt;
import kotlinx.coroutines.DelayKt;
import kotlinx.coroutines.Dispatchers;
import kotlinx.coroutines.JobKt__JobKt;
import kotlinx.coroutines.SupervisorKt;

/* JADX INFO: compiled from: ViewabilityCheckerImpl.kt */
/* JADX INFO: loaded from: classes5.dex */
public final class ViewabilityCheckerImpl implements ViewabilityChecker {
    public final AtomicInteger checkCount;
    public final AtomicBoolean isStarted;
    public final Object lock;
    public final TagLogger logger;
    public final CoroutineScope uiScope;
    public final ViewabilityCheckerListener viewabilityCheckerListener;
    public final ViewabilityRule viewabilityRule;
    public WeakReference<View> weakView;

    public ViewabilityCheckerImpl(ViewabilityRule viewabilityRule, ViewabilityCheckerListener viewabilityCheckerListener) {
        Intrinsics.checkNotNullParameter(viewabilityRule, "viewabilityRule");
        Intrinsics.checkNotNullParameter(viewabilityCheckerListener, "viewabilityCheckerListener");
        this.viewabilityRule = viewabilityRule;
        this.viewabilityCheckerListener = viewabilityCheckerListener;
        this.logger = new TagLogger("ViewabilityChecker", null, 2, null);
        this.lock = new Object();
        this.isStarted = new AtomicBoolean(false);
        this.checkCount = new AtomicInteger(0);
        this.uiScope = CoroutineScopeKt.CoroutineScope(SupervisorKt.SupervisorJob$default(null, 1, null).plus(Dispatchers.getMain().getImmediate()));
    }

    public final AtomicInteger getCheckCount() {
        return this.checkCount;
    }

    @Override // io.bidmachine.util.viewabilitytracker.checker.ViewabilityChecker
    public void start(final View view, long j) {
        Intrinsics.checkNotNullParameter(view, "view");
        if (this.isStarted.compareAndSet(false, true)) {
            synchronized (this.lock) {
                LoggerInstance.d$default(this.logger, null, new Function0<String>() { // from class: io.bidmachine.util.viewabilitytracker.checker.ViewabilityCheckerImpl$start$1$1
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
                startCheck(j);
                Unit unit = Unit.INSTANCE;
            }
        }
    }

    @Override // io.bidmachine.util.viewabilitytracker.checker.ViewabilityChecker
    public void stop() {
        synchronized (this.lock) {
            try {
                this.isStarted.set(false);
                final View view = getView();
                if (view != null) {
                    LoggerInstance.d$default(this.logger, null, new Function0<String>() { // from class: io.bidmachine.util.viewabilitytracker.checker.ViewabilityCheckerImpl$stop$1$1
                        /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
                        {
                            super(0);
                        }

                        @Override // kotlin.jvm.functions.Function0
                        public final String invoke() {
                            return "Stop tracking - " + view;
                        }
                    }, 1, null);
                }
                stopCheck();
                Unit unit = Unit.INSTANCE;
            } catch (Throwable th) {
                throw th;
            }
        }
    }

    @Override // io.bidmachine.util.viewabilitytracker.checker.ViewabilityChecker
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
        Intrinsics.checkNotNullParameter(view, "view");
        Iterator<T> it = this.viewabilityRule.getMetrics().iterator();
        while (it.hasNext()) {
            if (!((Metric) it.next()).check(view)) {
                return false;
            }
            Unit unit = Unit.INSTANCE;
        }
        return true;
    }

    public final void startCheck(long j) {
        reset();
        scheduleCheck(j);
    }

    public final void stopCheck() {
        JobKt__JobKt.cancelChildren$default(this.uiScope.getCoroutineContext(), null, 1, null);
    }

    /* JADX INFO: renamed from: io.bidmachine.util.viewabilitytracker.checker.ViewabilityCheckerImpl$scheduleCheck$1, reason: invalid class name */
    /* JADX INFO: compiled from: ViewabilityCheckerImpl.kt */
    @DebugMetadata(c = "io.bidmachine.util.viewabilitytracker.checker.ViewabilityCheckerImpl$scheduleCheck$1", f = "ViewabilityCheckerImpl.kt", l = {101}, m = "invokeSuspend")
    public static final class AnonymousClass1 extends SuspendLambda implements Function2<CoroutineScope, Continuation<? super Unit>, Object> {
        public final /* synthetic */ long $delayMs;
        public int label;
        public final /* synthetic */ ViewabilityCheckerImpl this$0;

        /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
        public AnonymousClass1(long j, ViewabilityCheckerImpl viewabilityCheckerImpl, Continuation<? super AnonymousClass1> continuation) {
            super(2, continuation);
            this.$delayMs = j;
            this.this$0 = viewabilityCheckerImpl;
        }

        @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
        public final Continuation<Unit> create(Object obj, Continuation<?> continuation) {
            return new AnonymousClass1(this.$delayMs, this.this$0, continuation);
        }

        @Override // kotlin.jvm.functions.Function2
        public final Object invoke(CoroutineScope coroutineScope, Continuation<? super Unit> continuation) {
            return ((AnonymousClass1) create(coroutineScope, continuation)).invokeSuspend(Unit.INSTANCE);
        }

        @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
        public final Object invokeSuspend(Object obj) {
            View view;
            Object coroutine_suspended = IntrinsicsKt__IntrinsicsKt.getCOROUTINE_SUSPENDED();
            int i = this.label;
            if (i == 0) {
                ResultKt.throwOnFailure(obj);
                long j = this.$delayMs;
                if (j > 0) {
                    Duration.Companion companion = Duration.Companion;
                    long duration = DurationKt.toDuration(j, DurationUnit.MILLISECONDS);
                    this.label = 1;
                    if (DelayKt.m2937delayVtjQ1oo(duration, this) == coroutine_suspended) {
                        return coroutine_suspended;
                    }
                }
            } else {
                if (i != 1) {
                    throw new IllegalStateException("call to 'resume' before 'invoke' with coroutine");
                }
                ResultKt.throwOnFailure(obj);
            }
            try {
                view = this.this$0.getView();
            } catch (Throwable unused) {
                this.this$0.processCheckFail();
            }
            if (view == null) {
                this.this$0.stopCheck();
                return Unit.INSTANCE;
            }
            if (this.this$0.check(view)) {
                ViewabilityMeasurement viewabilityMeasurement = this.this$0.viewabilityRule.getViewabilityMeasurement();
                if (this.this$0.getCheckCount().incrementAndGet() >= viewabilityMeasurement.getCount()) {
                    this.this$0.notifyCheckSuccessful();
                } else {
                    long intervalMs = viewabilityMeasurement.getIntervalMs();
                    if (intervalMs > 0) {
                        this.this$0.scheduleCheck(intervalMs);
                    } else {
                        Error error = new Error("Can't schedule check - intervalMs must be greater than 0");
                        LoggerInstance.e$default(this.this$0.logger, (Object) null, error, 1, (Object) null);
                        this.this$0.notifyCheckFailed(error);
                    }
                }
            } else {
                this.this$0.processCheckFail();
            }
            return Unit.INSTANCE;
        }
    }

    public final void scheduleCheck(long j) {
        stopCheck();
        BuildersKt__Builders_commonKt.launch$default(this.uiScope, Dispatchers.getMain().getImmediate(), null, new AnonymousClass1(j, this, null), 2, null);
    }

    public final void processCheckFail() {
        Long failureTimeoutMs = this.viewabilityRule.getViewabilityMeasurement().getFailureTimeoutMs();
        if (failureTimeoutMs != null && failureTimeoutMs.longValue() > 0) {
            startCheck(failureTimeoutMs.longValue());
            return;
        }
        Error error = new Error("Can't restart check - failureTimeoutMs must be greater than 0");
        LoggerInstance.e$default(this.logger, (Object) null, error, 1, (Object) null);
        notifyCheckFailed(error);
    }

    public final void notifyCheckSuccessful() {
        this.viewabilityCheckerListener.onCheckPassed(this, this.viewabilityRule.getActionEvent());
    }

    public final void notifyCheckFailed(Error error) {
        Intrinsics.checkNotNullParameter(error, "error");
        this.viewabilityCheckerListener.onCheckFailed(this, this.viewabilityRule.getActionEvent(), error);
    }

    public final void reset() {
        this.checkCount.set(0);
    }
}
