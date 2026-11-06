package io.bidmachine.analytics.internal.A;

import io.bidmachine.analytics.BidMachineAnalytics;
import io.bidmachine.analytics.internal.I.f;
import io.bidmachine.analytics.internal.b.C4108a;
import java.net.HttpURLConnection;
import java.net.URLConnection;
import kotlin.Result;
import kotlin.ResultKt;
import kotlin.Unit;
import kotlin.coroutines.Continuation;
import kotlin.coroutines.intrinsics.IntrinsicsKt__IntrinsicsKt;
import kotlin.coroutines.jvm.internal.ContinuationImpl;
import kotlin.coroutines.jvm.internal.SuspendLambda;
import kotlin.jvm.functions.Function2;
import kotlin.jvm.internal.DefaultConstructorMarker;
import kotlinx.coroutines.BuildersKt;
import kotlinx.coroutines.CoroutineDispatcher;
import kotlinx.coroutines.CoroutineScope;

/* JADX INFO: loaded from: classes4.dex */
public abstract class a {
    public static final C1108a e = new C1108a(null);
    private final io.bidmachine.analytics.internal.A.c a;
    private final String b;
    private final f c;
    private final C4108a d;

    /* JADX INFO: renamed from: io.bidmachine.analytics.internal.A.a$a, reason: collision with other inner class name */
    public static final class C1108a {
        public /* synthetic */ C1108a(DefaultConstructorMarker defaultConstructorMarker) {
            this();
        }

        private C1108a() {
        }
    }

    public static final class b extends ContinuationImpl {
        /* synthetic */ Object a;
        int c;

        public b(Continuation continuation) {
            super(continuation);
        }

        @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
        public final Object invokeSuspend(Object obj) {
            this.a = obj;
            this.c |= Integer.MIN_VALUE;
            Object objA = a.this.a(this);
            return objA == IntrinsicsKt__IntrinsicsKt.getCOROUTINE_SUSPENDED() ? objA : Result.m2759boximpl(objA);
        }
    }

    public static final class c extends SuspendLambda implements Function2 {
        int a;

        /* JADX INFO: renamed from: io.bidmachine.analytics.internal.A.a$c$a, reason: collision with other inner class name */
        public static final class C1109a extends SuspendLambda implements Function2 {
            int a;
            final /* synthetic */ a b;

            /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
            public C1109a(a aVar, Continuation continuation) {
                super(2, continuation);
                this.b = aVar;
            }

            @Override // kotlin.jvm.functions.Function2
            /* JADX INFO: renamed from: a, reason: merged with bridge method [inline-methods] */
            public final Object invoke(CoroutineScope coroutineScope, Continuation continuation) {
                return ((C1109a) create(coroutineScope, continuation)).invokeSuspend(Unit.INSTANCE);
            }

            @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
            public final Continuation create(Object obj, Continuation continuation) {
                return new C1109a(this.b, continuation);
            }

            @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
            public final Object invokeSuspend(Object obj) {
                IntrinsicsKt__IntrinsicsKt.getCOROUTINE_SUSPENDED();
                if (this.a != 0) {
                    throw new IllegalStateException("call to 'resume' before 'invoke' with coroutine");
                }
                ResultKt.throwOnFailure(obj);
                a aVar = this.b;
                return aVar.a(aVar.d, this.b.b());
            }
        }

        public c(Continuation continuation) {
            super(2, continuation);
        }

        @Override // kotlin.jvm.functions.Function2
        /* JADX INFO: renamed from: a, reason: merged with bridge method [inline-methods] */
        public final Object invoke(CoroutineScope coroutineScope, Continuation continuation) {
            return ((c) create(coroutineScope, continuation)).invokeSuspend(Unit.INSTANCE);
        }

        @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
        public final Continuation create(Object obj, Continuation continuation) {
            return a.this.new c(continuation);
        }

        @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
        public final Object invokeSuspend(Object obj) {
            Object objM2760constructorimpl;
            Object coroutine_suspended = IntrinsicsKt__IntrinsicsKt.getCOROUTINE_SUSPENDED();
            int i = this.a;
            try {
                try {
                    if (i == 0) {
                        ResultKt.throwOnFailure(obj);
                        if (a.this.d == null) {
                            Result.Companion companion = Result.Companion;
                            return Result.m2759boximpl(Result.m2760constructorimpl(a.this.a()));
                        }
                        CoroutineDispatcher coroutineDispatcherB = a.this.c.b();
                        C1109a c1109a = new C1109a(a.this, null);
                        this.a = 1;
                        obj = BuildersKt.withContext(coroutineDispatcherB, c1109a, this);
                        if (obj == coroutine_suspended) {
                            return coroutine_suspended;
                        }
                    } else {
                        if (i != 1) {
                            throw new IllegalStateException("call to 'resume' before 'invoke' with coroutine");
                        }
                        ResultKt.throwOnFailure(obj);
                    }
                    byte[] bArr = (byte[]) obj;
                    a aVar = a.this;
                    aVar.a(aVar.b, bArr);
                    Result.Companion companion2 = Result.Companion;
                    objM2760constructorimpl = Result.m2760constructorimpl(a.this.a());
                } catch (Throwable unused) {
                    Result.Companion companion3 = Result.Companion;
                    return Result.m2759boximpl(Result.m2760constructorimpl(a.this.a()));
                }
            } catch (Throwable th) {
                Result.Companion companion4 = Result.Companion;
                objM2760constructorimpl = Result.m2760constructorimpl(ResultKt.createFailure(th));
            }
            return Result.m2759boximpl(objM2760constructorimpl);
        }
    }

    public a(io.bidmachine.analytics.internal.A.c cVar, String str, f fVar, C4108a c4108a) {
        this.a = cVar;
        this.b = str;
        this.c = fVar;
        this.d = c4108a;
    }

    public abstract a a();

    public abstract byte[] b();

    private final int b(URLConnection uRLConnection) {
        if (uRLConnection instanceof HttpURLConnection) {
            return ((HttpURLConnection) uRLConnection).getResponseCode();
        }
        return -1;
    }

    /* JADX WARN: Removed duplicated region for block: B:7:0x0013  */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct code enable 'Show inconsistent code' option in preferences
    */
    public final java.lang.Object a(kotlin.coroutines.Continuation r6) {
        /*
            r5 = this;
            boolean r0 = r6 instanceof io.bidmachine.analytics.internal.A.a.b
            if (r0 == 0) goto L13
            r0 = r6
            io.bidmachine.analytics.internal.A.a$b r0 = (io.bidmachine.analytics.internal.A.a.b) r0
            int r1 = r0.c
            r2 = -2147483648(0xffffffff80000000, float:-0.0)
            r3 = r1 & r2
            if (r3 == 0) goto L13
            int r1 = r1 - r2
            r0.c = r1
            goto L18
        L13:
            io.bidmachine.analytics.internal.A.a$b r0 = new io.bidmachine.analytics.internal.A.a$b
            r0.<init>(r6)
        L18:
            java.lang.Object r6 = r0.a
            java.lang.Object r1 = kotlin.coroutines.intrinsics.IntrinsicsKt__IntrinsicsKt.getCOROUTINE_SUSPENDED()
            int r2 = r0.c
            r3 = 1
            if (r2 == 0) goto L31
            if (r2 != r3) goto L29
            kotlin.ResultKt.throwOnFailure(r6)
            goto L49
        L29:
            java.lang.IllegalStateException r6 = new java.lang.IllegalStateException
            java.lang.String r0 = "call to 'resume' before 'invoke' with coroutine"
            r6.<init>(r0)
            throw r6
        L31:
            kotlin.ResultKt.throwOnFailure(r6)
            io.bidmachine.analytics.internal.I.f r6 = r5.c
            kotlinx.coroutines.CoroutineDispatcher r6 = r6.c()
            io.bidmachine.analytics.internal.A.a$c r2 = new io.bidmachine.analytics.internal.A.a$c
            r4 = 0
            r2.<init>(r4)
            r0.c = r3
            java.lang.Object r6 = kotlinx.coroutines.BuildersKt.withContext(r6, r2, r0)
            if (r6 != r1) goto L49
            return r1
        L49:
            kotlin.Result r6 = (kotlin.Result) r6
            java.lang.Object r6 = r6.m2768unboximpl()
            return r6
        */
        throw new UnsupportedOperationException("Method not decompiled: io.bidmachine.analytics.internal.A.a.a(kotlin.coroutines.Continuation):java.lang.Object");
    }

    /* JADX INFO: Access modifiers changed from: private */
    public final byte[] a(C4108a c4108a, byte[] bArr) {
        if (bArr != null) {
            return io.bidmachine.analytics.internal.b.b.a(bArr, c4108a);
        }
        return null;
    }

    public /* synthetic */ a(io.bidmachine.analytics.internal.A.c cVar, String str, f fVar, C4108a c4108a, int i, DefaultConstructorMarker defaultConstructorMarker) {
        this(cVar, str, fVar, (i & 8) != 0 ? BidMachineAnalytics.INSTANCE.getEncryptionManager$bidmachine_android_sdk_j_3_8_0() : c4108a);
    }

    /* JADX INFO: Access modifiers changed from: private */
    /* JADX WARN: Removed duplicated region for block: B:37:0x008e A[Catch: all -> 0x003a, TryCatch #1 {all -> 0x003a, blocks: (B:4:0x0011, B:6:0x0027, B:10:0x0040, B:13:0x0044, B:16:0x0054, B:21:0x0061, B:23:0x006a, B:24:0x0071, B:25:0x0072, B:35:0x008a, B:44:0x00a3, B:45:0x00bd, B:37:0x008e, B:39:0x0096, B:41:0x009c), top: B:53:0x0011 }] */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct code enable 'Show inconsistent code' option in preferences
    */
    public final void a(java.lang.String r5, byte[] r6) throws java.lang.Throwable {
        /*
            Method dump skipped, instruction units count: 210
            To view this dump change 'Code comments level' option to 'DEBUG'
        */
        throw new UnsupportedOperationException("Method not decompiled: io.bidmachine.analytics.internal.A.a.a(java.lang.String, byte[]):void");
    }

    private final Object a(URLConnection uRLConnection) {
        try {
            Result.Companion companion = Result.Companion;
            if (uRLConnection instanceof HttpURLConnection) {
                ((HttpURLConnection) uRLConnection).disconnect();
            }
            return Result.m2760constructorimpl(Unit.INSTANCE);
        } catch (Throwable th) {
            Result.Companion companion2 = Result.Companion;
            return Result.m2760constructorimpl(ResultKt.createFailure(th));
        }
    }
}
