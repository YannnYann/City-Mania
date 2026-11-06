package io.bidmachine.rendering.internal.meanbackground;

import android.graphics.Bitmap;
import android.graphics.Rect;
import android.view.View;
import java.util.ArrayList;
import java.util.Iterator;
import java.util.List;
import kotlin.ResultKt;
import kotlin.Unit;
import kotlin.collections.CollectionsKt__IterablesKt;
import kotlin.coroutines.Continuation;
import kotlin.coroutines.CoroutineContext;
import kotlin.coroutines.intrinsics.IntrinsicsKt__IntrinsicsKt;
import kotlin.coroutines.jvm.internal.Boxing;
import kotlin.coroutines.jvm.internal.ContinuationImpl;
import kotlin.coroutines.jvm.internal.SuspendLambda;
import kotlin.jvm.functions.Function1;
import kotlin.jvm.functions.Function2;
import kotlin.jvm.internal.Intrinsics;
import kotlinx.coroutines.AwaitKt;
import kotlinx.coroutines.BuildersKt;
import kotlinx.coroutines.BuildersKt__Builders_commonKt;
import kotlinx.coroutines.CoroutineScope;

/* JADX INFO: loaded from: classes5.dex */
public final class k implements f {
    public final n a;
    public final o b;
    public final io.bidmachine.rendering.internal.meanbackground.a c;
    public final io.bidmachine.rendering.internal.meanbackground.b d;
    public final i e;
    public final l f;

    public static final class a extends ContinuationImpl {
        public Object a;
        public Object b;
        public Object c;
        public /* synthetic */ Object d;
        public int f;

        public a(Continuation continuation) {
            super(continuation);
        }

        @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
        public final Object invokeSuspend(Object obj) {
            this.d = obj;
            this.f |= Integer.MIN_VALUE;
            return k.this.a(null, null, this);
        }
    }

    public static final class b extends SuspendLambda implements Function1 {
        public int a;
        public final /* synthetic */ CoroutineContext b;
        public final /* synthetic */ k c;
        public final /* synthetic */ Rect d;
        public final /* synthetic */ Bitmap e;

        public static final class a extends SuspendLambda implements Function2 {
            public int a;
            public /* synthetic */ Object b;
            public final /* synthetic */ k c;
            public final /* synthetic */ Rect d;
            public final /* synthetic */ CoroutineContext e;
            public final /* synthetic */ Bitmap f;

            /* JADX INFO: renamed from: io.bidmachine.rendering.internal.meanbackground.k$b$a$a, reason: collision with other inner class name */
            public static final class C1199a extends SuspendLambda implements Function2 {
                public int a;
                public final /* synthetic */ k b;
                public final /* synthetic */ Bitmap c;
                public final /* synthetic */ Rect d;

                /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
                public C1199a(k kVar, Bitmap bitmap, Rect rect, Continuation continuation) {
                    super(2, continuation);
                    this.b = kVar;
                    this.c = bitmap;
                    this.d = rect;
                }

                @Override // kotlin.jvm.functions.Function2
                /* JADX INFO: renamed from: a, reason: merged with bridge method [inline-methods] */
                public final Object invoke(CoroutineScope coroutineScope, Continuation continuation) {
                    return ((C1199a) create(coroutineScope, continuation)).invokeSuspend(Unit.INSTANCE);
                }

                @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
                public final Continuation create(Object obj, Continuation continuation) {
                    return new C1199a(this.b, this.c, this.d, continuation);
                }

                @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
                public final Object invokeSuspend(Object obj) {
                    IntrinsicsKt__IntrinsicsKt.getCOROUTINE_SUSPENDED();
                    if (this.a != 0) {
                        throw new IllegalStateException("call to 'resume' before 'invoke' with coroutine");
                    }
                    ResultKt.throwOnFailure(obj);
                    return Boxing.boxInt(this.b.e.a(this.c, this.d));
                }
            }

            /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
            public a(k kVar, Rect rect, CoroutineContext coroutineContext, Bitmap bitmap, Continuation continuation) {
                super(2, continuation);
                this.c = kVar;
                this.d = rect;
                this.e = coroutineContext;
                this.f = bitmap;
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
                CoroutineScope coroutineScope = (CoroutineScope) this.b;
                List listA = this.c.d.a(this.d);
                CoroutineContext coroutineContext = this.e;
                k kVar = this.c;
                Bitmap bitmap = this.f;
                ArrayList arrayList = new ArrayList(CollectionsKt__IterablesKt.collectionSizeOrDefault(listA, 10));
                Iterator it = listA.iterator();
                while (it.hasNext()) {
                    arrayList.add(BuildersKt__Builders_commonKt.async$default(coroutineScope, coroutineContext.plus(io.bidmachine.rendering.internal.j.i.a().b()), null, new C1199a(kVar, bitmap, (Rect) it.next(), null), 2, null));
                }
                this.a = 1;
                Object objAwaitAll = AwaitKt.awaitAll(arrayList, this);
                return objAwaitAll == coroutine_suspended ? coroutine_suspended : objAwaitAll;
            }
        }

        /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
        public b(CoroutineContext coroutineContext, k kVar, Rect rect, Bitmap bitmap, Continuation continuation) {
            super(1, continuation);
            this.b = coroutineContext;
            this.c = kVar;
            this.d = rect;
            this.e = bitmap;
        }

        @Override // kotlin.jvm.functions.Function1
        /* JADX INFO: renamed from: a, reason: merged with bridge method [inline-methods] */
        public final Object invoke(Continuation continuation) {
            return ((b) create(continuation)).invokeSuspend(Unit.INSTANCE);
        }

        @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
        public final Continuation create(Continuation continuation) {
            return new b(this.b, this.c, this.d, this.e, continuation);
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
            CoroutineContext coroutineContext = this.b;
            a aVar = new a(this.c, this.d, coroutineContext, this.e, null);
            this.a = 1;
            Object objWithContext = BuildersKt.withContext(coroutineContext, aVar, this);
            return objWithContext == coroutine_suspended ? coroutine_suspended : objWithContext;
        }
    }

    public static final class c extends SuspendLambda implements Function1 {
        public int a;
        public final /* synthetic */ Bitmap c;

        /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
        public c(Bitmap bitmap, Continuation continuation) {
            super(1, continuation);
            this.c = bitmap;
        }

        @Override // kotlin.jvm.functions.Function1
        /* JADX INFO: renamed from: a, reason: merged with bridge method [inline-methods] */
        public final Object invoke(Continuation continuation) {
            return ((c) create(continuation)).invokeSuspend(Unit.INSTANCE);
        }

        @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
        public final Continuation create(Continuation continuation) {
            return k.this.new c(this.c, continuation);
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
            io.bidmachine.rendering.internal.meanbackground.a aVar = k.this.c;
            Bitmap bitmap = this.c;
            this.a = 1;
            Object objA = io.bidmachine.rendering.internal.meanbackground.a.a(aVar, bitmap, (Rect) null, this, 2, (Object) null);
            return objA == coroutine_suspended ? coroutine_suspended : objA;
        }
    }

    public static final class d extends SuspendLambda implements Function1 {
        public int a;
        public final /* synthetic */ View c;

        /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
        public d(View view, Continuation continuation) {
            super(1, continuation);
            this.c = view;
        }

        @Override // kotlin.jvm.functions.Function1
        /* JADX INFO: renamed from: a, reason: merged with bridge method [inline-methods] */
        public final Object invoke(Continuation continuation) {
            return ((d) create(continuation)).invokeSuspend(Unit.INSTANCE);
        }

        @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
        public final Continuation create(Continuation continuation) {
            return k.this.new d(this.c, continuation);
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
            o oVar = k.this.b;
            View viewA = k.this.a.a(this.c);
            this.a = 1;
            Object objB = oVar.b(viewA, this);
            return objB == coroutine_suspended ? coroutine_suspended : objB;
        }
    }

    public k(n viewExtractor, o viewScreenshot, io.bidmachine.rendering.internal.meanbackground.a contentBoundsScanner, io.bidmachine.rendering.internal.meanbackground.b contentCornerExtractor, i meanColorCalculator, l performanceMeasurer) {
        Intrinsics.checkNotNullParameter(viewExtractor, "viewExtractor");
        Intrinsics.checkNotNullParameter(viewScreenshot, "viewScreenshot");
        Intrinsics.checkNotNullParameter(contentBoundsScanner, "contentBoundsScanner");
        Intrinsics.checkNotNullParameter(contentCornerExtractor, "contentCornerExtractor");
        Intrinsics.checkNotNullParameter(meanColorCalculator, "meanColorCalculator");
        Intrinsics.checkNotNullParameter(performanceMeasurer, "performanceMeasurer");
        this.a = viewExtractor;
        this.b = viewScreenshot;
        this.c = contentBoundsScanner;
        this.d = contentCornerExtractor;
        this.e = meanColorCalculator;
        this.f = performanceMeasurer;
    }

    /* JADX WARN: Removed duplicated region for block: B:32:0x00a5  */
    /* JADX WARN: Removed duplicated region for block: B:34:0x00ab  */
    /* JADX WARN: Removed duplicated region for block: B:7:0x0015  */
    @Override // io.bidmachine.rendering.internal.meanbackground.f
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct code enable 'Show inconsistent code' option in preferences
    */
    public java.lang.Object a(kotlin.coroutines.CoroutineContext r15, android.view.View r16, kotlin.coroutines.Continuation r17) {
        /*
            Method dump skipped, instruction units count: 205
            To view this dump change 'Code comments level' option to 'DEBUG'
        */
        throw new UnsupportedOperationException("Method not decompiled: io.bidmachine.rendering.internal.meanbackground.k.a(kotlin.coroutines.CoroutineContext, android.view.View, kotlin.coroutines.Continuation):java.lang.Object");
    }
}
