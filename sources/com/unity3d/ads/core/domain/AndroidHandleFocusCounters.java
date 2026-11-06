package com.unity3d.ads.core.domain;

import android.app.Activity;
import com.unity3d.ads.core.data.repository.FocusRepository;
import com.unity3d.ads.core.data.repository.FocusState;
import com.unity3d.ads.core.data.repository.SessionRepository;
import java.util.concurrent.ConcurrentHashMap;
import kotlin.NoWhenBranchMatchedException;
import kotlin.ResultKt;
import kotlin.Unit;
import kotlin.coroutines.Continuation;
import kotlin.coroutines.intrinsics.IntrinsicsKt__IntrinsicsKt;
import kotlin.coroutines.jvm.internal.DebugMetadata;
import kotlin.coroutines.jvm.internal.SuspendLambda;
import kotlin.jvm.functions.Function2;
import kotlin.jvm.internal.DefaultConstructorMarker;
import kotlin.jvm.internal.Intrinsics;
import kotlin.jvm.internal.Reflection;
import kotlin.time.ComparableTimeMark;
import kotlin.time.Duration;
import kotlin.time.TimeSource$Monotonic;
import kotlin.time.TimeSource$WithComparableMarks;
import kotlinx.coroutines.CoroutineDispatcher;
import kotlinx.coroutines.CoroutineScopeKt;
import kotlinx.coroutines.flow.FlowKt;
import kotlinx.coroutines.flow.MutableStateFlow;
import kotlinx.coroutines.flow.StateFlowKt;

/* JADX INFO: compiled from: AndroidHandleFocusCounters.kt */
/* JADX INFO: loaded from: classes4.dex */
public final class AndroidHandleFocusCounters {
    private final CoroutineDispatcher defaultDispatcher;
    private final FocusRepository focusRepository;
    private final ConcurrentHashMap<String, ComparableTimeMark> focusTimesPerActivity;
    private final AndroidGetIsAdActivity isAdActivity;
    private volatile String latestKnownActivityResumed;
    private final MutableStateFlow<FocusState> previousFocusState;
    private final SessionRepository sessionRepository;
    private final TimeSource$WithComparableMarks timeSource;

    public static /* synthetic */ void getLatestKnownActivityResumed$annotations() {
    }

    public AndroidHandleFocusCounters(SessionRepository sessionRepository, FocusRepository focusRepository, AndroidGetIsAdActivity isAdActivity, CoroutineDispatcher defaultDispatcher, TimeSource$WithComparableMarks timeSource) {
        Intrinsics.checkNotNullParameter(sessionRepository, "sessionRepository");
        Intrinsics.checkNotNullParameter(focusRepository, "focusRepository");
        Intrinsics.checkNotNullParameter(isAdActivity, "isAdActivity");
        Intrinsics.checkNotNullParameter(defaultDispatcher, "defaultDispatcher");
        Intrinsics.checkNotNullParameter(timeSource, "timeSource");
        this.sessionRepository = sessionRepository;
        this.focusRepository = focusRepository;
        this.isAdActivity = isAdActivity;
        this.defaultDispatcher = defaultDispatcher;
        this.timeSource = timeSource;
        this.focusTimesPerActivity = new ConcurrentHashMap<>();
        this.previousFocusState = StateFlowKt.MutableStateFlow(null);
    }

    public /* synthetic */ AndroidHandleFocusCounters(SessionRepository sessionRepository, FocusRepository focusRepository, AndroidGetIsAdActivity androidGetIsAdActivity, CoroutineDispatcher coroutineDispatcher, TimeSource$WithComparableMarks timeSource$WithComparableMarks, int i, DefaultConstructorMarker defaultConstructorMarker) {
        this(sessionRepository, focusRepository, androidGetIsAdActivity, coroutineDispatcher, (i & 16) != 0 ? TimeSource$Monotonic.INSTANCE : timeSource$WithComparableMarks);
    }

    public final String getLatestKnownActivityResumed() {
        return this.latestKnownActivityResumed;
    }

    public final void setLatestKnownActivityResumed(String str) {
        this.latestKnownActivityResumed = str;
    }

    /* JADX INFO: Access modifiers changed from: private */
    public final void onResume(String str) {
        this.latestKnownActivityResumed = str;
        this.focusTimesPerActivity.put(str, this.timeSource.markNow());
    }

    /* JADX INFO: Access modifiers changed from: private */
    public final void onPause(String str) {
        String str2 = this.latestKnownActivityResumed;
        if (str2 == null || Intrinsics.areEqual(str2, str)) {
            ComparableTimeMark comparableTimeMarkRemove = this.focusTimesPerActivity.remove(str);
            if (comparableTimeMarkRemove == null) {
                comparableTimeMarkRemove = this.timeSource.markNow();
            }
            this.sessionRepository.addTimeToGlobalAdsFocusTime((int) Duration.m2881getInWholeMillisecondsimpl(comparableTimeMarkRemove.mo2920elapsedNowUwyO8pc()));
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public final void onFocusStateChange(FocusState focusState) {
        FocusState value;
        FocusState focusState2;
        MutableStateFlow<FocusState> mutableStateFlow = this.previousFocusState;
        do {
            value = mutableStateFlow.getValue();
            focusState2 = value;
        } while (!mutableStateFlow.compareAndSet(value, focusState));
        if (focusState2 == null || focusState.getClass() == focusState2.getClass()) {
            return;
        }
        this.sessionRepository.incrementFocusChangeCount();
    }

    /* JADX INFO: renamed from: com.unity3d.ads.core.domain.AndroidHandleFocusCounters$invoke$1, reason: invalid class name */
    /* JADX INFO: compiled from: AndroidHandleFocusCounters.kt */
    @DebugMetadata(c = "com.unity3d.ads.core.domain.AndroidHandleFocusCounters$invoke$1", f = "AndroidHandleFocusCounters.kt", l = {}, m = "invokeSuspend")
    public static final class AnonymousClass1 extends SuspendLambda implements Function2<FocusState, Continuation<? super Unit>, Object> {
        /* synthetic */ Object L$0;
        int label;

        public AnonymousClass1(Continuation<? super AnonymousClass1> continuation) {
            super(2, continuation);
        }

        @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
        public final Continuation<Unit> create(Object obj, Continuation<?> continuation) {
            AnonymousClass1 anonymousClass1 = AndroidHandleFocusCounters.this.new AnonymousClass1(continuation);
            anonymousClass1.L$0 = obj;
            return anonymousClass1;
        }

        @Override // kotlin.jvm.functions.Function2
        public final Object invoke(FocusState focusState, Continuation<? super Unit> continuation) {
            return ((AnonymousClass1) create(focusState, continuation)).invokeSuspend(Unit.INSTANCE);
        }

        @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
        public final Object invokeSuspend(Object obj) {
            String qualifiedName;
            IntrinsicsKt__IntrinsicsKt.getCOROUTINE_SUSPENDED();
            if (this.label == 0) {
                ResultKt.throwOnFailure(obj);
                FocusState focusState = (FocusState) this.L$0;
                AndroidHandleFocusCounters.this.onFocusStateChange(focusState);
                Activity activity = focusState.getActivity().get();
                if (activity == null || (qualifiedName = Reflection.getOrCreateKotlinClass(activity.getClass()).getQualifiedName()) == null) {
                    qualifiedName = "unknown_activity_name";
                }
                if (!AndroidHandleFocusCounters.this.isAdActivity.invoke(qualifiedName)) {
                    return Unit.INSTANCE;
                }
                AndroidHandleFocusCounters.this.sessionRepository.incrementGlobalAdsFocusChangeCount();
                if (focusState instanceof FocusState.Focused) {
                    AndroidHandleFocusCounters.this.onResume(qualifiedName);
                } else if (focusState instanceof FocusState.Unfocused) {
                    AndroidHandleFocusCounters.this.onPause(qualifiedName);
                } else {
                    throw new NoWhenBranchMatchedException();
                }
                return Unit.INSTANCE;
            }
            throw new IllegalStateException("call to 'resume' before 'invoke' with coroutine");
        }
    }

    public final void invoke() {
        FlowKt.launchIn(FlowKt.onEach(this.focusRepository.getFocusState(), new AnonymousClass1(null)), CoroutineScopeKt.CoroutineScope(this.defaultDispatcher));
    }
}
