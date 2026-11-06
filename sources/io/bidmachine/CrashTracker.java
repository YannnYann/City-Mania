package io.bidmachine;

import android.content.Context;
import io.bidmachine.protobuf.SdkCrashSignalConfig;
import io.bidmachine.util.SdkDispatchers;
import io.bidmachine.util.UtilsKt;
import io.bidmachine.util.file.FileUtilsKt;
import io.bidmachine.utils.BMError;
import java.io.File;
import java.util.Map;
import java.util.concurrent.atomic.AtomicBoolean;
import kotlin.ResultKt;
import kotlin.Unit;
import kotlin.coroutines.Continuation;
import kotlin.coroutines.intrinsics.IntrinsicsKt__IntrinsicsKt;
import kotlin.coroutines.jvm.internal.Boxing;
import kotlin.coroutines.jvm.internal.SuspendLambda;
import kotlin.jvm.functions.Function2;
import kotlin.jvm.internal.Intrinsics;
import kotlinx.coroutines.BuildersKt__Builders_commonKt;
import kotlinx.coroutines.CoroutineScope;
import kotlinx.coroutines.CoroutineScopeKt;
import kotlinx.coroutines.SupervisorKt;

/* JADX INFO: loaded from: classes4.dex */
public final class CrashTracker {
    public static final CrashTracker INSTANCE = new CrashTracker();
    private static final AtomicBoolean crashTrackerStarted;
    private static final SdkDispatchers dispatchers;
    private static final CoroutineScope scope;

    public static final class a extends SuspendLambda implements Function2 {
        public int a;
        public /* synthetic */ Object b;
        public final /* synthetic */ SdkCrashSignalConfig c;
        public final /* synthetic */ Context d;

        /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
        public a(SdkCrashSignalConfig sdkCrashSignalConfig, Context context, Continuation continuation) {
            super(2, continuation);
            this.c = sdkCrashSignalConfig;
            this.d = context;
        }

        @Override // kotlin.jvm.functions.Function2
        /* JADX INFO: renamed from: a, reason: merged with bridge method [inline-methods] */
        public final Object invoke(CoroutineScope coroutineScope, Continuation continuation) {
            return ((a) create(coroutineScope, continuation)).invokeSuspend(Unit.INSTANCE);
        }

        @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
        public final Continuation create(Object obj, Continuation continuation) {
            a aVar = new a(this.c, this.d, continuation);
            aVar.b = obj;
            return aVar;
        }

        @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
        public final Object invokeSuspend(Object obj) {
            IntrinsicsKt__IntrinsicsKt.getCOROUTINE_SUSPENDED();
            if (this.a != 0) {
                throw new IllegalStateException("call to 'resume' before 'invoke' with coroutine");
            }
            ResultKt.throwOnFailure(obj);
            SdkCrashSignalConfig sdkCrashSignalConfig = this.c;
            Context context = this.d;
            try {
                if (sdkCrashSignalConfig.getCrashTrackingEnabled()) {
                    CrashTracker.INSTANCE.reportPendingCrashes(context);
                    Unit unit = Unit.INSTANCE;
                } else {
                    Boxing.boxBoolean(FileUtilsKt.deleteFile(CrashTrackerKt.crashDir(context)));
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
        crashTrackerStarted = new AtomicBoolean(false);
    }

    private CrashTracker() {
    }

    public static final void reportAndInit(Context context, SdkCrashSignalConfig crashSignalConfig) {
        Intrinsics.checkNotNullParameter(context, "context");
        Intrinsics.checkNotNullParameter(crashSignalConfig, "crashSignalConfig");
        Context applicationContext = context.getApplicationContext();
        Intrinsics.checkNotNullExpressionValue(applicationContext, "context.applicationContext");
        BuildersKt__Builders_commonKt.launch$default(scope, null, null, new a(crashSignalConfig, applicationContext, null), 3, null);
        if (crashSignalConfig.getCrashTrackingEnabled() && crashTrackerStarted.compareAndSet(false, true)) {
            try {
                Thread.setDefaultUncaughtExceptionHandler(new BidMachineExceptionHandler(applicationContext, Thread.getDefaultUncaughtExceptionHandler()));
                Unit unit = Unit.INSTANCE;
            } catch (Throwable unused) {
            }
        }
    }

    private final void trackCrash(Map<String, String> map) {
        Long longOrDefault$default;
        Long longOrDefault$default2;
        BidMachineTrackingObject bidMachineTrackingObject = new BidMachineTrackingObject();
        TrackEventType trackEventType = TrackEventType.CrashReport;
        String str = map.get("startMs");
        long jLongValue = 0;
        long jLongValue2 = (str == null || (longOrDefault$default2 = UtilsKt.toLongOrDefault$default(str, null, 1, null)) == null) ? 0L : longOrDefault$default2.longValue();
        String str2 = map.get("finishMs");
        if (str2 != null && (longOrDefault$default = UtilsKt.toLongOrDefault$default(str2, null, 1, null)) != null) {
            jLongValue = longOrDefault$default.longValue();
        }
        long j = jLongValue;
        String str3 = map.get("message");
        if (str3 == null) {
            str3 = "Exception";
        }
        String str4 = map.get("extendedMessage");
        if (str4 == null) {
            str4 = "Unknown";
        }
        bidMachineTrackingObject.trackEvent(trackEventType, jLongValue2, j, null, null, BMError.handledException(str3, str4));
    }

    public final void reportPendingCrashes(Context applicationContext) {
        Map<String, String> crash;
        Intrinsics.checkNotNullParameter(applicationContext, "applicationContext");
        for (File file : CrashTrackerKt.crashFiles(applicationContext)) {
            if (file.isFile()) {
                CrashTracker crashTracker = INSTANCE;
                String safely = FileUtilsKt.readSafely(file);
                if (safely != null && (crash = CrashTrackerKt.parseCrash(safely)) != null) {
                    crashTracker.trackCrash(crash);
                    file.delete();
                }
            }
        }
    }
}
