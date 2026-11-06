package com.ironsource;

import com.ironsource.mediationsdk.logger.IronLog;
import kotlin.Lazy;
import kotlin.LazyKt__LazyJVMKt;
import kotlin.ResultKt;
import kotlin.Unit;
import kotlin.coroutines.AbstractCoroutineContextElement;
import kotlin.coroutines.Continuation;
import kotlin.coroutines.CoroutineContext;
import kotlin.coroutines.intrinsics.IntrinsicsKt__IntrinsicsKt;
import kotlin.coroutines.jvm.internal.DebugMetadata;
import kotlin.coroutines.jvm.internal.SuspendLambda;
import kotlin.jvm.functions.Function0;
import kotlin.jvm.functions.Function2;
import kotlin.jvm.internal.Intrinsics;
import kotlinx.coroutines.BuildersKt__Builders_commonKt;
import kotlinx.coroutines.CoroutineExceptionHandler;
import kotlinx.coroutines.CoroutineScope;
import kotlinx.coroutines.CoroutineScopeKt;
import kotlinx.coroutines.Dispatchers;

/* JADX INFO: loaded from: classes3.dex */
public final class Jf {
    public static final Jf a = new Jf();
    private static final Lazy b = LazyKt__LazyJVMKt.lazy(new Function0() { // from class: com.ironsource.Jf$$ExternalSyntheticLambda0
        @Override // kotlin.jvm.functions.Function0
        public final Object invoke() {
            return Jf.d();
        }
    });
    private static final Lazy c = LazyKt__LazyJVMKt.lazy(new Function0() { // from class: com.ironsource.Jf$$ExternalSyntheticLambda1
        @Override // kotlin.jvm.functions.Function0
        public final Object invoke() {
            return Jf.a();
        }
    });

    public static final class a extends AbstractCoroutineContextElement implements CoroutineExceptionHandler {
        public a(CoroutineExceptionHandler.Key key) {
            super(key);
        }

        @Override // kotlinx.coroutines.CoroutineExceptionHandler
        public void handleException(CoroutineContext coroutineContext, Throwable th) {
            IronLog.INTERNAL.error("CoroutineExceptionHandler caught: " + th.getMessage());
        }
    }

    @DebugMetadata(c = "com.unity3d.mediation.internal.TempThreadManager$launchCoroutineTask$1", f = "TempThreadManager.kt", l = {}, m = "invokeSuspend")
    public static final class b extends SuspendLambda implements Function2<CoroutineScope, Continuation<? super Unit>, Object> {
        int a;
        final /* synthetic */ Runnable b;

        /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
        public b(Runnable runnable, Continuation<? super b> continuation) {
            super(2, continuation);
            this.b = runnable;
        }

        @Override // kotlin.jvm.functions.Function2
        /* JADX INFO: renamed from: a, reason: merged with bridge method [inline-methods] */
        public final Object invoke(CoroutineScope coroutineScope, Continuation<? super Unit> continuation) {
            return ((b) create(coroutineScope, continuation)).invokeSuspend(Unit.INSTANCE);
        }

        @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
        public final Continuation<Unit> create(Object obj, Continuation<?> continuation) {
            return new b(this.b, continuation);
        }

        @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
        public final Object invokeSuspend(Object obj) {
            IntrinsicsKt__IntrinsicsKt.getCOROUTINE_SUSPENDED();
            if (this.a != 0) {
                throw new IllegalStateException("call to 'resume' before 'invoke' with coroutine");
            }
            ResultKt.throwOnFailure(obj);
            try {
                this.b.run();
            } catch (Throwable th) {
                C3813r4.d().a(th);
                IronLog.INTERNAL.error("Exception in TempThreadManager coroutine: " + th.getMessage());
            }
            return Unit.INSTANCE;
        }
    }

    private Jf() {
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static final CoroutineScope a() {
        return CoroutineScopeKt.CoroutineScope(Dispatchers.getIO().plus(new a(CoroutineExceptionHandler.Key)));
    }

    private final CoroutineScope b() {
        return (CoroutineScope) c.getValue();
    }

    private final C3766oe c() {
        return (C3766oe) b.getValue();
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static final C3766oe d() {
        return new C3766oe(16, null, 2, null);
    }

    public final void b(Runnable action) {
        Intrinsics.checkNotNullParameter(action, "action");
        if (a(action)) {
            return;
        }
        c().execute(action);
    }

    private final boolean a(Runnable runnable) {
        try {
            BuildersKt__Builders_commonKt.launch$default(b(), null, null, new b(runnable, null), 3, null);
            return true;
        } catch (Throwable th) {
            try {
                If.a(th);
            } catch (Exception e) {
                C3813r4.d().a(e);
            }
            IronLog.INTERNAL.error("Failed to launch coroutine: " + th.getMessage());
            return false;
        }
    }
}
