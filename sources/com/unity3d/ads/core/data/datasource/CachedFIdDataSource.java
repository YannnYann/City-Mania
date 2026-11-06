package com.unity3d.ads.core.data.datasource;

import java.util.concurrent.atomic.AtomicBoolean;
import kotlin.ResultKt;
import kotlin.Unit;
import kotlin.coroutines.Continuation;
import kotlin.coroutines.intrinsics.IntrinsicsKt__IntrinsicsKt;
import kotlin.coroutines.jvm.internal.DebugMetadata;
import kotlin.coroutines.jvm.internal.SuspendLambda;
import kotlin.jvm.functions.Function1;
import kotlin.jvm.functions.Function2;
import kotlin.jvm.internal.Intrinsics;
import kotlinx.coroutines.BuildersKt__Builders_commonKt;
import kotlinx.coroutines.CoroutineDispatcher;
import kotlinx.coroutines.CoroutineExceptionHandler;
import kotlinx.coroutines.CoroutineScope;
import kotlinx.coroutines.CoroutineScopeKt;

/* JADX INFO: compiled from: CachedFIdDataSource.kt */
/* JADX INFO: loaded from: classes4.dex */
public final class CachedFIdDataSource implements FIdDataSource {
    private final FIdDataSource dataSource;
    private AtomicBoolean loaded;
    private CoroutineScope scope;
    private volatile String value;

    public CachedFIdDataSource(CoroutineDispatcher dispatcher, FIdDataSource dataSource) {
        Intrinsics.checkNotNullParameter(dispatcher, "dispatcher");
        Intrinsics.checkNotNullParameter(dataSource, "dataSource");
        this.dataSource = dataSource;
        this.loaded = new AtomicBoolean(false);
        CoroutineScope coroutineScopePlus = CoroutineScopeKt.plus(CoroutineScopeKt.CoroutineScope(dispatcher), new CachedFIdDataSource$special$$inlined$CoroutineExceptionHandler$1(CoroutineExceptionHandler.Key));
        this.scope = coroutineScopePlus;
        BuildersKt__Builders_commonKt.launch$default(coroutineScopePlus, null, null, new AnonymousClass1(null), 3, null).invokeOnCompletion(new Function1() { // from class: com.unity3d.ads.core.data.datasource.CachedFIdDataSource$$ExternalSyntheticLambda0
            @Override // kotlin.jvm.functions.Function1
            public final Object invoke(Object obj) {
                return CachedFIdDataSource._init_$lambda$1(this.f$0, (Throwable) obj);
            }
        });
    }

    /* JADX INFO: renamed from: com.unity3d.ads.core.data.datasource.CachedFIdDataSource$1, reason: invalid class name */
    /* JADX INFO: compiled from: CachedFIdDataSource.kt */
    @DebugMetadata(c = "com.unity3d.ads.core.data.datasource.CachedFIdDataSource$1", f = "CachedFIdDataSource.kt", l = {}, m = "invokeSuspend")
    public static final class AnonymousClass1 extends SuspendLambda implements Function2<CoroutineScope, Continuation<? super Unit>, Object> {
        int label;

        public AnonymousClass1(Continuation<? super AnonymousClass1> continuation) {
            super(2, continuation);
        }

        @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
        public final Continuation<Unit> create(Object obj, Continuation<?> continuation) {
            return CachedFIdDataSource.this.new AnonymousClass1(continuation);
        }

        @Override // kotlin.jvm.functions.Function2
        public final Object invoke(CoroutineScope coroutineScope, Continuation<? super Unit> continuation) {
            return ((AnonymousClass1) create(coroutineScope, continuation)).invokeSuspend(Unit.INSTANCE);
        }

        @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
        public final Object invokeSuspend(Object obj) {
            IntrinsicsKt__IntrinsicsKt.getCOROUTINE_SUSPENDED();
            if (this.label != 0) {
                throw new IllegalStateException("call to 'resume' before 'invoke' with coroutine");
            }
            ResultKt.throwOnFailure(obj);
            CachedFIdDataSource cachedFIdDataSource = CachedFIdDataSource.this;
            cachedFIdDataSource.value = cachedFIdDataSource.dataSource.invoke();
            return Unit.INSTANCE;
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static final Unit _init_$lambda$1(CachedFIdDataSource cachedFIdDataSource, Throwable th) {
        CoroutineScopeKt.cancel$default(cachedFIdDataSource.scope, null, 1, null);
        cachedFIdDataSource.loaded.set(true);
        return Unit.INSTANCE;
    }

    @Override // com.unity3d.ads.core.data.datasource.FIdDataSource
    public String invoke() {
        if (this.loaded.get()) {
            return this.value;
        }
        return null;
    }
}
