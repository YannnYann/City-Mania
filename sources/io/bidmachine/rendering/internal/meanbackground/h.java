package io.bidmachine.rendering.internal.meanbackground;

import android.graphics.Bitmap;
import android.view.View;
import io.bidmachine.rendering.internal.meanbackground.f;
import io.bidmachine.util.ImageUtilsKt;
import io.bidmachine.util.taskmanager.SuspendCancellableTask;
import java.lang.ref.WeakReference;
import kotlin.ResultKt;
import kotlin.Unit;
import kotlin.coroutines.Continuation;
import kotlin.coroutines.CoroutineContext;
import kotlin.coroutines.intrinsics.IntrinsicsKt__IntrinsicsKt;
import kotlin.coroutines.jvm.internal.ContinuationImpl;
import kotlin.coroutines.jvm.internal.SuspendLambda;
import kotlin.jvm.functions.Function0;
import kotlin.jvm.functions.Function1;
import kotlin.jvm.functions.Function2;
import kotlin.jvm.internal.Intrinsics;
import kotlin.time.Duration;
import kotlin.time.DurationKt;
import kotlin.time.DurationUnit;
import kotlinx.coroutines.BuildersKt;
import kotlinx.coroutines.CoroutineScope;
import kotlinx.coroutines.TimeoutKt;

/* JADX INFO: loaded from: classes5.dex */
public final class h extends SuspendCancellableTask {
    public final long a;
    public final f b;
    public final l c;
    public final Function0 d;
    public final Function1 e;
    public final WeakReference f;

    public static final class a extends SuspendLambda implements Function2 {
        public int a;
        public final /* synthetic */ Object b;
        public final /* synthetic */ h c;

        /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
        public a(Object obj, h hVar, Continuation continuation) {
            super(2, continuation);
            this.b = obj;
            this.c = hVar;
        }

        @Override // kotlin.jvm.functions.Function2
        /* JADX INFO: renamed from: a, reason: merged with bridge method [inline-methods] */
        public final Object invoke(CoroutineScope coroutineScope, Continuation continuation) {
            return ((a) create(coroutineScope, continuation)).invokeSuspend(Unit.INSTANCE);
        }

        @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
        public final Continuation create(Object obj, Continuation continuation) {
            return new a(this.b, this.c, continuation);
        }

        @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
        public final Object invokeSuspend(Object obj) {
            Unit unit;
            IntrinsicsKt__IntrinsicsKt.getCOROUTINE_SUSPENDED();
            if (this.a != 0) {
                throw new IllegalStateException("call to 'resume' before 'invoke' with coroutine");
            }
            ResultKt.throwOnFailure(obj);
            Object obj2 = this.b;
            if (obj2 != null) {
                this.c.e.invoke(obj2);
                unit = Unit.INSTANCE;
            } else {
                unit = null;
            }
            if (unit == null) {
                this.c.d.invoke();
            }
            return Unit.INSTANCE;
        }
    }

    public static final class b extends ContinuationImpl {
        public Object a;
        public Object b;
        public /* synthetic */ Object c;
        public int e;

        public b(Continuation continuation) {
            super(continuation);
        }

        @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
        public final Object invokeSuspend(Object obj) {
            this.c = obj;
            this.e |= Integer.MIN_VALUE;
            return h.this.runTask(null, this);
        }
    }

    public static final class c extends SuspendLambda implements Function1 {
        public int a;
        public final /* synthetic */ long b;
        public final /* synthetic */ h c;
        public final /* synthetic */ CoroutineContext d;

        public static final class a extends SuspendLambda implements Function2 {
            public int a;
            public final /* synthetic */ h b;
            public final /* synthetic */ CoroutineContext c;

            /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
            public a(h hVar, CoroutineContext coroutineContext, Continuation continuation) {
                super(2, continuation);
                this.b = hVar;
                this.c = coroutineContext;
            }

            @Override // kotlin.jvm.functions.Function2
            /* JADX INFO: renamed from: a, reason: merged with bridge method [inline-methods] */
            public final Object invoke(CoroutineScope coroutineScope, Continuation continuation) {
                return ((a) create(coroutineScope, continuation)).invokeSuspend(Unit.INSTANCE);
            }

            @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
            public final Continuation create(Object obj, Continuation continuation) {
                return new a(this.b, this.c, continuation);
            }

            @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
            public final Object invokeSuspend(Object obj) {
                Object coroutine_suspended = IntrinsicsKt__IntrinsicsKt.getCOROUTINE_SUSPENDED();
                int i = this.a;
                if (i == 0) {
                    ResultKt.throwOnFailure(obj);
                    View view = (View) this.b.f.get();
                    if (view == null) {
                        return null;
                    }
                    h hVar = this.b;
                    CoroutineContext coroutineContext = this.c;
                    f fVar = hVar.b;
                    this.a = 1;
                    obj = fVar.a(coroutineContext, view, this);
                    if (obj == coroutine_suspended) {
                        return coroutine_suspended;
                    }
                } else {
                    if (i != 1) {
                        throw new IllegalStateException("call to 'resume' before 'invoke' with coroutine");
                    }
                    ResultKt.throwOnFailure(obj);
                }
                return (f.a) obj;
            }
        }

        /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
        public c(long j, h hVar, CoroutineContext coroutineContext, Continuation continuation) {
            super(1, continuation);
            this.b = j;
            this.c = hVar;
            this.d = coroutineContext;
        }

        @Override // kotlin.jvm.functions.Function1
        /* JADX INFO: renamed from: a, reason: merged with bridge method [inline-methods] */
        public final Object invoke(Continuation continuation) {
            return ((c) create(continuation)).invokeSuspend(Unit.INSTANCE);
        }

        @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
        public final Continuation create(Continuation continuation) {
            return new c(this.b, this.c, this.d, continuation);
        }

        @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
        public final Object invokeSuspend(Object obj) {
            Object coroutine_suspended = IntrinsicsKt__IntrinsicsKt.getCOROUTINE_SUSPENDED();
            int i = this.a;
            if (i != 0) {
                if (i != 1) {
                    throw new IllegalStateException("call to 'resume' before 'invoke' with coroutine");
                }
                ResultKt.throwOnFailure(obj);
                return obj;
            }
            ResultKt.throwOnFailure(obj);
            Duration.Companion companion = Duration.Companion;
            long duration = DurationKt.toDuration(this.b, DurationUnit.MILLISECONDS);
            a aVar = new a(this.c, this.d, null);
            this.a = 1;
            Object objM2941withTimeoutOrNullKLykuaI = TimeoutKt.m2941withTimeoutOrNullKLykuaI(duration, aVar, this);
            return objM2941withTimeoutOrNullKLykuaI == coroutine_suspended ? coroutine_suspended : objM2941withTimeoutOrNullKLykuaI;
        }
    }

    public h(View view, long j, f meanBackgroundExtractor, l performanceMeasurer, Function0 onFallback, Function1 onFinished) {
        Intrinsics.checkNotNullParameter(view, "view");
        Intrinsics.checkNotNullParameter(meanBackgroundExtractor, "meanBackgroundExtractor");
        Intrinsics.checkNotNullParameter(performanceMeasurer, "performanceMeasurer");
        Intrinsics.checkNotNullParameter(onFallback, "onFallback");
        Intrinsics.checkNotNullParameter(onFinished, "onFinished");
        this.a = j;
        this.b = meanBackgroundExtractor;
        this.c = performanceMeasurer;
        this.d = onFallback;
        this.e = onFinished;
        this.f = new WeakReference(view);
    }

    /* JADX WARN: Code restructure failed: missing block: B:23:0x0074, code lost:
    
        if (r9.a(r10, r5, r2, r0) == r1) goto L24;
     */
    /* JADX WARN: Removed duplicated region for block: B:7:0x0013  */
    @Override // io.bidmachine.util.taskmanager.SuspendCancellableTask
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct code enable 'Show inconsistent code' option in preferences
    */
    public java.lang.Object runTask(kotlin.coroutines.CoroutineContext r9, kotlin.coroutines.Continuation r10) {
        /*
            r8 = this;
            boolean r0 = r10 instanceof io.bidmachine.rendering.internal.meanbackground.h.b
            if (r0 == 0) goto L13
            r0 = r10
            io.bidmachine.rendering.internal.meanbackground.h$b r0 = (io.bidmachine.rendering.internal.meanbackground.h.b) r0
            int r1 = r0.e
            r2 = -2147483648(0xffffffff80000000, float:-0.0)
            r3 = r1 & r2
            if (r3 == 0) goto L13
            int r1 = r1 - r2
            r0.e = r1
            goto L18
        L13:
            io.bidmachine.rendering.internal.meanbackground.h$b r0 = new io.bidmachine.rendering.internal.meanbackground.h$b
            r0.<init>(r10)
        L18:
            java.lang.Object r10 = r0.c
            java.lang.Object r1 = kotlin.coroutines.intrinsics.IntrinsicsKt__IntrinsicsKt.getCOROUTINE_SUSPENDED()
            int r2 = r0.e
            r3 = 2
            r4 = 1
            if (r2 == 0) goto L48
            if (r2 == r4) goto L38
            if (r2 != r3) goto L30
            java.lang.Object r9 = r0.a
            io.bidmachine.rendering.internal.meanbackground.h r9 = (io.bidmachine.rendering.internal.meanbackground.h) r9
            kotlin.ResultKt.throwOnFailure(r10)
            goto L77
        L30:
            java.lang.IllegalStateException r9 = new java.lang.IllegalStateException
            java.lang.String r10 = "call to 'resume' before 'invoke' with coroutine"
            r9.<init>(r10)
            throw r9
        L38:
            java.lang.Object r9 = r0.b
            kotlin.coroutines.CoroutineContext r9 = (kotlin.coroutines.CoroutineContext) r9
            java.lang.Object r2 = r0.a
            io.bidmachine.rendering.internal.meanbackground.h r2 = (io.bidmachine.rendering.internal.meanbackground.h) r2
            kotlin.ResultKt.throwOnFailure(r10)
            r7 = r10
            r10 = r9
            r9 = r2
            r2 = r7
            goto L5d
        L48:
            kotlin.ResultKt.throwOnFailure(r10)
            long r5 = r8.a
            r0.a = r8
            r0.b = r9
            r0.e = r4
            java.lang.Object r10 = r8.a(r9, r5, r0)
            if (r10 != r1) goto L5a
            goto L76
        L5a:
            r2 = r10
            r10 = r9
            r9 = r8
        L5d:
            io.bidmachine.rendering.internal.meanbackground.f$a r2 = (io.bidmachine.rendering.internal.meanbackground.f.a) r2
            if (r2 == 0) goto L77
            java.lang.Object r5 = r2.b()
            android.graphics.Bitmap r2 = r2.a()
            r0.a = r9
            r6 = 0
            r0.b = r6
            r0.e = r3
            java.lang.Object r10 = r9.a(r10, r5, r2, r0)
            if (r10 != r1) goto L77
        L76:
            return r1
        L77:
            r9.setCancel(r4)
            kotlin.Unit r9 = kotlin.Unit.INSTANCE
            return r9
        */
        throw new UnsupportedOperationException("Method not decompiled: io.bidmachine.rendering.internal.meanbackground.h.runTask(kotlin.coroutines.CoroutineContext, kotlin.coroutines.Continuation):java.lang.Object");
    }

    public final Object a(CoroutineContext coroutineContext, long j, Continuation continuation) {
        return this.c.a("Mean background extraction", new c(j, this, coroutineContext, null), continuation);
    }

    public final Object a(CoroutineContext coroutineContext, Object obj, Bitmap bitmap, Continuation continuation) {
        if (bitmap != null) {
            ImageUtilsKt.recycleSafely(bitmap);
        }
        Object objWithContext = BuildersKt.withContext(coroutineContext.plus(io.bidmachine.rendering.internal.j.i.a().e()), new a(obj, this, null), continuation);
        return objWithContext == IntrinsicsKt__IntrinsicsKt.getCOROUTINE_SUSPENDED() ? objWithContext : Unit.INSTANCE;
    }
}
