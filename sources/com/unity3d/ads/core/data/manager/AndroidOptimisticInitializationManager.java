package com.unity3d.ads.core.data.manager;

import com.google.protobuf.ByteString;
import com.unity3d.ads.core.data.datasource.StaticDeviceInfoDataSource;
import com.unity3d.ads.core.data.model.AdObject;
import com.unity3d.ads.core.data.repository.SessionRepository;
import com.unity3d.ads.core.domain.SendDiagnosticEvent;
import com.unity3d.ads.core.domain.TriggerInitializeListener;
import com.unity3d.ads.core.log.Logger;
import com.unity3d.services.core.preferences.AndroidPreferences;
import com.vungle.ads.internal.protos.Sdk;
import java.util.Map;
import java.util.concurrent.atomic.AtomicBoolean;
import kotlin.ResultKt;
import kotlin.Unit;
import kotlin.collections.CollectionsKt__CollectionsKt;
import kotlin.collections.CollectionsKt___CollectionsKt;
import kotlin.coroutines.Continuation;
import kotlin.coroutines.intrinsics.IntrinsicsKt__IntrinsicsKt;
import kotlin.coroutines.jvm.internal.ContinuationImpl;
import kotlin.coroutines.jvm.internal.DebugMetadata;
import kotlin.coroutines.jvm.internal.SuspendLambda;
import kotlin.jvm.functions.Function2;
import kotlin.jvm.internal.DefaultConstructorMarker;
import kotlin.jvm.internal.Intrinsics;
import kotlinx.coroutines.BuildersKt__Builders_commonKt;
import kotlinx.coroutines.CoroutineScope;
import kotlinx.coroutines.DelayKt;
import kotlinx.coroutines.Job;

/* JADX INFO: compiled from: AndroidOptimisticInitializationManager.kt */
/* JADX INFO: loaded from: classes4.dex */
public final class AndroidOptimisticInitializationManager implements OptimisticInitializationManager {
    public static final Companion Companion = new Companion(null);
    private static final String DIAGNOSTIC_EVENT = "native_initialize_success_optimistically";
    private static final String KEY_LAST_SUCCESS = "last_init_success";
    private static final String PREFERENCES_FILE = "unityads-optimistic-init";
    private final Logger logger;
    private final CoroutineScope optimisticScope;
    private final SendDiagnosticEvent sendDiagnosticEvent;
    private final SessionRepository sessionRepository;
    private final StaticDeviceInfoDataSource staticDeviceInfoDataSource;
    private final AtomicBoolean terminal;
    private volatile Job timerJob;
    private final TriggerInitializeListener triggerInitializeListener;

    /* JADX INFO: renamed from: com.unity3d.ads.core.data.manager.AndroidOptimisticInitializationManager$storeKey$1, reason: invalid class name and case insensitive filesystem */
    /* JADX INFO: compiled from: AndroidOptimisticInitializationManager.kt */
    @DebugMetadata(c = "com.unity3d.ads.core.data.manager.AndroidOptimisticInitializationManager", f = "AndroidOptimisticInitializationManager.kt", l = {107}, m = "storeKey")
    public static final class C40091 extends ContinuationImpl {
        int label;
        /* synthetic */ Object result;

        public C40091(Continuation<? super C40091> continuation) {
            super(continuation);
        }

        @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
        public final Object invokeSuspend(Object obj) {
            this.result = obj;
            this.label |= Integer.MIN_VALUE;
            return AndroidOptimisticInitializationManager.this.storeKey(this);
        }
    }

    /* JADX INFO: renamed from: com.unity3d.ads.core.data.manager.AndroidOptimisticInitializationManager$tryOptimisticCompletion$1, reason: invalid class name and case insensitive filesystem */
    /* JADX INFO: compiled from: AndroidOptimisticInitializationManager.kt */
    @DebugMetadata(c = "com.unity3d.ads.core.data.manager.AndroidOptimisticInitializationManager", f = "AndroidOptimisticInitializationManager.kt", l = {58, 70}, m = "tryOptimisticCompletion")
    public static final class C40101 extends ContinuationImpl {
        int I$0;
        Object L$0;
        int label;
        /* synthetic */ Object result;

        public C40101(Continuation<? super C40101> continuation) {
            super(continuation);
        }

        @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
        public final Object invokeSuspend(Object obj) {
            this.result = obj;
            this.label |= Integer.MIN_VALUE;
            return AndroidOptimisticInitializationManager.this.tryOptimisticCompletion(this);
        }
    }

    public AndroidOptimisticInitializationManager(SessionRepository sessionRepository, TriggerInitializeListener triggerInitializeListener, SendDiagnosticEvent sendDiagnosticEvent, CoroutineScope optimisticScope, StaticDeviceInfoDataSource staticDeviceInfoDataSource, Logger logger) {
        Intrinsics.checkNotNullParameter(sessionRepository, "sessionRepository");
        Intrinsics.checkNotNullParameter(triggerInitializeListener, "triggerInitializeListener");
        Intrinsics.checkNotNullParameter(sendDiagnosticEvent, "sendDiagnosticEvent");
        Intrinsics.checkNotNullParameter(optimisticScope, "optimisticScope");
        Intrinsics.checkNotNullParameter(staticDeviceInfoDataSource, "staticDeviceInfoDataSource");
        Intrinsics.checkNotNullParameter(logger, "logger");
        this.sessionRepository = sessionRepository;
        this.triggerInitializeListener = triggerInitializeListener;
        this.sendDiagnosticEvent = sendDiagnosticEvent;
        this.optimisticScope = optimisticScope;
        this.staticDeviceInfoDataSource = staticDeviceInfoDataSource;
        this.logger = logger;
        this.terminal = new AtomicBoolean(false);
    }

    /* JADX INFO: compiled from: AndroidOptimisticInitializationManager.kt */
    public static final class Companion {
        public /* synthetic */ Companion(DefaultConstructorMarker defaultConstructorMarker) {
            this();
        }

        private Companion() {
        }
    }

    /* JADX WARN: Removed duplicated region for block: B:7:0x0013  */
    @Override // com.unity3d.ads.core.data.manager.OptimisticInitializationManager
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct code enable 'Show inconsistent code' option in preferences
    */
    public java.lang.Object tryOptimisticCompletion(kotlin.coroutines.Continuation<? super java.lang.Boolean> r15) {
        /*
            Method dump skipped, instruction units count: 284
            To view this dump change 'Code comments level' option to 'DEBUG'
        */
        throw new UnsupportedOperationException("Method not decompiled: com.unity3d.ads.core.data.manager.AndroidOptimisticInitializationManager.tryOptimisticCompletion(kotlin.coroutines.Continuation):java.lang.Object");
    }

    /* JADX INFO: renamed from: com.unity3d.ads.core.data.manager.AndroidOptimisticInitializationManager$tryOptimisticCompletion$2, reason: invalid class name and case insensitive filesystem */
    /* JADX INFO: compiled from: AndroidOptimisticInitializationManager.kt */
    @DebugMetadata(c = "com.unity3d.ads.core.data.manager.AndroidOptimisticInitializationManager$tryOptimisticCompletion$2", f = "AndroidOptimisticInitializationManager.kt", l = {}, m = "invokeSuspend")
    public static final class C40112 extends SuspendLambda implements Function2<CoroutineScope, Continuation<? super String>, Object> {
        int label;

        public C40112(Continuation<? super C40112> continuation) {
            super(2, continuation);
        }

        @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
        public final Continuation<Unit> create(Object obj, Continuation<?> continuation) {
            return new C40112(continuation);
        }

        @Override // kotlin.jvm.functions.Function2
        public final Object invoke(CoroutineScope coroutineScope, Continuation<? super String> continuation) {
            return ((C40112) create(coroutineScope, continuation)).invokeSuspend(Unit.INSTANCE);
        }

        @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
        public final Object invokeSuspend(Object obj) {
            IntrinsicsKt__IntrinsicsKt.getCOROUTINE_SUSPENDED();
            if (this.label != 0) {
                throw new IllegalStateException("call to 'resume' before 'invoke' with coroutine");
            }
            ResultKt.throwOnFailure(obj);
            return AndroidPreferences.getString(AndroidOptimisticInitializationManager.PREFERENCES_FILE, AndroidOptimisticInitializationManager.KEY_LAST_SUCCESS);
        }
    }

    /* JADX INFO: renamed from: com.unity3d.ads.core.data.manager.AndroidOptimisticInitializationManager$tryOptimisticCompletion$3, reason: invalid class name */
    /* JADX INFO: compiled from: AndroidOptimisticInitializationManager.kt */
    @DebugMetadata(c = "com.unity3d.ads.core.data.manager.AndroidOptimisticInitializationManager$tryOptimisticCompletion$3", f = "AndroidOptimisticInitializationManager.kt", l = {}, m = "invokeSuspend")
    public static final class AnonymousClass3 extends SuspendLambda implements Function2<CoroutineScope, Continuation<? super Unit>, Object> {
        int label;

        public AnonymousClass3(Continuation<? super AnonymousClass3> continuation) {
            super(2, continuation);
        }

        @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
        public final Continuation<Unit> create(Object obj, Continuation<?> continuation) {
            return new AnonymousClass3(continuation);
        }

        @Override // kotlin.jvm.functions.Function2
        public final Object invoke(CoroutineScope coroutineScope, Continuation<? super Unit> continuation) {
            return ((AnonymousClass3) create(coroutineScope, continuation)).invokeSuspend(Unit.INSTANCE);
        }

        @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
        public final Object invokeSuspend(Object obj) {
            IntrinsicsKt__IntrinsicsKt.getCOROUTINE_SUSPENDED();
            if (this.label != 0) {
                throw new IllegalStateException("call to 'resume' before 'invoke' with coroutine");
            }
            ResultKt.throwOnFailure(obj);
            AndroidPreferences.removeKey(AndroidOptimisticInitializationManager.PREFERENCES_FILE, AndroidOptimisticInitializationManager.KEY_LAST_SUCCESS);
            return Unit.INSTANCE;
        }
    }

    /* JADX INFO: renamed from: com.unity3d.ads.core.data.manager.AndroidOptimisticInitializationManager$tryOptimisticCompletion$4, reason: invalid class name */
    /* JADX INFO: compiled from: AndroidOptimisticInitializationManager.kt */
    @DebugMetadata(c = "com.unity3d.ads.core.data.manager.AndroidOptimisticInitializationManager$tryOptimisticCompletion$4", f = "AndroidOptimisticInitializationManager.kt", l = {79}, m = "invokeSuspend")
    public static final class AnonymousClass4 extends SuspendLambda implements Function2<CoroutineScope, Continuation<? super Unit>, Object> {
        final /* synthetic */ int $delayMs;
        int label;
        final /* synthetic */ AndroidOptimisticInitializationManager this$0;

        /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
        public AnonymousClass4(int i, AndroidOptimisticInitializationManager androidOptimisticInitializationManager, Continuation<? super AnonymousClass4> continuation) {
            super(2, continuation);
            this.$delayMs = i;
            this.this$0 = androidOptimisticInitializationManager;
        }

        @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
        public final Continuation<Unit> create(Object obj, Continuation<?> continuation) {
            return new AnonymousClass4(this.$delayMs, this.this$0, continuation);
        }

        @Override // kotlin.jvm.functions.Function2
        public final Object invoke(CoroutineScope coroutineScope, Continuation<? super Unit> continuation) {
            return ((AnonymousClass4) create(coroutineScope, continuation)).invokeSuspend(Unit.INSTANCE);
        }

        @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
        public final Object invokeSuspend(Object obj) {
            Object coroutine_suspended = IntrinsicsKt__IntrinsicsKt.getCOROUTINE_SUSPENDED();
            int i = this.label;
            if (i == 0) {
                ResultKt.throwOnFailure(obj);
                long j = this.$delayMs;
                this.label = 1;
                if (DelayKt.delay(j, this) == coroutine_suspended) {
                    return coroutine_suspended;
                }
            } else {
                if (i != 1) {
                    throw new IllegalStateException("call to 'resume' before 'invoke' with coroutine");
                }
                ResultKt.throwOnFailure(obj);
            }
            this.this$0.sendOptimistic();
            return Unit.INSTANCE;
        }
    }

    @Override // com.unity3d.ads.core.data.manager.OptimisticInitializationManager
    public void onInitializationFinished(boolean z) {
        this.terminal.set(true);
        Job job = this.timerJob;
        if (job != null) {
            Job.DefaultImpls.cancel$default(job, null, 1, null);
        }
        if (z) {
            BuildersKt__Builders_commonKt.launch$default(this.optimisticScope, null, null, new AnonymousClass1(null), 3, null);
        }
    }

    /* JADX INFO: renamed from: com.unity3d.ads.core.data.manager.AndroidOptimisticInitializationManager$onInitializationFinished$1, reason: invalid class name */
    /* JADX INFO: compiled from: AndroidOptimisticInitializationManager.kt */
    @DebugMetadata(c = "com.unity3d.ads.core.data.manager.AndroidOptimisticInitializationManager$onInitializationFinished$1", f = "AndroidOptimisticInitializationManager.kt", l = {90}, m = "invokeSuspend")
    public static final class AnonymousClass1 extends SuspendLambda implements Function2<CoroutineScope, Continuation<? super Unit>, Object> {
        int label;

        public AnonymousClass1(Continuation<? super AnonymousClass1> continuation) {
            super(2, continuation);
        }

        @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
        public final Continuation<Unit> create(Object obj, Continuation<?> continuation) {
            return AndroidOptimisticInitializationManager.this.new AnonymousClass1(continuation);
        }

        @Override // kotlin.jvm.functions.Function2
        public final Object invoke(CoroutineScope coroutineScope, Continuation<? super Unit> continuation) {
            return ((AnonymousClass1) create(coroutineScope, continuation)).invokeSuspend(Unit.INSTANCE);
        }

        @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
        public final Object invokeSuspend(Object obj) {
            Object coroutine_suspended = IntrinsicsKt__IntrinsicsKt.getCOROUTINE_SUSPENDED();
            int i = this.label;
            if (i == 0) {
                ResultKt.throwOnFailure(obj);
                AndroidOptimisticInitializationManager androidOptimisticInitializationManager = AndroidOptimisticInitializationManager.this;
                this.label = 1;
                if (androidOptimisticInitializationManager.storeKey(this) == coroutine_suspended) {
                    return coroutine_suspended;
                }
            } else {
                if (i != 1) {
                    throw new IllegalStateException("call to 'resume' before 'invoke' with coroutine");
                }
                ResultKt.throwOnFailure(obj);
            }
            return Unit.INSTANCE;
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public final void sendOptimistic() {
        if (this.terminal.compareAndSet(false, true)) {
            try {
                Logger.DefaultImpls.trace$default(this.logger, "Optimistic init: timer fired, sending success callback", null, 2, null);
                this.triggerInitializeListener.success();
                SendDiagnosticEvent.DefaultImpls.invoke$default(this.sendDiagnosticEvent, DIAGNOSTIC_EVENT, (Double) null, (Map) null, (Map) null, (AdObject) null, (Integer) null, (ByteString) null, Sdk.SDKError.Reason.ASSET_FAILED_INSUFFICIENT_SPACE_VALUE, (Object) null);
            } catch (Throwable th) {
                this.logger.trace("Optimistic init: failed to send success callback: " + th.getMessage(), th);
            }
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    /* JADX WARN: Removed duplicated region for block: B:7:0x0013  */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct code enable 'Show inconsistent code' option in preferences
    */
    public final java.lang.Object storeKey(kotlin.coroutines.Continuation<? super kotlin.Unit> r7) {
        /*
            r6 = this;
            boolean r0 = r7 instanceof com.unity3d.ads.core.data.manager.AndroidOptimisticInitializationManager.C40091
            if (r0 == 0) goto L13
            r0 = r7
            com.unity3d.ads.core.data.manager.AndroidOptimisticInitializationManager$storeKey$1 r0 = (com.unity3d.ads.core.data.manager.AndroidOptimisticInitializationManager.C40091) r0
            int r1 = r0.label
            r2 = -2147483648(0xffffffff80000000, float:-0.0)
            r3 = r1 & r2
            if (r3 == 0) goto L13
            int r1 = r1 - r2
            r0.label = r1
            goto L18
        L13:
            com.unity3d.ads.core.data.manager.AndroidOptimisticInitializationManager$storeKey$1 r0 = new com.unity3d.ads.core.data.manager.AndroidOptimisticInitializationManager$storeKey$1
            r0.<init>(r7)
        L18:
            java.lang.Object r7 = r0.result
            java.lang.Object r1 = kotlin.coroutines.intrinsics.IntrinsicsKt__IntrinsicsKt.getCOROUTINE_SUSPENDED()
            int r2 = r0.label
            r3 = 1
            r4 = 0
            if (r2 == 0) goto L34
            if (r2 != r3) goto L2c
            kotlin.ResultKt.throwOnFailure(r7)     // Catch: java.lang.Exception -> L2a
            goto L68
        L2a:
            r7 = move-exception
            goto L4d
        L2c:
            java.lang.IllegalStateException r7 = new java.lang.IllegalStateException
            java.lang.String r0 = "call to 'resume' before 'invoke' with coroutine"
            r7.<init>(r0)
            throw r7
        L34:
            kotlin.ResultKt.throwOnFailure(r7)
            java.lang.String r7 = r6.computeKey()     // Catch: java.lang.Exception -> L2a
            kotlinx.coroutines.CoroutineDispatcher r2 = kotlinx.coroutines.Dispatchers.getIO()     // Catch: java.lang.Exception -> L2a
            com.unity3d.ads.core.data.manager.AndroidOptimisticInitializationManager$storeKey$2 r5 = new com.unity3d.ads.core.data.manager.AndroidOptimisticInitializationManager$storeKey$2     // Catch: java.lang.Exception -> L2a
            r5.<init>(r7, r4)     // Catch: java.lang.Exception -> L2a
            r0.label = r3     // Catch: java.lang.Exception -> L2a
            java.lang.Object r7 = kotlinx.coroutines.BuildersKt.withContext(r2, r5, r0)     // Catch: java.lang.Exception -> L2a
            if (r7 != r1) goto L68
            return r1
        L4d:
            com.unity3d.ads.core.log.Logger r0 = r6.logger
            java.lang.StringBuilder r1 = new java.lang.StringBuilder
            r1.<init>()
            java.lang.String r2 = "Optimistic init: failed to store key: "
            r1.append(r2)
            java.lang.String r7 = r7.getMessage()
            r1.append(r7)
            java.lang.String r7 = r1.toString()
            r1 = 2
            com.unity3d.ads.core.log.Logger.DefaultImpls.trace$default(r0, r7, r4, r1, r4)
        L68:
            kotlin.Unit r7 = kotlin.Unit.INSTANCE
            return r7
        */
        throw new UnsupportedOperationException("Method not decompiled: com.unity3d.ads.core.data.manager.AndroidOptimisticInitializationManager.storeKey(kotlin.coroutines.Continuation):java.lang.Object");
    }

    /* JADX INFO: renamed from: com.unity3d.ads.core.data.manager.AndroidOptimisticInitializationManager$storeKey$2, reason: invalid class name */
    /* JADX INFO: compiled from: AndroidOptimisticInitializationManager.kt */
    @DebugMetadata(c = "com.unity3d.ads.core.data.manager.AndroidOptimisticInitializationManager$storeKey$2", f = "AndroidOptimisticInitializationManager.kt", l = {}, m = "invokeSuspend")
    public static final class AnonymousClass2 extends SuspendLambda implements Function2<CoroutineScope, Continuation<? super Unit>, Object> {
        final /* synthetic */ String $key;
        int label;

        /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
        public AnonymousClass2(String str, Continuation<? super AnonymousClass2> continuation) {
            super(2, continuation);
            this.$key = str;
        }

        @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
        public final Continuation<Unit> create(Object obj, Continuation<?> continuation) {
            return new AnonymousClass2(this.$key, continuation);
        }

        @Override // kotlin.jvm.functions.Function2
        public final Object invoke(CoroutineScope coroutineScope, Continuation<? super Unit> continuation) {
            return ((AnonymousClass2) create(coroutineScope, continuation)).invokeSuspend(Unit.INSTANCE);
        }

        @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
        public final Object invokeSuspend(Object obj) {
            IntrinsicsKt__IntrinsicsKt.getCOROUTINE_SUSPENDED();
            if (this.label != 0) {
                throw new IllegalStateException("call to 'resume' before 'invoke' with coroutine");
            }
            ResultKt.throwOnFailure(obj);
            AndroidPreferences.setString(AndroidOptimisticInitializationManager.PREFERENCES_FILE, AndroidOptimisticInitializationManager.KEY_LAST_SUCCESS, this.$key);
            return Unit.INSTANCE;
        }
    }

    private final String computeKey() {
        String gameId = this.sessionRepository.getGameId();
        if (gameId == null) {
            gameId = "";
        }
        return CollectionsKt___CollectionsKt.joinToString$default(CollectionsKt__CollectionsKt.listOf((Object[]) new String[]{gameId, "4.20.1", this.staticDeviceInfoDataSource.fetchCached().getBundleVersion()}), "|", null, null, 0, null, null, 62, null);
    }
}
