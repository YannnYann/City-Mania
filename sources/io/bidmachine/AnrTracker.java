package io.bidmachine;

import ads_mobile_sdk.hr$$ExternalSyntheticApiModelOutline1;
import android.app.ActivityManager;
import android.app.ApplicationExitInfo;
import android.content.Context;
import android.os.Build;
import io.bidmachine.protobuf.SdkCrashSignalConfig;
import io.bidmachine.util.SdkDispatchers;
import io.bidmachine.util.UtilsKt;
import io.bidmachine.utils.BMError;
import java.util.Comparator;
import java.util.Iterator;
import java.util.List;
import kotlin.ResultKt;
import kotlin.Unit;
import kotlin.collections.CollectionsKt___CollectionsKt;
import kotlin.comparisons.ComparisonsKt__ComparisonsKt;
import kotlin.coroutines.Continuation;
import kotlin.coroutines.intrinsics.IntrinsicsKt__IntrinsicsKt;
import kotlin.coroutines.jvm.internal.SuspendLambda;
import kotlin.jvm.functions.Function2;
import kotlin.jvm.internal.Intrinsics;
import kotlinx.coroutines.BuildersKt__Builders_commonKt;
import kotlinx.coroutines.CoroutineScope;
import kotlinx.coroutines.CoroutineScopeKt;
import kotlinx.coroutines.SupervisorKt;

/* JADX INFO: loaded from: classes4.dex */
public final class AnrTracker {
    public static final AnrTracker INSTANCE = new AnrTracker();
    private static final SdkDispatchers dispatchers;
    private static final CoroutineScope scope;

    /* JADX INFO: renamed from: io.bidmachine.AnrTracker$reportHistoricalAnrs$1, reason: invalid class name */
    public static final class AnonymousClass1 extends SuspendLambda implements Function2 {
        public int a;
        public /* synthetic */ Object b;
        public final /* synthetic */ ActivityManager c;
        public final /* synthetic */ Context d;
        public final /* synthetic */ long e;

        /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
        public AnonymousClass1(ActivityManager activityManager, Context context, long j, Continuation continuation) {
            super(2, continuation);
            this.c = activityManager;
            this.d = context;
            this.e = j;
        }

        @Override // kotlin.jvm.functions.Function2
        /* JADX INFO: renamed from: a, reason: merged with bridge method [inline-methods] */
        public final Object invoke(CoroutineScope coroutineScope, Continuation continuation) {
            return ((AnonymousClass1) create(coroutineScope, continuation)).invokeSuspend(Unit.INSTANCE);
        }

        @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
        public final Continuation create(Object obj, Continuation continuation) {
            AnonymousClass1 anonymousClass1 = new AnonymousClass1(this.c, this.d, this.e, continuation);
            anonymousClass1.b = obj;
            return anonymousClass1;
        }

        @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
        public final Object invokeSuspend(Object obj) {
            Object next;
            IntrinsicsKt__IntrinsicsKt.getCOROUTINE_SUSPENDED();
            if (this.a != 0) {
                throw new IllegalStateException("call to 'resume' before 'invoke' with coroutine");
            }
            ResultKt.throwOnFailure(obj);
            ActivityManager activityManager = this.c;
            Context context = this.d;
            long j = this.e;
            try {
                List historicalProcessExitReasons = activityManager.getHistoricalProcessExitReasons(context.getPackageName(), 0, 0);
                Intrinsics.checkNotNullExpressionValue(historicalProcessExitReasons, "activityManager.getHisto…      0\n                )");
                Iterator it = CollectionsKt___CollectionsKt.sortedWith(historicalProcessExitReasons, new Comparator() { // from class: io.bidmachine.AnrTracker$reportHistoricalAnrs$1$invokeSuspend$lambda$3$$inlined$sortedBy$1
                    @Override // java.util.Comparator
                    public final int compare(T t, T t2) {
                        return ComparisonsKt__ComparisonsKt.compareValues(Long.valueOf(hr$$ExternalSyntheticApiModelOutline1.m(t).getTimestamp()), Long.valueOf(hr$$ExternalSyntheticApiModelOutline1.m(t2).getTimestamp()));
                    }
                }).iterator();
                while (true) {
                    if (!it.hasNext()) {
                        next = null;
                        break;
                    }
                    next = it.next();
                    ApplicationExitInfo applicationExitInfoM = hr$$ExternalSyntheticApiModelOutline1.m(next);
                    if (applicationExitInfoM.getReason() == 6 && applicationExitInfoM.getTimestamp() > j) {
                        break;
                    }
                }
                ApplicationExitInfo applicationExitInfoM2 = hr$$ExternalSyntheticApiModelOutline1.m(next);
                if (applicationExitInfoM2 != null) {
                    AnrTracker.INSTANCE.trackAnr(applicationExitInfoM2.getDescription(), j, applicationExitInfoM2.getTimestamp());
                }
            } catch (Throwable unused) {
            }
            return Unit.INSTANCE;
        }
    }

    static {
        SdkDispatchers sdkDispatchers = SdkDispatchers.Companion.getDefault();
        dispatchers = sdkDispatchers;
        scope = CoroutineScopeKt.CoroutineScope(SupervisorKt.SupervisorJob$default(null, 1, null).plus(sdkDispatchers.getIo()));
    }

    private AnrTracker() {
    }

    public static final void initAndReport(Context context, SdkCrashSignalConfig crashSignalConfig) {
        Intrinsics.checkNotNullParameter(context, "context");
        Intrinsics.checkNotNullParameter(crashSignalConfig, "crashSignalConfig");
        Context applicationContext = context.getApplicationContext();
        Intrinsics.checkNotNullExpressionValue(applicationContext, "context.applicationContext");
        if (!crashSignalConfig.getAnrTrackingEnabled()) {
            n.d(applicationContext, 0L);
            return;
        }
        long jD = n.d(applicationContext);
        n.d(applicationContext, System.currentTimeMillis());
        INSTANCE.reportHistoricalAnrs(applicationContext, jD);
    }

    /* JADX INFO: Access modifiers changed from: private */
    public final void trackAnr(String str, long j, long j2) {
        BidMachineTrackingObject bidMachineTrackingObject = new BidMachineTrackingObject();
        TrackEventType trackEventType = TrackEventType.AnrReport;
        if (str == null) {
            str = "ANR";
        }
        bidMachineTrackingObject.trackEvent(trackEventType, j, j2, null, null, BMError.handledException(str, null));
    }

    public final void reportHistoricalAnrs(Context applicationContext, long j) {
        ActivityManager activityManager;
        Intrinsics.checkNotNullParameter(applicationContext, "applicationContext");
        if (Build.VERSION.SDK_INT < 30 || j <= 0 || (activityManager = UtilsKt.getActivityManager(applicationContext)) == null) {
            return;
        }
        BuildersKt__Builders_commonKt.launch$default(scope, null, null, new AnonymousClass1(activityManager, applicationContext, j, null), 3, null);
    }
}
