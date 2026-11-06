package io.bidmachine.rendering.internal.detector.engagedclick;

import android.graphics.Bitmap;
import android.view.View;
import com.unity3d.services.UnityAdsConstants;
import com.vungle.ads.internal.protos.Sdk;
import io.bidmachine.rendering.internal.j;
import io.bidmachine.rendering.internal.meanbackground.o;
import io.bidmachine.rendering.model.engagedclick.EngagedClickParams;
import io.bidmachine.rendering.model.engagedclick.VisualConfig;
import io.bidmachine.util.taskmanager.handler.BackgroundHandlerTaskManager;
import io.bidmachine.util.taskmanager.handler.HandlerTaskManager;
import kotlin.Lazy;
import kotlin.LazyKt__LazyJVMKt;
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
import kotlinx.coroutines.CoroutineScope;

/* JADX INFO: loaded from: classes5.dex */
public final class a implements io.bidmachine.rendering.internal.detector.engagedclick.c {
    public static final C1185a d = new C1185a(null);
    public final int a;
    public final Lazy b;
    public final Lazy c;

    /* JADX INFO: renamed from: io.bidmachine.rendering.internal.detector.engagedclick.a$a, reason: collision with other inner class name */
    public static final class C1185a {
        public /* synthetic */ C1185a(DefaultConstructorMarker defaultConstructorMarker) {
            this();
        }

        public C1185a() {
        }
    }

    public static final class b extends SuspendLambda implements Function2 {
        public int a;
        public final /* synthetic */ Bitmap c;
        public final /* synthetic */ Bitmap d;

        /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
        public b(Bitmap bitmap, Bitmap bitmap2, Continuation continuation) {
            super(2, continuation);
            this.c = bitmap;
            this.d = bitmap2;
        }

        @Override // kotlin.jvm.functions.Function2
        /* JADX INFO: renamed from: a, reason: merged with bridge method [inline-methods] */
        public final Object invoke(CoroutineScope coroutineScope, Continuation continuation) {
            return ((b) create(coroutineScope, continuation)).invokeSuspend(Unit.INSTANCE);
        }

        @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
        public final Continuation create(Object obj, Continuation continuation) {
            return a.this.new b(this.c, this.d, continuation);
        }

        @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
        public final Object invokeSuspend(Object obj) {
            IntrinsicsKt__IntrinsicsKt.getCOROUTINE_SUSPENDED();
            if (this.a != 0) {
                throw new IllegalStateException("call to 'resume' before 'invoke' with coroutine");
            }
            ResultKt.throwOnFailure(obj);
            return Boxing.boxDouble(a.this.a(this.c, this.d));
        }
    }

    public static final class c extends Lambda implements Function0 {
        public static final c a = new c();

        public c() {
            super(0);
        }

        @Override // kotlin.jvm.functions.Function0
        /* JADX INFO: renamed from: a, reason: merged with bridge method [inline-methods] */
        public final BackgroundHandlerTaskManager invoke() {
            return new BackgroundHandlerTaskManager();
        }
    }

    public static final class d extends Lambda implements Function0 {
        public d() {
            super(0);
        }

        @Override // kotlin.jvm.functions.Function0
        /* JADX INFO: renamed from: a, reason: merged with bridge method [inline-methods] */
        public final o invoke() {
            return new o(new o.a(null, a.this.a, a.this.a, o.a.InterfaceC1200a.C1201a.a, 1, null), j.i.a(), a.this.a().getHandler());
        }
    }

    public a(EngagedClickParams engagedClickParams) {
        Intrinsics.checkNotNullParameter(engagedClickParams, "engagedClickParams");
        VisualConfig visualConfig = engagedClickParams.getVisualConfig();
        this.a = visualConfig != null ? visualConfig.getDownscaleMaxSidePx() : Sdk.SDKError.Reason.INVALID_TPAT_KEY_VALUE;
        this.b = LazyKt__LazyJVMKt.lazy(c.a);
        this.c = LazyKt__LazyJVMKt.lazy(new d());
    }

    public final o b() {
        return (o) this.c.getValue();
    }

    public final HandlerTaskManager a() {
        return (HandlerTaskManager) this.b.getValue();
    }

    @Override // io.bidmachine.rendering.internal.detector.engagedclick.c
    public Object a(View view, Continuation continuation) {
        return b().b(view, continuation);
    }

    @Override // io.bidmachine.rendering.internal.detector.engagedclick.c
    public Object a(Bitmap bitmap, Bitmap bitmap2, Continuation continuation) {
        return BuildersKt.withContext(j.i.a().b(), new b(bitmap, bitmap2, null), continuation);
    }

    public final double a(Bitmap bitmap, Bitmap bitmap2) {
        float[] fArrA = a(bitmap);
        float[] fArrA2 = a(bitmap2);
        int length = fArrA.length;
        int i = 0;
        for (int i2 = 0; i2 < length; i2++) {
            if (Math.abs(fArrA[i2] - fArrA2[i2]) > 0.015686275f) {
                i++;
            }
        }
        return ((double) i) / ((double) fArrA.length);
    }

    public final float[] a(Bitmap bitmap) {
        int width = bitmap.getWidth();
        int height = bitmap.getHeight();
        float[] fArr = new float[64];
        if (width > 0 && height > 0) {
            int[] iArr = new int[width * height];
            bitmap.getPixels(iArr, 0, width, 0, 0, width, height);
            float[] fArr2 = new float[64];
            int[] iArr2 = new int[64];
            for (int i = 0; i < height; i++) {
                int i2 = (i * 8) / height;
                int i3 = i * width;
                for (int i4 = 0; i4 < width; i4++) {
                    int i5 = iArr[i3 + i4];
                    float f = (((((i5 >> 16) & 255) * 0.299f) + (((i5 >> 8) & 255) * 0.587f)) + ((i5 & 255) * 0.114f)) / 255.0f;
                    int i6 = (i2 * 8) + ((i4 * 8) / width);
                    fArr2[i6] = fArr2[i6] + f;
                    iArr2[i6] = iArr2[i6] + 1;
                }
            }
            for (int i7 = 0; i7 < 64; i7++) {
                int i8 = iArr2[i7];
                fArr[i7] = i8 > 0 ? fArr2[i7] / i8 : UnityAdsConstants.SafeGuards.InitRequestRetryPolicy.MIN_JITTER_PCT;
            }
        }
        return fArr;
    }
}
