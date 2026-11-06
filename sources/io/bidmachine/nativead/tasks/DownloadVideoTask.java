package io.bidmachine.nativead.tasks;

import android.net.Uri;
import io.bidmachine.rendering.Repository;
import io.bidmachine.util.SdkDispatchers;
import java.util.concurrent.CountDownLatch;
import kotlin.Result;
import kotlin.ResultKt;
import kotlin.Unit;
import kotlin.coroutines.Continuation;
import kotlin.coroutines.intrinsics.IntrinsicsKt__IntrinsicsKt;
import kotlin.coroutines.jvm.internal.ContinuationImpl;
import kotlin.coroutines.jvm.internal.SuspendLambda;
import kotlin.jvm.functions.Function1;
import kotlin.jvm.functions.Function2;
import kotlin.jvm.internal.DefaultConstructorMarker;
import kotlin.jvm.internal.Intrinsics;
import kotlin.jvm.internal.Lambda;
import kotlinx.coroutines.BuildersKt;
import kotlinx.coroutines.BuildersKt__Builders_commonKt;
import kotlinx.coroutines.CoroutineScope;
import kotlinx.coroutines.CoroutineScopeKt;
import kotlinx.coroutines.SupervisorKt;

/* JADX INFO: loaded from: classes5.dex */
public final class DownloadVideoTask implements Runnable {
    public final Object assetsHolder;
    public final CoroutineScope coroutineScope;
    public final SdkDispatchers dispatchers;
    public final OnLoadedListener listener;
    public final Repository repository;
    public final String url;

    public interface OnLoadedListener {
        default void onVideoLoaded(DownloadVideoTask task, Uri videoFileUri) {
            Intrinsics.checkNotNullParameter(task, "task");
            Intrinsics.checkNotNullParameter(videoFileUri, "videoFileUri");
        }

        default void onVideoLoadingError(DownloadVideoTask task) {
            Intrinsics.checkNotNullParameter(task, "task");
        }
    }

    public static final class a extends ContinuationImpl {
        public /* synthetic */ Object a;
        public int c;

        public a(Continuation continuation) {
            super(continuation);
        }

        @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
        public final Object invokeSuspend(Object obj) {
            this.a = obj;
            this.c |= Integer.MIN_VALUE;
            Object objM2676executeIoAF18A = DownloadVideoTask.this.m2676executeIoAF18A(this);
            return objM2676executeIoAF18A == IntrinsicsKt__IntrinsicsKt.getCOROUTINE_SUSPENDED() ? objM2676executeIoAF18A : Result.m2759boximpl(objM2676executeIoAF18A);
        }
    }

    public static final class b extends SuspendLambda implements Function2 {
        public int a;

        public static final class a extends SuspendLambda implements Function2 {
            public int a;
            public final /* synthetic */ DownloadVideoTask b;

            /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
            public a(DownloadVideoTask downloadVideoTask, Continuation continuation) {
                super(2, continuation);
                this.b = downloadVideoTask;
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
                Object objM2676executeIoAF18A;
                Object coroutine_suspended = IntrinsicsKt__IntrinsicsKt.getCOROUTINE_SUSPENDED();
                int i = this.a;
                if (i == 0) {
                    ResultKt.throwOnFailure(obj);
                    DownloadVideoTask downloadVideoTask = this.b;
                    this.a = 1;
                    objM2676executeIoAF18A = downloadVideoTask.m2676executeIoAF18A(this);
                    if (objM2676executeIoAF18A == coroutine_suspended) {
                        return coroutine_suspended;
                    }
                } else {
                    if (i != 1) {
                        throw new IllegalStateException("call to 'resume' before 'invoke' with coroutine");
                    }
                    ResultKt.throwOnFailure(obj);
                    objM2676executeIoAF18A = ((Result) obj).m2768unboximpl();
                }
                if (Result.m2765isFailureimpl(objM2676executeIoAF18A)) {
                    return null;
                }
                return objM2676executeIoAF18A;
            }
        }

        public b(Continuation continuation) {
            super(2, continuation);
        }

        @Override // kotlin.jvm.functions.Function2
        /* JADX INFO: renamed from: a, reason: merged with bridge method [inline-methods] */
        public final Object invoke(CoroutineScope coroutineScope, Continuation continuation) {
            return ((b) create(coroutineScope, continuation)).invokeSuspend(Unit.INSTANCE);
        }

        @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
        public final Continuation create(Object obj, Continuation continuation) {
            return DownloadVideoTask.this.new b(continuation);
        }

        /* JADX WARN: Code restructure failed: missing block: B:18:0x004c, code lost:
        
            if (r1.sendPathSuccess(r8, r7) == r0) goto L22;
         */
        /* JADX WARN: Code restructure failed: missing block: B:21:0x0057, code lost:
        
            if (r8.sendFail(r7) == r0) goto L22;
         */
        @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
        /*
            Code decompiled incorrectly, please refer to instructions dump.
            To view partially-correct code enable 'Show inconsistent code' option in preferences
        */
        public final java.lang.Object invokeSuspend(java.lang.Object r8) {
            /*
                r7 = this;
                java.lang.Object r0 = kotlin.coroutines.intrinsics.IntrinsicsKt__IntrinsicsKt.getCOROUTINE_SUSPENDED()
                int r1 = r7.a
                r2 = 3
                r3 = 2
                r4 = 1
                if (r1 == 0) goto L22
                if (r1 == r4) goto L1e
                if (r1 == r3) goto L1a
                if (r1 != r2) goto L12
                goto L1a
            L12:
                java.lang.IllegalStateException r8 = new java.lang.IllegalStateException
                java.lang.String r0 = "call to 'resume' before 'invoke' with coroutine"
                r8.<init>(r0)
                throw r8
            L1a:
                kotlin.ResultKt.throwOnFailure(r8)
                goto L5a
            L1e:
                kotlin.ResultKt.throwOnFailure(r8)
                goto L40
            L22:
                kotlin.ResultKt.throwOnFailure(r8)
                io.bidmachine.nativead.tasks.DownloadVideoTask r8 = io.bidmachine.nativead.tasks.DownloadVideoTask.this
                io.bidmachine.util.SdkDispatchers r8 = io.bidmachine.nativead.tasks.DownloadVideoTask.access$getDispatchers$p(r8)
                kotlinx.coroutines.CoroutineDispatcher r8 = r8.getIo()
                io.bidmachine.nativead.tasks.DownloadVideoTask$b$a r1 = new io.bidmachine.nativead.tasks.DownloadVideoTask$b$a
                io.bidmachine.nativead.tasks.DownloadVideoTask r5 = io.bidmachine.nativead.tasks.DownloadVideoTask.this
                r6 = 0
                r1.<init>(r5, r6)
                r7.a = r4
                java.lang.Object r8 = kotlinx.coroutines.BuildersKt.withContext(r8, r1, r7)
                if (r8 != r0) goto L40
                goto L59
            L40:
                android.net.Uri r8 = (android.net.Uri) r8
                if (r8 == 0) goto L4f
                io.bidmachine.nativead.tasks.DownloadVideoTask r1 = io.bidmachine.nativead.tasks.DownloadVideoTask.this
                r7.a = r3
                java.lang.Object r8 = io.bidmachine.nativead.tasks.DownloadVideoTask.access$sendPathSuccess(r1, r8, r7)
                if (r8 != r0) goto L5a
                goto L59
            L4f:
                io.bidmachine.nativead.tasks.DownloadVideoTask r8 = io.bidmachine.nativead.tasks.DownloadVideoTask.this
                r7.a = r2
                java.lang.Object r8 = io.bidmachine.nativead.tasks.DownloadVideoTask.access$sendFail(r8, r7)
                if (r8 != r0) goto L5a
            L59:
                return r0
            L5a:
                kotlin.Unit r8 = kotlin.Unit.INSTANCE
                return r8
            */
            throw new UnsupportedOperationException("Method not decompiled: io.bidmachine.nativead.tasks.DownloadVideoTask.b.invokeSuspend(java.lang.Object):java.lang.Object");
        }
    }

    public static final class c extends Lambda implements Function1 {
        public final /* synthetic */ CountDownLatch a;

        /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
        public c(CountDownLatch countDownLatch) {
            super(1);
            this.a = countDownLatch;
        }

        public final void a(Throwable th) {
            this.a.countDown();
        }

        @Override // kotlin.jvm.functions.Function1
        public /* bridge */ /* synthetic */ Object invoke(Object obj) {
            a((Throwable) obj);
            return Unit.INSTANCE;
        }
    }

    public static final class d extends SuspendLambda implements Function2 {
        public int a;

        public d(Continuation continuation) {
            super(2, continuation);
        }

        @Override // kotlin.jvm.functions.Function2
        /* JADX INFO: renamed from: a, reason: merged with bridge method [inline-methods] */
        public final Object invoke(CoroutineScope coroutineScope, Continuation continuation) {
            return ((d) create(coroutineScope, continuation)).invokeSuspend(Unit.INSTANCE);
        }

        @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
        public final Continuation create(Object obj, Continuation continuation) {
            return DownloadVideoTask.this.new d(continuation);
        }

        @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
        public final Object invokeSuspend(Object obj) {
            IntrinsicsKt__IntrinsicsKt.getCOROUTINE_SUSPENDED();
            if (this.a != 0) {
                throw new IllegalStateException("call to 'resume' before 'invoke' with coroutine");
            }
            ResultKt.throwOnFailure(obj);
            DownloadVideoTask.this.listener.onVideoLoadingError(DownloadVideoTask.this);
            return Unit.INSTANCE;
        }
    }

    public static final class e extends SuspendLambda implements Function2 {
        public int a;
        public final /* synthetic */ Uri c;

        /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
        public e(Uri uri, Continuation continuation) {
            super(2, continuation);
            this.c = uri;
        }

        @Override // kotlin.jvm.functions.Function2
        /* JADX INFO: renamed from: a, reason: merged with bridge method [inline-methods] */
        public final Object invoke(CoroutineScope coroutineScope, Continuation continuation) {
            return ((e) create(coroutineScope, continuation)).invokeSuspend(Unit.INSTANCE);
        }

        @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
        public final Continuation create(Object obj, Continuation continuation) {
            return DownloadVideoTask.this.new e(this.c, continuation);
        }

        @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
        public final Object invokeSuspend(Object obj) {
            IntrinsicsKt__IntrinsicsKt.getCOROUTINE_SUSPENDED();
            if (this.a != 0) {
                throw new IllegalStateException("call to 'resume' before 'invoke' with coroutine");
            }
            ResultKt.throwOnFailure(obj);
            DownloadVideoTask.this.listener.onVideoLoaded(DownloadVideoTask.this, this.c);
            return Unit.INSTANCE;
        }
    }

    public DownloadVideoTask(Object assetsHolder, Repository repository, OnLoadedListener listener, String url, SdkDispatchers dispatchers) {
        Intrinsics.checkNotNullParameter(assetsHolder, "assetsHolder");
        Intrinsics.checkNotNullParameter(repository, "repository");
        Intrinsics.checkNotNullParameter(listener, "listener");
        Intrinsics.checkNotNullParameter(url, "url");
        Intrinsics.checkNotNullParameter(dispatchers, "dispatchers");
        this.assetsHolder = assetsHolder;
        this.repository = repository;
        this.listener = listener;
        this.url = url;
        this.dispatchers = dispatchers;
        this.coroutineScope = CoroutineScopeKt.CoroutineScope(SupervisorKt.SupervisorJob$default(null, 1, null).plus(dispatchers.getMain()));
    }

    /* JADX WARN: Removed duplicated region for block: B:7:0x0013  */
    /* JADX INFO: renamed from: execute-IoAF18A, reason: not valid java name */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct code enable 'Show inconsistent code' option in preferences
    */
    public final java.lang.Object m2676executeIoAF18A(kotlin.coroutines.Continuation<? super kotlin.Result<? extends android.net.Uri>> r7) {
        /*
            r6 = this;
            boolean r0 = r7 instanceof io.bidmachine.nativead.tasks.DownloadVideoTask.a
            if (r0 == 0) goto L13
            r0 = r7
            io.bidmachine.nativead.tasks.DownloadVideoTask$a r0 = (io.bidmachine.nativead.tasks.DownloadVideoTask.a) r0
            int r1 = r0.c
            r2 = -2147483648(0xffffffff80000000, float:-0.0)
            r3 = r1 & r2
            if (r3 == 0) goto L13
            int r1 = r1 - r2
            r0.c = r1
            goto L18
        L13:
            io.bidmachine.nativead.tasks.DownloadVideoTask$a r0 = new io.bidmachine.nativead.tasks.DownloadVideoTask$a
            r0.<init>(r7)
        L18:
            java.lang.Object r7 = r0.a
            java.lang.Object r1 = kotlin.coroutines.intrinsics.IntrinsicsKt__IntrinsicsKt.getCOROUTINE_SUSPENDED()
            int r2 = r0.c
            r3 = 1
            if (r2 == 0) goto L37
            if (r2 != r3) goto L2f
            kotlin.ResultKt.throwOnFailure(r7)
            kotlin.Result r7 = (kotlin.Result) r7
            java.lang.Object r7 = r7.m2768unboximpl()
            return r7
        L2f:
            java.lang.IllegalStateException r7 = new java.lang.IllegalStateException
            java.lang.String r0 = "call to 'resume' before 'invoke' with coroutine"
            r7.<init>(r0)
            throw r7
        L37:
            kotlin.ResultKt.throwOnFailure(r7)
            java.lang.String r7 = r6.url
            boolean r7 = io.bidmachine.core.Utils.isHttpUrl(r7)
            if (r7 != 0) goto L65
            kotlin.Result$Companion r7 = kotlin.Result.Companion
            java.lang.Exception r7 = new java.lang.Exception
            java.lang.StringBuilder r0 = new java.lang.StringBuilder
            r0.<init>()
            java.lang.String r1 = "Invalid http url: "
            r0.append(r1)
            java.lang.String r1 = r6.url
            r0.append(r1)
            java.lang.String r0 = r0.toString()
            r7.<init>(r0)
            java.lang.Object r7 = kotlin.ResultKt.createFailure(r7)
            java.lang.Object r7 = kotlin.Result.m2760constructorimpl(r7)
            return r7
        L65:
            io.bidmachine.rendering.Repository r7 = r6.repository
            io.bidmachine.rendering.model.UrlMediaSource r2 = new io.bidmachine.rendering.model.UrlMediaSource
            java.lang.String r4 = r6.url
            io.bidmachine.rendering.model.MediaSource$DeliveryType r5 = io.bidmachine.rendering.model.MediaSource.DeliveryType.PRELOAD
            r2.<init>(r4, r5)
            java.lang.Object r4 = r6.assetsHolder
            r0.c = r3
            java.lang.Object r7 = r7.mo2688getVideo0E7RQCE(r2, r4, r0)
            if (r7 != r1) goto L7b
            return r1
        L7b:
            return r7
        */
        throw new UnsupportedOperationException("Method not decompiled: io.bidmachine.nativead.tasks.DownloadVideoTask.m2676executeIoAF18A(kotlin.coroutines.Continuation):java.lang.Object");
    }

    @Override // java.lang.Runnable
    public void run() {
        CountDownLatch countDownLatch = new CountDownLatch(1);
        BuildersKt__Builders_commonKt.launch$default(this.coroutineScope, null, null, new b(null), 3, null).invokeOnCompletion(new c(countDownLatch));
        try {
            countDownLatch.await();
            Unit unit = Unit.INSTANCE;
        } catch (Throwable unused) {
        }
    }

    public final Object sendFail(Continuation<? super Unit> continuation) {
        Object objWithContext = BuildersKt.withContext(this.dispatchers.getMain(), new d(null), continuation);
        return objWithContext == IntrinsicsKt__IntrinsicsKt.getCOROUTINE_SUSPENDED() ? objWithContext : Unit.INSTANCE;
    }

    public final Object sendPathSuccess(Uri uri, Continuation<? super Unit> continuation) {
        Object objWithContext = BuildersKt.withContext(this.dispatchers.getMain(), new e(uri, null), continuation);
        return objWithContext == IntrinsicsKt__IntrinsicsKt.getCOROUTINE_SUSPENDED() ? objWithContext : Unit.INSTANCE;
    }

    public /* synthetic */ DownloadVideoTask(Object obj, Repository repository, OnLoadedListener onLoadedListener, String str, SdkDispatchers sdkDispatchers, int i, DefaultConstructorMarker defaultConstructorMarker) {
        this(obj, repository, onLoadedListener, str, (i & 16) != 0 ? SdkDispatchers.Companion.getDefault() : sdkDispatchers);
    }
}
