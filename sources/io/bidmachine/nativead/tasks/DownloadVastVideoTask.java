package io.bidmachine.nativead.tasks;

import android.content.Context;
import android.net.Uri;
import io.bidmachine.core.Logger;
import io.bidmachine.iab.CacheControl;
import io.bidmachine.iab.vast.VastRequest;
import io.bidmachine.iab.vast.processor.VastAd;
import io.bidmachine.iab.vast.tags.MediaFileTag;
import io.bidmachine.rendering.Repository;
import io.bidmachine.util.SdkDispatchers;
import io.bidmachine.util.UtilsKt;
import java.lang.ref.WeakReference;
import java.util.concurrent.CountDownLatch;
import kotlin.Pair;
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
public final class DownloadVastVideoTask implements Runnable {
    public final Object assetsHolder;
    public final CoroutineScope coroutineScope;
    public final SdkDispatchers dispatchers;
    public final OnLoadedListener listener;
    public final Repository repository;
    public final String videoTag;
    public final WeakReference<Context> weakContext;

    public interface OnLoadedListener {
        void onVideoLoaded(DownloadVastVideoTask downloadVastVideoTask, Uri uri, VastRequest vastRequest);

        void onVideoLoadingError(DownloadVastVideoTask downloadVastVideoTask);
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
            Object objM2674executeIoAF18A = DownloadVastVideoTask.this.m2674executeIoAF18A(this);
            return objM2674executeIoAF18A == IntrinsicsKt__IntrinsicsKt.getCOROUTINE_SUSPENDED() ? objM2674executeIoAF18A : Result.m2759boximpl(objM2674executeIoAF18A);
        }
    }

    public static final class b extends SuspendLambda implements Function2 {
        public int a;

        public static final class a extends SuspendLambda implements Function2 {
            public int a;
            public final /* synthetic */ DownloadVastVideoTask b;

            /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
            public a(DownloadVastVideoTask downloadVastVideoTask, Continuation continuation) {
                super(2, continuation);
                this.b = downloadVastVideoTask;
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
                Object objM2674executeIoAF18A;
                Object coroutine_suspended = IntrinsicsKt__IntrinsicsKt.getCOROUTINE_SUSPENDED();
                int i = this.a;
                if (i == 0) {
                    ResultKt.throwOnFailure(obj);
                    DownloadVastVideoTask downloadVastVideoTask = this.b;
                    this.a = 1;
                    objM2674executeIoAF18A = downloadVastVideoTask.m2674executeIoAF18A(this);
                    if (objM2674executeIoAF18A == coroutine_suspended) {
                        return coroutine_suspended;
                    }
                } else {
                    if (i != 1) {
                        throw new IllegalStateException("call to 'resume' before 'invoke' with coroutine");
                    }
                    ResultKt.throwOnFailure(obj);
                    objM2674executeIoAF18A = ((Result) obj).m2768unboximpl();
                }
                if (Result.m2765isFailureimpl(objM2674executeIoAF18A)) {
                    return null;
                }
                return objM2674executeIoAF18A;
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
            return DownloadVastVideoTask.this.new b(continuation);
        }

        /* JADX WARN: Code restructure failed: missing block: B:18:0x0058, code lost:
        
            if (r1.sendSuccess(r2, r8, r7) == r0) goto L22;
         */
        /* JADX WARN: Code restructure failed: missing block: B:21:0x0063, code lost:
        
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
                goto L66
            L1e:
                kotlin.ResultKt.throwOnFailure(r8)
                goto L40
            L22:
                kotlin.ResultKt.throwOnFailure(r8)
                io.bidmachine.nativead.tasks.DownloadVastVideoTask r8 = io.bidmachine.nativead.tasks.DownloadVastVideoTask.this
                io.bidmachine.util.SdkDispatchers r8 = io.bidmachine.nativead.tasks.DownloadVastVideoTask.access$getDispatchers$p(r8)
                kotlinx.coroutines.CoroutineDispatcher r8 = r8.getIo()
                io.bidmachine.nativead.tasks.DownloadVastVideoTask$b$a r1 = new io.bidmachine.nativead.tasks.DownloadVastVideoTask$b$a
                io.bidmachine.nativead.tasks.DownloadVastVideoTask r5 = io.bidmachine.nativead.tasks.DownloadVastVideoTask.this
                r6 = 0
                r1.<init>(r5, r6)
                r7.a = r4
                java.lang.Object r8 = kotlinx.coroutines.BuildersKt.withContext(r8, r1, r7)
                if (r8 != r0) goto L40
                goto L65
            L40:
                kotlin.Pair r8 = (kotlin.Pair) r8
                if (r8 == 0) goto L5b
                io.bidmachine.nativead.tasks.DownloadVastVideoTask r1 = io.bidmachine.nativead.tasks.DownloadVastVideoTask.this
                java.lang.Object r2 = r8.getFirst()
                android.net.Uri r2 = (android.net.Uri) r2
                java.lang.Object r8 = r8.getSecond()
                io.bidmachine.iab.vast.VastRequest r8 = (io.bidmachine.iab.vast.VastRequest) r8
                r7.a = r3
                java.lang.Object r8 = io.bidmachine.nativead.tasks.DownloadVastVideoTask.access$sendSuccess(r1, r2, r8, r7)
                if (r8 != r0) goto L66
                goto L65
            L5b:
                io.bidmachine.nativead.tasks.DownloadVastVideoTask r8 = io.bidmachine.nativead.tasks.DownloadVastVideoTask.this
                r7.a = r2
                java.lang.Object r8 = io.bidmachine.nativead.tasks.DownloadVastVideoTask.access$sendFail(r8, r7)
                if (r8 != r0) goto L66
            L65:
                return r0
            L66:
                kotlin.Unit r8 = kotlin.Unit.INSTANCE
                return r8
            */
            throw new UnsupportedOperationException("Method not decompiled: io.bidmachine.nativead.tasks.DownloadVastVideoTask.b.invokeSuspend(java.lang.Object):java.lang.Object");
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
            return DownloadVastVideoTask.this.new d(continuation);
        }

        @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
        public final Object invokeSuspend(Object obj) {
            IntrinsicsKt__IntrinsicsKt.getCOROUTINE_SUSPENDED();
            if (this.a != 0) {
                throw new IllegalStateException("call to 'resume' before 'invoke' with coroutine");
            }
            ResultKt.throwOnFailure(obj);
            DownloadVastVideoTask.this.listener.onVideoLoadingError(DownloadVastVideoTask.this);
            return Unit.INSTANCE;
        }
    }

    public static final class e extends SuspendLambda implements Function2 {
        public int a;
        public final /* synthetic */ Uri c;
        public final /* synthetic */ VastRequest d;

        /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
        public e(Uri uri, VastRequest vastRequest, Continuation continuation) {
            super(2, continuation);
            this.c = uri;
            this.d = vastRequest;
        }

        @Override // kotlin.jvm.functions.Function2
        /* JADX INFO: renamed from: a, reason: merged with bridge method [inline-methods] */
        public final Object invoke(CoroutineScope coroutineScope, Continuation continuation) {
            return ((e) create(coroutineScope, continuation)).invokeSuspend(Unit.INSTANCE);
        }

        @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
        public final Continuation create(Object obj, Continuation continuation) {
            return DownloadVastVideoTask.this.new e(this.c, this.d, continuation);
        }

        @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
        public final Object invokeSuspend(Object obj) {
            IntrinsicsKt__IntrinsicsKt.getCOROUTINE_SUSPENDED();
            if (this.a != 0) {
                throw new IllegalStateException("call to 'resume' before 'invoke' with coroutine");
            }
            ResultKt.throwOnFailure(obj);
            DownloadVastVideoTask.this.listener.onVideoLoaded(DownloadVastVideoTask.this, this.c, this.d);
            return Unit.INSTANCE;
        }
    }

    public DownloadVastVideoTask(Context context, Object assetsHolder, Repository repository, OnLoadedListener listener, String videoTag, SdkDispatchers dispatchers) {
        Intrinsics.checkNotNullParameter(context, "context");
        Intrinsics.checkNotNullParameter(assetsHolder, "assetsHolder");
        Intrinsics.checkNotNullParameter(repository, "repository");
        Intrinsics.checkNotNullParameter(listener, "listener");
        Intrinsics.checkNotNullParameter(videoTag, "videoTag");
        Intrinsics.checkNotNullParameter(dispatchers, "dispatchers");
        this.assetsHolder = assetsHolder;
        this.repository = repository;
        this.listener = listener;
        this.videoTag = videoTag;
        this.dispatchers = dispatchers;
        this.coroutineScope = CoroutineScopeKt.CoroutineScope(SupervisorKt.SupervisorJob$default(null, 1, null).plus(dispatchers.getMain()));
        this.weakContext = new WeakReference<>(context);
    }

    /* JADX WARN: Removed duplicated region for block: B:7:0x0013  */
    /* JADX INFO: renamed from: execute-IoAF18A, reason: not valid java name */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct code enable 'Show inconsistent code' option in preferences
    */
    public final java.lang.Object m2674executeIoAF18A(kotlin.coroutines.Continuation<? super kotlin.Result<? extends kotlin.Pair<? extends android.net.Uri, ? extends io.bidmachine.iab.vast.VastRequest>>> r6) {
        /*
            r5 = this;
            boolean r0 = r6 instanceof io.bidmachine.nativead.tasks.DownloadVastVideoTask.a
            if (r0 == 0) goto L13
            r0 = r6
            io.bidmachine.nativead.tasks.DownloadVastVideoTask$a r0 = (io.bidmachine.nativead.tasks.DownloadVastVideoTask.a) r0
            int r1 = r0.c
            r2 = -2147483648(0xffffffff80000000, float:-0.0)
            r3 = r1 & r2
            if (r3 == 0) goto L13
            int r1 = r1 - r2
            r0.c = r1
            goto L18
        L13:
            io.bidmachine.nativead.tasks.DownloadVastVideoTask$a r0 = new io.bidmachine.nativead.tasks.DownloadVastVideoTask$a
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
            io.bidmachine.util.SdkDispatchers r6 = r5.dispatchers
            kotlinx.coroutines.CoroutineDispatcher r6 = r6.getIo()
            io.bidmachine.nativead.tasks.DownloadVastVideoTask$execute$2 r2 = new io.bidmachine.nativead.tasks.DownloadVastVideoTask$execute$2
            r4 = 0
            r2.<init>(r5, r4)
            r0.c = r3
            java.lang.Object r6 = kotlinx.coroutines.BuildersKt.withContext(r6, r2, r0)
            if (r6 != r1) goto L49
            return r1
        L49:
            kotlin.Result r6 = (kotlin.Result) r6
            java.lang.Object r6 = r6.m2768unboximpl()
            return r6
        */
        throw new UnsupportedOperationException("Method not decompiled: io.bidmachine.nativead.tasks.DownloadVastVideoTask.m2674executeIoAF18A(kotlin.coroutines.Continuation):java.lang.Object");
    }

    /* JADX INFO: renamed from: getVideoUrl-d1pmJ48, reason: not valid java name */
    public final Object m2675getVideoUrld1pmJ48() {
        MediaFileTag pickedMediaFileTag;
        Context context = this.weakContext.get();
        if (context == null) {
            Result.Companion companion = Result.Companion;
            return Result.m2760constructorimpl(ResultKt.createFailure(new Exception("Context is detached")));
        }
        try {
            VastRequest vastRequestBuild = VastRequest.newBuilder().setCacheControl(CacheControl.Stream).build();
            Intrinsics.checkNotNullExpressionValue(vastRequestBuild, "newBuilder()\n           …\n                .build()");
            String text = null;
            vastRequestBuild.loadVideoWithDataSync(context, this.videoTag, null);
            VastAd vastAd = vastRequestBuild.getVastAd();
            if (vastAd != null && (pickedMediaFileTag = vastAd.getPickedMediaFileTag()) != null) {
                text = pickedMediaFileTag.getText();
            }
            String strNotEmptyOrNull = UtilsKt.notEmptyOrNull(text);
            if (strNotEmptyOrNull != null) {
                Result.Companion companion2 = Result.Companion;
                return Result.m2760constructorimpl(new Pair(strNotEmptyOrNull, vastRequestBuild));
            }
            Result.Companion companion3 = Result.Companion;
            return Result.m2760constructorimpl(ResultKt.createFailure(new Exception("Vast video url is empty")));
        } catch (Exception e2) {
            Logger.w(e2);
            Result.Companion companion4 = Result.Companion;
            return Result.m2760constructorimpl(ResultKt.createFailure(e2));
        }
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

    public final Object sendSuccess(Uri uri, VastRequest vastRequest, Continuation<? super Unit> continuation) {
        Object objWithContext = BuildersKt.withContext(this.dispatchers.getMain(), new e(uri, vastRequest, null), continuation);
        return objWithContext == IntrinsicsKt__IntrinsicsKt.getCOROUTINE_SUSPENDED() ? objWithContext : Unit.INSTANCE;
    }

    public /* synthetic */ DownloadVastVideoTask(Context context, Object obj, Repository repository, OnLoadedListener onLoadedListener, String str, SdkDispatchers sdkDispatchers, int i, DefaultConstructorMarker defaultConstructorMarker) {
        this(context, obj, repository, onLoadedListener, str, (i & 32) != 0 ? SdkDispatchers.Companion.getDefault() : sdkDispatchers);
    }
}
