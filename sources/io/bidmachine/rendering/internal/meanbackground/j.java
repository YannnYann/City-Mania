package io.bidmachine.rendering.internal.meanbackground;

import android.graphics.Bitmap;
import android.graphics.Rect;
import android.view.View;
import kotlin.ResultKt;
import kotlin.Unit;
import kotlin.coroutines.Continuation;
import kotlin.coroutines.intrinsics.IntrinsicsKt__IntrinsicsKt;
import kotlin.coroutines.jvm.internal.Boxing;
import kotlin.coroutines.jvm.internal.ContinuationImpl;
import kotlin.coroutines.jvm.internal.SuspendLambda;
import kotlin.jvm.functions.Function1;
import kotlin.jvm.internal.Intrinsics;

/* JADX INFO: loaded from: classes5.dex */
public final class j implements f {
    public final n a;
    public final o b;
    public final io.bidmachine.rendering.internal.meanbackground.a c;
    public final i d;
    public final l e;

    public static final class a extends ContinuationImpl {
        public Object a;
        public Object b;
        public /* synthetic */ Object c;
        public int e;

        public a(Continuation continuation) {
            super(continuation);
        }

        @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
        public final Object invokeSuspend(Object obj) {
            this.c = obj;
            this.e |= Integer.MIN_VALUE;
            return j.this.a(null, null, this);
        }
    }

    public static final class b extends SuspendLambda implements Function1 {
        public int a;
        public final /* synthetic */ Bitmap c;
        public final /* synthetic */ Rect d;

        /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
        public b(Bitmap bitmap, Rect rect, Continuation continuation) {
            super(1, continuation);
            this.c = bitmap;
            this.d = rect;
        }

        @Override // kotlin.jvm.functions.Function1
        /* JADX INFO: renamed from: a, reason: merged with bridge method [inline-methods] */
        public final Object invoke(Continuation continuation) {
            return ((b) create(continuation)).invokeSuspend(Unit.INSTANCE);
        }

        @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
        public final Continuation create(Continuation continuation) {
            return j.this.new b(this.c, this.d, continuation);
        }

        @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
        public final Object invokeSuspend(Object obj) {
            IntrinsicsKt__IntrinsicsKt.getCOROUTINE_SUSPENDED();
            if (this.a != 0) {
                throw new IllegalStateException("call to 'resume' before 'invoke' with coroutine");
            }
            ResultKt.throwOnFailure(obj);
            return Boxing.boxInt(j.this.d.a(this.c, this.d));
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
            return j.this.new c(this.c, continuation);
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
            io.bidmachine.rendering.internal.meanbackground.a aVar = j.this.c;
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
            return j.this.new d(this.c, continuation);
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
            o oVar = j.this.b;
            View viewA = j.this.a.a(this.c);
            this.a = 1;
            Object objB = oVar.b(viewA, this);
            return objB == coroutine_suspended ? coroutine_suspended : objB;
        }
    }

    public j(n viewExtractor, o viewScreenshot, io.bidmachine.rendering.internal.meanbackground.a contentBoundsScanner, i meanColorCalculator, l performanceMeasurer) {
        Intrinsics.checkNotNullParameter(viewExtractor, "viewExtractor");
        Intrinsics.checkNotNullParameter(viewScreenshot, "viewScreenshot");
        Intrinsics.checkNotNullParameter(contentBoundsScanner, "contentBoundsScanner");
        Intrinsics.checkNotNullParameter(meanColorCalculator, "meanColorCalculator");
        Intrinsics.checkNotNullParameter(performanceMeasurer, "performanceMeasurer");
        this.a = viewExtractor;
        this.b = viewScreenshot;
        this.c = contentBoundsScanner;
        this.d = meanColorCalculator;
        this.e = performanceMeasurer;
    }

    /* JADX WARN: Removed duplicated region for block: B:32:0x0091  */
    /* JADX WARN: Removed duplicated region for block: B:34:0x0097  */
    /* JADX WARN: Removed duplicated region for block: B:7:0x0013  */
    @Override // io.bidmachine.rendering.internal.meanbackground.f
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct code enable 'Show inconsistent code' option in preferences
    */
    public java.lang.Object a(kotlin.coroutines.CoroutineContext r9, android.view.View r10, kotlin.coroutines.Continuation r11) {
        /*
            r8 = this;
            boolean r9 = r11 instanceof io.bidmachine.rendering.internal.meanbackground.j.a
            if (r9 == 0) goto L13
            r9 = r11
            io.bidmachine.rendering.internal.meanbackground.j$a r9 = (io.bidmachine.rendering.internal.meanbackground.j.a) r9
            int r0 = r9.e
            r1 = -2147483648(0xffffffff80000000, float:-0.0)
            r2 = r0 & r1
            if (r2 == 0) goto L13
            int r0 = r0 - r1
            r9.e = r0
            goto L18
        L13:
            io.bidmachine.rendering.internal.meanbackground.j$a r9 = new io.bidmachine.rendering.internal.meanbackground.j$a
            r9.<init>(r11)
        L18:
            java.lang.Object r11 = r9.c
            java.lang.Object r0 = kotlin.coroutines.intrinsics.IntrinsicsKt__IntrinsicsKt.getCOROUTINE_SUSPENDED()
            int r1 = r9.e
            r2 = 2
            r3 = 3
            r4 = 1
            r5 = 0
            if (r1 == 0) goto L52
            if (r1 == r4) goto L49
            if (r1 == r2) goto L3d
            if (r1 != r3) goto L35
            java.lang.Object r9 = r9.a
            android.graphics.Bitmap r9 = (android.graphics.Bitmap) r9
            kotlin.ResultKt.throwOnFailure(r11)
            goto Lae
        L35:
            java.lang.IllegalStateException r9 = new java.lang.IllegalStateException
            java.lang.String r10 = "call to 'resume' before 'invoke' with coroutine"
            r9.<init>(r10)
            throw r9
        L3d:
            java.lang.Object r10 = r9.b
            android.graphics.Bitmap r10 = (android.graphics.Bitmap) r10
            java.lang.Object r1 = r9.a
            io.bidmachine.rendering.internal.meanbackground.j r1 = (io.bidmachine.rendering.internal.meanbackground.j) r1
            kotlin.ResultKt.throwOnFailure(r11)
            goto L8d
        L49:
            java.lang.Object r10 = r9.a
            io.bidmachine.rendering.internal.meanbackground.j r10 = (io.bidmachine.rendering.internal.meanbackground.j) r10
            kotlin.ResultKt.throwOnFailure(r11)
            r1 = r10
            goto L6a
        L52:
            kotlin.ResultKt.throwOnFailure(r11)
            io.bidmachine.rendering.internal.meanbackground.l r11 = r8.e
            io.bidmachine.rendering.internal.meanbackground.j$d r1 = new io.bidmachine.rendering.internal.meanbackground.j$d
            r1.<init>(r10, r5)
            r9.a = r8
            r9.e = r4
            java.lang.String r10 = "Screenshot"
            java.lang.Object r11 = r11.a(r10, r1, r9)
            if (r11 != r0) goto L69
            goto Lac
        L69:
            r1 = r8
        L6a:
            android.graphics.Bitmap r11 = (android.graphics.Bitmap) r11
            if (r11 != 0) goto L74
            io.bidmachine.rendering.internal.meanbackground.f$a r9 = new io.bidmachine.rendering.internal.meanbackground.f$a
            r9.<init>(r5, r5, r3, r5)
            return r9
        L74:
            io.bidmachine.rendering.internal.meanbackground.l r10 = r1.e
            io.bidmachine.rendering.internal.meanbackground.j$c r6 = new io.bidmachine.rendering.internal.meanbackground.j$c
            r6.<init>(r11, r5)
            r9.a = r1
            r9.b = r11
            r9.e = r2
            java.lang.String r2 = "Scan bounds"
            java.lang.Object r10 = r10.a(r2, r6, r9)
            if (r10 != r0) goto L8a
            goto Lac
        L8a:
            r7 = r11
            r11 = r10
            r10 = r7
        L8d:
            android.graphics.Rect r11 = (android.graphics.Rect) r11
            if (r11 != 0) goto L97
            io.bidmachine.rendering.internal.meanbackground.f$a r9 = new io.bidmachine.rendering.internal.meanbackground.f$a
            r9.<init>(r5, r10, r4, r5)
            return r9
        L97:
            io.bidmachine.rendering.internal.meanbackground.l r2 = r1.e
            io.bidmachine.rendering.internal.meanbackground.j$b r4 = new io.bidmachine.rendering.internal.meanbackground.j$b
            r4.<init>(r10, r11, r5)
            r9.a = r10
            r9.b = r5
            r9.e = r3
            java.lang.String r11 = "Mean color"
            java.lang.Object r11 = r2.a(r11, r4, r9)
            if (r11 != r0) goto Lad
        Lac:
            return r0
        Lad:
            r9 = r10
        Lae:
            java.lang.Number r11 = (java.lang.Number) r11
            int r10 = r11.intValue()
            io.bidmachine.rendering.internal.meanbackground.f$a r11 = new io.bidmachine.rendering.internal.meanbackground.f$a
            java.lang.Integer r10 = kotlin.coroutines.jvm.internal.Boxing.boxInt(r10)
            r11.<init>(r10, r9)
            return r11
        */
        throw new UnsupportedOperationException("Method not decompiled: io.bidmachine.rendering.internal.meanbackground.j.a(kotlin.coroutines.CoroutineContext, android.view.View, kotlin.coroutines.Continuation):java.lang.Object");
    }
}
