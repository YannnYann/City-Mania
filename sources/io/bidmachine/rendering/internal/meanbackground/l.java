package io.bidmachine.rendering.internal.meanbackground;

import io.bidmachine.util.log.LoggerInstance;
import kotlin.coroutines.Continuation;
import kotlin.coroutines.jvm.internal.ContinuationImpl;
import kotlin.jvm.functions.Function0;
import kotlin.jvm.internal.DefaultConstructorMarker;
import kotlin.jvm.internal.Intrinsics;
import kotlin.jvm.internal.Lambda;

/* JADX INFO: loaded from: classes5.dex */
public final class l {
    public static final a b = new a(null);
    public final LoggerInstance a;

    public static final class a {
        public /* synthetic */ a(DefaultConstructorMarker defaultConstructorMarker) {
            this();
        }

        public a() {
        }
    }

    public static final class b extends ContinuationImpl {
        public Object a;
        public Object b;
        public long c;
        public /* synthetic */ Object d;
        public int f;

        public b(Continuation continuation) {
            super(continuation);
        }

        @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
        public final Object invokeSuspend(Object obj) {
            this.d = obj;
            this.f |= Integer.MIN_VALUE;
            return l.this.a(null, null, this);
        }
    }

    public static final class c extends Lambda implements Function0 {
        public final /* synthetic */ String a;
        public final /* synthetic */ long b;

        /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
        public c(String str, long j) {
            super(0);
            this.a = str;
            this.b = j;
        }

        @Override // kotlin.jvm.functions.Function0
        /* JADX INFO: renamed from: a, reason: merged with bridge method [inline-methods] */
        public final String invoke() {
            return this.a + " took " + (System.currentTimeMillis() - this.b) + " ms";
        }
    }

    public l(LoggerInstance logger) {
        Intrinsics.checkNotNullParameter(logger, "logger");
        this.a = logger;
    }

    /* JADX WARN: Removed duplicated region for block: B:7:0x0013  */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct code enable 'Show inconsistent code' option in preferences
    */
    public final java.lang.Object a(java.lang.String r7, kotlin.jvm.functions.Function1 r8, kotlin.coroutines.Continuation r9) {
        /*
            r6 = this;
            boolean r0 = r9 instanceof io.bidmachine.rendering.internal.meanbackground.l.b
            if (r0 == 0) goto L13
            r0 = r9
            io.bidmachine.rendering.internal.meanbackground.l$b r0 = (io.bidmachine.rendering.internal.meanbackground.l.b) r0
            int r1 = r0.f
            r2 = -2147483648(0xffffffff80000000, float:-0.0)
            r3 = r1 & r2
            if (r3 == 0) goto L13
            int r1 = r1 - r2
            r0.f = r1
            goto L18
        L13:
            io.bidmachine.rendering.internal.meanbackground.l$b r0 = new io.bidmachine.rendering.internal.meanbackground.l$b
            r0.<init>(r9)
        L18:
            java.lang.Object r9 = r0.d
            java.lang.Object r1 = kotlin.coroutines.intrinsics.IntrinsicsKt__IntrinsicsKt.getCOROUTINE_SUSPENDED()
            int r2 = r0.f
            r3 = 1
            if (r2 == 0) goto L3d
            if (r2 != r3) goto L35
            long r7 = r0.c
            java.lang.Object r1 = r0.b
            java.lang.String r1 = (java.lang.String) r1
            java.lang.Object r0 = r0.a
            io.bidmachine.rendering.internal.meanbackground.l r0 = (io.bidmachine.rendering.internal.meanbackground.l) r0
            kotlin.ResultKt.throwOnFailure(r9)
            r4 = r7
            r7 = r1
            goto L54
        L35:
            java.lang.IllegalStateException r7 = new java.lang.IllegalStateException
            java.lang.String r8 = "call to 'resume' before 'invoke' with coroutine"
            r7.<init>(r8)
            throw r7
        L3d:
            kotlin.ResultKt.throwOnFailure(r9)
            long r4 = java.lang.System.currentTimeMillis()
            r0.a = r6
            r0.b = r7
            r0.c = r4
            r0.f = r3
            java.lang.Object r9 = r8.invoke(r0)
            if (r9 != r1) goto L53
            return r1
        L53:
            r0 = r6
        L54:
            io.bidmachine.util.log.LoggerInstance r8 = r0.a
            io.bidmachine.rendering.internal.meanbackground.l$c r0 = new io.bidmachine.rendering.internal.meanbackground.l$c
            r0.<init>(r7, r4)
            java.lang.String r7 = "MeanPerformanceMeasurer"
            r8.d(r7, r0)
            return r9
        */
        throw new UnsupportedOperationException("Method not decompiled: io.bidmachine.rendering.internal.meanbackground.l.a(java.lang.String, kotlin.jvm.functions.Function1, kotlin.coroutines.Continuation):java.lang.Object");
    }
}
