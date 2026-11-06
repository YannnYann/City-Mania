package io.bidmachine.iab.mraid;

import ads_mobile_sdk.tu2$$ExternalSyntheticBackportWithForwarding0;
import android.graphics.Point;
import android.graphics.PointF;
import android.view.MotionEvent;
import io.bidmachine.iab.utils.ClickAreaFactory;
import io.bidmachine.iab.utils.ClickPointGenerator;
import io.bidmachine.rendering.model.ClickArea;
import io.bidmachine.rendering.model.ScriptConfig;
import io.bidmachine.util.SdkDispatchers;
import io.bidmachine.util.UiUtilsKt;
import java.util.List;
import java.util.concurrent.atomic.AtomicReference;
import kotlin.ResultKt;
import kotlin.Unit;
import kotlin.coroutines.Continuation;
import kotlin.coroutines.intrinsics.IntrinsicsKt__IntrinsicsKt;
import kotlin.coroutines.jvm.internal.Boxing;
import kotlin.coroutines.jvm.internal.SuspendLambda;
import kotlin.jvm.functions.Function0;
import kotlin.jvm.functions.Function2;
import kotlin.jvm.internal.DefaultConstructorMarker;
import kotlin.jvm.internal.Intrinsics;
import kotlin.jvm.internal.Lambda;
import kotlinx.coroutines.BuildersKt;
import kotlinx.coroutines.BuildersKt__Builders_commonKt;
import kotlinx.coroutines.CoroutineDispatcher;
import kotlinx.coroutines.CoroutineScope;
import kotlinx.coroutines.CoroutineScopeKt;
import kotlinx.coroutines.Job;
import kotlinx.coroutines.SupervisorKt;

/* JADX INFO: loaded from: classes5.dex */
public final class MraidAdRedirectHandler {
    public static final Companion Companion = new Companion(null);
    public final Function0 a;
    public final Function0 b;
    public final Runnable c;
    public final CoroutineDispatcher d;
    public final CoroutineDispatcher e;
    public final CoroutineScope f;
    public final ClickPointGenerator g;
    public final AtomicReference h;
    public Job i;

    public static final class Companion {

        public enum a {
            Idle,
            Processing
        }

        public /* synthetic */ Companion(DefaultConstructorMarker defaultConstructorMarker) {
            this();
        }

        public Companion() {
        }
    }

    public static final class a extends SuspendLambda implements Function2 {
        public int a;
        public final /* synthetic */ ClickArea c;
        public final /* synthetic */ int d;
        public final /* synthetic */ int e;
        public final /* synthetic */ MraidWebViewController f;

        /* JADX INFO: renamed from: io.bidmachine.iab.mraid.MraidAdRedirectHandler$a$a, reason: collision with other inner class name */
        public static final class C1162a extends Lambda implements Function0 {
            public final /* synthetic */ ClickPointGenerator.Distribution a;
            public final /* synthetic */ PointF b;

            /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
            public C1162a(ClickPointGenerator.Distribution distribution, PointF pointF) {
                super(0);
                this.a = distribution;
                this.b = pointF;
            }

            @Override // kotlin.jvm.functions.Function0
            /* JADX INFO: renamed from: a, reason: merged with bridge method [inline-methods] */
            public final String invoke() {
                return "SimulateClick: distribution=" + this.a + ", normalized=(" + this.b.x + ", " + this.b.y + ')';
            }
        }

        /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
        public a(ClickArea clickArea, int i, int i2, MraidWebViewController mraidWebViewController, Continuation continuation) {
            super(2, continuation);
            this.c = clickArea;
            this.d = i;
            this.e = i2;
            this.f = mraidWebViewController;
        }

        @Override // kotlin.jvm.functions.Function2
        /* JADX INFO: renamed from: a, reason: merged with bridge method [inline-methods] */
        public final Object invoke(CoroutineScope coroutineScope, Continuation continuation) {
            return ((a) create(coroutineScope, continuation)).invokeSuspend(Unit.INSTANCE);
        }

        @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
        public final Continuation create(Object obj, Continuation continuation) {
            return MraidAdRedirectHandler.this.new a(this.c, this.d, this.e, this.f, continuation);
        }

        @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
        public final Object invokeSuspend(Object obj) throws Throwable {
            Throwable th;
            a aVar;
            PointF pointFGenerate;
            MraidAdRedirectHandler mraidAdRedirectHandler;
            int i;
            int i2;
            MraidWebViewController mraidWebViewController;
            Object coroutine_suspended = IntrinsicsKt__IntrinsicsKt.getCOROUTINE_SUSPENDED();
            int i3 = this.a;
            try {
                try {
                } catch (Throwable th2) {
                    th = th2;
                    aVar = this;
                }
            } catch (Exception unused) {
            }
            if (i3 != 0) {
                if (i3 != 1) {
                    throw new IllegalStateException("call to 'resume' before 'invoke' with coroutine");
                }
                ResultKt.throwOnFailure(obj);
                aVar = this;
                MraidAdRedirectHandler.this.h.set(Companion.a.Idle);
                return Unit.INSTANCE;
            }
            ResultKt.throwOnFailure(obj);
            try {
                ClickPointGenerator.Distribution distribution = MraidClickKt.hasClcScript((List) MraidAdRedirectHandler.this.b.invoke()) ? ClickPointGenerator.Distribution.Uniform.INSTANCE : ClickPointGenerator.Distribution.Legacy.INSTANCE;
                pointFGenerate = MraidAdRedirectHandler.this.g.generate(this.c, distribution);
                MraidLog.d("MraidAdRedirectHandler", new C1162a(distribution, pointFGenerate));
                mraidAdRedirectHandler = MraidAdRedirectHandler.this;
                i = this.d;
                i2 = this.e;
                mraidWebViewController = this.f;
                this.a = 1;
                aVar = this;
            } catch (Throwable th3) {
                th = th3;
                aVar = this;
            }
            try {
                if (mraidAdRedirectHandler.a(pointFGenerate, i, i2, mraidWebViewController, aVar) == coroutine_suspended) {
                    return coroutine_suspended;
                }
            } catch (Exception unused2) {
            } catch (Throwable th4) {
                th = th4;
                th = th;
                MraidAdRedirectHandler.this.h.set(Companion.a.Idle);
                throw th;
            }
            MraidAdRedirectHandler.this.h.set(Companion.a.Idle);
            return Unit.INSTANCE;
        }
    }

    public static final class b extends SuspendLambda implements Function2 {
        public Object a;
        public int b;
        public final /* synthetic */ PointF c;
        public final /* synthetic */ int d;
        public final /* synthetic */ int e;
        public final /* synthetic */ MraidAdRedirectHandler f;
        public final /* synthetic */ MraidWebViewController g;

        public static final class a extends Lambda implements Function0 {
            public final /* synthetic */ Point a;
            public final /* synthetic */ int b;
            public final /* synthetic */ int c;

            /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
            public a(Point point, int i, int i2) {
                super(0);
                this.a = point;
                this.b = i;
                this.c = i2;
            }

            @Override // kotlin.jvm.functions.Function0
            /* JADX INFO: renamed from: a, reason: merged with bridge method [inline-methods] */
            public final String invoke() {
                return "SimulateClick: absolute=(" + this.a.x + ", " + this.a.y + "), view=" + this.b + 'x' + this.c;
            }
        }

        /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
        public b(PointF pointF, int i, int i2, MraidAdRedirectHandler mraidAdRedirectHandler, MraidWebViewController mraidWebViewController, Continuation continuation) {
            super(2, continuation);
            this.c = pointF;
            this.d = i;
            this.e = i2;
            this.f = mraidAdRedirectHandler;
            this.g = mraidWebViewController;
        }

        @Override // kotlin.jvm.functions.Function2
        /* JADX INFO: renamed from: a, reason: merged with bridge method [inline-methods] */
        public final Object invoke(CoroutineScope coroutineScope, Continuation continuation) {
            return ((b) create(coroutineScope, continuation)).invokeSuspend(Unit.INSTANCE);
        }

        @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
        public final Continuation create(Object obj, Continuation continuation) {
            return new b(this.c, this.d, this.e, this.f, this.g, continuation);
        }

        /* JADX WARN: Code restructure failed: missing block: B:25:0x0083, code lost:
        
            if (kotlinx.coroutines.DelayKt.delay(150, r10) != r0) goto L27;
         */
        /* JADX WARN: Removed duplicated region for block: B:24:0x007d  */
        @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
        /*
            Code decompiled incorrectly, please refer to instructions dump.
            To view partially-correct code enable 'Show inconsistent code' option in preferences
        */
        public final java.lang.Object invokeSuspend(java.lang.Object r11) {
            /*
                r10 = this;
                java.lang.Object r0 = kotlin.coroutines.intrinsics.IntrinsicsKt__IntrinsicsKt.getCOROUTINE_SUSPENDED()
                int r1 = r10.b
                r2 = 150(0x96, double:7.4E-322)
                r4 = 4
                r5 = 3
                r6 = 2
                r7 = 1
                if (r1 == 0) goto L37
                if (r1 == r7) goto L2f
                if (r1 == r6) goto L27
                if (r1 == r5) goto L23
                if (r1 != r4) goto L1b
                kotlin.ResultKt.throwOnFailure(r11)
                goto L86
            L1b:
                java.lang.IllegalStateException r11 = new java.lang.IllegalStateException
                java.lang.String r0 = "call to 'resume' before 'invoke' with coroutine"
                r11.<init>(r0)
                throw r11
            L23:
                kotlin.ResultKt.throwOnFailure(r11)
                goto L7d
            L27:
                java.lang.Object r1 = r10.a
                android.graphics.Point r1 = (android.graphics.Point) r1
                kotlin.ResultKt.throwOnFailure(r11)
                goto L6d
            L2f:
                java.lang.Object r1 = r10.a
                android.graphics.Point r1 = (android.graphics.Point) r1
                kotlin.ResultKt.throwOnFailure(r11)
                goto L62
            L37:
                kotlin.ResultKt.throwOnFailure(r11)
                android.graphics.PointF r11 = r10.c
                int r1 = r10.d
                int r8 = r10.e
                android.graphics.Point r11 = io.bidmachine.iab.utils.ClickPointGeneratorKt.relativeToView(r11, r1, r8)
                int r1 = r10.d
                int r8 = r10.e
                io.bidmachine.iab.mraid.MraidAdRedirectHandler$b$a r9 = new io.bidmachine.iab.mraid.MraidAdRedirectHandler$b$a
                r9.<init>(r11, r1, r8)
                java.lang.String r1 = "MraidAdRedirectHandler"
                io.bidmachine.iab.mraid.MraidLog.d(r1, r9)
                io.bidmachine.iab.mraid.MraidAdRedirectHandler r1 = r10.f
                io.bidmachine.iab.mraid.MraidWebViewController r8 = r10.g
                r10.a = r11
                r10.b = r7
                java.lang.Object r1 = io.bidmachine.iab.mraid.MraidAdRedirectHandler.access$motionClick(r1, r11, r8, r10)
                if (r1 != r0) goto L61
                goto L85
            L61:
                r1 = r11
            L62:
                r10.a = r1
                r10.b = r6
                java.lang.Object r11 = kotlinx.coroutines.DelayKt.delay(r2, r10)
                if (r11 != r0) goto L6d
                goto L85
            L6d:
                io.bidmachine.iab.mraid.MraidAdRedirectHandler r11 = r10.f
                io.bidmachine.iab.mraid.MraidWebViewController r6 = r10.g
                r7 = 0
                r10.a = r7
                r10.b = r5
                java.lang.Object r11 = io.bidmachine.iab.mraid.MraidAdRedirectHandler.access$scriptClick(r11, r1, r6, r10)
                if (r11 != r0) goto L7d
                goto L85
            L7d:
                r10.b = r4
                java.lang.Object r11 = kotlinx.coroutines.DelayKt.delay(r2, r10)
                if (r11 != r0) goto L86
            L85:
                return r0
            L86:
                io.bidmachine.iab.mraid.MraidAdRedirectHandler r11 = r10.f
                java.lang.Runnable r11 = io.bidmachine.iab.mraid.MraidAdRedirectHandler.access$getOnOpenProductLink$p(r11)
                r11.run()
                kotlin.Unit r11 = kotlin.Unit.INSTANCE
                return r11
            */
            throw new UnsupportedOperationException("Method not decompiled: io.bidmachine.iab.mraid.MraidAdRedirectHandler.b.invokeSuspend(java.lang.Object):java.lang.Object");
        }
    }

    public static final class c extends SuspendLambda implements Function2 {
        public int a;
        public final /* synthetic */ MraidWebViewController b;
        public final /* synthetic */ Point c;

        /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
        public c(MraidWebViewController mraidWebViewController, Point point, Continuation continuation) {
            super(2, continuation);
            this.b = mraidWebViewController;
            this.c = point;
        }

        @Override // kotlin.jvm.functions.Function2
        /* JADX INFO: renamed from: a, reason: merged with bridge method [inline-methods] */
        public final Object invoke(CoroutineScope coroutineScope, Continuation continuation) {
            return ((c) create(coroutineScope, continuation)).invokeSuspend(Unit.INSTANCE);
        }

        @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
        public final Continuation create(Object obj, Continuation continuation) {
            return new c(this.b, this.c, continuation);
        }

        @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
        public final Object invokeSuspend(Object obj) {
            IntrinsicsKt__IntrinsicsKt.getCOROUTINE_SUSPENDED();
            if (this.a != 0) {
                throw new IllegalStateException("call to 'resume' before 'invoke' with coroutine");
            }
            ResultKt.throwOnFailure(obj);
            MraidWebView mraidWebView = this.b.getMraidWebView();
            Point point = this.c;
            Integer[] numArr = {Boxing.boxInt(0), Boxing.boxInt(1)};
            for (int i = 0; i < 2; i++) {
                MotionEvent motionEventObtainSyntheticMotionEvent = UiUtilsKt.obtainSyntheticMotionEvent(numArr[i].intValue(), point);
                mraidWebView.dispatchTouchEvent(motionEventObtainSyntheticMotionEvent);
                motionEventObtainSyntheticMotionEvent.recycle();
            }
            return Unit.INSTANCE;
        }
    }

    public static final class d extends SuspendLambda implements Function2 {
        public int a;
        public final /* synthetic */ MraidWebViewController b;
        public final /* synthetic */ Point c;

        /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
        public d(MraidWebViewController mraidWebViewController, Point point, Continuation continuation) {
            super(2, continuation);
            this.b = mraidWebViewController;
            this.c = point;
        }

        @Override // kotlin.jvm.functions.Function2
        /* JADX INFO: renamed from: a, reason: merged with bridge method [inline-methods] */
        public final Object invoke(CoroutineScope coroutineScope, Continuation continuation) {
            return ((d) create(coroutineScope, continuation)).invokeSuspend(Unit.INSTANCE);
        }

        @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
        public final Continuation create(Object obj, Continuation continuation) {
            return new d(this.b, this.c, continuation);
        }

        @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
        public final Object invokeSuspend(Object obj) {
            IntrinsicsKt__IntrinsicsKt.getCOROUTINE_SUSPENDED();
            if (this.a != 0) {
                throw new IllegalStateException("call to 'resume' before 'invoke' with coroutine");
            }
            ResultKt.throwOnFailure(obj);
            this.b.applyClick(this.c);
            return Unit.INSTANCE;
        }
    }

    public final void a(MraidWebViewController mraidWebViewController, int i, int i2, ClickArea clickArea) {
        if (tu2$$ExternalSyntheticBackportWithForwarding0.m(this.h, Companion.a.Idle, Companion.a.Processing)) {
            this.i = BuildersKt__Builders_commonKt.launch$default(this.f, this.e, null, new a(clickArea, i, i2, mraidWebViewController, null), 2, null);
        }
    }

    public final Object b(Point point, MraidWebViewController mraidWebViewController, Continuation continuation) {
        Object objWithContext = BuildersKt.withContext(this.d, new d(mraidWebViewController, point, null), continuation);
        return objWithContext == IntrinsicsKt__IntrinsicsKt.getCOROUTINE_SUSPENDED() ? objWithContext : Unit.INSTANCE;
    }

    public final void complete() {
        Job job = this.i;
        if (job != null) {
            Job.DefaultImpls.cancel$default(job, null, 1, null);
        }
        this.i = null;
    }

    public final void handle(ClickAreaFactory clickAreaFactory) {
        Intrinsics.checkNotNullParameter(clickAreaFactory, "clickAreaFactory");
        MraidWebViewController mraidWebViewController = (MraidWebViewController) this.a.invoke();
        a(mraidWebViewController, mraidWebViewController.getMraidWebView().getMeasuredWidth(), mraidWebViewController.getMraidWebView().getMeasuredHeight(), clickAreaFactory.build());
    }

    public MraidAdRedirectHandler(Function0<MraidWebViewController> controllerProvider, Function0<? extends List<ScriptConfig>> scriptConfigsProvider, Runnable onOpenProductLink, CoroutineDispatcher mainDispatcher, CoroutineDispatcher ioDispatcher) {
        Intrinsics.checkNotNullParameter(controllerProvider, "controllerProvider");
        Intrinsics.checkNotNullParameter(scriptConfigsProvider, "scriptConfigsProvider");
        Intrinsics.checkNotNullParameter(onOpenProductLink, "onOpenProductLink");
        Intrinsics.checkNotNullParameter(mainDispatcher, "mainDispatcher");
        Intrinsics.checkNotNullParameter(ioDispatcher, "ioDispatcher");
        this.a = controllerProvider;
        this.b = scriptConfigsProvider;
        this.c = onOpenProductLink;
        this.d = mainDispatcher;
        this.e = ioDispatcher;
        this.f = CoroutineScopeKt.CoroutineScope(SupervisorKt.SupervisorJob$default(null, 1, null).plus(mainDispatcher));
        this.g = new ClickPointGenerator();
        this.h = new AtomicReference(Companion.a.Idle);
    }

    public final Object a(PointF pointF, int i, int i2, MraidWebViewController mraidWebViewController, Continuation continuation) {
        Object objWithContext = BuildersKt.withContext(this.e, new b(pointF, i, i2, this, mraidWebViewController, null), continuation);
        return objWithContext == IntrinsicsKt__IntrinsicsKt.getCOROUTINE_SUSPENDED() ? objWithContext : Unit.INSTANCE;
    }

    public final Object a(Point point, MraidWebViewController mraidWebViewController, Continuation continuation) {
        Object objWithContext = BuildersKt.withContext(this.d, new c(mraidWebViewController, point, null), continuation);
        return objWithContext == IntrinsicsKt__IntrinsicsKt.getCOROUTINE_SUSPENDED() ? objWithContext : Unit.INSTANCE;
    }

    public /* synthetic */ MraidAdRedirectHandler(Function0 function0, Function0 function02, Runnable runnable, CoroutineDispatcher coroutineDispatcher, CoroutineDispatcher coroutineDispatcher2, int i, DefaultConstructorMarker defaultConstructorMarker) {
        this(function0, function02, runnable, (i & 8) != 0 ? SdkDispatchers.Companion.getDefault().getMain() : coroutineDispatcher, (i & 16) != 0 ? SdkDispatchers.Companion.getDefault().getIo() : coroutineDispatcher2);
    }
}
