package com.unity3d.ads.core.data.datasource;

import android.os.SystemClock;
import com.unity3d.services.core.properties.SdkProperties;
import java.util.concurrent.atomic.AtomicBoolean;
import java.util.concurrent.atomic.AtomicLong;
import kotlin.ResultKt;
import kotlin.Unit;
import kotlin.coroutines.Continuation;
import kotlin.coroutines.intrinsics.IntrinsicsKt__IntrinsicsKt;
import kotlin.coroutines.jvm.internal.DebugMetadata;
import kotlin.coroutines.jvm.internal.SuspendLambda;
import kotlin.jvm.functions.Function0;
import kotlin.jvm.functions.Function2;
import kotlin.jvm.internal.DefaultConstructorMarker;
import kotlin.jvm.internal.Intrinsics;
import kotlinx.coroutines.CoroutineDispatcher;
import kotlinx.coroutines.CoroutineExceptionHandler;
import kotlinx.coroutines.CoroutineScope;
import kotlinx.coroutines.CoroutineScopeKt;
import kotlinx.coroutines.flow.FlowKt;
import kotlinx.coroutines.flow.MutableStateFlow;
import kotlinx.coroutines.flow.StateFlowKt;

/* JADX INFO: compiled from: AppForegroundDurationObserver.kt */
/* JADX INFO: loaded from: classes4.dex */
public final class AppForegroundDurationObserver implements ForegroundDurationReader {
    private final AtomicLong accumulatedBackgroundMs;
    private final AtomicLong backgroundStartMs;
    private final CoroutineDispatcher defaultDispatcher;
    private final Function0<Long> elapsedRealtimeProvider;
    private final Function0<Long> initTimeProvider;
    private final AtomicBoolean isInBackground;
    private final MutableStateFlow<Boolean> isRunning;
    private final LifecycleDataSource lifecycleDataSource;
    private final CoroutineScope scope;

    public AppForegroundDurationObserver(LifecycleDataSource lifecycleDataSource, CoroutineDispatcher defaultDispatcher, Function0<Long> elapsedRealtimeProvider, Function0<Long> initTimeProvider) {
        Intrinsics.checkNotNullParameter(lifecycleDataSource, "lifecycleDataSource");
        Intrinsics.checkNotNullParameter(defaultDispatcher, "defaultDispatcher");
        Intrinsics.checkNotNullParameter(elapsedRealtimeProvider, "elapsedRealtimeProvider");
        Intrinsics.checkNotNullParameter(initTimeProvider, "initTimeProvider");
        this.lifecycleDataSource = lifecycleDataSource;
        this.defaultDispatcher = defaultDispatcher;
        this.elapsedRealtimeProvider = elapsedRealtimeProvider;
        this.initTimeProvider = initTimeProvider;
        this.isRunning = StateFlowKt.MutableStateFlow(Boolean.FALSE);
        this.accumulatedBackgroundMs = new AtomicLong(0L);
        this.backgroundStartMs = new AtomicLong(0L);
        this.isInBackground = new AtomicBoolean(false);
        this.scope = CoroutineScopeKt.CoroutineScope(defaultDispatcher.plus(new AppForegroundDurationObserver$special$$inlined$CoroutineExceptionHandler$1(CoroutineExceptionHandler.Key)));
    }

    public /* synthetic */ AppForegroundDurationObserver(LifecycleDataSource lifecycleDataSource, CoroutineDispatcher coroutineDispatcher, Function0 function0, Function0 function02, int i, DefaultConstructorMarker defaultConstructorMarker) {
        this(lifecycleDataSource, coroutineDispatcher, (i & 4) != 0 ? new Function0() { // from class: com.unity3d.ads.core.data.datasource.AppForegroundDurationObserver$$ExternalSyntheticLambda0
            @Override // kotlin.jvm.functions.Function0
            public final Object invoke() {
                return Long.valueOf(SystemClock.elapsedRealtime());
            }
        } : function0, (i & 8) != 0 ? new Function0() { // from class: com.unity3d.ads.core.data.datasource.AppForegroundDurationObserver$$ExternalSyntheticLambda1
            @Override // kotlin.jvm.functions.Function0
            public final Object invoke() {
                return Long.valueOf(SdkProperties.getInitializationTime());
            }
        } : function02);
    }

    public final void invoke() {
        Boolean value;
        Boolean bool;
        MutableStateFlow<Boolean> mutableStateFlow = this.isRunning;
        do {
            value = mutableStateFlow.getValue();
            bool = value;
            bool.getClass();
        } while (!mutableStateFlow.compareAndSet(value, Boolean.TRUE));
        if (bool.booleanValue()) {
            return;
        }
        if (!this.lifecycleDataSource.appIsForeground()) {
            this.isInBackground.set(true);
            long jLongValue = this.initTimeProvider.invoke().longValue();
            AtomicLong atomicLong = this.backgroundStartMs;
            if (jLongValue == 0) {
                jLongValue = this.elapsedRealtimeProvider.invoke().longValue();
            }
            atomicLong.set(jLongValue);
        }
        FlowKt.launchIn(FlowKt.onEach(this.lifecycleDataSource.getAppActive(), new AnonymousClass2(null)), this.scope);
    }

    /* JADX INFO: renamed from: com.unity3d.ads.core.data.datasource.AppForegroundDurationObserver$invoke$2, reason: invalid class name */
    /* JADX INFO: compiled from: AppForegroundDurationObserver.kt */
    @DebugMetadata(c = "com.unity3d.ads.core.data.datasource.AppForegroundDurationObserver$invoke$2", f = "AppForegroundDurationObserver.kt", l = {}, m = "invokeSuspend")
    public static final class AnonymousClass2 extends SuspendLambda implements Function2<Boolean, Continuation<? super Unit>, Object> {
        /* synthetic */ boolean Z$0;
        int label;

        public AnonymousClass2(Continuation<? super AnonymousClass2> continuation) {
            super(2, continuation);
        }

        @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
        public final Continuation<Unit> create(Object obj, Continuation<?> continuation) {
            AnonymousClass2 anonymousClass2 = AppForegroundDurationObserver.this.new AnonymousClass2(continuation);
            anonymousClass2.Z$0 = ((Boolean) obj).booleanValue();
            return anonymousClass2;
        }

        @Override // kotlin.jvm.functions.Function2
        public /* bridge */ /* synthetic */ Object invoke(Boolean bool, Continuation<? super Unit> continuation) {
            return invoke(bool.booleanValue(), continuation);
        }

        public final Object invoke(boolean z, Continuation<? super Unit> continuation) {
            return ((AnonymousClass2) create(Boolean.valueOf(z), continuation)).invokeSuspend(Unit.INSTANCE);
        }

        @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
        public final Object invokeSuspend(Object obj) {
            IntrinsicsKt__IntrinsicsKt.getCOROUTINE_SUSPENDED();
            if (this.label != 0) {
                throw new IllegalStateException("call to 'resume' before 'invoke' with coroutine");
            }
            ResultKt.throwOnFailure(obj);
            if (this.Z$0) {
                AppForegroundDurationObserver.this.onForeground();
            } else {
                AppForegroundDurationObserver.this.onBackground();
            }
            return Unit.INSTANCE;
        }
    }

    @Override // com.unity3d.ads.core.data.datasource.ForegroundDurationReader
    public long getSessionDurationInForegroundMs() {
        long jLongValue = this.initTimeProvider.invoke().longValue();
        if (jLongValue == 0) {
            return 0L;
        }
        long jLongValue2 = this.elapsedRealtimeProvider.invoke().longValue();
        return Math.max(0L, (jLongValue2 - jLongValue) - currentAccumulatedBackgroundMs(jLongValue, jLongValue2));
    }

    private final long currentAccumulatedBackgroundMs(long j, long j2) {
        long j3 = this.accumulatedBackgroundMs.get();
        return !this.isInBackground.get() ? j3 : j3 + Math.max(0L, j2 - Math.max(this.backgroundStartMs.get(), j));
    }

    /* JADX INFO: Access modifiers changed from: private */
    public final void onBackground() {
        if (this.isInBackground.compareAndSet(false, true)) {
            this.backgroundStartMs.set(this.elapsedRealtimeProvider.invoke().longValue());
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public final void onForeground() {
        if (this.isInBackground.compareAndSet(true, false)) {
            long jLongValue = this.initTimeProvider.invoke().longValue();
            if (jLongValue == 0) {
                return;
            }
            long jMax = Math.max(this.backgroundStartMs.get(), jLongValue);
            this.accumulatedBackgroundMs.addAndGet(Math.max(0L, this.elapsedRealtimeProvider.invoke().longValue() - jMax));
        }
    }
}
