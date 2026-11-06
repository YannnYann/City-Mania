package io.bidmachine;

import io.bidmachine.internal.C4218b;
import io.bidmachine.internal.InterfaceC4225i;
import io.bidmachine.rendering.Rendering;
import io.bidmachine.util.SdkDispatchers;
import io.bidmachine.util.UtilsKt;
import io.bidmachine.util.taskmanager.SuspendCancellableTask;
import io.bidmachine.util.taskmanager.TaskManager;
import io.bidmachine.util.taskmanager.coroutine.CoroutineTaskManager;
import io.bidmachine.utils.log.UtilsLoggerInstance;
import java.util.List;
import java.util.Map;
import kotlin.Lazy;
import kotlin.LazyKt__LazyJVMKt;
import kotlin.ResultKt;
import kotlin.Unit;
import kotlin.collections.CollectionsKt__CollectionsKt;
import kotlin.coroutines.Continuation;
import kotlin.coroutines.intrinsics.IntrinsicsKt__IntrinsicsKt;
import kotlin.coroutines.jvm.internal.ContinuationImpl;
import kotlin.coroutines.jvm.internal.SuspendLambda;
import kotlin.jvm.functions.Function0;
import kotlin.jvm.functions.Function2;
import kotlin.jvm.internal.DefaultConstructorMarker;
import kotlin.jvm.internal.Intrinsics;
import kotlin.jvm.internal.Lambda;
import kotlinx.coroutines.CoroutineDispatcher;
import kotlinx.coroutines.CoroutineScope;

/* JADX INFO: loaded from: classes4.dex */
public final class AdResponseCacheParamsCollector {
    public static final Companion Companion = new Companion(null);
    public static final List<TrackEventType> DEFAULT_ADAPTIVE_RESOURCES_CACHE_EVENTS;
    public static final List<TrackEventType> DEFAULT_AD_RESPONSE_CACHE_EVENTS;
    private static final String TAG = "AdResponseCacheParamsCollector";
    private final List<TrackEventType> adResponseCacheEnabledEvents;
    private final InterfaceC4225i adResponseCacheParamsAdapter;
    private final List<TrackEventType> adaptiveResourcesCacheEnabledEvents;
    private final InterfaceC4225i adaptiveResourcesCacheParamsAdapter;
    private final CoroutineDispatcher ioDispatcher;
    private final UtilsLoggerInstance logger;
    private final CoroutineDispatcher mainDispatcher;
    private final Lazy taskManager$delegate;

    public interface Callback {
        void onCollected(Map<String, ? extends Object> map);
    }

    public static final class Companion {
        public /* synthetic */ Companion(DefaultConstructorMarker defaultConstructorMarker) {
            this();
        }

        private Companion() {
        }
    }

    public final class a extends SuspendCancellableTask {
        public final TrackEventType a;
        public final AdResponse b;
        public final Callback c;
        public final /* synthetic */ AdResponseCacheParamsCollector d;

        /* JADX INFO: renamed from: io.bidmachine.AdResponseCacheParamsCollector$a$a, reason: collision with other inner class name */
        public static final class C1099a extends ContinuationImpl {
            public Object a;
            public Object b;
            public Object c;
            public Object d;
            public Object e;
            public /* synthetic */ Object f;
            public int h;

            public C1099a(Continuation continuation) {
                super(continuation);
            }

            @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
            public final Object invokeSuspend(Object obj) {
                this.f = obj;
                this.h |= Integer.MIN_VALUE;
                return a.this.runTask(null, this);
            }
        }

        public static final class b extends Lambda implements Function0 {
            public final /* synthetic */ Map b;

            /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
            public b(Map map) {
                super(0);
                this.b = map;
            }

            @Override // kotlin.jvm.functions.Function0
            /* JADX INFO: renamed from: a, reason: merged with bridge method [inline-methods] */
            public final String invoke() {
                return a.this.a.getActionValue() + ". Collected cache params: " + UtilsKt.toJsonObject(this.b);
            }
        }

        public static final class c extends SuspendLambda implements Function2 {
            public int a;
            public final /* synthetic */ Map c;

            /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
            public c(Map map, Continuation continuation) {
                super(2, continuation);
                this.c = map;
            }

            @Override // kotlin.jvm.functions.Function2
            /* JADX INFO: renamed from: a, reason: merged with bridge method [inline-methods] */
            public final Object invoke(CoroutineScope coroutineScope, Continuation continuation) {
                return ((c) create(coroutineScope, continuation)).invokeSuspend(Unit.INSTANCE);
            }

            @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
            public final Continuation create(Object obj, Continuation continuation) {
                return a.this.new c(this.c, continuation);
            }

            @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
            public final Object invokeSuspend(Object obj) {
                IntrinsicsKt__IntrinsicsKt.getCOROUTINE_SUSPENDED();
                if (this.a != 0) {
                    throw new IllegalStateException("call to 'resume' before 'invoke' with coroutine");
                }
                ResultKt.throwOnFailure(obj);
                a.this.c.onCollected(this.c);
                return Unit.INSTANCE;
            }
        }

        public a(AdResponseCacheParamsCollector adResponseCacheParamsCollector, TrackEventType trackEventType, AdResponse adResponse, Callback callback) {
            Intrinsics.checkNotNullParameter(trackEventType, "trackEventType");
            Intrinsics.checkNotNullParameter(callback, "callback");
            this.d = adResponseCacheParamsCollector;
            this.a = trackEventType;
            this.b = adResponse;
            this.c = callback;
        }

        /* JADX WARN: Code restructure failed: missing block: B:57:0x0122, code lost:
        
            if (kotlinx.coroutines.BuildersKt.withContext(r1, r3, r10) == r0) goto L58;
         */
        /* JADX WARN: Removed duplicated region for block: B:56:0x00f3 A[PHI: r4 r6
          0x00f3: PHI (r4v12 io.bidmachine.AdResponseCacheParamsCollector$a) = (r4v6 io.bidmachine.AdResponseCacheParamsCollector$a), (r4v13 io.bidmachine.AdResponseCacheParamsCollector$a) binds: [B:38:0x00b5, B:54:0x00ef] A[DONT_GENERATE, DONT_INLINE]
          0x00f3: PHI (r6v11 java.util.Map) = (r6v7 java.util.Map), (r6v13 java.util.Map) binds: [B:38:0x00b5, B:54:0x00ef] A[DONT_GENERATE, DONT_INLINE]] */
        /* JADX WARN: Removed duplicated region for block: B:63:0x00b7 A[EXC_TOP_SPLITTER, SYNTHETIC] */
        /* JADX WARN: Removed duplicated region for block: B:7:0x0013  */
        @Override // io.bidmachine.util.taskmanager.SuspendCancellableTask
        /*
            Code decompiled incorrectly, please refer to instructions dump.
            To view partially-correct code enable 'Show inconsistent code' option in preferences
        */
        public java.lang.Object runTask(kotlin.coroutines.CoroutineContext r10, kotlin.coroutines.Continuation r11) {
            /*
                Method dump skipped, instruction units count: 296
                To view this dump change 'Code comments level' option to 'DEBUG'
            */
            throw new UnsupportedOperationException("Method not decompiled: io.bidmachine.AdResponseCacheParamsCollector.a.runTask(kotlin.coroutines.CoroutineContext, kotlin.coroutines.Continuation):java.lang.Object");
        }
    }

    public static final class b extends Lambda implements Function0 {
        public b() {
            super(0);
        }

        @Override // kotlin.jvm.functions.Function0
        /* JADX INFO: renamed from: a, reason: merged with bridge method [inline-methods] */
        public final CoroutineTaskManager invoke() {
            return new CoroutineTaskManager(AdResponseCacheParamsCollector.this.ioDispatcher);
        }
    }

    static {
        TrackEventType trackEventType = TrackEventType.AuctionRequest;
        TrackEventType trackEventType2 = TrackEventType.AuctionRequestExpired;
        TrackEventType trackEventType3 = TrackEventType.Click;
        TrackEventType trackEventType4 = TrackEventType.Close;
        TrackEventType trackEventType5 = TrackEventType.Destroy;
        TrackEventType trackEventType6 = TrackEventType.Expired;
        TrackEventType trackEventType7 = TrackEventType.FillAd;
        TrackEventType trackEventType8 = TrackEventType.Show;
        DEFAULT_AD_RESPONSE_CACHE_EVENTS = CollectionsKt__CollectionsKt.listOf((Object[]) new TrackEventType[]{trackEventType, trackEventType2, trackEventType3, trackEventType4, trackEventType5, trackEventType6, trackEventType7, TrackEventType.ImpressionOpportunity, trackEventType8});
        DEFAULT_ADAPTIVE_RESOURCES_CACHE_EVENTS = CollectionsKt__CollectionsKt.listOf((Object[]) new TrackEventType[]{trackEventType, trackEventType2, TrackEventType.BrokenCreativeDetector, trackEventType3, trackEventType4, trackEventType5, trackEventType6, trackEventType7, TrackEventType.Load, trackEventType8});
    }

    public AdResponseCacheParamsCollector() {
        this(null, null, null, null, null, null, 63, null);
    }

    private final TaskManager getTaskManager() {
        return (TaskManager) this.taskManager$delegate.getValue();
    }

    public final void collect(TrackEventType trackEventType, AdResponse adResponse, Callback callback) throws Throwable {
        Intrinsics.checkNotNullParameter(trackEventType, "trackEventType");
        Intrinsics.checkNotNullParameter(callback, "callback");
        getTaskManager().execute(new a(this, trackEventType, adResponse, callback));
    }

    /* JADX WARN: 'this' call moved to the top of the method (can break code semantics) */
    public AdResponseCacheParamsCollector(CoroutineDispatcher mainDispatcher) {
        this(mainDispatcher, null, null, null, null, null, 62, null);
        Intrinsics.checkNotNullParameter(mainDispatcher, "mainDispatcher");
    }

    /* JADX WARN: 'this' call moved to the top of the method (can break code semantics) */
    public AdResponseCacheParamsCollector(CoroutineDispatcher mainDispatcher, CoroutineDispatcher ioDispatcher) {
        this(mainDispatcher, ioDispatcher, null, null, null, null, 60, null);
        Intrinsics.checkNotNullParameter(mainDispatcher, "mainDispatcher");
        Intrinsics.checkNotNullParameter(ioDispatcher, "ioDispatcher");
    }

    /* JADX WARN: 'this' call moved to the top of the method (can break code semantics) */
    public AdResponseCacheParamsCollector(CoroutineDispatcher mainDispatcher, CoroutineDispatcher ioDispatcher, List<? extends TrackEventType> adResponseCacheEnabledEvents) {
        this(mainDispatcher, ioDispatcher, adResponseCacheEnabledEvents, null, null, null, 56, null);
        Intrinsics.checkNotNullParameter(mainDispatcher, "mainDispatcher");
        Intrinsics.checkNotNullParameter(ioDispatcher, "ioDispatcher");
        Intrinsics.checkNotNullParameter(adResponseCacheEnabledEvents, "adResponseCacheEnabledEvents");
    }

    /* JADX WARN: 'this' call moved to the top of the method (can break code semantics) */
    public AdResponseCacheParamsCollector(CoroutineDispatcher mainDispatcher, CoroutineDispatcher ioDispatcher, List<? extends TrackEventType> adResponseCacheEnabledEvents, List<? extends TrackEventType> adaptiveResourcesCacheEnabledEvents) {
        this(mainDispatcher, ioDispatcher, adResponseCacheEnabledEvents, adaptiveResourcesCacheEnabledEvents, null, null, 48, null);
        Intrinsics.checkNotNullParameter(mainDispatcher, "mainDispatcher");
        Intrinsics.checkNotNullParameter(ioDispatcher, "ioDispatcher");
        Intrinsics.checkNotNullParameter(adResponseCacheEnabledEvents, "adResponseCacheEnabledEvents");
        Intrinsics.checkNotNullParameter(adaptiveResourcesCacheEnabledEvents, "adaptiveResourcesCacheEnabledEvents");
    }

    /* JADX WARN: 'this' call moved to the top of the method (can break code semantics) */
    public AdResponseCacheParamsCollector(CoroutineDispatcher mainDispatcher, CoroutineDispatcher ioDispatcher, List<? extends TrackEventType> adResponseCacheEnabledEvents, List<? extends TrackEventType> adaptiveResourcesCacheEnabledEvents, InterfaceC4225i adResponseCacheParamsAdapter) {
        this(mainDispatcher, ioDispatcher, adResponseCacheEnabledEvents, adaptiveResourcesCacheEnabledEvents, adResponseCacheParamsAdapter, null, 32, null);
        Intrinsics.checkNotNullParameter(mainDispatcher, "mainDispatcher");
        Intrinsics.checkNotNullParameter(ioDispatcher, "ioDispatcher");
        Intrinsics.checkNotNullParameter(adResponseCacheEnabledEvents, "adResponseCacheEnabledEvents");
        Intrinsics.checkNotNullParameter(adaptiveResourcesCacheEnabledEvents, "adaptiveResourcesCacheEnabledEvents");
        Intrinsics.checkNotNullParameter(adResponseCacheParamsAdapter, "adResponseCacheParamsAdapter");
    }

    /* JADX WARN: Multi-variable type inference failed */
    public AdResponseCacheParamsCollector(CoroutineDispatcher mainDispatcher, CoroutineDispatcher ioDispatcher, List<? extends TrackEventType> adResponseCacheEnabledEvents, List<? extends TrackEventType> adaptiveResourcesCacheEnabledEvents, InterfaceC4225i adResponseCacheParamsAdapter, InterfaceC4225i adaptiveResourcesCacheParamsAdapter) {
        Intrinsics.checkNotNullParameter(mainDispatcher, "mainDispatcher");
        Intrinsics.checkNotNullParameter(ioDispatcher, "ioDispatcher");
        Intrinsics.checkNotNullParameter(adResponseCacheEnabledEvents, "adResponseCacheEnabledEvents");
        Intrinsics.checkNotNullParameter(adaptiveResourcesCacheEnabledEvents, "adaptiveResourcesCacheEnabledEvents");
        Intrinsics.checkNotNullParameter(adResponseCacheParamsAdapter, "adResponseCacheParamsAdapter");
        Intrinsics.checkNotNullParameter(adaptiveResourcesCacheParamsAdapter, "adaptiveResourcesCacheParamsAdapter");
        this.mainDispatcher = mainDispatcher;
        this.ioDispatcher = ioDispatcher;
        this.adResponseCacheEnabledEvents = adResponseCacheEnabledEvents;
        this.adaptiveResourcesCacheEnabledEvents = adaptiveResourcesCacheEnabledEvents;
        this.adResponseCacheParamsAdapter = adResponseCacheParamsAdapter;
        this.adaptiveResourcesCacheParamsAdapter = adaptiveResourcesCacheParamsAdapter;
        this.taskManager$delegate = LazyKt__LazyJVMKt.lazy(new b());
        this.logger = new UtilsLoggerInstance();
    }

    /* JADX WARN: Multi-variable type inference failed */
    public /* synthetic */ AdResponseCacheParamsCollector(CoroutineDispatcher coroutineDispatcher, CoroutineDispatcher coroutineDispatcher2, List list, List list2, InterfaceC4225i interfaceC4225i, InterfaceC4225i interfaceC4225i2, int i, DefaultConstructorMarker defaultConstructorMarker) {
        coroutineDispatcher = (i & 1) != 0 ? SdkDispatchers.Companion.getDefault().getMain() : coroutineDispatcher;
        coroutineDispatcher2 = (i & 2) != 0 ? SdkDispatchers.Companion.getDefault().getIo() : coroutineDispatcher2;
        list = (i & 4) != 0 ? DEFAULT_AD_RESPONSE_CACHE_EVENTS : list;
        list2 = (i & 8) != 0 ? DEFAULT_ADAPTIVE_RESOURCES_CACHE_EVENTS : list2;
        if ((i & 16) != 0) {
            c cVarA = c.a();
            Intrinsics.checkNotNullExpressionValue(cVarA, "get()");
            interfaceC4225i = new AdResponseCacheParamsAdapter(cVarA);
        }
        this(coroutineDispatcher, coroutineDispatcher2, list, list2, interfaceC4225i, (i & 32) != 0 ? new C4218b(null, Rendering.getMediaFileCacheManagerProvider(), 1, 0 == true ? 1 : 0) : interfaceC4225i2);
    }
}
