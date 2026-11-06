package io.bidmachine.rendering.internal.meanbackground;

import android.content.Context;
import android.graphics.Bitmap;
import android.os.Handler;
import android.view.View;
import com.unity3d.services.UnityAdsConstants;
import io.bidmachine.util.ImageUtilsKt;
import io.bidmachine.util.MathUtils;
import io.bidmachine.util.ViewUtilsKt;
import kotlin.Result;
import kotlin.ResultKt;
import kotlin.Unit;
import kotlin.coroutines.Continuation;
import kotlin.coroutines.intrinsics.IntrinsicsKt__IntrinsicsJvmKt;
import kotlin.coroutines.intrinsics.IntrinsicsKt__IntrinsicsKt;
import kotlin.coroutines.jvm.internal.DebugProbesKt;
import kotlin.coroutines.jvm.internal.SuspendLambda;
import kotlin.jvm.functions.Function1;
import kotlin.jvm.functions.Function2;
import kotlin.jvm.internal.DefaultConstructorMarker;
import kotlin.jvm.internal.Intrinsics;
import kotlin.jvm.internal.Lambda;
import kotlin.ranges.RangesKt___RangesKt;
import kotlinx.coroutines.BuildersKt;
import kotlinx.coroutines.CancellableContinuation;
import kotlinx.coroutines.CancellableContinuationImpl;
import kotlinx.coroutines.CoroutineScope;

/* JADX INFO: loaded from: classes5.dex */
public final class o {
    public final a a;
    public final io.bidmachine.rendering.internal.j b;
    public final Handler c;

    public static final class a {
        public final Bitmap.Config a;
        public final int b;
        public final int c;
        public final InterfaceC1200a d;

        /* JADX INFO: renamed from: io.bidmachine.rendering.internal.meanbackground.o$a$a, reason: collision with other inner class name */
        public interface InterfaceC1200a {

            /* JADX INFO: renamed from: io.bidmachine.rendering.internal.meanbackground.o$a$a$a, reason: collision with other inner class name */
            public static final class C1201a implements InterfaceC1200a {
                public static final C1201a a = new C1201a();

                @Override // io.bidmachine.rendering.internal.meanbackground.o.a.InterfaceC1200a
                public int a(Context context, int i, int i2, int i3, int i4) {
                    Intrinsics.checkNotNullParameter(context, "context");
                    return i3;
                }
            }

            /* JADX INFO: renamed from: io.bidmachine.rendering.internal.meanbackground.o$a$a$b */
            public static final class b implements InterfaceC1200a {
                public static final b a = new b();

                @Override // io.bidmachine.rendering.internal.meanbackground.o.a.InterfaceC1200a
                public int a(Context context, int i, int i2, int i3, int i4) {
                    Intrinsics.checkNotNullParameter(context, "context");
                    float f = i4;
                    return (int) RangesKt___RangesKt.coerceAtLeast(MathUtils.lerp(i3, f, f / Math.max(i, i2)), UnityAdsConstants.SafeGuards.InitRequestRetryPolicy.MIN_JITTER_PCT);
                }
            }

            int a(Context context, int i, int i2, int i3, int i4);
        }

        public a(Bitmap.Config bitmapConfig, int i, int i2, InterfaceC1200a scalingStrategy) {
            Intrinsics.checkNotNullParameter(bitmapConfig, "bitmapConfig");
            Intrinsics.checkNotNullParameter(scalingStrategy, "scalingStrategy");
            this.a = bitmapConfig;
            this.b = i;
            this.c = i2;
            this.d = scalingStrategy;
        }

        public final Bitmap.Config a() {
            return this.a;
        }

        public boolean equals(Object obj) {
            if (this == obj) {
                return true;
            }
            if (!(obj instanceof a)) {
                return false;
            }
            a aVar = (a) obj;
            return this.a == aVar.a && this.b == aVar.b && this.c == aVar.c && Intrinsics.areEqual(this.d, aVar.d);
        }

        public int hashCode() {
            return (((((this.a.hashCode() * 31) + Integer.hashCode(this.b)) * 31) + Integer.hashCode(this.c)) * 31) + this.d.hashCode();
        }

        public String toString() {
            return "Config(bitmapConfig=" + this.a + ", minDimensionPx=" + this.b + ", maxDimensionPx=" + this.c + ", scalingStrategy=" + this.d + ')';
        }

        public final int a(Context context, int i, int i2) {
            Intrinsics.checkNotNullParameter(context, "context");
            return this.d.a(context, i, i2, this.b, this.c);
        }

        public final int a(View view) {
            Intrinsics.checkNotNullParameter(view, "view");
            Context context = view.getContext();
            Intrinsics.checkNotNullExpressionValue(context, "view.context");
            return a(context, view.getWidth(), view.getHeight());
        }

        public /* synthetic */ a(Bitmap.Config config, int i, int i2, InterfaceC1200a interfaceC1200a, int i3, DefaultConstructorMarker defaultConstructorMarker) {
            this((i3 & 1) != 0 ? Bitmap.Config.RGB_565 : config, i, i2, (i3 & 8) != 0 ? InterfaceC1200a.C1201a.a : interfaceC1200a);
        }
    }

    public static final class b {
        public final int a;

        public b(int i) {
            this.a = i;
        }

        public final Bitmap a(Bitmap bitmap) {
            Intrinsics.checkNotNullParameter(bitmap, "bitmap");
            Object objB = b(bitmap);
            if (Result.m2765isFailureimpl(objB)) {
                objB = null;
            }
            Bitmap bitmap2 = (Bitmap) objB;
            return bitmap2 == null ? bitmap : bitmap2;
        }

        public final Object b(Bitmap bitmap) {
            try {
                Result.Companion companion = Result.Companion;
                int width = bitmap.getWidth();
                int height = bitmap.getHeight();
                int i = this.a;
                if (width <= i && height <= i) {
                    return Result.m2760constructorimpl(bitmap);
                }
                float f = i;
                float f2 = width;
                float f3 = height;
                float fMin = Math.min(f / f2, f / f3);
                Bitmap bitmapCreateScaledBitmap = Bitmap.createScaledBitmap(bitmap, (int) (f2 * fMin), (int) (f3 * fMin), true);
                Intrinsics.checkNotNullExpressionValue(bitmapCreateScaledBitmap, "createScaledBitmap(bitma…idth, scaledHeight, true)");
                if (bitmapCreateScaledBitmap != bitmap) {
                    ImageUtilsKt.recycleSafely(bitmap);
                }
                return Result.m2760constructorimpl(bitmapCreateScaledBitmap);
            } catch (Throwable th) {
                Result.Companion companion2 = Result.Companion;
                return Result.m2760constructorimpl(ResultKt.createFailure(th));
            }
        }
    }

    public static final class c implements io.bidmachine.rendering.internal.screenshot.b {
        public final /* synthetic */ CancellableContinuation a;

        public c(CancellableContinuation cancellableContinuation) {
            this.a = cancellableContinuation;
        }

        @Override // io.bidmachine.rendering.internal.screenshot.b
        public void a(Bitmap bitmap) {
            Intrinsics.checkNotNullParameter(bitmap, "bitmap");
            this.a.resumeWith(Result.m2760constructorimpl(bitmap));
        }

        @Override // io.bidmachine.rendering.internal.screenshot.b
        public void a() {
            this.a.resumeWith(Result.m2760constructorimpl(null));
        }
    }

    public static final class d extends Lambda implements Function1 {
        public static final d a = new d();

        public d() {
            super(1);
        }

        public final void a(Throwable th) {
        }

        @Override // kotlin.jvm.functions.Function1
        public /* bridge */ /* synthetic */ Object invoke(Object obj) {
            a((Throwable) obj);
            return Unit.INSTANCE;
        }
    }

    public static final class e extends SuspendLambda implements Function2 {
        public int a;
        public final /* synthetic */ View c;

        public static final class a extends SuspendLambda implements Function2 {
            public int a;
            public final /* synthetic */ View b;

            /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
            public a(View view, Continuation continuation) {
                super(2, continuation);
                this.b = view;
            }

            @Override // kotlin.jvm.functions.Function2
            /* JADX INFO: renamed from: a, reason: merged with bridge method [inline-methods] */
            public final Object invoke(CoroutineScope coroutineScope, Continuation continuation) {
                return ((a) create(coroutineScope, continuation)).invokeSuspend(Unit.INSTANCE);
            }

            @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
            public final Continuation create(Object obj, Continuation continuation) {
                return new a(this.b, continuation);
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
                View view = this.b;
                this.a = 1;
                Object objAwaitLayout = ViewUtilsKt.awaitLayout(view, this);
                return objAwaitLayout == coroutine_suspended ? coroutine_suspended : objAwaitLayout;
            }
        }

        /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
        public e(View view, Continuation continuation) {
            super(2, continuation);
            this.c = view;
        }

        @Override // kotlin.jvm.functions.Function2
        /* JADX INFO: renamed from: a, reason: merged with bridge method [inline-methods] */
        public final Object invoke(CoroutineScope coroutineScope, Continuation continuation) {
            return ((e) create(coroutineScope, continuation)).invokeSuspend(Unit.INSTANCE);
        }

        @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
        public final Continuation create(Object obj, Continuation continuation) {
            return o.this.new e(this.c, continuation);
        }

        /* JADX WARN: Code restructure failed: missing block: B:14:0x0046, code lost:
        
            if (r7 == r0) goto L15;
         */
        @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
        /*
            Code decompiled incorrectly, please refer to instructions dump.
            To view partially-correct code enable 'Show inconsistent code' option in preferences
        */
        public final java.lang.Object invokeSuspend(java.lang.Object r7) {
            /*
                r6 = this;
                java.lang.Object r0 = kotlin.coroutines.intrinsics.IntrinsicsKt__IntrinsicsKt.getCOROUTINE_SUSPENDED()
                int r1 = r6.a
                r2 = 0
                r3 = 2
                r4 = 1
                if (r1 == 0) goto L1f
                if (r1 == r4) goto L1b
                if (r1 != r3) goto L13
                kotlin.ResultKt.throwOnFailure(r7)
                goto L49
            L13:
                java.lang.IllegalStateException r7 = new java.lang.IllegalStateException
                java.lang.String r0 = "call to 'resume' before 'invoke' with coroutine"
                r7.<init>(r0)
                throw r7
            L1b:
                kotlin.ResultKt.throwOnFailure(r7)
                goto L3c
            L1f:
                kotlin.ResultKt.throwOnFailure(r7)
                io.bidmachine.rendering.internal.meanbackground.o r7 = io.bidmachine.rendering.internal.meanbackground.o.this
                io.bidmachine.rendering.internal.j r7 = io.bidmachine.rendering.internal.meanbackground.o.b(r7)
                kotlinx.coroutines.CoroutineDispatcher r7 = r7.d()
                io.bidmachine.rendering.internal.meanbackground.o$e$a r1 = new io.bidmachine.rendering.internal.meanbackground.o$e$a
                android.view.View r5 = r6.c
                r1.<init>(r5, r2)
                r6.a = r4
                java.lang.Object r7 = kotlinx.coroutines.BuildersKt.withContext(r7, r1, r6)
                if (r7 != r0) goto L3c
                goto L48
            L3c:
                io.bidmachine.rendering.internal.meanbackground.o r7 = io.bidmachine.rendering.internal.meanbackground.o.this
                android.view.View r1 = r6.c
                r6.a = r3
                java.lang.Object r7 = io.bidmachine.rendering.internal.meanbackground.o.a(r7, r1, r6)
                if (r7 != r0) goto L49
            L48:
                return r0
            L49:
                android.graphics.Bitmap r7 = (android.graphics.Bitmap) r7
                if (r7 == 0) goto L63
                io.bidmachine.rendering.internal.meanbackground.o r0 = io.bidmachine.rendering.internal.meanbackground.o.this
                android.view.View r1 = r6.c
                io.bidmachine.rendering.internal.meanbackground.o$b r2 = new io.bidmachine.rendering.internal.meanbackground.o$b
                io.bidmachine.rendering.internal.meanbackground.o$a r0 = io.bidmachine.rendering.internal.meanbackground.o.a(r0)
                int r0 = r0.a(r1)
                r2.<init>(r0)
                android.graphics.Bitmap r7 = r2.a(r7)
                return r7
            L63:
                return r2
            */
            throw new UnsupportedOperationException("Method not decompiled: io.bidmachine.rendering.internal.meanbackground.o.e.invokeSuspend(java.lang.Object):java.lang.Object");
        }
    }

    public o(a config, io.bidmachine.rendering.internal.j coroutineDispatchers, Handler handler) {
        Intrinsics.checkNotNullParameter(config, "config");
        Intrinsics.checkNotNullParameter(coroutineDispatchers, "coroutineDispatchers");
        Intrinsics.checkNotNullParameter(handler, "handler");
        this.a = config;
        this.b = coroutineDispatchers;
        this.c = handler;
    }

    public final Object b(View view, Continuation continuation) {
        return BuildersKt.withContext(this.b.c(), new e(view, null), continuation);
    }

    public final Object a(View view, Continuation continuation) {
        CancellableContinuationImpl cancellableContinuationImpl = new CancellableContinuationImpl(IntrinsicsKt__IntrinsicsJvmKt.intercepted(continuation), 1);
        cancellableContinuationImpl.initCancellability();
        io.bidmachine.rendering.internal.screenshot.a.a.a(view, this.c, this.a.a(), new c(cancellableContinuationImpl));
        cancellableContinuationImpl.invokeOnCancellation(d.a);
        Object result = cancellableContinuationImpl.getResult();
        if (result == IntrinsicsKt__IntrinsicsKt.getCOROUTINE_SUSPENDED()) {
            DebugProbesKt.probeCoroutineSuspended(continuation);
        }
        return result;
    }
}
