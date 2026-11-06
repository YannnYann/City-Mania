package ads_mobile_sdk;

import android.R;
import android.app.Activity;
import android.content.Context;
import android.os.Bundle;
import android.util.TypedValue;
import android.view.View;
import android.view.ViewGroup;
import android.view.ViewParent;
import androidx.core.graphics.Insets;
import androidx.core.view.ViewCompat;
import androidx.core.view.WindowInsetsCompat;
import com.google.android.libraries.ads.mobile.sdk.pip.PictureInPictureAdOptions;
import com.google.android.libraries.ads.mobile.sdk.pip.PictureInPictureAdPosition;
import com.google.android.libraries.ads.mobile.sdk.pip.PictureInPictureAdPresentationScope;
import com.unity3d.services.UnityAdsConstants;
import java.util.concurrent.atomic.AtomicBoolean;
import java.util.concurrent.atomic.AtomicInteger;
import java.util.concurrent.atomic.AtomicReference;
import kotlin.NoWhenBranchMatchedException;
import kotlin.Pair;
import kotlin.TuplesKt;
import kotlin.coroutines.EmptyCoroutineContext;
import kotlin.jvm.internal.Intrinsics;
import kotlin.text.StringsKt__StringsJVMKt;
import kotlinx.coroutines.BuildersKt__Builders_commonKt;
import kotlinx.coroutines.CoroutineScope;
import kotlinx.coroutines.Job;

/* JADX INFO: loaded from: classes.dex */
public final class ao2 implements n {
    public final f0 a;
    public final ao0 b;
    public final CoroutineScope c;
    public final ur3 d;
    public final g83 e;
    public final ks3 f;
    public final j53 g;
    public final qn2 h;
    public do2 i;
    public final AtomicReference j;
    public final AtomicBoolean k;
    public final AtomicBoolean l;
    public Job m;
    public final View.OnLayoutChangeListener n;
    public final AtomicInteger o;
    public final AtomicBoolean p;
    public final AtomicBoolean q;

    public ao2(f0 activityTracker, ao0 displayUtil, CoroutineScope uiScope, ur3 traceLogger, g83 rootTraceCreator, ks3 traceMetaSet, j53 requestType, qn2 pipAdConfig) {
        Intrinsics.checkNotNullParameter(activityTracker, "activityTracker");
        Intrinsics.checkNotNullParameter(displayUtil, "displayUtil");
        Intrinsics.checkNotNullParameter(uiScope, "uiScope");
        Intrinsics.checkNotNullParameter(traceLogger, "traceLogger");
        Intrinsics.checkNotNullParameter(rootTraceCreator, "rootTraceCreator");
        Intrinsics.checkNotNullParameter(traceMetaSet, "traceMetaSet");
        Intrinsics.checkNotNullParameter(requestType, "requestType");
        Intrinsics.checkNotNullParameter(pipAdConfig, "pipAdConfig");
        this.a = activityTracker;
        this.b = displayUtil;
        this.c = uiScope;
        this.d = traceLogger;
        this.e = rootTraceCreator;
        this.f = traceMetaSet;
        this.g = requestType;
        this.h = pipAdConfig;
        this.j = new AtomicReference();
        this.k = new AtomicBoolean(false);
        this.l = new AtomicBoolean(false);
        this.n = new View.OnLayoutChangeListener() { // from class: ads_mobile_sdk.ao2$$ExternalSyntheticLambda0
            @Override // android.view.View.OnLayoutChangeListener
            public final void onLayoutChange(View view, int i, int i2, int i3, int i4, int i5, int i6, int i7, int i8) {
                ao2.a(this.f$0, view, i, i2, i3, i4, i5, i6, i7, i8);
            }
        };
        this.o = new AtomicInteger(0);
        this.p = new AtomicBoolean(false);
        this.q = new AtomicBoolean(false);
    }

    @Override // ads_mobile_sdk.n
    public final void onActivityDestroyed(Activity activity) {
        Intrinsics.checkNotNullParameter(activity, "activity");
    }

    @Override // ads_mobile_sdk.n
    public final void onActivityPaused(Activity activity) {
        Intrinsics.checkNotNullParameter(activity, "activity");
        Job job = this.m;
        if (job != null) {
            Job.DefaultImpls.cancel$default(job, null, 1, null);
        }
        ViewGroup viewGroup = (ViewGroup) activity.findViewById(R.id.content);
        do2 do2Var = this.i;
        if ((do2Var != null ? do2Var.getParent() : null) == viewGroup) {
            do2 do2Var2 = this.i;
            if (do2Var2 != null) {
                a(do2Var2);
            }
            this.q.set(false);
        }
    }

    @Override // ads_mobile_sdk.n
    public final void onActivityResumed(Activity activity) {
        do2 do2Var;
        PictureInPictureAdPosition pictureInPictureAdPosition;
        Intrinsics.checkNotNullParameter(activity, "activity");
        String name = activity.getClass().getName();
        Intrinsics.checkNotNullExpressionValue(name, "getName(...)");
        if (StringsKt__StringsJVMKt.endsWith$default(name, "AdActivity", false, 2, null) || !this.p.get() || (do2Var = this.i) == null || (pictureInPictureAdPosition = do2Var.d) == null) {
            return;
        }
        a(activity, new PictureInPictureAdOptions.Builder().setPresentationScope(PictureInPictureAdPresentationScope.APPLICATION).setPosition(pictureInPictureAdPosition).build(), false);
    }

    @Override // ads_mobile_sdk.n
    public final void onActivitySaveInstanceState(Activity activity, Bundle outState) {
        Intrinsics.checkNotNullParameter(activity, "activity");
        Intrinsics.checkNotNullParameter(outState, "outState");
    }

    @Override // ads_mobile_sdk.n
    public final void onActivityStopped(Activity activity) {
        Intrinsics.checkNotNullParameter(activity, "activity");
    }

    public static final /* synthetic */ Pair a(ao2 ao2Var, View view, PictureInPictureAdPosition pictureInPictureAdPosition, float f, float f2, float f3, float f4, float f5) {
        ao2Var.getClass();
        return a(view, pictureInPictureAdPosition, f, f2, f3, f4, f5);
    }

    public static Pair a(View view, PictureInPictureAdPosition pictureInPictureAdPosition, float f, float f2, float f3, float f4, float f5) {
        float f6;
        float f7;
        WindowInsetsCompat rootWindowInsets = ViewCompat.getRootWindowInsets(view);
        Insets insets = rootWindowInsets != null ? rootWindowInsets.getInsets(WindowInsetsCompat.Type.systemBars()) : null;
        float f8 = UnityAdsConstants.SafeGuards.InitRequestRetryPolicy.MIN_JITTER_PCT;
        float f9 = insets != null ? insets.left : 0.0f;
        float f10 = insets != null ? insets.top : 0.0f;
        float f11 = insets != null ? insets.right : 0.0f;
        if (insets != null) {
            f8 = insets.bottom;
        }
        int i = tn2.a[pictureInPictureAdPosition.ordinal()];
        if (i == 1) {
            f6 = f9 + f5;
        } else {
            if (i != 2) {
                if (i == 3) {
                    f6 = f9 + f5;
                } else {
                    if (i != 4 && i != 5) {
                        throw new NoWhenBranchMatchedException();
                    }
                    f6 = ((f - f3) - f11) - f5;
                }
                f7 = ((f2 - f4) - f8) - f5;
                return TuplesKt.to(Float.valueOf(f6), Float.valueOf(f7));
            }
            f6 = ((f - f3) - f11) - f5;
        }
        f7 = f10 + f5;
        return TuplesKt.to(Float.valueOf(f6), Float.valueOf(f7));
    }

    public final void a() {
        Job job = this.m;
        if (job != null) {
            Job.DefaultImpls.cancel$default(job, null, 1, null);
        }
        this.p.set(false);
        this.q.set(false);
        CoroutineScope coroutineScope = this.c;
        wn2 block = new wn2(this, null);
        EmptyCoroutineContext context = EmptyCoroutineContext.INSTANCE;
        Intrinsics.checkNotNullParameter(coroutineScope, "<this>");
        Intrinsics.checkNotNullParameter(context, "context");
        Intrinsics.checkNotNullParameter(block, "block");
        BuildersKt__Builders_commonKt.launch$default(coroutineScope, context, null, new ws3(block, null), 2, null);
    }

    public static final void a(ao2 this$0, View view, int i, int i2, int i3, int i4, int i5, int i6, int i7, int i8) {
        Intrinsics.checkNotNullParameter(this$0, "this$0");
        int i9 = i3 - i;
        boolean z = i9 != i7 - i5;
        int i10 = i4 - i2;
        boolean z2 = i10 != i8 - i6;
        if (z || z2 || i != i5 || i2 != i6) {
            Intrinsics.checkNotNull(view);
            do2 do2Var = this$0.i;
            if (do2Var != null && this$0.q.get() && i9 > 0 && i10 > 0 && do2Var.getWidth() != 0 && do2Var.getHeight() != 0) {
                float width = do2Var.getWidth();
                float height = do2Var.getHeight();
                Context context = do2Var.getContext();
                Intrinsics.checkNotNullExpressionValue(context, "getContext(...)");
                int iD = this$0.h.d();
                Intrinsics.checkNotNullParameter(context, "<this>");
                Intrinsics.checkNotNullParameter(context, "<this>");
                Intrinsics.checkNotNullExpressionValue(context.getResources().getDisplayMetrics(), "getDisplayMetrics(...)");
                Pair pairA = a(view, do2Var.d, i9, i10, width, height, (int) Math.ceil(TypedValue.applyDimension(1, iD, r4)));
                float fFloatValue = ((Number) pairA.component1()).floatValue();
                float fFloatValue2 = ((Number) pairA.component2()).floatValue();
                do2Var.setX(fFloatValue);
                do2Var.setY(fFloatValue2);
            }
        }
    }

    public final void a(do2 do2Var) {
        ViewParent parent = do2Var.getParent();
        ViewGroup viewGroup = parent instanceof ViewGroup ? (ViewGroup) parent : null;
        if (viewGroup != null) {
            viewGroup.removeOnLayoutChangeListener(this.n);
        }
        if (viewGroup != null) {
            viewGroup.removeView(do2Var);
        }
    }

    public final void a(Activity activity, PictureInPictureAdOptions options, boolean z) {
        PictureInPictureAdPosition position;
        Intrinsics.checkNotNullParameter(activity, "activity");
        Intrinsics.checkNotNullParameter(options, "options");
        String name = activity.getClass().getName();
        Intrinsics.checkNotNullExpressionValue(name, "getName(...)");
        if (StringsKt__StringsJVMKt.endsWith$default(name, "AdActivity", false, 2, null)) {
            return;
        }
        if (options.getPresentationScope() == PictureInPictureAdPresentationScope.APPLICATION) {
            if (this.l.compareAndSet(false, true)) {
                this.a.a(this);
            }
        } else if (this.l.compareAndSet(true, false)) {
            this.a.b(this);
        }
        do2 do2Var = this.i;
        if (do2Var == null) {
            return;
        }
        PictureInPictureAdPosition position2 = options.getPosition();
        PictureInPictureAdPosition pictureInPictureAdPosition = PictureInPictureAdPosition.DEFAULT;
        if (position2 == pictureInPictureAdPosition) {
            position = do2Var.d;
            if (position == pictureInPictureAdPosition) {
                position = PictureInPictureAdPosition.BOTTOM_RIGHT;
            }
        } else {
            position = options.getPosition();
        }
        PictureInPictureAdPosition pictureInPictureAdPosition2 = position;
        ViewGroup viewGroup = (ViewGroup) activity.findViewById(R.id.content);
        if (this.q.get() && do2Var.d == pictureInPictureAdPosition2 && do2Var.getParent() == viewGroup) {
            return;
        }
        int iIncrementAndGet = this.o.incrementAndGet();
        this.p.set(true);
        CoroutineScope coroutineScope = this.c;
        zn2 block = new zn2(this, iIncrementAndGet, activity, pictureInPictureAdPosition2, z, null);
        EmptyCoroutineContext context = EmptyCoroutineContext.INSTANCE;
        Intrinsics.checkNotNullParameter(coroutineScope, "<this>");
        Intrinsics.checkNotNullParameter(context, "context");
        Intrinsics.checkNotNullParameter(block, "block");
        BuildersKt__Builders_commonKt.launch$default(coroutineScope, context, null, new ws3(block, null), 2, null);
    }
}
