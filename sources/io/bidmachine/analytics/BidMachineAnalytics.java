package io.bidmachine.analytics;

import android.content.Context;
import android.util.Base64;
import io.bidmachine.analytics.internal.a.C4105a;
import io.bidmachine.analytics.internal.b.C4108a;
import io.bidmachine.analytics.internal.c.C4109a;
import io.bidmachine.analytics.internal.d.C4110a;
import io.bidmachine.analytics.internal.g.EnumC4114a;
import io.bidmachine.analytics.internal.h.C4125e;
import java.util.Map;
import java.util.concurrent.Executors;
import kotlin.Lazy;
import kotlin.LazyKt__LazyJVMKt;
import kotlin.Result;
import kotlin.ResultKt;
import kotlin.Unit;
import kotlin.collections.ArraysKt___ArraysKt;
import kotlin.collections.MapsKt__MapsKt;
import kotlin.coroutines.Continuation;
import kotlin.coroutines.intrinsics.IntrinsicsKt__IntrinsicsKt;
import kotlin.coroutines.jvm.internal.SuspendLambda;
import kotlin.jvm.functions.Function0;
import kotlin.jvm.functions.Function2;
import kotlin.jvm.internal.Lambda;
import kotlinx.coroutines.BuildersKt__Builders_commonKt;
import kotlinx.coroutines.CoroutineScope;
import kotlinx.coroutines.CoroutineScopeKt;
import kotlinx.coroutines.ExecutorsKt;
import kotlinx.coroutines.SupervisorKt;

/* JADX INFO: loaded from: classes4.dex */
public final class BidMachineAnalytics {
    public static final BidMachineAnalytics INSTANCE = new BidMachineAnalytics();
    private static final Lazy a = LazyKt__LazyJVMKt.lazy(b.a);
    private static String b = "";
    private static C4108a c;
    private static C4105a d;

    public static final class a extends SuspendLambda implements Function2 {
        int a;
        private /* synthetic */ Object b;
        final /* synthetic */ AnalyticsConfig c;
        final /* synthetic */ String d;
        final /* synthetic */ Context e;
        final /* synthetic */ ConfigureListener f;

        /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
        public a(AnalyticsConfig analyticsConfig, String str, Context context, ConfigureListener configureListener, Continuation continuation) {
            super(2, continuation);
            this.c = analyticsConfig;
            this.d = str;
            this.e = context;
            this.f = configureListener;
        }

        @Override // kotlin.jvm.functions.Function2
        /* JADX INFO: renamed from: a, reason: merged with bridge method [inline-methods] */
        public final Object invoke(CoroutineScope coroutineScope, Continuation continuation) {
            return ((a) create(coroutineScope, continuation)).invokeSuspend(Unit.INSTANCE);
        }

        @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
        public final Continuation create(Object obj, Continuation continuation) {
            a aVar = new a(this.c, this.d, this.e, this.f, continuation);
            aVar.b = obj;
            return aVar;
        }

        @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
        public final Object invokeSuspend(Object obj) {
            Object objM2760constructorimpl;
            Object objM2760constructorimpl2;
            IntrinsicsKt__IntrinsicsKt.getCOROUTINE_SUSPENDED();
            if (this.a != 0) {
                throw new IllegalStateException("call to 'resume' before 'invoke' with coroutine");
            }
            ResultKt.throwOnFailure(obj);
            AnalyticsConfig analyticsConfig = this.c;
            try {
                Result.Companion companion = Result.Companion;
                BidMachineAnalytics bidMachineAnalytics = BidMachineAnalytics.INSTANCE;
                bidMachineAnalytics.setEncryptionManager$bidmachine_android_sdk_j_3_8_0(bidMachineAnalytics.a(Base64.decode(analyticsConfig.getBpk(), 2)));
                objM2760constructorimpl = Result.m2760constructorimpl(Unit.INSTANCE);
            } catch (Throwable th) {
                Result.Companion companion2 = Result.Companion;
                objM2760constructorimpl = Result.m2760constructorimpl(ResultKt.createFailure(th));
            }
            if (Result.m2766isSuccessimpl(objM2760constructorimpl)) {
            }
            Result.m2763exceptionOrNullimpl(objM2760constructorimpl);
            try {
                BidMachineAnalytics.INSTANCE.a(this.e, this.c, this.f);
                objM2760constructorimpl2 = Result.m2760constructorimpl(Unit.INSTANCE);
            } catch (Throwable th2) {
                Result.Companion companion3 = Result.Companion;
                objM2760constructorimpl2 = Result.m2760constructorimpl(ResultKt.createFailure(th2));
            }
            if (Result.m2766isSuccessimpl(objM2760constructorimpl2)) {
            }
            Result.m2763exceptionOrNullimpl(objM2760constructorimpl2);
            return Unit.INSTANCE;
        }
    }

    public static final class b extends Lambda implements Function0 {
        public static final b a = new b();

        public b() {
            super(0);
        }

        @Override // kotlin.jvm.functions.Function0
        /* JADX INFO: renamed from: a, reason: merged with bridge method [inline-methods] */
        public final CoroutineScope invoke() {
            return CoroutineScopeKt.CoroutineScope(SupervisorKt.SupervisorJob$default(null, 1, null).plus(ExecutorsKt.from(Executors.newSingleThreadExecutor())));
        }
    }

    private BidMachineAnalytics() {
    }

    /* JADX INFO: Access modifiers changed from: private */
    public final C4108a a(byte[] bArr) {
        C4109a c4109a = new C4109a();
        return new C4108a(c4109a, new C4110a(bArr, c4109a.getName(), null, false, 12, null));
    }

    private final void b(Context context) {
        C4125e.a.d(a(context));
    }

    public static /* synthetic */ void getScope$bidmachine_android_sdk_j_3_8_0$annotations() {
    }

    public static final void initialize(Context context) {
        C4125e.a.c(INSTANCE.a(context));
    }

    public final void configure(Context context, AnalyticsConfig analyticsConfig) {
        configure(context, analyticsConfig, null);
    }

    public final C4108a getEncryptionManager$bidmachine_android_sdk_j_3_8_0() {
        return c;
    }

    public final Map<String, Map<String, Object>> getImpData(int i) {
        EnumC4114a enumC4114a = (EnumC4114a) ArraysKt___ArraysKt.getOrNull(EnumC4114a.values(), i);
        return enumC4114a == null ? MapsKt__MapsKt.emptyMap() : C4125e.a.a(enumC4114a);
    }

    public final Object getProperty(String str) {
        return C4125e.a.a(str);
    }

    public final CoroutineScope getScope$bidmachine_android_sdk_j_3_8_0() {
        return (CoroutineScope) a.getValue();
    }

    public final String getSessionId$bidmachine_android_sdk_j_3_8_0() {
        return b;
    }

    public final void setEncryptionManager$bidmachine_android_sdk_j_3_8_0(C4108a c4108a) {
        c = c4108a;
    }

    public final void configure(Context context, AnalyticsConfig analyticsConfig, ConfigureListener configureListener) {
        String sessionId = analyticsConfig.getSessionId();
        b = sessionId;
        initialize(context);
        b(context);
        BuildersKt__Builders_commonKt.launch$default(getScope$bidmachine_android_sdk_j_3_8_0(), null, null, new a(analyticsConfig, sessionId, context.getApplicationContext(), configureListener, null), 3, null);
    }

    /* JADX INFO: Access modifiers changed from: private */
    public final void a(Context context, AnalyticsConfig analyticsConfig, ConfigureListener configureListener) {
        C4105a c4105aA = a(context);
        io.bidmachine.analytics.internal.z.a.a.a(c4105aA, analyticsConfig);
        C4125e.a.a(c4105aA, analyticsConfig);
        if (configureListener != null) {
            configureListener.onConfigured();
        }
    }

    private final synchronized C4105a a(Context context) {
        C4105a c4105a;
        c4105a = d;
        if (c4105a == null) {
            c4105a = new C4105a(context);
            d = c4105a;
        }
        return c4105a;
    }
}
