package io.bidmachine.rendering.internal.repository;

import android.graphics.Bitmap;
import android.graphics.BitmapFactory;
import android.net.Uri;
import io.bidmachine.rendering.Repository;
import io.bidmachine.rendering.model.Base64MediaSource;
import io.bidmachine.rendering.model.MediaSource;
import io.bidmachine.rendering.model.UrlMediaSource;
import io.bidmachine.rendering.utils.NetworkRequest;
import io.bidmachine.util.Error;
import io.bidmachine.util.ImageUtils;
import io.bidmachine.util.ImageUtilsKt;
import io.bidmachine.util.Utils;
import io.bidmachine.util.UtilsKt;
import io.bidmachine.util.cache.MediaFileCacheManager;
import io.bidmachine.util.file.FileUtilsKt;
import java.io.File;
import java.util.List;
import kotlin.Lazy;
import kotlin.LazyKt__LazyJVMKt;
import kotlin.Result;
import kotlin.ResultKt;
import kotlin.Unit;
import kotlin.coroutines.Continuation;
import kotlin.coroutines.intrinsics.IntrinsicsKt__IntrinsicsKt;
import kotlin.coroutines.jvm.internal.ContinuationImpl;
import kotlin.coroutines.jvm.internal.SuspendLambda;
import kotlin.jvm.functions.Function0;
import kotlin.jvm.functions.Function2;
import kotlin.jvm.internal.Intrinsics;
import kotlin.jvm.internal.Lambda;
import kotlinx.coroutines.BuildersKt;
import kotlinx.coroutines.BuildersKt__Builders_commonKt;
import kotlinx.coroutines.CoroutineScope;

/* JADX INFO: loaded from: classes5.dex */
public final class a implements Repository {
    public final Function0 a;
    public final CoroutineScope b;
    public final io.bidmachine.rendering.internal.j c;
    public final Lazy d;

    public static final class A extends SuspendLambda implements Function2 {
        public int a;
        public final /* synthetic */ Object c;

        /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
        public A(Object obj, Continuation continuation) {
            super(2, continuation);
            this.c = obj;
        }

        @Override // kotlin.jvm.functions.Function2
        /* JADX INFO: renamed from: a, reason: merged with bridge method [inline-methods] */
        public final Object invoke(CoroutineScope coroutineScope, Continuation continuation) {
            return ((A) create(coroutineScope, continuation)).invokeSuspend(Unit.INSTANCE);
        }

        @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
        public final Continuation create(Object obj, Continuation continuation) {
            return a.this.new A(this.c, continuation);
        }

        @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
        public final Object invokeSuspend(Object obj) {
            IntrinsicsKt__IntrinsicsKt.getCOROUTINE_SUSPENDED();
            if (this.a != 0) {
                throw new IllegalStateException("call to 'resume' before 'invoke' with coroutine");
            }
            ResultKt.throwOnFailure(obj);
            MediaFileCacheManager mediaFileCacheManagerB = a.this.b();
            if (mediaFileCacheManagerB != null) {
                mediaFileCacheManagerB.unholdMediaFiles(this.c);
            }
            return Unit.INSTANCE;
        }
    }

    /* JADX INFO: renamed from: io.bidmachine.rendering.internal.repository.a$a, reason: collision with other inner class name */
    public static abstract class AbstractC1202a implements NetworkRequest.Listener {
        public final Repository.ResultCallback a;
        public final CoroutineScope b;
        public final io.bidmachine.rendering.internal.j c;

        /* JADX INFO: renamed from: io.bidmachine.rendering.internal.repository.a$a$a, reason: collision with other inner class name */
        public static final class C1203a extends SuspendLambda implements Function2 {
            public int a;
            public final /* synthetic */ Error c;

            /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
            public C1203a(Error error, Continuation continuation) {
                super(2, continuation);
                this.c = error;
            }

            @Override // kotlin.jvm.functions.Function2
            /* JADX INFO: renamed from: a, reason: merged with bridge method [inline-methods] */
            public final Object invoke(CoroutineScope coroutineScope, Continuation continuation) {
                return ((C1203a) create(coroutineScope, continuation)).invokeSuspend(Unit.INSTANCE);
            }

            @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
            public final Continuation create(Object obj, Continuation continuation) {
                return AbstractC1202a.this.new C1203a(this.c, continuation);
            }

            @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
            public final Object invokeSuspend(Object obj) {
                IntrinsicsKt__IntrinsicsKt.getCOROUTINE_SUSPENDED();
                if (this.a != 0) {
                    throw new IllegalStateException("call to 'resume' before 'invoke' with coroutine");
                }
                ResultKt.throwOnFailure(obj);
                AbstractC1202a.this.a.onError(this.c);
                return Unit.INSTANCE;
            }
        }

        /* JADX INFO: renamed from: io.bidmachine.rendering.internal.repository.a$a$b */
        public static final class b extends SuspendLambda implements Function2 {
            public int a;
            public final /* synthetic */ Object c;

            /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
            public b(Object obj, Continuation continuation) {
                super(2, continuation);
                this.c = obj;
            }

            @Override // kotlin.jvm.functions.Function2
            /* JADX INFO: renamed from: a, reason: merged with bridge method [inline-methods] */
            public final Object invoke(CoroutineScope coroutineScope, Continuation continuation) {
                return ((b) create(coroutineScope, continuation)).invokeSuspend(Unit.INSTANCE);
            }

            @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
            public final Continuation create(Object obj, Continuation continuation) {
                return AbstractC1202a.this.new b(this.c, continuation);
            }

            @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
            public final Object invokeSuspend(Object obj) {
                IntrinsicsKt__IntrinsicsKt.getCOROUTINE_SUSPENDED();
                if (this.a != 0) {
                    throw new IllegalStateException("call to 'resume' before 'invoke' with coroutine");
                }
                ResultKt.throwOnFailure(obj);
                AbstractC1202a.this.a.onSuccess(this.c);
                return Unit.INSTANCE;
            }
        }

        public AbstractC1202a(Repository.ResultCallback resultCallback, CoroutineScope coroutineScope, io.bidmachine.rendering.internal.j coroutineDispatchers) {
            Intrinsics.checkNotNullParameter(resultCallback, "resultCallback");
            Intrinsics.checkNotNullParameter(coroutineScope, "coroutineScope");
            Intrinsics.checkNotNullParameter(coroutineDispatchers, "coroutineDispatchers");
            this.a = resultCallback;
            this.b = coroutineScope;
            this.c = coroutineDispatchers;
        }

        public abstract Error a();

        @Override // io.bidmachine.rendering.utils.NetworkRequest.Listener
        public void onError(Error error) {
            Intrinsics.checkNotNullParameter(error, "error");
            BuildersKt__Builders_commonKt.launch$default(this.b, this.c.d(), null, new C1203a(error, null), 2, null);
        }

        @Override // io.bidmachine.rendering.utils.NetworkRequest.Listener
        public void onSuccess(Object obj) {
            if (obj != null) {
                BuildersKt__Builders_commonKt.launch$default(this.b, this.c.d(), null, new b(obj, null), 2, null);
            } else {
                onError(a());
            }
        }
    }

    public /* synthetic */ class b {
        public static final /* synthetic */ int[] $EnumSwitchMapping$0;

        static {
            int[] iArr = new int[MediaSource.DeliveryType.values().length];
            try {
                iArr[MediaSource.DeliveryType.PRELOAD.ordinal()] = 1;
            } catch (NoSuchFieldError unused) {
            }
            try {
                iArr[MediaSource.DeliveryType.STREAM.ordinal()] = 2;
            } catch (NoSuchFieldError unused2) {
            }
            $EnumSwitchMapping$0 = iArr;
        }
    }

    public static final class c extends SuspendLambda implements Function2 {
        public int a;
        public final /* synthetic */ Repository.ResultCallback b;
        public final /* synthetic */ Error c;

        /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
        public c(Repository.ResultCallback resultCallback, Error error, Continuation continuation) {
            super(2, continuation);
            this.b = resultCallback;
            this.c = error;
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
            this.b.onError(this.c);
            return Unit.INSTANCE;
        }
    }

    public static final class d extends SuspendLambda implements Function2 {
        public int a;
        public final /* synthetic */ Repository.ResultCallback b;
        public final /* synthetic */ Object c;

        /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
        public d(Repository.ResultCallback resultCallback, Object obj, Continuation continuation) {
            super(2, continuation);
            this.b = resultCallback;
            this.c = obj;
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
            this.b.onSuccess(this.c);
            return Unit.INSTANCE;
        }
    }

    public static final class e extends SuspendLambda implements Function2 {
        public int a;
        public final /* synthetic */ MediaSource c;
        public final /* synthetic */ Object d;
        public final /* synthetic */ Repository.ResultCallback e;

        /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
        public e(MediaSource mediaSource, Object obj, Repository.ResultCallback resultCallback, Continuation continuation) {
            super(2, continuation);
            this.c = mediaSource;
            this.d = obj;
            this.e = resultCallback;
        }

        @Override // kotlin.jvm.functions.Function2
        /* JADX INFO: renamed from: a, reason: merged with bridge method [inline-methods] */
        public final Object invoke(CoroutineScope coroutineScope, Continuation continuation) {
            return ((e) create(coroutineScope, continuation)).invokeSuspend(Unit.INSTANCE);
        }

        @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
        public final Continuation create(Object obj, Continuation continuation) {
            return a.this.new e(this.c, this.d, this.e, continuation);
        }

        /* JADX WARN: Code restructure failed: missing block: B:22:0x0051, code lost:
        
            if (r7.a(r2, r1, r6) == r0) goto L29;
         */
        /* JADX WARN: Code restructure failed: missing block: B:28:0x006f, code lost:
        
            if (r1.a(r3, r4, (kotlin.coroutines.Continuation) r6) == r0) goto L29;
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
                r2 = 3
                r3 = 2
                r4 = 1
                if (r1 == 0) goto L28
                if (r1 == r4) goto L1e
                if (r1 == r3) goto L1a
                if (r1 != r2) goto L12
                goto L1a
            L12:
                java.lang.IllegalStateException r7 = new java.lang.IllegalStateException
                java.lang.String r0 = "call to 'resume' before 'invoke' with coroutine"
                r7.<init>(r0)
                throw r7
            L1a:
                kotlin.ResultKt.throwOnFailure(r7)
                goto L72
            L1e:
                kotlin.ResultKt.throwOnFailure(r7)
                kotlin.Result r7 = (kotlin.Result) r7
                java.lang.Object r7 = r7.m2768unboximpl()
                goto L3a
            L28:
                kotlin.ResultKt.throwOnFailure(r7)
                io.bidmachine.rendering.internal.repository.a r7 = io.bidmachine.rendering.internal.repository.a.this
                io.bidmachine.rendering.model.MediaSource r1 = r6.c
                java.lang.Object r5 = r6.d
                r6.a = r4
                java.lang.Object r7 = r7.m2711getImage0E7RQCE(r1, r5, r6)
                if (r7 != r0) goto L3a
                goto L71
            L3a:
                boolean r1 = kotlin.Result.m2765isFailureimpl(r7)
                if (r1 == 0) goto L42
                r1 = 0
                goto L43
            L42:
                r1 = r7
            L43:
                android.graphics.Bitmap r1 = (android.graphics.Bitmap) r1
                if (r1 == 0) goto L54
                io.bidmachine.rendering.internal.repository.a r7 = io.bidmachine.rendering.internal.repository.a.this
                io.bidmachine.rendering.Repository$ResultCallback r2 = r6.e
                r6.a = r3
                java.lang.Object r7 = io.bidmachine.rendering.internal.repository.a.a(r7, r2, r1, r6)
                if (r7 != r0) goto L72
                goto L71
            L54:
                io.bidmachine.rendering.internal.repository.a r1 = io.bidmachine.rendering.internal.repository.a.this
                io.bidmachine.rendering.Repository$ResultCallback r3 = r6.e
                io.bidmachine.util.Error r4 = new io.bidmachine.util.Error
                java.lang.Throwable r7 = kotlin.Result.m2763exceptionOrNullimpl(r7)
                if (r7 != 0) goto L66
                io.bidmachine.rendering.internal.repository.a r7 = io.bidmachine.rendering.internal.repository.a.this
                java.lang.Exception r7 = io.bidmachine.rendering.internal.repository.a.a(r7)
            L66:
                r4.<init>(r7)
                r6.a = r2
                java.lang.Object r7 = io.bidmachine.rendering.internal.repository.a.a(r1, r3, r4, r6)
                if (r7 != r0) goto L72
            L71:
                return r0
            L72:
                kotlin.Unit r7 = kotlin.Unit.INSTANCE
                return r7
            */
            throw new UnsupportedOperationException("Method not decompiled: io.bidmachine.rendering.internal.repository.a.e.invokeSuspend(java.lang.Object):java.lang.Object");
        }
    }

    public static final class f extends ContinuationImpl {
        public /* synthetic */ Object a;
        public int c;

        public f(Continuation continuation) {
            super(continuation);
        }

        @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
        public final Object invokeSuspend(Object obj) {
            this.a = obj;
            this.c |= Integer.MIN_VALUE;
            Object objM2711getImage0E7RQCE = a.this.m2711getImage0E7RQCE(null, null, this);
            return objM2711getImage0E7RQCE == IntrinsicsKt__IntrinsicsKt.getCOROUTINE_SUSPENDED() ? objM2711getImage0E7RQCE : Result.m2759boximpl(objM2711getImage0E7RQCE);
        }
    }

    public static final class g extends SuspendLambda implements Function2 {
        public int a;
        public final /* synthetic */ MediaSource b;
        public final /* synthetic */ a c;
        public final /* synthetic */ Object d;

        /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
        public g(MediaSource mediaSource, a aVar, Object obj, Continuation continuation) {
            super(2, continuation);
            this.b = mediaSource;
            this.c = aVar;
            this.d = obj;
        }

        @Override // kotlin.jvm.functions.Function2
        /* JADX INFO: renamed from: a, reason: merged with bridge method [inline-methods] */
        public final Object invoke(CoroutineScope coroutineScope, Continuation continuation) {
            return ((g) create(coroutineScope, continuation)).invokeSuspend(Unit.INSTANCE);
        }

        @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
        public final Continuation create(Object obj, Continuation continuation) {
            return new g(this.b, this.c, this.d, continuation);
        }

        /* JADX WARN: Code restructure failed: missing block: B:13:0x003d, code lost:
        
            if (r6 == r0) goto L19;
         */
        /* JADX WARN: Code restructure failed: missing block: B:18:0x004e, code lost:
        
            if (r6 == r0) goto L19;
         */
        /* JADX WARN: Code restructure failed: missing block: B:19:0x0050, code lost:
        
            return r0;
         */
        @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
        /*
            Code decompiled incorrectly, please refer to instructions dump.
            To view partially-correct code enable 'Show inconsistent code' option in preferences
        */
        public final java.lang.Object invokeSuspend(java.lang.Object r6) {
            /*
                r5 = this;
                java.lang.Object r0 = kotlin.coroutines.intrinsics.IntrinsicsKt__IntrinsicsKt.getCOROUTINE_SUSPENDED()
                int r1 = r5.a
                r2 = 2
                r3 = 1
                if (r1 == 0) goto L21
                if (r1 == r3) goto L17
                if (r1 != r2) goto Lf
                goto L17
            Lf:
                java.lang.IllegalStateException r6 = new java.lang.IllegalStateException
                java.lang.String r0 = "call to 'resume' before 'invoke' with coroutine"
                r6.<init>(r0)
                throw r6
            L17:
                kotlin.ResultKt.throwOnFailure(r6)
                kotlin.Result r6 = (kotlin.Result) r6
                java.lang.Object r6 = r6.m2768unboximpl()
                goto L51
            L21:
                kotlin.ResultKt.throwOnFailure(r6)
                android.graphics.BitmapFactory$Options r6 = io.bidmachine.util.ImageUtils.createDefaultBitmapFactoryOptions()
                r1 = 0
                r6.inJustDecodeBounds = r1
                io.bidmachine.rendering.model.MediaSource r1 = r5.b
                boolean r4 = r1 instanceof io.bidmachine.rendering.model.UrlMediaSource
                if (r4 == 0) goto L40
                io.bidmachine.rendering.internal.repository.a r2 = r5.c
                io.bidmachine.rendering.model.UrlMediaSource r1 = (io.bidmachine.rendering.model.UrlMediaSource) r1
                java.lang.Object r4 = r5.d
                r5.a = r3
                java.lang.Object r6 = r2.a(r1, r4, r6, r5)
                if (r6 != r0) goto L51
                goto L50
            L40:
                boolean r3 = r1 instanceof io.bidmachine.rendering.model.Base64MediaSource
                if (r3 == 0) goto L56
                io.bidmachine.rendering.internal.repository.a r3 = r5.c
                io.bidmachine.rendering.model.Base64MediaSource r1 = (io.bidmachine.rendering.model.Base64MediaSource) r1
                r5.a = r2
                java.lang.Object r6 = r3.a(r1, r6, r5)
                if (r6 != r0) goto L51
            L50:
                return r0
            L51:
                kotlin.Result r6 = kotlin.Result.m2759boximpl(r6)
                return r6
            L56:
                kotlin.NoWhenBranchMatchedException r6 = new kotlin.NoWhenBranchMatchedException
                r6.<init>()
                throw r6
            */
            throw new UnsupportedOperationException("Method not decompiled: io.bidmachine.rendering.internal.repository.a.g.invokeSuspend(java.lang.Object):java.lang.Object");
        }
    }

    public static final class h extends ContinuationImpl {
        public /* synthetic */ Object a;
        public int c;

        public h(Continuation continuation) {
            super(continuation);
        }

        @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
        public final Object invokeSuspend(Object obj) {
            this.a = obj;
            this.c |= Integer.MIN_VALUE;
            Object objA = a.this.a((UrlMediaSource) null, this);
            return objA == IntrinsicsKt__IntrinsicsKt.getCOROUTINE_SUSPENDED() ? objA : Result.m2759boximpl(objA);
        }
    }

    public static final class i extends SuspendLambda implements Function2 {
        public int a;
        public final /* synthetic */ UrlMediaSource c;

        /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
        public i(UrlMediaSource urlMediaSource, Continuation continuation) {
            super(2, continuation);
            this.c = urlMediaSource;
        }

        @Override // kotlin.jvm.functions.Function2
        /* JADX INFO: renamed from: a, reason: merged with bridge method [inline-methods] */
        public final Object invoke(CoroutineScope coroutineScope, Continuation continuation) {
            return ((i) create(coroutineScope, continuation)).invokeSuspend(Unit.INSTANCE);
        }

        @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
        public final Continuation create(Object obj, Continuation continuation) {
            return a.this.new i(this.c, continuation);
        }

        @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
        public final Object invokeSuspend(Object obj) {
            Object objM2727getMediaFilegIAlus;
            Object coroutine_suspended = IntrinsicsKt__IntrinsicsKt.getCOROUTINE_SUSPENDED();
            int i = this.a;
            if (i == 0) {
                ResultKt.throwOnFailure(obj);
                MediaFileCacheManager mediaFileCacheManagerB = a.this.b();
                if (mediaFileCacheManagerB == null) {
                    Result.Companion companion = Result.Companion;
                    objM2727getMediaFilegIAlus = Result.m2760constructorimpl(ResultKt.createFailure(new IllegalStateException("`MediaFileCacheManager` not found, check initialization")));
                } else {
                    List<String> urls = this.c.getUrls();
                    this.a = 1;
                    objM2727getMediaFilegIAlus = mediaFileCacheManagerB.m2727getMediaFilegIAlus(urls, this);
                    if (objM2727getMediaFilegIAlus == coroutine_suspended) {
                        return coroutine_suspended;
                    }
                }
            } else {
                if (i != 1) {
                    throw new IllegalStateException("call to 'resume' before 'invoke' with coroutine");
                }
                ResultKt.throwOnFailure(obj);
                objM2727getMediaFilegIAlus = ((Result) obj).m2768unboximpl();
            }
            return Result.m2759boximpl(objM2727getMediaFilegIAlus);
        }
    }

    public static final class j extends ContinuationImpl {
        public /* synthetic */ Object a;
        public int c;

        public j(Continuation continuation) {
            super(continuation);
        }

        @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
        public final Object invokeSuspend(Object obj) {
            this.a = obj;
            this.c |= Integer.MIN_VALUE;
            Object objA = a.this.a((Base64MediaSource) null, (BitmapFactory.Options) null, this);
            return objA == IntrinsicsKt__IntrinsicsKt.getCOROUTINE_SUSPENDED() ? objA : Result.m2759boximpl(objA);
        }
    }

    public static final class k extends SuspendLambda implements Function2 {
        public int a;
        public final /* synthetic */ Base64MediaSource c;
        public final /* synthetic */ BitmapFactory.Options d;

        /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
        public k(Base64MediaSource base64MediaSource, BitmapFactory.Options options, Continuation continuation) {
            super(2, continuation);
            this.c = base64MediaSource;
            this.d = options;
        }

        @Override // kotlin.jvm.functions.Function2
        /* JADX INFO: renamed from: a, reason: merged with bridge method [inline-methods] */
        public final Object invoke(CoroutineScope coroutineScope, Continuation continuation) {
            return ((k) create(coroutineScope, continuation)).invokeSuspend(Unit.INSTANCE);
        }

        @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
        public final Continuation create(Object obj, Continuation continuation) {
            return a.this.new k(this.c, this.d, continuation);
        }

        @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
        public final Object invokeSuspend(Object obj) {
            Object objM2760constructorimpl;
            IntrinsicsKt__IntrinsicsKt.getCOROUTINE_SUSPENDED();
            if (this.a != 0) {
                throw new IllegalStateException("call to 'resume' before 'invoke' with coroutine");
            }
            ResultKt.throwOnFailure(obj);
            Bitmap bitmapA = a.this.a(this.c.getBase64(), this.d);
            if (bitmapA != null) {
                objM2760constructorimpl = Result.m2760constructorimpl(bitmapA);
            } else {
                Result.Companion companion = Result.Companion;
                objM2760constructorimpl = Result.m2760constructorimpl(ResultKt.createFailure(new Exception("Can't decode image from base64")));
            }
            return Result.m2759boximpl(objM2760constructorimpl);
        }
    }

    public static final class l extends ContinuationImpl {
        public /* synthetic */ Object a;
        public int c;

        public l(Continuation continuation) {
            super(continuation);
        }

        @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
        public final Object invokeSuspend(Object obj) {
            this.a = obj;
            this.c |= Integer.MIN_VALUE;
            Object objA = a.this.a((UrlMediaSource) null, (Object) null, (BitmapFactory.Options) null, this);
            return objA == IntrinsicsKt__IntrinsicsKt.getCOROUTINE_SUSPENDED() ? objA : Result.m2759boximpl(objA);
        }
    }

    public static final class m extends SuspendLambda implements Function2 {
        public Object a;
        public Object b;
        public int c;
        public final /* synthetic */ UrlMediaSource e;
        public final /* synthetic */ Object f;
        public final /* synthetic */ BitmapFactory.Options g;

        /* JADX INFO: renamed from: io.bidmachine.rendering.internal.repository.a$m$a, reason: collision with other inner class name */
        public static final class C1204a extends SuspendLambda implements Function2 {
            public int a;
            public final /* synthetic */ File b;
            public final /* synthetic */ BitmapFactory.Options c;

            /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
            public C1204a(File file, BitmapFactory.Options options, Continuation continuation) {
                super(2, continuation);
                this.b = file;
                this.c = options;
            }

            @Override // kotlin.jvm.functions.Function2
            /* JADX INFO: renamed from: a, reason: merged with bridge method [inline-methods] */
            public final Object invoke(CoroutineScope coroutineScope, Continuation continuation) {
                return ((C1204a) create(coroutineScope, continuation)).invokeSuspend(Unit.INSTANCE);
            }

            @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
            public final Continuation create(Object obj, Continuation continuation) {
                return new C1204a(this.b, this.c, continuation);
            }

            @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
            public final Object invokeSuspend(Object obj) {
                IntrinsicsKt__IntrinsicsKt.getCOROUTINE_SUSPENDED();
                if (this.a != 0) {
                    throw new IllegalStateException("call to 'resume' before 'invoke' with coroutine");
                }
                ResultKt.throwOnFailure(obj);
                File file = this.b;
                if (file != null) {
                    return ImageUtilsKt.decodeToBitmapSafely(file, this.c);
                }
                return null;
            }
        }

        /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
        public m(UrlMediaSource urlMediaSource, Object obj, BitmapFactory.Options options, Continuation continuation) {
            super(2, continuation);
            this.e = urlMediaSource;
            this.f = obj;
            this.g = options;
        }

        @Override // kotlin.jvm.functions.Function2
        /* JADX INFO: renamed from: a, reason: merged with bridge method [inline-methods] */
        public final Object invoke(CoroutineScope coroutineScope, Continuation continuation) {
            return ((m) create(coroutineScope, continuation)).invokeSuspend(Unit.INSTANCE);
        }

        @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
        public final Continuation create(Object obj, Continuation continuation) {
            return a.this.new m(this.e, this.f, this.g, continuation);
        }

        /* JADX WARN: Removed duplicated region for block: B:29:0x007f  */
        /* JADX WARN: Removed duplicated region for block: B:31:0x0085  */
        @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
        /*
            Code decompiled incorrectly, please refer to instructions dump.
            To view partially-correct code enable 'Show inconsistent code' option in preferences
        */
        public final java.lang.Object invokeSuspend(java.lang.Object r8) {
            /*
                r7 = this;
                java.lang.Object r0 = kotlin.coroutines.intrinsics.IntrinsicsKt__IntrinsicsKt.getCOROUTINE_SUSPENDED()
                int r1 = r7.c
                r2 = 2
                r3 = 1
                if (r1 == 0) goto L2b
                if (r1 == r3) goto L20
                if (r1 != r2) goto L18
                java.lang.Object r0 = r7.b
                java.io.File r0 = (java.io.File) r0
                java.lang.Object r1 = r7.a
                kotlin.ResultKt.throwOnFailure(r8)
                goto L67
            L18:
                java.lang.IllegalStateException r8 = new java.lang.IllegalStateException
                java.lang.String r0 = "call to 'resume' before 'invoke' with coroutine"
                r8.<init>(r0)
                throw r8
            L20:
                kotlin.ResultKt.throwOnFailure(r8)
                kotlin.Result r8 = (kotlin.Result) r8
                java.lang.Object r8 = r8.m2768unboximpl()
            L29:
                r1 = r8
                goto L3b
            L2b:
                kotlin.ResultKt.throwOnFailure(r8)
                io.bidmachine.rendering.internal.repository.a r8 = io.bidmachine.rendering.internal.repository.a.this
                io.bidmachine.rendering.model.UrlMediaSource r1 = r7.e
                r7.c = r3
                java.lang.Object r8 = r8.a(r1, r7)
                if (r8 != r0) goto L29
                goto L64
            L3b:
                boolean r8 = kotlin.Result.m2765isFailureimpl(r1)
                r3 = 0
                if (r8 == 0) goto L44
                r8 = r3
                goto L45
            L44:
                r8 = r1
            L45:
                java.io.File r8 = (java.io.File) r8
                io.bidmachine.rendering.internal.repository.a r4 = io.bidmachine.rendering.internal.repository.a.this
                io.bidmachine.rendering.internal.j r4 = io.bidmachine.rendering.internal.repository.a.b(r4)
                kotlinx.coroutines.CoroutineDispatcher r4 = r4.b()
                io.bidmachine.rendering.internal.repository.a$m$a r5 = new io.bidmachine.rendering.internal.repository.a$m$a
                android.graphics.BitmapFactory$Options r6 = r7.g
                r5.<init>(r8, r6, r3)
                r7.a = r1
                r7.b = r8
                r7.c = r2
                java.lang.Object r2 = kotlinx.coroutines.BuildersKt.withContext(r4, r5, r7)
                if (r2 != r0) goto L65
            L64:
                return r0
            L65:
                r0 = r8
                r8 = r2
            L67:
                android.graphics.Bitmap r8 = (android.graphics.Bitmap) r8
                if (r0 == 0) goto L7f
                if (r8 == 0) goto L7f
                io.bidmachine.rendering.internal.repository.a r1 = io.bidmachine.rendering.internal.repository.a.this
                io.bidmachine.util.cache.MediaFileCacheManager r1 = io.bidmachine.rendering.internal.repository.a.c(r1)
                if (r1 == 0) goto L7a
                java.lang.Object r2 = r7.f
                r1.holdMediaFile(r0, r2)
            L7a:
                java.lang.Object r8 = kotlin.Result.m2760constructorimpl(r8)
                goto L93
            L7f:
                java.lang.Throwable r8 = kotlin.Result.m2763exceptionOrNullimpl(r1)
                if (r8 != 0) goto L8b
                io.bidmachine.rendering.internal.repository.a r8 = io.bidmachine.rendering.internal.repository.a.this
                java.lang.Exception r8 = io.bidmachine.rendering.internal.repository.a.a(r8)
            L8b:
                java.lang.Object r8 = kotlin.ResultKt.createFailure(r8)
                java.lang.Object r8 = kotlin.Result.m2760constructorimpl(r8)
            L93:
                kotlin.Result r8 = kotlin.Result.m2759boximpl(r8)
                return r8
            */
            throw new UnsupportedOperationException("Method not decompiled: io.bidmachine.rendering.internal.repository.a.m.invokeSuspend(java.lang.Object):java.lang.Object");
        }
    }

    public static final class o extends ContinuationImpl {
        public /* synthetic */ Object a;
        public int c;

        public o(Continuation continuation) {
            super(continuation);
        }

        @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
        public final Object invokeSuspend(Object obj) {
            this.a = obj;
            this.c |= Integer.MIN_VALUE;
            Object objMo2687getImageUri0E7RQCE = a.this.mo2687getImageUri0E7RQCE(null, null, this);
            return objMo2687getImageUri0E7RQCE == IntrinsicsKt__IntrinsicsKt.getCOROUTINE_SUSPENDED() ? objMo2687getImageUri0E7RQCE : Result.m2759boximpl(objMo2687getImageUri0E7RQCE);
        }
    }

    public static final class p extends SuspendLambda implements Function2 {
        public int a;
        public final /* synthetic */ UrlMediaSource c;
        public final /* synthetic */ Object d;

        /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
        public p(UrlMediaSource urlMediaSource, Object obj, Continuation continuation) {
            super(2, continuation);
            this.c = urlMediaSource;
            this.d = obj;
        }

        @Override // kotlin.jvm.functions.Function2
        /* JADX INFO: renamed from: a, reason: merged with bridge method [inline-methods] */
        public final Object invoke(CoroutineScope coroutineScope, Continuation continuation) {
            return ((p) create(coroutineScope, continuation)).invokeSuspend(Unit.INSTANCE);
        }

        @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
        public final Continuation create(Object obj, Continuation continuation) {
            return a.this.new p(this.c, this.d, continuation);
        }

        @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
        public final Object invokeSuspend(Object obj) {
            Object objA;
            Object objM2760constructorimpl;
            Object coroutine_suspended = IntrinsicsKt__IntrinsicsKt.getCOROUTINE_SUSPENDED();
            int i = this.a;
            if (i == 0) {
                ResultKt.throwOnFailure(obj);
                a aVar = a.this;
                UrlMediaSource urlMediaSource = this.c;
                this.a = 1;
                objA = aVar.a(urlMediaSource, this);
                if (objA == coroutine_suspended) {
                    return coroutine_suspended;
                }
            } else {
                if (i != 1) {
                    throw new IllegalStateException("call to 'resume' before 'invoke' with coroutine");
                }
                ResultKt.throwOnFailure(obj);
                objA = ((Result) obj).m2768unboximpl();
            }
            File file = (File) (Result.m2765isFailureimpl(objA) ? null : objA);
            if (file != null) {
                MediaFileCacheManager mediaFileCacheManagerB = a.this.b();
                if (mediaFileCacheManagerB != null) {
                    mediaFileCacheManagerB.holdMediaFile(file, this.d);
                }
                objM2760constructorimpl = Result.m2760constructorimpl(FileUtilsKt.toUri(file));
            } else {
                Throwable thM2763exceptionOrNullimpl = Result.m2763exceptionOrNullimpl(objA);
                if (thM2763exceptionOrNullimpl == null) {
                    thM2763exceptionOrNullimpl = a.this.a();
                }
                objM2760constructorimpl = Result.m2760constructorimpl(ResultKt.createFailure(thM2763exceptionOrNullimpl));
            }
            return Result.m2759boximpl(objM2760constructorimpl);
        }
    }

    public static final class q extends SuspendLambda implements Function2 {
        public int a;
        public final /* synthetic */ MediaSource c;
        public final /* synthetic */ Repository.ResultCallback d;

        /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
        public q(MediaSource mediaSource, Repository.ResultCallback resultCallback, Continuation continuation) {
            super(2, continuation);
            this.c = mediaSource;
            this.d = resultCallback;
        }

        @Override // kotlin.jvm.functions.Function2
        /* JADX INFO: renamed from: a, reason: merged with bridge method [inline-methods] */
        public final Object invoke(CoroutineScope coroutineScope, Continuation continuation) {
            return ((q) create(coroutineScope, continuation)).invokeSuspend(Unit.INSTANCE);
        }

        @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
        public final Continuation create(Object obj, Continuation continuation) {
            return a.this.new q(this.c, this.d, continuation);
        }

        @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
        public final Object invokeSuspend(Object obj) {
            Object coroutine_suspended = IntrinsicsKt__IntrinsicsKt.getCOROUTINE_SUSPENDED();
            int i = this.a;
            if (i == 0) {
                ResultKt.throwOnFailure(obj);
                a aVar = a.this;
                MediaSource mediaSource = this.c;
                Repository.ResultCallback resultCallback = this.d;
                this.a = 1;
                if (aVar.a(mediaSource, resultCallback, this) == coroutine_suspended) {
                    return coroutine_suspended;
                }
            } else {
                if (i != 1) {
                    throw new IllegalStateException("call to 'resume' before 'invoke' with coroutine");
                }
                ResultKt.throwOnFailure(obj);
            }
            return Unit.INSTANCE;
        }
    }

    public static final class r extends SuspendLambda implements Function2 {
        public int a;
        public final /* synthetic */ MediaSource b;
        public final /* synthetic */ a c;
        public final /* synthetic */ Repository.ResultCallback d;

        /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
        public r(MediaSource mediaSource, a aVar, Repository.ResultCallback resultCallback, Continuation continuation) {
            super(2, continuation);
            this.b = mediaSource;
            this.c = aVar;
            this.d = resultCallback;
        }

        @Override // kotlin.jvm.functions.Function2
        /* JADX INFO: renamed from: a, reason: merged with bridge method [inline-methods] */
        public final Object invoke(CoroutineScope coroutineScope, Continuation continuation) {
            return ((r) create(coroutineScope, continuation)).invokeSuspend(Unit.INSTANCE);
        }

        @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
        public final Continuation create(Object obj, Continuation continuation) {
            return new r(this.b, this.c, this.d, continuation);
        }

        /* JADX WARN: Code restructure failed: missing block: B:18:0x0060, code lost:
        
            if (r1.a(r3, r6, r5) == r0) goto L22;
         */
        /* JADX WARN: Code restructure failed: missing block: B:21:0x0074, code lost:
        
            if (r6.a(r1, r2, (kotlin.coroutines.Continuation) r5) == r0) goto L22;
         */
        /* JADX WARN: Code restructure failed: missing block: B:22:0x0076, code lost:
        
            return r0;
         */
        @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
        /*
            Code decompiled incorrectly, please refer to instructions dump.
            To view partially-correct code enable 'Show inconsistent code' option in preferences
        */
        public final java.lang.Object invokeSuspend(java.lang.Object r6) {
            /*
                r5 = this;
                java.lang.Object r0 = kotlin.coroutines.intrinsics.IntrinsicsKt__IntrinsicsKt.getCOROUTINE_SUSPENDED()
                int r1 = r5.a
                r2 = 1
                r3 = 2
                if (r1 == 0) goto L1b
                if (r1 == r2) goto L17
                if (r1 != r3) goto Lf
                goto L17
            Lf:
                java.lang.IllegalStateException r6 = new java.lang.IllegalStateException
                java.lang.String r0 = "call to 'resume' before 'invoke' with coroutine"
                r6.<init>(r0)
                throw r6
            L17:
                kotlin.ResultKt.throwOnFailure(r6)
                goto L77
            L1b:
                kotlin.ResultKt.throwOnFailure(r6)
                io.bidmachine.rendering.model.MediaSource r6 = r5.b
                boolean r1 = r6 instanceof io.bidmachine.rendering.model.UrlMediaSource
                if (r1 == 0) goto L44
                io.bidmachine.rendering.internal.repository.a r0 = r5.c
                io.bidmachine.rendering.model.UrlMediaSource r6 = (io.bidmachine.rendering.model.UrlMediaSource) r6
                java.util.List r6 = r6.getUrls()
                java.lang.Object r6 = kotlin.collections.CollectionsKt___CollectionsKt.first(r6)
                java.lang.String r6 = (java.lang.String) r6
                io.bidmachine.rendering.utils.NetworkRequest$StringProcessor r1 = new io.bidmachine.rendering.utils.NetworkRequest$StringProcessor
                r1.<init>()
                io.bidmachine.rendering.Repository$ResultCallback r2 = r5.d
                io.bidmachine.util.Error r3 = new io.bidmachine.util.Error
                java.lang.String r4 = "Uri is null"
                r3.<init>(r4)
                r0.a(r6, r1, r2, r3)
                goto L77
            L44:
                boolean r1 = r6 instanceof io.bidmachine.rendering.model.Base64MediaSource
                if (r1 == 0) goto L77
                io.bidmachine.rendering.model.Base64MediaSource r6 = (io.bidmachine.rendering.model.Base64MediaSource) r6
                java.lang.String r6 = r6.getBase64()
                r1 = 0
                r4 = 0
                java.lang.String r6 = io.bidmachine.util.Utils.decodeBase64ToString$default(r6, r1, r3, r4)
                if (r6 == 0) goto L63
                io.bidmachine.rendering.internal.repository.a r1 = r5.c
                io.bidmachine.rendering.Repository$ResultCallback r3 = r5.d
                r5.a = r2
                java.lang.Object r6 = io.bidmachine.rendering.internal.repository.a.a(r1, r3, r6, r5)
                if (r6 != r0) goto L77
                goto L76
            L63:
                io.bidmachine.rendering.internal.repository.a r6 = r5.c
                io.bidmachine.rendering.Repository$ResultCallback r1 = r5.d
                io.bidmachine.util.Error r2 = new io.bidmachine.util.Error
                java.lang.String r4 = "Can't decode string from base64"
                r2.<init>(r4)
                r5.a = r3
                java.lang.Object r6 = io.bidmachine.rendering.internal.repository.a.a(r6, r1, r2, r5)
                if (r6 != r0) goto L77
            L76:
                return r0
            L77:
                kotlin.Unit r6 = kotlin.Unit.INSTANCE
                return r6
            */
            throw new UnsupportedOperationException("Method not decompiled: io.bidmachine.rendering.internal.repository.a.r.invokeSuspend(java.lang.Object):java.lang.Object");
        }
    }

    public static final class s extends SuspendLambda implements Function2 {
        public int a;
        public final /* synthetic */ MediaSource c;
        public final /* synthetic */ Object d;
        public final /* synthetic */ Repository.ResultCallback e;

        /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
        public s(MediaSource mediaSource, Object obj, Repository.ResultCallback resultCallback, Continuation continuation) {
            super(2, continuation);
            this.c = mediaSource;
            this.d = obj;
            this.e = resultCallback;
        }

        @Override // kotlin.jvm.functions.Function2
        /* JADX INFO: renamed from: a, reason: merged with bridge method [inline-methods] */
        public final Object invoke(CoroutineScope coroutineScope, Continuation continuation) {
            return ((s) create(coroutineScope, continuation)).invokeSuspend(Unit.INSTANCE);
        }

        @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
        public final Continuation create(Object obj, Continuation continuation) {
            return a.this.new s(this.c, this.d, this.e, continuation);
        }

        /* JADX WARN: Code restructure failed: missing block: B:22:0x0051, code lost:
        
            if (r7.a(r2, r1, r6) == r0) goto L29;
         */
        /* JADX WARN: Code restructure failed: missing block: B:28:0x006f, code lost:
        
            if (r1.a(r3, r4, (kotlin.coroutines.Continuation) r6) == r0) goto L29;
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
                r2 = 3
                r3 = 2
                r4 = 1
                if (r1 == 0) goto L28
                if (r1 == r4) goto L1e
                if (r1 == r3) goto L1a
                if (r1 != r2) goto L12
                goto L1a
            L12:
                java.lang.IllegalStateException r7 = new java.lang.IllegalStateException
                java.lang.String r0 = "call to 'resume' before 'invoke' with coroutine"
                r7.<init>(r0)
                throw r7
            L1a:
                kotlin.ResultKt.throwOnFailure(r7)
                goto L72
            L1e:
                kotlin.ResultKt.throwOnFailure(r7)
                kotlin.Result r7 = (kotlin.Result) r7
                java.lang.Object r7 = r7.m2768unboximpl()
                goto L3a
            L28:
                kotlin.ResultKt.throwOnFailure(r7)
                io.bidmachine.rendering.internal.repository.a r7 = io.bidmachine.rendering.internal.repository.a.this
                io.bidmachine.rendering.model.MediaSource r1 = r6.c
                java.lang.Object r5 = r6.d
                r6.a = r4
                java.lang.Object r7 = r7.mo2688getVideo0E7RQCE(r1, r5, r6)
                if (r7 != r0) goto L3a
                goto L71
            L3a:
                boolean r1 = kotlin.Result.m2765isFailureimpl(r7)
                if (r1 == 0) goto L42
                r1 = 0
                goto L43
            L42:
                r1 = r7
            L43:
                android.net.Uri r1 = (android.net.Uri) r1
                if (r1 == 0) goto L54
                io.bidmachine.rendering.internal.repository.a r7 = io.bidmachine.rendering.internal.repository.a.this
                io.bidmachine.rendering.Repository$ResultCallback r2 = r6.e
                r6.a = r3
                java.lang.Object r7 = io.bidmachine.rendering.internal.repository.a.a(r7, r2, r1, r6)
                if (r7 != r0) goto L72
                goto L71
            L54:
                io.bidmachine.rendering.internal.repository.a r1 = io.bidmachine.rendering.internal.repository.a.this
                io.bidmachine.rendering.Repository$ResultCallback r3 = r6.e
                io.bidmachine.util.Error r4 = new io.bidmachine.util.Error
                java.lang.Throwable r7 = kotlin.Result.m2763exceptionOrNullimpl(r7)
                if (r7 != 0) goto L66
                io.bidmachine.rendering.internal.repository.a r7 = io.bidmachine.rendering.internal.repository.a.this
                java.lang.Exception r7 = io.bidmachine.rendering.internal.repository.a.a(r7)
            L66:
                r4.<init>(r7)
                r6.a = r2
                java.lang.Object r7 = io.bidmachine.rendering.internal.repository.a.a(r1, r3, r4, r6)
                if (r7 != r0) goto L72
            L71:
                return r0
            L72:
                kotlin.Unit r7 = kotlin.Unit.INSTANCE
                return r7
            */
            throw new UnsupportedOperationException("Method not decompiled: io.bidmachine.rendering.internal.repository.a.s.invokeSuspend(java.lang.Object):java.lang.Object");
        }
    }

    public static final class t extends ContinuationImpl {
        public /* synthetic */ Object a;
        public int c;

        public t(Continuation continuation) {
            super(continuation);
        }

        @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
        public final Object invokeSuspend(Object obj) {
            this.a = obj;
            this.c |= Integer.MIN_VALUE;
            Object objMo2688getVideo0E7RQCE = a.this.mo2688getVideo0E7RQCE(null, null, this);
            return objMo2688getVideo0E7RQCE == IntrinsicsKt__IntrinsicsKt.getCOROUTINE_SUSPENDED() ? objMo2688getVideo0E7RQCE : Result.m2759boximpl(objMo2688getVideo0E7RQCE);
        }
    }

    public static final class u extends SuspendLambda implements Function2 {
        public int a;
        public final /* synthetic */ MediaSource b;
        public final /* synthetic */ a c;
        public final /* synthetic */ Object d;

        /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
        public u(MediaSource mediaSource, a aVar, Object obj, Continuation continuation) {
            super(2, continuation);
            this.b = mediaSource;
            this.c = aVar;
            this.d = obj;
        }

        @Override // kotlin.jvm.functions.Function2
        /* JADX INFO: renamed from: a, reason: merged with bridge method [inline-methods] */
        public final Object invoke(CoroutineScope coroutineScope, Continuation continuation) {
            return ((u) create(coroutineScope, continuation)).invokeSuspend(Unit.INSTANCE);
        }

        @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
        public final Continuation create(Object obj, Continuation continuation) {
            return new u(this.b, this.c, this.d, continuation);
        }

        @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
        public final Object invokeSuspend(Object obj) {
            Object objM2760constructorimpl;
            Object coroutine_suspended = IntrinsicsKt__IntrinsicsKt.getCOROUTINE_SUSPENDED();
            int i = this.a;
            if (i == 0) {
                ResultKt.throwOnFailure(obj);
                MediaSource mediaSource = this.b;
                if (mediaSource instanceof UrlMediaSource) {
                    Object obj2 = this.d;
                    this.a = 1;
                    objM2760constructorimpl = this.c.a((UrlMediaSource) mediaSource, obj2, this);
                    if (objM2760constructorimpl == coroutine_suspended) {
                        return coroutine_suspended;
                    }
                } else {
                    Result.Companion companion = Result.Companion;
                    objM2760constructorimpl = Result.m2760constructorimpl(ResultKt.createFailure(new Exception("Unsupported media source type: " + this.b)));
                }
            } else {
                if (i != 1) {
                    throw new IllegalStateException("call to 'resume' before 'invoke' with coroutine");
                }
                ResultKt.throwOnFailure(obj);
                objM2760constructorimpl = ((Result) obj).m2768unboximpl();
            }
            return Result.m2759boximpl(objM2760constructorimpl);
        }
    }

    public static final class v extends ContinuationImpl {
        public /* synthetic */ Object a;
        public int c;

        public v(Continuation continuation) {
            super(continuation);
        }

        @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
        public final Object invokeSuspend(Object obj) {
            this.a = obj;
            this.c |= Integer.MIN_VALUE;
            Object objA = a.this.a((List) null, (Object) null, this);
            return objA == IntrinsicsKt__IntrinsicsKt.getCOROUTINE_SUSPENDED() ? objA : Result.m2759boximpl(objA);
        }
    }

    public static final class w extends SuspendLambda implements Function2 {
        public Object a;
        public int b;
        public final /* synthetic */ List d;
        public final /* synthetic */ Object e;

        /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
        public w(List list, Object obj, Continuation continuation) {
            super(2, continuation);
            this.d = list;
            this.e = obj;
        }

        @Override // kotlin.jvm.functions.Function2
        /* JADX INFO: renamed from: a, reason: merged with bridge method [inline-methods] */
        public final Object invoke(CoroutineScope coroutineScope, Continuation continuation) {
            return ((w) create(coroutineScope, continuation)).invokeSuspend(Unit.INSTANCE);
        }

        @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
        public final Continuation create(Object obj, Continuation continuation) {
            return a.this.new w(this.d, this.e, continuation);
        }

        @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
        public final Object invokeSuspend(Object obj) {
            MediaFileCacheManager mediaFileCacheManager;
            Object objM2768unboximpl;
            Object objM2760constructorimpl;
            Object coroutine_suspended = IntrinsicsKt__IntrinsicsKt.getCOROUTINE_SUSPENDED();
            int i = this.b;
            if (i == 0) {
                ResultKt.throwOnFailure(obj);
                MediaFileCacheManager mediaFileCacheManagerB = a.this.b();
                if (mediaFileCacheManagerB == null) {
                    Result.Companion companion = Result.Companion;
                    return Result.m2759boximpl(Result.m2760constructorimpl(ResultKt.createFailure(new Exception("`MediaFileCacheManager` not found, check initialization"))));
                }
                List<String> list = this.d;
                this.a = mediaFileCacheManagerB;
                this.b = 1;
                Object objM2727getMediaFilegIAlus = mediaFileCacheManagerB.m2727getMediaFilegIAlus(list, this);
                if (objM2727getMediaFilegIAlus == coroutine_suspended) {
                    return coroutine_suspended;
                }
                mediaFileCacheManager = mediaFileCacheManagerB;
                objM2768unboximpl = objM2727getMediaFilegIAlus;
            } else {
                if (i != 1) {
                    throw new IllegalStateException("call to 'resume' before 'invoke' with coroutine");
                }
                mediaFileCacheManager = (MediaFileCacheManager) this.a;
                ResultKt.throwOnFailure(obj);
                objM2768unboximpl = ((Result) obj).m2768unboximpl();
            }
            File file = (File) (Result.m2765isFailureimpl(objM2768unboximpl) ? null : objM2768unboximpl);
            Uri uriSafely = file != null ? FileUtilsKt.toUriSafely(file) : null;
            if (uriSafely != null) {
                mediaFileCacheManager.holdMediaFile(file, this.e);
                objM2760constructorimpl = Result.m2760constructorimpl(uriSafely);
            } else {
                Throwable thM2763exceptionOrNullimpl = Result.m2763exceptionOrNullimpl(objM2768unboximpl);
                if (thM2763exceptionOrNullimpl == null) {
                    thM2763exceptionOrNullimpl = a.this.a();
                }
                objM2760constructorimpl = Result.m2760constructorimpl(ResultKt.createFailure(thM2763exceptionOrNullimpl));
            }
            return Result.m2759boximpl(objM2760constructorimpl);
        }
    }

    public static final class x extends ContinuationImpl {
        public /* synthetic */ Object a;
        public int c;

        public x(Continuation continuation) {
            super(continuation);
        }

        @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
        public final Object invokeSuspend(Object obj) {
            this.a = obj;
            this.c |= Integer.MIN_VALUE;
            Object objA = a.this.a((UrlMediaSource) null, (Object) null, this);
            return objA == IntrinsicsKt__IntrinsicsKt.getCOROUTINE_SUSPENDED() ? objA : Result.m2759boximpl(objA);
        }
    }

    public static final class y extends Lambda implements Function0 {
        public y() {
            super(0);
        }

        @Override // kotlin.jvm.functions.Function0
        /* JADX INFO: renamed from: a, reason: merged with bridge method [inline-methods] */
        public final MediaFileCacheManager invoke() {
            return (MediaFileCacheManager) a.this.a.invoke();
        }
    }

    public static final class z extends AbstractC1202a {
        public final /* synthetic */ Error d;

        /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
        public z(Repository.ResultCallback resultCallback, Error error, CoroutineScope coroutineScope, io.bidmachine.rendering.internal.j jVar) {
            super(resultCallback, coroutineScope, jVar);
            this.d = error;
        }

        @Override // io.bidmachine.rendering.internal.repository.a.AbstractC1202a
        public Error a() {
            return this.d;
        }
    }

    public a(Function0 mediaFileCacheManagerProvider, CoroutineScope coroutineScope, io.bidmachine.rendering.internal.j coroutineDispatchers) {
        Intrinsics.checkNotNullParameter(mediaFileCacheManagerProvider, "mediaFileCacheManagerProvider");
        Intrinsics.checkNotNullParameter(coroutineScope, "coroutineScope");
        Intrinsics.checkNotNullParameter(coroutineDispatchers, "coroutineDispatchers");
        this.a = mediaFileCacheManagerProvider;
        this.b = coroutineScope;
        this.c = coroutineDispatchers;
        this.d = LazyKt__LazyJVMKt.lazy(new y());
    }

    @Override // io.bidmachine.rendering.Repository
    public void getImage(MediaSource mediaSource, Object mediaSourceHolder, Repository.ResultCallback resultCallback) {
        Intrinsics.checkNotNullParameter(mediaSource, "mediaSource");
        Intrinsics.checkNotNullParameter(mediaSourceHolder, "mediaSourceHolder");
        Intrinsics.checkNotNullParameter(resultCallback, "resultCallback");
        BuildersKt__Builders_commonKt.launch$default(this.b, null, null, new e(mediaSource, mediaSourceHolder, resultCallback, null), 3, null);
    }

    /* JADX WARN: Removed duplicated region for block: B:7:0x0013  */
    /* JADX INFO: renamed from: getImage-0E7RQCE, reason: not valid java name */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct code enable 'Show inconsistent code' option in preferences
    */
    public java.lang.Object m2711getImage0E7RQCE(io.bidmachine.rendering.model.MediaSource r6, java.lang.Object r7, kotlin.coroutines.Continuation r8) {
        /*
            r5 = this;
            boolean r0 = r8 instanceof io.bidmachine.rendering.internal.repository.a.f
            if (r0 == 0) goto L13
            r0 = r8
            io.bidmachine.rendering.internal.repository.a$f r0 = (io.bidmachine.rendering.internal.repository.a.f) r0
            int r1 = r0.c
            r2 = -2147483648(0xffffffff80000000, float:-0.0)
            r3 = r1 & r2
            if (r3 == 0) goto L13
            int r1 = r1 - r2
            r0.c = r1
            goto L18
        L13:
            io.bidmachine.rendering.internal.repository.a$f r0 = new io.bidmachine.rendering.internal.repository.a$f
            r0.<init>(r8)
        L18:
            java.lang.Object r8 = r0.a
            java.lang.Object r1 = kotlin.coroutines.intrinsics.IntrinsicsKt__IntrinsicsKt.getCOROUTINE_SUSPENDED()
            int r2 = r0.c
            r3 = 1
            if (r2 == 0) goto L31
            if (r2 != r3) goto L29
            kotlin.ResultKt.throwOnFailure(r8)
            goto L49
        L29:
            java.lang.IllegalStateException r6 = new java.lang.IllegalStateException
            java.lang.String r7 = "call to 'resume' before 'invoke' with coroutine"
            r6.<init>(r7)
            throw r6
        L31:
            kotlin.ResultKt.throwOnFailure(r8)
            io.bidmachine.rendering.internal.j r8 = r5.c
            kotlinx.coroutines.CoroutineDispatcher r8 = r8.c()
            io.bidmachine.rendering.internal.repository.a$g r2 = new io.bidmachine.rendering.internal.repository.a$g
            r4 = 0
            r2.<init>(r6, r5, r7, r4)
            r0.c = r3
            java.lang.Object r8 = kotlinx.coroutines.BuildersKt.withContext(r8, r2, r0)
            if (r8 != r1) goto L49
            return r1
        L49:
            kotlin.Result r8 = (kotlin.Result) r8
            java.lang.Object r6 = r8.m2768unboximpl()
            return r6
        */
        throw new UnsupportedOperationException("Method not decompiled: io.bidmachine.rendering.internal.repository.a.m2711getImage0E7RQCE(io.bidmachine.rendering.model.MediaSource, java.lang.Object, kotlin.coroutines.Continuation):java.lang.Object");
    }

    /* JADX WARN: Removed duplicated region for block: B:7:0x0013  */
    @Override // io.bidmachine.rendering.Repository
    /* JADX INFO: renamed from: getImageUri-0E7RQCE */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct code enable 'Show inconsistent code' option in preferences
    */
    public java.lang.Object mo2687getImageUri0E7RQCE(io.bidmachine.rendering.model.UrlMediaSource r6, java.lang.Object r7, kotlin.coroutines.Continuation r8) {
        /*
            r5 = this;
            boolean r0 = r8 instanceof io.bidmachine.rendering.internal.repository.a.o
            if (r0 == 0) goto L13
            r0 = r8
            io.bidmachine.rendering.internal.repository.a$o r0 = (io.bidmachine.rendering.internal.repository.a.o) r0
            int r1 = r0.c
            r2 = -2147483648(0xffffffff80000000, float:-0.0)
            r3 = r1 & r2
            if (r3 == 0) goto L13
            int r1 = r1 - r2
            r0.c = r1
            goto L18
        L13:
            io.bidmachine.rendering.internal.repository.a$o r0 = new io.bidmachine.rendering.internal.repository.a$o
            r0.<init>(r8)
        L18:
            java.lang.Object r8 = r0.a
            java.lang.Object r1 = kotlin.coroutines.intrinsics.IntrinsicsKt__IntrinsicsKt.getCOROUTINE_SUSPENDED()
            int r2 = r0.c
            r3 = 1
            if (r2 == 0) goto L31
            if (r2 != r3) goto L29
            kotlin.ResultKt.throwOnFailure(r8)
            goto L49
        L29:
            java.lang.IllegalStateException r6 = new java.lang.IllegalStateException
            java.lang.String r7 = "call to 'resume' before 'invoke' with coroutine"
            r6.<init>(r7)
            throw r6
        L31:
            kotlin.ResultKt.throwOnFailure(r8)
            io.bidmachine.rendering.internal.j r8 = r5.c
            kotlinx.coroutines.CoroutineDispatcher r8 = r8.c()
            io.bidmachine.rendering.internal.repository.a$p r2 = new io.bidmachine.rendering.internal.repository.a$p
            r4 = 0
            r2.<init>(r6, r7, r4)
            r0.c = r3
            java.lang.Object r8 = kotlinx.coroutines.BuildersKt.withContext(r8, r2, r0)
            if (r8 != r1) goto L49
            return r1
        L49:
            kotlin.Result r8 = (kotlin.Result) r8
            java.lang.Object r6 = r8.m2768unboximpl()
            return r6
        */
        throw new UnsupportedOperationException("Method not decompiled: io.bidmachine.rendering.internal.repository.a.mo2687getImageUri0E7RQCE(io.bidmachine.rendering.model.UrlMediaSource, java.lang.Object, kotlin.coroutines.Continuation):java.lang.Object");
    }

    @Override // io.bidmachine.rendering.Repository
    public void getString(MediaSource mediaSource, Object mediaSourceHolder, Repository.ResultCallback resultCallback) {
        Intrinsics.checkNotNullParameter(mediaSource, "mediaSource");
        Intrinsics.checkNotNullParameter(mediaSourceHolder, "mediaSourceHolder");
        Intrinsics.checkNotNullParameter(resultCallback, "resultCallback");
        BuildersKt__Builders_commonKt.launch$default(this.b, null, null, new q(mediaSource, resultCallback, null), 3, null);
    }

    @Override // io.bidmachine.rendering.Repository
    public void getVideo(MediaSource mediaSource, Object mediaSourceHolder, Repository.ResultCallback resultCallback) {
        Intrinsics.checkNotNullParameter(mediaSource, "mediaSource");
        Intrinsics.checkNotNullParameter(mediaSourceHolder, "mediaSourceHolder");
        Intrinsics.checkNotNullParameter(resultCallback, "resultCallback");
        BuildersKt__Builders_commonKt.launch$default(this.b, null, null, new s(mediaSource, mediaSourceHolder, resultCallback, null), 3, null);
    }

    /* JADX WARN: Removed duplicated region for block: B:7:0x0013  */
    @Override // io.bidmachine.rendering.Repository
    /* JADX INFO: renamed from: getVideo-0E7RQCE */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct code enable 'Show inconsistent code' option in preferences
    */
    public java.lang.Object mo2688getVideo0E7RQCE(io.bidmachine.rendering.model.MediaSource r6, java.lang.Object r7, kotlin.coroutines.Continuation r8) {
        /*
            r5 = this;
            boolean r0 = r8 instanceof io.bidmachine.rendering.internal.repository.a.t
            if (r0 == 0) goto L13
            r0 = r8
            io.bidmachine.rendering.internal.repository.a$t r0 = (io.bidmachine.rendering.internal.repository.a.t) r0
            int r1 = r0.c
            r2 = -2147483648(0xffffffff80000000, float:-0.0)
            r3 = r1 & r2
            if (r3 == 0) goto L13
            int r1 = r1 - r2
            r0.c = r1
            goto L18
        L13:
            io.bidmachine.rendering.internal.repository.a$t r0 = new io.bidmachine.rendering.internal.repository.a$t
            r0.<init>(r8)
        L18:
            java.lang.Object r8 = r0.a
            java.lang.Object r1 = kotlin.coroutines.intrinsics.IntrinsicsKt__IntrinsicsKt.getCOROUTINE_SUSPENDED()
            int r2 = r0.c
            r3 = 1
            if (r2 == 0) goto L31
            if (r2 != r3) goto L29
            kotlin.ResultKt.throwOnFailure(r8)
            goto L49
        L29:
            java.lang.IllegalStateException r6 = new java.lang.IllegalStateException
            java.lang.String r7 = "call to 'resume' before 'invoke' with coroutine"
            r6.<init>(r7)
            throw r6
        L31:
            kotlin.ResultKt.throwOnFailure(r8)
            io.bidmachine.rendering.internal.j r8 = r5.c
            kotlinx.coroutines.CoroutineDispatcher r8 = r8.c()
            io.bidmachine.rendering.internal.repository.a$u r2 = new io.bidmachine.rendering.internal.repository.a$u
            r4 = 0
            r2.<init>(r6, r5, r7, r4)
            r0.c = r3
            java.lang.Object r8 = kotlinx.coroutines.BuildersKt.withContext(r8, r2, r0)
            if (r8 != r1) goto L49
            return r1
        L49:
            kotlin.Result r8 = (kotlin.Result) r8
            java.lang.Object r6 = r8.m2768unboximpl()
            return r6
        */
        throw new UnsupportedOperationException("Method not decompiled: io.bidmachine.rendering.internal.repository.a.mo2688getVideo0E7RQCE(io.bidmachine.rendering.model.MediaSource, java.lang.Object, kotlin.coroutines.Continuation):java.lang.Object");
    }

    @Override // io.bidmachine.rendering.Repository
    public void unholdMediaFiles(Object mediaSourceHolder) {
        Intrinsics.checkNotNullParameter(mediaSourceHolder, "mediaSourceHolder");
        BuildersKt__Builders_commonKt.launch$default(this.b, null, null, new A(mediaSourceHolder, null), 3, null);
    }

    public final MediaFileCacheManager b() {
        return (MediaFileCacheManager) this.d.getValue();
    }

    /* JADX WARN: Removed duplicated region for block: B:7:0x0013  */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct code enable 'Show inconsistent code' option in preferences
    */
    public final java.lang.Object a(io.bidmachine.rendering.model.UrlMediaSource r6, kotlin.coroutines.Continuation r7) {
        /*
            r5 = this;
            boolean r0 = r7 instanceof io.bidmachine.rendering.internal.repository.a.h
            if (r0 == 0) goto L13
            r0 = r7
            io.bidmachine.rendering.internal.repository.a$h r0 = (io.bidmachine.rendering.internal.repository.a.h) r0
            int r1 = r0.c
            r2 = -2147483648(0xffffffff80000000, float:-0.0)
            r3 = r1 & r2
            if (r3 == 0) goto L13
            int r1 = r1 - r2
            r0.c = r1
            goto L18
        L13:
            io.bidmachine.rendering.internal.repository.a$h r0 = new io.bidmachine.rendering.internal.repository.a$h
            r0.<init>(r7)
        L18:
            java.lang.Object r7 = r0.a
            java.lang.Object r1 = kotlin.coroutines.intrinsics.IntrinsicsKt__IntrinsicsKt.getCOROUTINE_SUSPENDED()
            int r2 = r0.c
            r3 = 1
            if (r2 == 0) goto L31
            if (r2 != r3) goto L29
            kotlin.ResultKt.throwOnFailure(r7)
            goto L49
        L29:
            java.lang.IllegalStateException r6 = new java.lang.IllegalStateException
            java.lang.String r7 = "call to 'resume' before 'invoke' with coroutine"
            r6.<init>(r7)
            throw r6
        L31:
            kotlin.ResultKt.throwOnFailure(r7)
            io.bidmachine.rendering.internal.j r7 = r5.c
            kotlinx.coroutines.CoroutineDispatcher r7 = r7.c()
            io.bidmachine.rendering.internal.repository.a$i r2 = new io.bidmachine.rendering.internal.repository.a$i
            r4 = 0
            r2.<init>(r6, r4)
            r0.c = r3
            java.lang.Object r7 = kotlinx.coroutines.BuildersKt.withContext(r7, r2, r0)
            if (r7 != r1) goto L49
            return r1
        L49:
            kotlin.Result r7 = (kotlin.Result) r7
            java.lang.Object r6 = r7.m2768unboximpl()
            return r6
        */
        throw new UnsupportedOperationException("Method not decompiled: io.bidmachine.rendering.internal.repository.a.a(io.bidmachine.rendering.model.UrlMediaSource, kotlin.coroutines.Continuation):java.lang.Object");
    }

    /* JADX WARN: Removed duplicated region for block: B:7:0x0013  */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct code enable 'Show inconsistent code' option in preferences
    */
    public final java.lang.Object a(io.bidmachine.rendering.model.UrlMediaSource r11, java.lang.Object r12, android.graphics.BitmapFactory.Options r13, kotlin.coroutines.Continuation r14) {
        /*
            r10 = this;
            boolean r0 = r14 instanceof io.bidmachine.rendering.internal.repository.a.l
            if (r0 == 0) goto L13
            r0 = r14
            io.bidmachine.rendering.internal.repository.a$l r0 = (io.bidmachine.rendering.internal.repository.a.l) r0
            int r1 = r0.c
            r2 = -2147483648(0xffffffff80000000, float:-0.0)
            r3 = r1 & r2
            if (r3 == 0) goto L13
            int r1 = r1 - r2
            r0.c = r1
            goto L18
        L13:
            io.bidmachine.rendering.internal.repository.a$l r0 = new io.bidmachine.rendering.internal.repository.a$l
            r0.<init>(r14)
        L18:
            java.lang.Object r14 = r0.a
            java.lang.Object r1 = kotlin.coroutines.intrinsics.IntrinsicsKt__IntrinsicsKt.getCOROUTINE_SUSPENDED()
            int r2 = r0.c
            r3 = 1
            if (r2 == 0) goto L31
            if (r2 != r3) goto L29
            kotlin.ResultKt.throwOnFailure(r14)
            goto L4d
        L29:
            java.lang.IllegalStateException r11 = new java.lang.IllegalStateException
            java.lang.String r12 = "call to 'resume' before 'invoke' with coroutine"
            r11.<init>(r12)
            throw r11
        L31:
            kotlin.ResultKt.throwOnFailure(r14)
            io.bidmachine.rendering.internal.j r14 = r10.c
            kotlinx.coroutines.CoroutineDispatcher r14 = r14.c()
            io.bidmachine.rendering.internal.repository.a$m r4 = new io.bidmachine.rendering.internal.repository.a$m
            r9 = 0
            r5 = r10
            r6 = r11
            r7 = r12
            r8 = r13
            r4.<init>(r6, r7, r8, r9)
            r0.c = r3
            java.lang.Object r14 = kotlinx.coroutines.BuildersKt.withContext(r14, r4, r0)
            if (r14 != r1) goto L4d
            return r1
        L4d:
            kotlin.Result r14 = (kotlin.Result) r14
            java.lang.Object r11 = r14.m2768unboximpl()
            return r11
        */
        throw new UnsupportedOperationException("Method not decompiled: io.bidmachine.rendering.internal.repository.a.a(io.bidmachine.rendering.model.UrlMediaSource, java.lang.Object, android.graphics.BitmapFactory$Options, kotlin.coroutines.Continuation):java.lang.Object");
    }

    /* JADX WARN: Removed duplicated region for block: B:7:0x0013  */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct code enable 'Show inconsistent code' option in preferences
    */
    public final java.lang.Object a(io.bidmachine.rendering.model.Base64MediaSource r6, android.graphics.BitmapFactory.Options r7, kotlin.coroutines.Continuation r8) {
        /*
            r5 = this;
            boolean r0 = r8 instanceof io.bidmachine.rendering.internal.repository.a.j
            if (r0 == 0) goto L13
            r0 = r8
            io.bidmachine.rendering.internal.repository.a$j r0 = (io.bidmachine.rendering.internal.repository.a.j) r0
            int r1 = r0.c
            r2 = -2147483648(0xffffffff80000000, float:-0.0)
            r3 = r1 & r2
            if (r3 == 0) goto L13
            int r1 = r1 - r2
            r0.c = r1
            goto L18
        L13:
            io.bidmachine.rendering.internal.repository.a$j r0 = new io.bidmachine.rendering.internal.repository.a$j
            r0.<init>(r8)
        L18:
            java.lang.Object r8 = r0.a
            java.lang.Object r1 = kotlin.coroutines.intrinsics.IntrinsicsKt__IntrinsicsKt.getCOROUTINE_SUSPENDED()
            int r2 = r0.c
            r3 = 1
            if (r2 == 0) goto L31
            if (r2 != r3) goto L29
            kotlin.ResultKt.throwOnFailure(r8)
            goto L49
        L29:
            java.lang.IllegalStateException r6 = new java.lang.IllegalStateException
            java.lang.String r7 = "call to 'resume' before 'invoke' with coroutine"
            r6.<init>(r7)
            throw r6
        L31:
            kotlin.ResultKt.throwOnFailure(r8)
            io.bidmachine.rendering.internal.j r8 = r5.c
            kotlinx.coroutines.CoroutineDispatcher r8 = r8.b()
            io.bidmachine.rendering.internal.repository.a$k r2 = new io.bidmachine.rendering.internal.repository.a$k
            r4 = 0
            r2.<init>(r6, r7, r4)
            r0.c = r3
            java.lang.Object r8 = kotlinx.coroutines.BuildersKt.withContext(r8, r2, r0)
            if (r8 != r1) goto L49
            return r1
        L49:
            kotlin.Result r8 = (kotlin.Result) r8
            java.lang.Object r6 = r8.m2768unboximpl()
            return r6
        */
        throw new UnsupportedOperationException("Method not decompiled: io.bidmachine.rendering.internal.repository.a.a(io.bidmachine.rendering.model.Base64MediaSource, android.graphics.BitmapFactory$Options, kotlin.coroutines.Continuation):java.lang.Object");
    }

    public final Bitmap a(String base64, BitmapFactory.Options options) {
        Intrinsics.checkNotNullParameter(base64, "base64");
        Intrinsics.checkNotNullParameter(options, "options");
        byte[] bArrDecodeBase64$default = UtilsKt.decodeBase64$default(base64, 0, 1, (Object) null);
        if (bArrDecodeBase64$default != null) {
            return ImageUtils.decodeBytesToBitmapSafely(bArrDecodeBase64$default, options);
        }
        return null;
    }

    /* JADX WARN: Removed duplicated region for block: B:7:0x0013  */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct code enable 'Show inconsistent code' option in preferences
    */
    public final java.lang.Object a(io.bidmachine.rendering.model.UrlMediaSource r5, java.lang.Object r6, kotlin.coroutines.Continuation r7) {
        /*
            r4 = this;
            boolean r0 = r7 instanceof io.bidmachine.rendering.internal.repository.a.x
            if (r0 == 0) goto L13
            r0 = r7
            io.bidmachine.rendering.internal.repository.a$x r0 = (io.bidmachine.rendering.internal.repository.a.x) r0
            int r1 = r0.c
            r2 = -2147483648(0xffffffff80000000, float:-0.0)
            r3 = r1 & r2
            if (r3 == 0) goto L13
            int r1 = r1 - r2
            r0.c = r1
            goto L18
        L13:
            io.bidmachine.rendering.internal.repository.a$x r0 = new io.bidmachine.rendering.internal.repository.a$x
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
            java.lang.Object r5 = r7.m2768unboximpl()
            return r5
        L2f:
            java.lang.IllegalStateException r5 = new java.lang.IllegalStateException
            java.lang.String r6 = "call to 'resume' before 'invoke' with coroutine"
            r5.<init>(r6)
            throw r5
        L37:
            kotlin.ResultKt.throwOnFailure(r7)
            java.util.List r7 = r5.getUrls()
            io.bidmachine.rendering.model.MediaSource$DeliveryType r5 = r5.getDeliveryType()
            int[] r2 = io.bidmachine.rendering.internal.repository.a.b.$EnumSwitchMapping$0
            int r5 = r5.ordinal()
            r5 = r2[r5]
            if (r5 == r3) goto L60
            r6 = 2
            if (r5 != r6) goto L5a
            java.lang.Object r5 = kotlin.collections.CollectionsKt___CollectionsKt.first(r7)
            java.lang.String r5 = (java.lang.String) r5
            java.lang.Object r5 = r4.a(r5)
            return r5
        L5a:
            kotlin.NoWhenBranchMatchedException r5 = new kotlin.NoWhenBranchMatchedException
            r5.<init>()
            throw r5
        L60:
            r0.c = r3
            java.lang.Object r5 = r4.a(r7, r6, r0)
            if (r5 != r1) goto L69
            return r1
        L69:
            return r5
        */
        throw new UnsupportedOperationException("Method not decompiled: io.bidmachine.rendering.internal.repository.a.a(io.bidmachine.rendering.model.UrlMediaSource, java.lang.Object, kotlin.coroutines.Continuation):java.lang.Object");
    }

    /* JADX WARN: Removed duplicated region for block: B:7:0x0013  */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct code enable 'Show inconsistent code' option in preferences
    */
    public final java.lang.Object a(java.util.List r6, java.lang.Object r7, kotlin.coroutines.Continuation r8) {
        /*
            r5 = this;
            boolean r0 = r8 instanceof io.bidmachine.rendering.internal.repository.a.v
            if (r0 == 0) goto L13
            r0 = r8
            io.bidmachine.rendering.internal.repository.a$v r0 = (io.bidmachine.rendering.internal.repository.a.v) r0
            int r1 = r0.c
            r2 = -2147483648(0xffffffff80000000, float:-0.0)
            r3 = r1 & r2
            if (r3 == 0) goto L13
            int r1 = r1 - r2
            r0.c = r1
            goto L18
        L13:
            io.bidmachine.rendering.internal.repository.a$v r0 = new io.bidmachine.rendering.internal.repository.a$v
            r0.<init>(r8)
        L18:
            java.lang.Object r8 = r0.a
            java.lang.Object r1 = kotlin.coroutines.intrinsics.IntrinsicsKt__IntrinsicsKt.getCOROUTINE_SUSPENDED()
            int r2 = r0.c
            r3 = 1
            if (r2 == 0) goto L31
            if (r2 != r3) goto L29
            kotlin.ResultKt.throwOnFailure(r8)
            goto L49
        L29:
            java.lang.IllegalStateException r6 = new java.lang.IllegalStateException
            java.lang.String r7 = "call to 'resume' before 'invoke' with coroutine"
            r6.<init>(r7)
            throw r6
        L31:
            kotlin.ResultKt.throwOnFailure(r8)
            io.bidmachine.rendering.internal.j r8 = r5.c
            kotlinx.coroutines.CoroutineDispatcher r8 = r8.c()
            io.bidmachine.rendering.internal.repository.a$w r2 = new io.bidmachine.rendering.internal.repository.a$w
            r4 = 0
            r2.<init>(r6, r7, r4)
            r0.c = r3
            java.lang.Object r8 = kotlinx.coroutines.BuildersKt.withContext(r8, r2, r0)
            if (r8 != r1) goto L49
            return r1
        L49:
            kotlin.Result r8 = (kotlin.Result) r8
            java.lang.Object r6 = r8.m2768unboximpl()
            return r6
        */
        throw new UnsupportedOperationException("Method not decompiled: io.bidmachine.rendering.internal.repository.a.a(java.util.List, java.lang.Object, kotlin.coroutines.Continuation):java.lang.Object");
    }

    public final Object a(String url) {
        Intrinsics.checkNotNullParameter(url, "url");
        try {
            Result.Companion companion = Result.Companion;
            Uri validUri = Utils.getValidUri(url);
            if (validUri != null) {
                return Result.m2760constructorimpl(validUri);
            }
            throw new Exception("Can't parse video stream url - " + url);
        } catch (Throwable th) {
            Result.Companion companion2 = Result.Companion;
            return Result.m2760constructorimpl(ResultKt.createFailure(th));
        }
    }

    public final Object a(MediaSource mediaSource, Repository.ResultCallback resultCallback, Continuation continuation) {
        Object objWithContext = BuildersKt.withContext(this.c.c(), new r(mediaSource, this, resultCallback, null), continuation);
        return objWithContext == IntrinsicsKt__IntrinsicsKt.getCOROUTINE_SUSPENDED() ? objWithContext : Unit.INSTANCE;
    }

    public final void a(String url, NetworkRequest.ResponseProcessor processor, Repository.ResultCallback resultCallback, Error error) {
        Intrinsics.checkNotNullParameter(url, "url");
        Intrinsics.checkNotNullParameter(processor, "processor");
        Intrinsics.checkNotNullParameter(resultCallback, "resultCallback");
        Intrinsics.checkNotNullParameter(error, "error");
        new NetworkRequest.Builder(url, NetworkRequest.Method.Get).setResponseTransformer(processor).setListener(new z(resultCallback, error, this.b, this.c)).send();
    }

    public final Object a(Repository.ResultCallback resultCallback, Object obj, Continuation continuation) {
        Object objWithContext = BuildersKt.withContext(this.c.d(), new d(resultCallback, obj, null), continuation);
        return objWithContext == IntrinsicsKt__IntrinsicsKt.getCOROUTINE_SUSPENDED() ? objWithContext : Unit.INSTANCE;
    }

    public final Object a(Repository.ResultCallback resultCallback, Error error, Continuation continuation) {
        Object objWithContext = BuildersKt.withContext(this.c.d(), new c(resultCallback, error, null), continuation);
        return objWithContext == IntrinsicsKt__IntrinsicsKt.getCOROUTINE_SUSPENDED() ? objWithContext : Unit.INSTANCE;
    }

    public final Exception a() {
        return new Exception("Unknown error");
    }
}
