package com.unity3d.ads.core.domain;

import android.annotation.TargetApi;
import android.app.Activity;
import android.content.Context;
import android.content.ContextWrapper;
import android.graphics.Bitmap;
import android.graphics.Rect;
import android.os.Build;
import android.os.Handler;
import android.os.Looper;
import android.view.PixelCopy;
import android.view.View;
import android.view.Window;
import com.unity3d.ads.core.data.datasource.CurrentActivityDataSource;
import com.unity3d.services.core.properties.ClientProperties;
import kotlin.Result;
import kotlin.ResultKt;
import kotlin.Unit;
import kotlin.coroutines.Continuation;
import kotlin.coroutines.intrinsics.IntrinsicsKt__IntrinsicsJvmKt;
import kotlin.coroutines.intrinsics.IntrinsicsKt__IntrinsicsKt;
import kotlin.coroutines.jvm.internal.DebugMetadata;
import kotlin.coroutines.jvm.internal.DebugProbesKt;
import kotlin.coroutines.jvm.internal.SuspendLambda;
import kotlin.jvm.functions.Function2;
import kotlin.jvm.internal.DefaultConstructorMarker;
import kotlin.jvm.internal.Intrinsics;
import kotlinx.coroutines.BuildersKt;
import kotlinx.coroutines.CancellableContinuation;
import kotlinx.coroutines.CancellableContinuationImpl;
import kotlinx.coroutines.CoroutineDispatcher;
import kotlinx.coroutines.CoroutineScope;

/* JADX INFO: compiled from: AndroidViewCapturer.kt */
/* JADX INFO: loaded from: classes4.dex */
public final class AndroidViewCapturer {
    private final CurrentActivityDataSource currentActivityDataSource;
    private final CoroutineDispatcher mainDispatcher;
    private final int sdkInt;

    public AndroidViewCapturer(CoroutineDispatcher mainDispatcher, CurrentActivityDataSource currentActivityDataSource, int i) {
        Intrinsics.checkNotNullParameter(mainDispatcher, "mainDispatcher");
        this.mainDispatcher = mainDispatcher;
        this.currentActivityDataSource = currentActivityDataSource;
        this.sdkInt = i;
    }

    public /* synthetic */ AndroidViewCapturer(CoroutineDispatcher coroutineDispatcher, CurrentActivityDataSource currentActivityDataSource, int i, int i2, DefaultConstructorMarker defaultConstructorMarker) {
        this(coroutineDispatcher, (i2 & 2) != 0 ? null : currentActivityDataSource, (i2 & 4) != 0 ? Build.VERSION.SDK_INT : i);
    }

    /* JADX INFO: renamed from: com.unity3d.ads.core.domain.AndroidViewCapturer$invoke$2, reason: invalid class name */
    /* JADX INFO: compiled from: AndroidViewCapturer.kt */
    @DebugMetadata(c = "com.unity3d.ads.core.domain.AndroidViewCapturer$invoke$2", f = "AndroidViewCapturer.kt", l = {90}, m = "invokeSuspend")
    public static final class AnonymousClass2 extends SuspendLambda implements Function2<CoroutineScope, Continuation<? super Bitmap>, Object> {
        final /* synthetic */ View $view;
        Object L$0;
        Object L$1;
        Object L$2;
        int label;

        /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
        public AnonymousClass2(View view, Continuation<? super AnonymousClass2> continuation) {
            super(2, continuation);
            this.$view = view;
        }

        @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
        public final Continuation<Unit> create(Object obj, Continuation<?> continuation) {
            return AndroidViewCapturer.this.new AnonymousClass2(this.$view, continuation);
        }

        @Override // kotlin.jvm.functions.Function2
        public final Object invoke(CoroutineScope coroutineScope, Continuation<? super Bitmap> continuation) {
            return ((AnonymousClass2) create(coroutineScope, continuation)).invokeSuspend(Unit.INSTANCE);
        }

        @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
        public final Object invokeSuspend(Object obj) {
            Window window;
            Activity currentActivity;
            Object coroutine_suspended = IntrinsicsKt__IntrinsicsKt.getCOROUTINE_SUSPENDED();
            int i = this.label;
            if (i != 0) {
                if (i != 1) {
                    throw new IllegalStateException("call to 'resume' before 'invoke' with coroutine");
                }
                ResultKt.throwOnFailure(obj);
                return obj;
            }
            ResultKt.throwOnFailure(obj);
            if (AndroidViewCapturer.this.sdkInt < 26) {
                throw new IllegalStateException(("Screen capture requires API 26+ (got " + AndroidViewCapturer.this.sdkInt + ')').toString());
            }
            int width = this.$view.getWidth();
            int height = this.$view.getHeight();
            if (width > 0 && height > 0) {
                CurrentActivityDataSource currentActivityDataSource = AndroidViewCapturer.this.currentActivityDataSource;
                if (currentActivityDataSource == null || (currentActivity = currentActivityDataSource.getCurrentActivity()) == null || (window = currentActivity.getWindow()) == null) {
                    Activity activity = AndroidViewCapturer.this.activity(this.$view);
                    window = activity != null ? activity.getWindow() : null;
                    if (window == null) {
                        AndroidViewCapturer androidViewCapturer = AndroidViewCapturer.this;
                        View rootView = this.$view.getRootView();
                        Intrinsics.checkNotNullExpressionValue(rootView, "getRootView(...)");
                        Activity activity2 = androidViewCapturer.activity(rootView);
                        window = activity2 != null ? activity2.getWindow() : null;
                        if (window == null) {
                            Activity activity3 = ClientProperties.getActivity();
                            window = activity3 != null ? activity3.getWindow() : null;
                            if (window == null) {
                                throw new IllegalStateException("No window available to capture the ad view");
                            }
                        }
                    }
                }
                int[] iArr = new int[2];
                this.$view.getLocationInWindow(iArr);
                int i2 = iArr[0];
                int i3 = iArr[1];
                Rect rect = new Rect(i2, i3, i2 + width, i3 + height);
                final Bitmap bitmapCreateBitmap = Bitmap.createBitmap(width, height, Bitmap.Config.ARGB_8888);
                this.L$0 = window;
                this.L$1 = rect;
                this.L$2 = bitmapCreateBitmap;
                this.label = 1;
                final CancellableContinuationImpl cancellableContinuationImpl = new CancellableContinuationImpl(IntrinsicsKt__IntrinsicsJvmKt.intercepted(this), 1);
                cancellableContinuationImpl.initCancellability();
                PixelCopy.request(window, rect, bitmapCreateBitmap, new PixelCopy.OnPixelCopyFinishedListener() { // from class: com.unity3d.ads.core.domain.AndroidViewCapturer$invoke$2$2$1
                    @Override // android.view.PixelCopy.OnPixelCopyFinishedListener
                    public final void onPixelCopyFinished(int i4) {
                        if (i4 == 0) {
                            CancellableContinuation<Bitmap> cancellableContinuation = cancellableContinuationImpl;
                            Result.Companion companion = Result.Companion;
                            cancellableContinuation.resumeWith(Result.m2760constructorimpl(bitmapCreateBitmap));
                        } else {
                            CancellableContinuation<Bitmap> cancellableContinuation2 = cancellableContinuationImpl;
                            Result.Companion companion2 = Result.Companion;
                            cancellableContinuation2.resumeWith(Result.m2760constructorimpl(ResultKt.createFailure(new IllegalStateException("PixelCopy failed with result " + i4))));
                        }
                    }
                }, new Handler(Looper.getMainLooper()));
                Object result = cancellableContinuationImpl.getResult();
                if (result == IntrinsicsKt__IntrinsicsKt.getCOROUTINE_SUSPENDED()) {
                    DebugProbesKt.probeCoroutineSuspended(this);
                }
                return result == coroutine_suspended ? coroutine_suspended : result;
            }
            throw new IllegalStateException(("Target view not laid out yet (" + width + 'x' + height + ')').toString());
        }
    }

    @TargetApi(26)
    public final Object invoke(View view, Continuation<? super Bitmap> continuation) {
        return BuildersKt.withContext(this.mainDispatcher, new AnonymousClass2(view, null), continuation);
    }

    /* JADX INFO: Access modifiers changed from: private */
    public final Activity activity(View view) {
        for (Context context = view.getContext(); context instanceof ContextWrapper; context = ((ContextWrapper) context).getBaseContext()) {
            if (context instanceof Activity) {
                return (Activity) context;
            }
        }
        return null;
    }
}
