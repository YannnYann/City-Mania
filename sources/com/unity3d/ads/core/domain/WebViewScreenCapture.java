package com.unity3d.ads.core.domain;

import android.graphics.Bitmap;
import android.os.SystemClock;
import android.view.View;
import android.webkit.WebView;
import com.unity3d.ads.adplayer.AdPlayer;
import com.unity3d.ads.adplayer.AndroidWebViewContainer;
import com.unity3d.ads.adplayer.WebViewContainer;
import com.unity3d.ads.core.data.model.AdObject;
import com.vungle.ads.internal.protos.Sdk;
import gatewayprotocol.v1.DiagnosticEventRequestOuterClass;
import java.io.ByteArrayOutputStream;
import java.lang.ref.WeakReference;
import kotlin.Result;
import kotlin.ResultKt;
import kotlin.Unit;
import kotlin.coroutines.Continuation;
import kotlin.coroutines.intrinsics.IntrinsicsKt__IntrinsicsKt;
import kotlin.coroutines.jvm.internal.Boxing;
import kotlin.coroutines.jvm.internal.ContinuationImpl;
import kotlin.coroutines.jvm.internal.DebugMetadata;
import kotlin.coroutines.jvm.internal.SuspendLambda;
import kotlin.jvm.functions.Function0;
import kotlin.jvm.functions.Function2;
import kotlin.jvm.internal.DefaultConstructorMarker;
import kotlin.jvm.internal.Intrinsics;
import kotlin.math.MathKt__MathJVMKt;
import kotlin.ranges.RangesKt___RangesKt;
import kotlinx.coroutines.BuildersKt__Builders_commonKt;
import kotlinx.coroutines.CoroutineDispatcher;
import kotlinx.coroutines.CoroutineScope;
import kotlinx.coroutines.CoroutineScopeKt;
import kotlinx.coroutines.DelayKt;
import kotlinx.coroutines.Job;
import kotlinx.coroutines.SupervisorKt;
import kotlinx.coroutines.sync.Mutex;
import kotlinx.coroutines.sync.MutexKt;

/* JADX INFO: compiled from: WebViewScreenCapture.kt */
/* JADX INFO: loaded from: classes4.dex */
public final class WebViewScreenCapture {
    public static final long CACHE_TTL_MS = 2000;
    public static final Companion Companion = new Companion(null);
    public static final int DEFAULT_QUALITY = 50;
    public static final double DEFAULT_SAMPLING_RATE = 1.0d;
    public static final int DEFAULT_THRESHOLD = 10;
    public static final int PNG_QUALITY = 100;
    private final CoroutineScope backgroundScope;
    private long cacheTimestamp;
    private final long cacheTtlMs;
    private Bitmap cachedBitmap;
    private WeakReference<View> cachedViewRef;
    private final Function0<Long> elapsedRealtimeMs;
    private Job evictionJob;
    private final CoroutineDispatcher ioDispatcher;
    private final CoroutineDispatcher mainDispatcher;
    private final Mutex mutex;
    private final AndroidScreenshotUploader uploader;
    private final AndroidViewCapturer viewCapturer;

    /* JADX INFO: renamed from: com.unity3d.ads.core.domain.WebViewScreenCapture$captureScreenshot$1, reason: invalid class name */
    /* JADX INFO: compiled from: WebViewScreenCapture.kt */
    @DebugMetadata(c = "com.unity3d.ads.core.domain.WebViewScreenCapture", f = "WebViewScreenCapture.kt", l = {67, 67}, m = "captureScreenshot")
    public static final class AnonymousClass1 extends ContinuationImpl {
        double D$0;
        int I$0;
        Object L$0;
        int label;
        /* synthetic */ Object result;

        public AnonymousClass1(Continuation<? super AnonymousClass1> continuation) {
            super(continuation);
        }

        @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
        public final Object invokeSuspend(Object obj) {
            this.result = obj;
            this.label |= Integer.MIN_VALUE;
            return WebViewScreenCapture.this.captureScreenshot(null, 0, 0.0d, this);
        }
    }

    /* JADX INFO: renamed from: com.unity3d.ads.core.domain.WebViewScreenCapture$getBlackPixelPercentage$1, reason: invalid class name and case insensitive filesystem */
    /* JADX INFO: compiled from: WebViewScreenCapture.kt */
    @DebugMetadata(c = "com.unity3d.ads.core.domain.WebViewScreenCapture", f = "WebViewScreenCapture.kt", l = {49, 49, 50}, m = "getBlackPixelPercentage")
    public static final class C40311 extends ContinuationImpl {
        int I$0;
        Object L$0;
        int label;
        /* synthetic */ Object result;

        public C40311(Continuation<? super C40311> continuation) {
            super(continuation);
        }

        @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
        public final Object invokeSuspend(Object obj) {
            this.result = obj;
            this.label |= Integer.MIN_VALUE;
            return WebViewScreenCapture.this.getBlackPixelPercentage(null, 0, this);
        }
    }

    /* JADX INFO: renamed from: com.unity3d.ads.core.domain.WebViewScreenCapture$getOrCapture$1, reason: invalid class name and case insensitive filesystem */
    /* JADX INFO: compiled from: WebViewScreenCapture.kt */
    @DebugMetadata(c = "com.unity3d.ads.core.domain.WebViewScreenCapture", f = "WebViewScreenCapture.kt", l = {172, Sdk.SDKError.Reason.INVALID_RI_ENDPOINT_VALUE}, m = "getOrCapture")
    public static final class C40331 extends ContinuationImpl {
        long J$0;
        Object L$0;
        Object L$1;
        int label;
        /* synthetic */ Object result;

        public C40331(Continuation<? super C40331> continuation) {
            super(continuation);
        }

        @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
        public final Object invokeSuspend(Object obj) {
            this.result = obj;
            this.label |= Integer.MIN_VALUE;
            return WebViewScreenCapture.this.getOrCapture(null, this);
        }
    }

    /* JADX INFO: renamed from: com.unity3d.ads.core.domain.WebViewScreenCapture$resolveTargetView$1, reason: invalid class name and case insensitive filesystem */
    /* JADX INFO: compiled from: WebViewScreenCapture.kt */
    @DebugMetadata(c = "com.unity3d.ads.core.domain.WebViewScreenCapture", f = "WebViewScreenCapture.kt", l = {104}, m = "resolveTargetView")
    public static final class C40341 extends ContinuationImpl {
        int label;
        /* synthetic */ Object result;

        public C40341(Continuation<? super C40341> continuation) {
            super(continuation);
        }

        @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
        public final Object invokeSuspend(Object obj) {
            this.result = obj;
            this.label |= Integer.MIN_VALUE;
            return WebViewScreenCapture.this.resolveTargetView(null, this);
        }
    }

    public WebViewScreenCapture(CoroutineDispatcher ioDispatcher, CoroutineDispatcher mainDispatcher, AndroidViewCapturer viewCapturer, AndroidScreenshotUploader uploader, long j, Function0<Long> elapsedRealtimeMs, CoroutineScope backgroundScope) {
        Intrinsics.checkNotNullParameter(ioDispatcher, "ioDispatcher");
        Intrinsics.checkNotNullParameter(mainDispatcher, "mainDispatcher");
        Intrinsics.checkNotNullParameter(viewCapturer, "viewCapturer");
        Intrinsics.checkNotNullParameter(uploader, "uploader");
        Intrinsics.checkNotNullParameter(elapsedRealtimeMs, "elapsedRealtimeMs");
        Intrinsics.checkNotNullParameter(backgroundScope, "backgroundScope");
        this.ioDispatcher = ioDispatcher;
        this.mainDispatcher = mainDispatcher;
        this.viewCapturer = viewCapturer;
        this.uploader = uploader;
        this.cacheTtlMs = j;
        this.elapsedRealtimeMs = elapsedRealtimeMs;
        this.backgroundScope = backgroundScope;
        this.mutex = MutexKt.Mutex$default(false, 1, null);
    }

    public /* synthetic */ WebViewScreenCapture(CoroutineDispatcher coroutineDispatcher, CoroutineDispatcher coroutineDispatcher2, AndroidViewCapturer androidViewCapturer, AndroidScreenshotUploader androidScreenshotUploader, long j, Function0 function0, CoroutineScope coroutineScope, int i, DefaultConstructorMarker defaultConstructorMarker) {
        this(coroutineDispatcher, coroutineDispatcher2, androidViewCapturer, androidScreenshotUploader, (i & 16) != 0 ? 2000L : j, (i & 32) != 0 ? new Function0() { // from class: com.unity3d.ads.core.domain.WebViewScreenCapture$$ExternalSyntheticLambda0
            @Override // kotlin.jvm.functions.Function0
            public final Object invoke() {
                return Long.valueOf(SystemClock.elapsedRealtime());
            }
        } : function0, (i & 64) != 0 ? CoroutineScopeKt.CoroutineScope(SupervisorKt.SupervisorJob$default(null, 1, null).plus(coroutineDispatcher)) : coroutineScope);
    }

    /* JADX WARN: Removed duplicated region for block: B:30:0x007b A[RETURN] */
    /* JADX WARN: Removed duplicated region for block: B:7:0x0013  */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct code enable 'Show inconsistent code' option in preferences
    */
    public final java.lang.Object getBlackPixelPercentage(com.unity3d.ads.core.data.model.AdObject r8, int r9, kotlin.coroutines.Continuation<? super java.lang.Double> r10) throws java.lang.Throwable {
        /*
            r7 = this;
            boolean r0 = r10 instanceof com.unity3d.ads.core.domain.WebViewScreenCapture.C40311
            if (r0 == 0) goto L13
            r0 = r10
            com.unity3d.ads.core.domain.WebViewScreenCapture$getBlackPixelPercentage$1 r0 = (com.unity3d.ads.core.domain.WebViewScreenCapture.C40311) r0
            int r1 = r0.label
            r2 = -2147483648(0xffffffff80000000, float:-0.0)
            r3 = r1 & r2
            if (r3 == 0) goto L13
            int r1 = r1 - r2
            r0.label = r1
            goto L18
        L13:
            com.unity3d.ads.core.domain.WebViewScreenCapture$getBlackPixelPercentage$1 r0 = new com.unity3d.ads.core.domain.WebViewScreenCapture$getBlackPixelPercentage$1
            r0.<init>(r10)
        L18:
            java.lang.Object r10 = r0.result
            java.lang.Object r1 = kotlin.coroutines.intrinsics.IntrinsicsKt__IntrinsicsKt.getCOROUTINE_SUSPENDED()
            int r2 = r0.label
            r3 = 0
            r4 = 3
            r5 = 2
            r6 = 1
            if (r2 == 0) goto L48
            if (r2 == r6) goto L3e
            if (r2 == r5) goto L38
            if (r2 != r4) goto L30
            kotlin.ResultKt.throwOnFailure(r10)
            return r10
        L30:
            java.lang.IllegalStateException r8 = new java.lang.IllegalStateException
            java.lang.String r9 = "call to 'resume' before 'invoke' with coroutine"
            r8.<init>(r9)
            throw r8
        L38:
            int r8 = r0.I$0
            kotlin.ResultKt.throwOnFailure(r10)
            goto L69
        L3e:
            int r9 = r0.I$0
            java.lang.Object r8 = r0.L$0
            com.unity3d.ads.core.domain.WebViewScreenCapture r8 = (com.unity3d.ads.core.domain.WebViewScreenCapture) r8
            kotlin.ResultKt.throwOnFailure(r10)
            goto L59
        L48:
            kotlin.ResultKt.throwOnFailure(r10)
            r0.L$0 = r7
            r0.I$0 = r9
            r0.label = r6
            java.lang.Object r10 = r7.resolveTargetView(r8, r0)
            if (r10 != r1) goto L58
            goto L7a
        L58:
            r8 = r7
        L59:
            android.view.View r10 = (android.view.View) r10
            r0.L$0 = r3
            r0.I$0 = r9
            r0.label = r5
            java.lang.Object r10 = r8.getOrCapture(r10, r0)
            if (r10 != r1) goto L68
            goto L7a
        L68:
            r8 = r9
        L69:
            android.graphics.Bitmap r10 = (android.graphics.Bitmap) r10
            kotlinx.coroutines.CoroutineDispatcher r9 = r7.ioDispatcher
            com.unity3d.ads.core.domain.WebViewScreenCapture$getBlackPixelPercentage$2 r2 = new com.unity3d.ads.core.domain.WebViewScreenCapture$getBlackPixelPercentage$2
            r2.<init>(r10, r8, r3)
            r0.label = r4
            java.lang.Object r8 = kotlinx.coroutines.BuildersKt.withContext(r9, r2, r0)
            if (r8 != r1) goto L7b
        L7a:
            return r1
        L7b:
            return r8
        */
        throw new UnsupportedOperationException("Method not decompiled: com.unity3d.ads.core.domain.WebViewScreenCapture.getBlackPixelPercentage(com.unity3d.ads.core.data.model.AdObject, int, kotlin.coroutines.Continuation):java.lang.Object");
    }

    /* JADX INFO: renamed from: com.unity3d.ads.core.domain.WebViewScreenCapture$getBlackPixelPercentage$2, reason: invalid class name and case insensitive filesystem */
    /* JADX INFO: compiled from: WebViewScreenCapture.kt */
    @DebugMetadata(c = "com.unity3d.ads.core.domain.WebViewScreenCapture$getBlackPixelPercentage$2", f = "WebViewScreenCapture.kt", l = {}, m = "invokeSuspend")
    public static final class C40322 extends SuspendLambda implements Function2<CoroutineScope, Continuation<? super Double>, Object> {
        final /* synthetic */ Bitmap $bitmap;
        final /* synthetic */ int $threshold;
        int label;

        /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
        public C40322(Bitmap bitmap, int i, Continuation<? super C40322> continuation) {
            super(2, continuation);
            this.$bitmap = bitmap;
            this.$threshold = i;
        }

        @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
        public final Continuation<Unit> create(Object obj, Continuation<?> continuation) {
            return new C40322(this.$bitmap, this.$threshold, continuation);
        }

        @Override // kotlin.jvm.functions.Function2
        public final Object invoke(CoroutineScope coroutineScope, Continuation<? super Double> continuation) {
            return ((C40322) create(coroutineScope, continuation)).invokeSuspend(Unit.INSTANCE);
        }

        @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
        public final Object invokeSuspend(Object obj) {
            IntrinsicsKt__IntrinsicsKt.getCOROUTINE_SUSPENDED();
            if (this.label != 0) {
                throw new IllegalStateException("call to 'resume' before 'invoke' with coroutine");
            }
            ResultKt.throwOnFailure(obj);
            int width = this.$bitmap.getWidth();
            int height = this.$bitmap.getHeight();
            if (width <= 0 || height <= 0) {
                return Boxing.boxDouble(0.0d);
            }
            int[] iArr = new int[width * height];
            this.$bitmap.getPixels(iArr, 0, width, 0, 0, width, height);
            return Boxing.boxDouble(WebViewScreenCaptureKt.countBlackPixelRatio(iArr, this.$threshold));
        }
    }

    /* JADX WARN: Removed duplicated region for block: B:27:0x008d  */
    /* JADX WARN: Removed duplicated region for block: B:7:0x0015  */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct code enable 'Show inconsistent code' option in preferences
    */
    public final java.lang.Object captureScreenshot(com.unity3d.ads.core.data.model.AdObject r16, int r17, double r18, kotlin.coroutines.Continuation<? super java.lang.String> r20) throws java.lang.Throwable {
        /*
            r15 = this;
            r0 = r20
            boolean r1 = r0 instanceof com.unity3d.ads.core.domain.WebViewScreenCapture.AnonymousClass1
            if (r1 == 0) goto L15
            r1 = r0
            com.unity3d.ads.core.domain.WebViewScreenCapture$captureScreenshot$1 r1 = (com.unity3d.ads.core.domain.WebViewScreenCapture.AnonymousClass1) r1
            int r2 = r1.label
            r3 = -2147483648(0xffffffff80000000, float:-0.0)
            r4 = r2 & r3
            if (r4 == 0) goto L15
            int r2 = r2 - r3
            r1.label = r2
            goto L1a
        L15:
            com.unity3d.ads.core.domain.WebViewScreenCapture$captureScreenshot$1 r1 = new com.unity3d.ads.core.domain.WebViewScreenCapture$captureScreenshot$1
            r1.<init>(r0)
        L1a:
            java.lang.Object r0 = r1.result
            java.lang.Object r2 = kotlin.coroutines.intrinsics.IntrinsicsKt__IntrinsicsKt.getCOROUTINE_SUSPENDED()
            int r3 = r1.label
            r4 = 2
            r5 = 1
            if (r3 == 0) goto L49
            if (r3 == r5) goto L3a
            if (r3 != r4) goto L32
            double r2 = r1.D$0
            int r1 = r1.I$0
            kotlin.ResultKt.throwOnFailure(r0)
            goto L78
        L32:
            java.lang.IllegalStateException r0 = new java.lang.IllegalStateException
            java.lang.String r1 = "call to 'resume' before 'invoke' with coroutine"
            r0.<init>(r1)
            throw r0
        L3a:
            double r7 = r1.D$0
            int r3 = r1.I$0
            java.lang.Object r9 = r1.L$0
            com.unity3d.ads.core.domain.WebViewScreenCapture r9 = (com.unity3d.ads.core.domain.WebViewScreenCapture) r9
            kotlin.ResultKt.throwOnFailure(r0)
            r14 = r3
            r3 = r0
            r0 = r14
            goto L62
        L49:
            kotlin.ResultKt.throwOnFailure(r0)
            r1.L$0 = r15
            r0 = r17
            r1.I$0 = r0
            r7 = r18
            r1.D$0 = r7
            r1.label = r5
            r3 = r16
            java.lang.Object r3 = r15.resolveTargetView(r3, r1)
            if (r3 != r2) goto L61
            goto L73
        L61:
            r9 = r15
        L62:
            android.view.View r3 = (android.view.View) r3
            r10 = 0
            r1.L$0 = r10
            r1.I$0 = r0
            r1.D$0 = r7
            r1.label = r4
            java.lang.Object r1 = r9.getOrCapture(r3, r1)
            if (r1 != r2) goto L74
        L73:
            return r2
        L74:
            r2 = r1
            r1 = r0
            r0 = r2
            r2 = r7
        L78:
            android.graphics.Bitmap r0 = (android.graphics.Bitmap) r0
            java.util.UUID r4 = java.util.UUID.randomUUID()
            java.lang.String r7 = r4.toString()
            java.lang.String r4 = "toString(...)"
            kotlin.jvm.internal.Intrinsics.checkNotNullExpressionValue(r7, r4)
            r4 = 100
            if (r1 < r4) goto L8d
        L8b:
            r4 = r5
            goto L8f
        L8d:
            r5 = 0
            goto L8b
        L8f:
            kotlinx.coroutines.CoroutineScope r9 = r15.backgroundScope
            com.unity3d.ads.core.domain.WebViewScreenCapture$captureScreenshot$2 r11 = new com.unity3d.ads.core.domain.WebViewScreenCapture$captureScreenshot$2
            r8 = 0
            r6 = r15
            r5 = r1
            r1 = r2
            r3 = r0
            r0 = r11
            r0.<init>(r1, r3, r4, r5, r6, r7, r8)
            r12 = 3
            r13 = 0
            r8 = r9
            r9 = 0
            r10 = 0
            kotlinx.coroutines.BuildersKt.launch$default(r8, r9, r10, r11, r12, r13)
            return r7
        */
        throw new UnsupportedOperationException("Method not decompiled: com.unity3d.ads.core.domain.WebViewScreenCapture.captureScreenshot(com.unity3d.ads.core.data.model.AdObject, int, double, kotlin.coroutines.Continuation):java.lang.Object");
    }

    /* JADX INFO: renamed from: com.unity3d.ads.core.domain.WebViewScreenCapture$captureScreenshot$2, reason: invalid class name */
    /* JADX INFO: compiled from: WebViewScreenCapture.kt */
    @DebugMetadata(c = "com.unity3d.ads.core.domain.WebViewScreenCapture$captureScreenshot$2", f = "WebViewScreenCapture.kt", l = {91}, m = "invokeSuspend")
    public static final class AnonymousClass2 extends SuspendLambda implements Function2<CoroutineScope, Continuation<? super Unit>, Object> {
        final /* synthetic */ Bitmap $bitmap;
        final /* synthetic */ String $id;
        final /* synthetic */ boolean $isPng;
        final /* synthetic */ int $quality;
        final /* synthetic */ double $samplingRate;
        private /* synthetic */ Object L$0;
        int label;
        final /* synthetic */ WebViewScreenCapture this$0;

        /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
        public AnonymousClass2(double d, Bitmap bitmap, boolean z, int i, WebViewScreenCapture webViewScreenCapture, String str, Continuation<? super AnonymousClass2> continuation) {
            super(2, continuation);
            this.$samplingRate = d;
            this.$bitmap = bitmap;
            this.$isPng = z;
            this.$quality = i;
            this.this$0 = webViewScreenCapture;
            this.$id = str;
        }

        @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
        public final Continuation<Unit> create(Object obj, Continuation<?> continuation) {
            AnonymousClass2 anonymousClass2 = new AnonymousClass2(this.$samplingRate, this.$bitmap, this.$isPng, this.$quality, this.this$0, this.$id, continuation);
            anonymousClass2.L$0 = obj;
            return anonymousClass2;
        }

        @Override // kotlin.jvm.functions.Function2
        public final Object invoke(CoroutineScope coroutineScope, Continuation<? super Unit> continuation) {
            return ((AnonymousClass2) create(coroutineScope, continuation)).invokeSuspend(Unit.INSTANCE);
        }

        @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
        public final Object invokeSuspend(Object obj) {
            Object coroutine_suspended = IntrinsicsKt__IntrinsicsKt.getCOROUTINE_SUSPENDED();
            int i = this.label;
            try {
                if (i == 0) {
                    ResultKt.throwOnFailure(obj);
                    double d = this.$samplingRate;
                    Bitmap bitmap = this.$bitmap;
                    boolean z = this.$isPng;
                    int i2 = this.$quality;
                    WebViewScreenCapture webViewScreenCapture = this.this$0;
                    String str = this.$id;
                    Result.Companion companion = Result.Companion;
                    Bitmap bitmapCreateScaledBitmap = d >= 1.0d ? bitmap : Bitmap.createScaledBitmap(bitmap, RangesKt___RangesKt.coerceAtLeast(MathKt__MathJVMKt.roundToInt(((double) bitmap.getWidth()) * d), 1), RangesKt___RangesKt.coerceAtLeast(MathKt__MathJVMKt.roundToInt(((double) bitmap.getHeight()) * d), 1), true);
                    ByteArrayOutputStream byteArrayOutputStream = new ByteArrayOutputStream();
                    if (z) {
                        bitmapCreateScaledBitmap.compress(Bitmap.CompressFormat.PNG, 100, byteArrayOutputStream);
                    } else {
                        bitmapCreateScaledBitmap.compress(Bitmap.CompressFormat.JPEG, i2, byteArrayOutputStream);
                    }
                    if (bitmapCreateScaledBitmap != bitmap) {
                        bitmapCreateScaledBitmap.recycle();
                    }
                    AndroidScreenshotUploader androidScreenshotUploader = webViewScreenCapture.uploader;
                    byte[] byteArray = byteArrayOutputStream.toByteArray();
                    Intrinsics.checkNotNullExpressionValue(byteArray, "toByteArray(...)");
                    String str2 = z ? "image/png" : "image/jpeg";
                    this.label = 1;
                    if (androidScreenshotUploader.invoke(str, byteArray, str2, this) == coroutine_suspended) {
                        return coroutine_suspended;
                    }
                } else {
                    if (i != 1) {
                        throw new IllegalStateException("call to 'resume' before 'invoke' with coroutine");
                    }
                    ResultKt.throwOnFailure(obj);
                }
                Result.m2760constructorimpl(Unit.INSTANCE);
            } catch (Throwable th) {
                Result.Companion companion2 = Result.Companion;
                Result.m2760constructorimpl(ResultKt.createFailure(th));
            }
            return Unit.INSTANCE;
        }
    }

    /* JADX INFO: renamed from: com.unity3d.ads.core.domain.WebViewScreenCapture$resolveTargetView$2, reason: invalid class name and case insensitive filesystem */
    /* JADX INFO: compiled from: WebViewScreenCapture.kt */
    @DebugMetadata(c = "com.unity3d.ads.core.domain.WebViewScreenCapture$resolveTargetView$2", f = "WebViewScreenCapture.kt", l = {}, m = "invokeSuspend")
    public static final class C40352 extends SuspendLambda implements Function2<CoroutineScope, Continuation<? super View>, Object> {
        final /* synthetic */ AdObject $adObject;
        int label;

        /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
        public C40352(AdObject adObject, Continuation<? super C40352> continuation) {
            super(2, continuation);
            this.$adObject = adObject;
        }

        @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
        public final Continuation<Unit> create(Object obj, Continuation<?> continuation) {
            return new C40352(this.$adObject, continuation);
        }

        @Override // kotlin.jvm.functions.Function2
        public final Object invoke(CoroutineScope coroutineScope, Continuation<? super View> continuation) {
            return ((C40352) create(coroutineScope, continuation)).invokeSuspend(Unit.INSTANCE);
        }

        @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
        public final Object invokeSuspend(Object obj) {
            WebView webView;
            IntrinsicsKt__IntrinsicsKt.getCOROUTINE_SUSPENDED();
            if (this.label != 0) {
                throw new IllegalStateException("call to 'resume' before 'invoke' with coroutine");
            }
            ResultKt.throwOnFailure(obj);
            AdPlayer adPlayer = this.$adObject.getAdPlayer();
            WebViewContainer webViewContainer = adPlayer != null ? adPlayer.getWebViewContainer() : null;
            AndroidWebViewContainer androidWebViewContainer = webViewContainer instanceof AndroidWebViewContainer ? (AndroidWebViewContainer) webViewContainer : null;
            if (androidWebViewContainer == null || (webView = androidWebViewContainer.getWebView()) == null) {
                throw new IllegalStateException("No web view container available to capture");
            }
            if (this.$adObject.getAdType() == DiagnosticEventRequestOuterClass.DiagnosticAdType.DIAGNOSTIC_AD_TYPE_BANNER) {
                Object parent = webView.getParent();
                View view = parent instanceof View ? (View) parent : null;
                return view == null ? webView : view;
            }
            return webView.getRootView();
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    /* JADX WARN: Removed duplicated region for block: B:7:0x0013  */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct code enable 'Show inconsistent code' option in preferences
    */
    public final java.lang.Object resolveTargetView(com.unity3d.ads.core.data.model.AdObject r6, kotlin.coroutines.Continuation<? super android.view.View> r7) {
        /*
            r5 = this;
            boolean r0 = r7 instanceof com.unity3d.ads.core.domain.WebViewScreenCapture.C40341
            if (r0 == 0) goto L13
            r0 = r7
            com.unity3d.ads.core.domain.WebViewScreenCapture$resolveTargetView$1 r0 = (com.unity3d.ads.core.domain.WebViewScreenCapture.C40341) r0
            int r1 = r0.label
            r2 = -2147483648(0xffffffff80000000, float:-0.0)
            r3 = r1 & r2
            if (r3 == 0) goto L13
            int r1 = r1 - r2
            r0.label = r1
            goto L18
        L13:
            com.unity3d.ads.core.domain.WebViewScreenCapture$resolveTargetView$1 r0 = new com.unity3d.ads.core.domain.WebViewScreenCapture$resolveTargetView$1
            r0.<init>(r7)
        L18:
            java.lang.Object r7 = r0.result
            java.lang.Object r1 = kotlin.coroutines.intrinsics.IntrinsicsKt__IntrinsicsKt.getCOROUTINE_SUSPENDED()
            int r2 = r0.label
            r3 = 1
            if (r2 == 0) goto L31
            if (r2 != r3) goto L29
            kotlin.ResultKt.throwOnFailure(r7)
            goto L45
        L29:
            java.lang.IllegalStateException r6 = new java.lang.IllegalStateException
            java.lang.String r7 = "call to 'resume' before 'invoke' with coroutine"
            r6.<init>(r7)
            throw r6
        L31:
            kotlin.ResultKt.throwOnFailure(r7)
            kotlinx.coroutines.CoroutineDispatcher r7 = r5.mainDispatcher
            com.unity3d.ads.core.domain.WebViewScreenCapture$resolveTargetView$2 r2 = new com.unity3d.ads.core.domain.WebViewScreenCapture$resolveTargetView$2
            r4 = 0
            r2.<init>(r6, r4)
            r0.label = r3
            java.lang.Object r7 = kotlinx.coroutines.BuildersKt.withContext(r7, r2, r0)
            if (r7 != r1) goto L45
            return r1
        L45:
            java.lang.String r6 = "withContext(...)"
            kotlin.jvm.internal.Intrinsics.checkNotNullExpressionValue(r7, r6)
            return r7
        */
        throw new UnsupportedOperationException("Method not decompiled: com.unity3d.ads.core.domain.WebViewScreenCapture.resolveTargetView(com.unity3d.ads.core.data.model.AdObject, kotlin.coroutines.Continuation):java.lang.Object");
    }

    /* JADX INFO: Access modifiers changed from: private */
    /* JADX WARN: Removed duplicated region for block: B:7:0x0013  */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct code enable 'Show inconsistent code' option in preferences
    */
    public final java.lang.Object getOrCapture(android.view.View r14, kotlin.coroutines.Continuation<? super android.graphics.Bitmap> r15) throws java.lang.Throwable {
        /*
            r13 = this;
            boolean r0 = r15 instanceof com.unity3d.ads.core.domain.WebViewScreenCapture.C40331
            if (r0 == 0) goto L13
            r0 = r15
            com.unity3d.ads.core.domain.WebViewScreenCapture$getOrCapture$1 r0 = (com.unity3d.ads.core.domain.WebViewScreenCapture.C40331) r0
            int r1 = r0.label
            r2 = -2147483648(0xffffffff80000000, float:-0.0)
            r3 = r1 & r2
            if (r3 == 0) goto L13
            int r1 = r1 - r2
            r0.label = r1
            goto L18
        L13:
            com.unity3d.ads.core.domain.WebViewScreenCapture$getOrCapture$1 r0 = new com.unity3d.ads.core.domain.WebViewScreenCapture$getOrCapture$1
            r0.<init>(r15)
        L18:
            java.lang.Object r15 = r0.result
            java.lang.Object r1 = kotlin.coroutines.intrinsics.IntrinsicsKt__IntrinsicsKt.getCOROUTINE_SUSPENDED()
            int r2 = r0.label
            r3 = 2
            r4 = 1
            r5 = 0
            if (r2 == 0) goto L51
            if (r2 == r4) goto L43
            if (r2 != r3) goto L3b
            long r1 = r0.J$0
            java.lang.Object r14 = r0.L$1
            kotlinx.coroutines.sync.Mutex r14 = (kotlinx.coroutines.sync.Mutex) r14
            java.lang.Object r0 = r0.L$0
            android.view.View r0 = (android.view.View) r0
            kotlin.ResultKt.throwOnFailure(r15)     // Catch: java.lang.Throwable -> L38
            goto Laa
        L38:
            r15 = move-exception
            goto Lc1
        L3b:
            java.lang.IllegalStateException r14 = new java.lang.IllegalStateException
            java.lang.String r15 = "call to 'resume' before 'invoke' with coroutine"
            r14.<init>(r15)
            throw r14
        L43:
            java.lang.Object r14 = r0.L$1
            kotlinx.coroutines.sync.Mutex r14 = (kotlinx.coroutines.sync.Mutex) r14
            java.lang.Object r2 = r0.L$0
            android.view.View r2 = (android.view.View) r2
            kotlin.ResultKt.throwOnFailure(r15)
            r15 = r14
            r14 = r2
            goto L63
        L51:
            kotlin.ResultKt.throwOnFailure(r15)
            kotlinx.coroutines.sync.Mutex r15 = r13.mutex
            r0.L$0 = r14
            r0.L$1 = r15
            r0.label = r4
            java.lang.Object r2 = r15.lock(r5, r0)
            if (r2 != r1) goto L63
            goto La4
        L63:
            kotlin.jvm.functions.Function0<java.lang.Long> r2 = r13.elapsedRealtimeMs     // Catch: java.lang.Throwable -> L7e
            java.lang.Object r2 = r2.invoke()     // Catch: java.lang.Throwable -> L7e
            java.lang.Number r2 = (java.lang.Number) r2     // Catch: java.lang.Throwable -> L7e
            long r6 = r2.longValue()     // Catch: java.lang.Throwable -> L7e
            android.graphics.Bitmap r2 = r13.cachedBitmap     // Catch: java.lang.Throwable -> L7e
            if (r2 == 0) goto L94
            java.lang.ref.WeakReference<android.view.View> r4 = r13.cachedViewRef     // Catch: java.lang.Throwable -> L7e
            if (r4 == 0) goto L83
            java.lang.Object r4 = r4.get()     // Catch: java.lang.Throwable -> L7e
            android.view.View r4 = (android.view.View) r4     // Catch: java.lang.Throwable -> L7e
            goto L84
        L7e:
            r14 = move-exception
            r12 = r15
            r15 = r14
            r14 = r12
            goto Lc1
        L83:
            r4 = r5
        L84:
            if (r4 != r14) goto L94
            long r8 = r13.cacheTimestamp     // Catch: java.lang.Throwable -> L7e
            long r8 = r6 - r8
            long r10 = r13.cacheTtlMs     // Catch: java.lang.Throwable -> L7e
            int r4 = (r8 > r10 ? 1 : (r8 == r10 ? 0 : -1))
            if (r4 >= 0) goto L94
            r15.unlock(r5)
            return r2
        L94:
            com.unity3d.ads.core.domain.AndroidViewCapturer r2 = r13.viewCapturer     // Catch: java.lang.Throwable -> L7e
            r0.L$0 = r14     // Catch: java.lang.Throwable -> L7e
            r0.L$1 = r15     // Catch: java.lang.Throwable -> L7e
            r0.J$0 = r6     // Catch: java.lang.Throwable -> L7e
            r0.label = r3     // Catch: java.lang.Throwable -> L7e
            java.lang.Object r0 = r2.invoke(r14, r0)     // Catch: java.lang.Throwable -> L7e
            if (r0 != r1) goto La5
        La4:
            return r1
        La5:
            r1 = r0
            r0 = r14
            r14 = r15
            r15 = r1
            r1 = r6
        Laa:
            r3 = r15
            android.graphics.Bitmap r3 = (android.graphics.Bitmap) r3     // Catch: java.lang.Throwable -> L38
            r13.cachedBitmap = r3     // Catch: java.lang.Throwable -> L38
            java.lang.ref.WeakReference r3 = new java.lang.ref.WeakReference     // Catch: java.lang.Throwable -> L38
            r3.<init>(r0)     // Catch: java.lang.Throwable -> L38
            r13.cachedViewRef = r3     // Catch: java.lang.Throwable -> L38
            r13.cacheTimestamp = r1     // Catch: java.lang.Throwable -> L38
            r13.scheduleEviction()     // Catch: java.lang.Throwable -> L38
            android.graphics.Bitmap r15 = (android.graphics.Bitmap) r15     // Catch: java.lang.Throwable -> L38
            r14.unlock(r5)
            return r15
        Lc1:
            r14.unlock(r5)
            throw r15
        */
        throw new UnsupportedOperationException("Method not decompiled: com.unity3d.ads.core.domain.WebViewScreenCapture.getOrCapture(android.view.View, kotlin.coroutines.Continuation):java.lang.Object");
    }

    /* JADX INFO: renamed from: com.unity3d.ads.core.domain.WebViewScreenCapture$scheduleEviction$1, reason: invalid class name and case insensitive filesystem */
    /* JADX INFO: compiled from: WebViewScreenCapture.kt */
    @DebugMetadata(c = "com.unity3d.ads.core.domain.WebViewScreenCapture$scheduleEviction$1", f = "WebViewScreenCapture.kt", l = {Sdk.SDKError.Reason.TPAT_RETRY_FAILED_VALUE, 172}, m = "invokeSuspend")
    public static final class C40361 extends SuspendLambda implements Function2<CoroutineScope, Continuation<? super Unit>, Object> {
        Object L$0;
        Object L$1;
        int label;

        public C40361(Continuation<? super C40361> continuation) {
            super(2, continuation);
        }

        @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
        public final Continuation<Unit> create(Object obj, Continuation<?> continuation) {
            return WebViewScreenCapture.this.new C40361(continuation);
        }

        @Override // kotlin.jvm.functions.Function2
        public final Object invoke(CoroutineScope coroutineScope, Continuation<? super Unit> continuation) {
            return ((C40361) create(coroutineScope, continuation)).invokeSuspend(Unit.INSTANCE);
        }

        @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
        public final Object invokeSuspend(Object obj) {
            Mutex mutex;
            WebViewScreenCapture webViewScreenCapture;
            Object coroutine_suspended = IntrinsicsKt__IntrinsicsKt.getCOROUTINE_SUSPENDED();
            int i = this.label;
            if (i == 0) {
                ResultKt.throwOnFailure(obj);
                long j = WebViewScreenCapture.this.cacheTtlMs;
                this.label = 1;
                if (DelayKt.delay(j, this) != coroutine_suspended) {
                }
                return coroutine_suspended;
            }
            if (i != 1) {
                if (i != 2) {
                    throw new IllegalStateException("call to 'resume' before 'invoke' with coroutine");
                }
                webViewScreenCapture = (WebViewScreenCapture) this.L$1;
                mutex = (Mutex) this.L$0;
                ResultKt.throwOnFailure(obj);
                try {
                    webViewScreenCapture.cachedBitmap = null;
                    webViewScreenCapture.cachedViewRef = null;
                    Unit unit = Unit.INSTANCE;
                    mutex.unlock(null);
                    return Unit.INSTANCE;
                } catch (Throwable th) {
                    mutex.unlock(null);
                    throw th;
                }
            }
            ResultKt.throwOnFailure(obj);
            mutex = WebViewScreenCapture.this.mutex;
            WebViewScreenCapture webViewScreenCapture2 = WebViewScreenCapture.this;
            this.L$0 = mutex;
            this.L$1 = webViewScreenCapture2;
            this.label = 2;
            if (mutex.lock(null, this) != coroutine_suspended) {
                webViewScreenCapture = webViewScreenCapture2;
                webViewScreenCapture.cachedBitmap = null;
                webViewScreenCapture.cachedViewRef = null;
                Unit unit2 = Unit.INSTANCE;
                mutex.unlock(null);
                return Unit.INSTANCE;
            }
            return coroutine_suspended;
        }
    }

    private final void scheduleEviction() {
        Job job = this.evictionJob;
        if (job != null) {
            Job.DefaultImpls.cancel$default(job, null, 1, null);
        }
        this.evictionJob = BuildersKt__Builders_commonKt.launch$default(this.backgroundScope, null, null, new C40361(null), 3, null);
    }

    /* JADX INFO: compiled from: WebViewScreenCapture.kt */
    public static final class Companion {
        public /* synthetic */ Companion(DefaultConstructorMarker defaultConstructorMarker) {
            this();
        }

        private Companion() {
        }
    }
}
