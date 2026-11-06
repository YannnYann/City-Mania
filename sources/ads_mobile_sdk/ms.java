package ads_mobile_sdk;

import android.app.Activity;
import android.content.Context;
import android.content.res.Resources;
import android.graphics.Rect;
import android.os.Build;
import android.os.Bundle;
import android.os.SystemClock;
import android.util.DisplayMetrics;
import android.view.View;
import android.view.ViewTreeObserver;
import android.view.Window;
import android.view.WindowManager;
import android.view.WindowMetrics;
import com.google.common.base.Splitter;
import java.lang.ref.WeakReference;
import java.util.Set;
import kotlin.Unit;
import kotlin.collections.SetsKt__SetsJVMKt;
import kotlin.coroutines.Continuation;
import kotlin.coroutines.intrinsics.IntrinsicsKt__IntrinsicsKt;
import kotlin.coroutines.jvm.internal.Boxing;
import kotlin.jvm.internal.Intrinsics;
import kotlin.time.Duration;
import kotlin.time.DurationKt;
import kotlin.time.DurationUnit;
import kotlinx.coroutines.BuildersKt__BuildersKt;
import kotlinx.coroutines.BuildersKt__Builders_commonKt;
import kotlinx.coroutines.CoroutineScope;

/* JADX INFO: loaded from: classes.dex */
public abstract class ms implements View.OnAttachStateChangeListener, ViewTreeObserver.OnGlobalLayoutListener, ViewTreeObserver.OnScrollChangedListener, ox0, n {
    public static final long p;
    public final Context a;
    public final CoroutineScope b;
    public final fy3 c;
    public final ao0 d;
    public final tx e;
    public final ex0 f;
    public final j53 g;
    public final f0 h;
    public View i;
    public boolean j;
    public WeakReference k;
    public int l;
    public long m;
    public Boolean n;
    public is o;

    static {
        Duration.Companion companion = Duration.Companion;
        p = DurationKt.toDuration(200, DurationUnit.MILLISECONDS);
    }

    public ms(Context context, CoroutineScope uiScope, fy3 viewabilityEventEmitter, ao0 displayUtil, tx clock, ex0 flags, j53 requestType, f0 activityTracker, i2 adConfiguration) {
        Intrinsics.checkNotNullParameter(context, "context");
        Intrinsics.checkNotNullParameter(uiScope, "uiScope");
        Intrinsics.checkNotNullParameter(viewabilityEventEmitter, "viewabilityEventEmitter");
        Intrinsics.checkNotNullParameter(displayUtil, "displayUtil");
        Intrinsics.checkNotNullParameter(clock, "clock");
        Intrinsics.checkNotNullParameter(flags, "flags");
        Intrinsics.checkNotNullParameter(requestType, "requestType");
        Intrinsics.checkNotNullParameter(activityTracker, "activityTracker");
        Intrinsics.checkNotNullParameter(adConfiguration, "adConfiguration");
        this.a = context;
        this.b = uiScope;
        this.c = viewabilityEventEmitter;
        this.d = displayUtil;
        this.e = clock;
        this.f = flags;
        this.g = requestType;
        this.h = activityTracker;
        this.j = displayUtil.a(requestType, adConfiguration);
        this.k = new WeakReference(null);
        this.l = -1;
        this.m = Duration.Companion.m2911getZEROUwyO8pc();
    }

    public final void b(gy3 updateEvent) throws InterruptedException {
        Intrinsics.checkNotNullParameter(updateEvent, "updateEvent");
        BuildersKt__BuildersKt.runBlocking$default(null, new js(this, updateEvent, null), 1, null);
        if (updateEvent == gy3.c) {
            BuildersKt__Builders_commonKt.launch$default(this.b, null, null, new ks(this, null), 3, null);
        } else {
            BuildersKt__Builders_commonKt.launch$default(this.b, null, null, new ls(this, null), 3, null);
        }
    }

    @Override // ads_mobile_sdk.n
    public final void onActivityCreated(Activity activity, Bundle bundle) throws InterruptedException {
        Intrinsics.checkNotNullParameter(activity, "activity");
        if (this.f.P0()) {
            a(activity, 0);
            b(gy3.d);
        }
    }

    @Override // ads_mobile_sdk.n
    public final void onActivityDestroyed(Activity activity) throws InterruptedException {
        Intrinsics.checkNotNullParameter(activity, "activity");
        if (this.f.P0()) {
            b(gy3.d);
        }
    }

    @Override // ads_mobile_sdk.n
    public final void onActivityPaused(Activity activity) throws InterruptedException {
        Intrinsics.checkNotNullParameter(activity, "activity");
        if (this.f.P0()) {
            a(activity, 4);
            b(gy3.d);
        }
    }

    @Override // ads_mobile_sdk.n
    public final void onActivityResumed(Activity activity) throws InterruptedException {
        Intrinsics.checkNotNullParameter(activity, "activity");
        if (this.f.P0()) {
            a(activity, 0);
            b(gy3.d);
        }
    }

    @Override // ads_mobile_sdk.n
    public final void onActivitySaveInstanceState(Activity activity, Bundle outState) throws InterruptedException {
        Intrinsics.checkNotNullParameter(activity, "activity");
        Intrinsics.checkNotNullParameter(outState, "outState");
        if (this.f.P0()) {
            b(gy3.d);
        }
    }

    @Override // ads_mobile_sdk.n
    public final void onActivityStarted(Activity activity) throws InterruptedException {
        Intrinsics.checkNotNullParameter(activity, "activity");
        if (this.f.P0()) {
            a(activity, 0);
            b(gy3.d);
        }
    }

    @Override // ads_mobile_sdk.n
    public final void onActivityStopped(Activity activity) throws InterruptedException {
        Intrinsics.checkNotNullParameter(activity, "activity");
        if (this.f.P0()) {
            a(activity, 4);
            b(gy3.d);
        }
    }

    @Override // android.view.View.OnAttachStateChangeListener
    public final void onViewAttachedToWindow(View view) throws InterruptedException {
        Intrinsics.checkNotNullParameter(view, "view");
        this.l = -1;
        ViewTreeObserver viewTreeObserver = view.getViewTreeObserver();
        if (viewTreeObserver.isAlive()) {
            this.k = new WeakReference(viewTreeObserver);
            try {
                viewTreeObserver.addOnGlobalLayoutListener(this);
                viewTreeObserver.addOnScrollChangedListener(this);
            } catch (IllegalStateException unused) {
            }
        }
        if (this.f.P0()) {
            this.h.a((n) this);
        }
        b(gy3.b);
    }

    @Override // android.view.View.OnAttachStateChangeListener
    public final void onViewDetachedFromWindow(View view) throws InterruptedException {
        Intrinsics.checkNotNullParameter(view, "view");
        this.l = -1;
        b(gy3.b);
        b();
    }

    public static final Object a(ms msVar, gy3 gy3Var, Continuation continuation) {
        ey3 ey3VarA = msVar.a(gy3Var);
        Duration.Companion companion = Duration.Companion;
        msVar.e.getClass();
        long duration = DurationKt.toDuration(SystemClock.elapsedRealtime(), DurationUnit.MILLISECONDS);
        if (gy3Var == gy3.c && Intrinsics.areEqual(Boxing.boxBoolean(ey3VarA.b), msVar.n) && Duration.m2871compareToLRDsOJo(duration, Duration.m2897plusLRDsOJo(msVar.m, p)) < 0) {
            return Unit.INSTANCE;
        }
        msVar.n = Boxing.boxBoolean(ey3VarA.b);
        msVar.m = duration;
        Object objC = msVar.c.c(ey3VarA, continuation);
        return objC == IntrinsicsKt__IntrinsicsKt.getCOROUTINE_SUSPENDED() ? objC : Unit.INSTANCE;
    }

    @Override // ads_mobile_sdk.ox0
    public final Object d(long j, Continuation continuation) throws InterruptedException {
        if (this.f.P0()) {
            return Unit.INSTANCE;
        }
        b(gy3.d);
        return Unit.INSTANCE;
    }

    @Override // ads_mobile_sdk.ox0
    public final Object b(long j, Continuation continuation) throws InterruptedException {
        if (this.f.P0()) {
            return Unit.INSTANCE;
        }
        b(gy3.d);
        return Unit.INSTANCE;
    }

    public final void b(View view) {
        this.i = view;
    }

    @Override // android.view.ViewTreeObserver.OnGlobalLayoutListener
    public final void onGlobalLayout() throws InterruptedException {
        b(gy3.a);
    }

    @Override // android.view.ViewTreeObserver.OnScrollChangedListener
    public final void onScrollChanged() throws InterruptedException {
        b(gy3.c);
    }

    public final void a(Activity activity, int i) {
        Window window;
        View viewPeekDecorView;
        View view = this.i;
        if (view == null || (window = activity.getWindow()) == null || (viewPeekDecorView = window.peekDecorView()) == null || !Intrinsics.areEqual(view.getRootView(), viewPeekDecorView.getRootView())) {
            return;
        }
        this.l = i;
    }

    public final void a() {
        View view = this.i;
        if (view != null) {
            view.removeOnAttachStateChangeListener(this);
        }
        is isVar = this.o;
        if (isVar != null) {
            this.h.a(isVar);
        }
        this.o = null;
        b();
        this.i = null;
    }

    public final void a(View targetView) {
        Intrinsics.checkNotNullParameter(targetView, "targetView");
        targetView.addOnAttachStateChangeListener(this);
        is isVar = new is(new WeakReference(this), this.h);
        this.o = isVar;
        f0 f0Var = this.h;
        Set newForegroundStateChangeListeners = SetsKt__SetsJVMKt.setOf(isVar);
        f0Var.getClass();
        Intrinsics.checkNotNullParameter(newForegroundStateChangeListeners, "newForegroundStateChangeListeners");
        synchronized (f0Var) {
            f0Var.h.addAll(newForegroundStateChangeListeners);
        }
        if (targetView.isAttachedToWindow()) {
            ViewTreeObserver viewTreeObserver = targetView.getViewTreeObserver();
            if (viewTreeObserver.isAlive()) {
                this.k = new WeakReference(viewTreeObserver);
                try {
                    viewTreeObserver.addOnGlobalLayoutListener(this);
                    viewTreeObserver.addOnScrollChangedListener(this);
                } catch (IllegalStateException unused) {
                }
            }
            if (this.f.P0()) {
                this.h.a((n) this);
                return;
            }
            return;
        }
        b(gy3.b);
    }

    public final void b() {
        ViewTreeObserver viewTreeObserver = (ViewTreeObserver) this.k.get();
        if (viewTreeObserver != null && viewTreeObserver.isAlive()) {
            try {
                viewTreeObserver.removeOnGlobalLayoutListener(this);
                viewTreeObserver.removeOnScrollChangedListener(this);
            } catch (IllegalStateException unused) {
            }
        }
        this.k = new WeakReference(null);
        if (this.f.P0()) {
            this.h.b(this);
        }
    }

    public final ey3 a(gy3 gy3Var) {
        Context context;
        Context context2;
        Context context3;
        Context context4;
        Resources resources;
        Rect rect = new Rect();
        int[] iArr = new int[2];
        boolean z = true;
        try {
            View view = this.i;
            if (view != null) {
                view.getLocationOnScreen(iArr);
            }
            int i = iArr[0];
            rect.left = i;
            rect.top = iArr[1];
            View view2 = this.i;
            if (view2 != null) {
                rect.right = i + view2.getWidth();
                rect.bottom = rect.top + view2.getHeight();
            }
        } catch (Exception e) {
            Splitter splitter = f01.a;
            f01.c("Failed to get view location: " + e.getMessage(), null);
        }
        Rect rect2 = new Rect();
        WindowManager windowManagerB = this.d.b(this.a);
        if (Build.VERSION.SDK_INT >= 30) {
            WindowMetrics currentWindowMetrics = windowManagerB.getCurrentWindowMetrics();
            Intrinsics.checkNotNullExpressionValue(currentWindowMetrics, "getCurrentWindowMetrics(...)");
            rect2.right = currentWindowMetrics.getBounds().width();
            rect2.bottom = currentWindowMetrics.getBounds().height();
        } else {
            DisplayMetrics displayMetrics = new DisplayMetrics();
            windowManagerB.getDefaultDisplay().getMetrics(displayMetrics);
            rect2.right = displayMetrics.widthPixels;
            rect2.bottom = displayMetrics.heightPixels;
        }
        Rect rect3 = new Rect();
        View view3 = this.i;
        DisplayMetrics displayMetrics2 = (view3 == null || (resources = view3.getResources()) == null) ? null : resources.getDisplayMetrics();
        if (displayMetrics2 == null) {
            displayMetrics2 = new DisplayMetrics();
        }
        rect3.right = displayMetrics2.widthPixels + 1;
        rect3.bottom = displayMetrics2.heightPixels + 1;
        Rect rect4 = new Rect();
        View view4 = this.i;
        boolean globalVisibleRect = view4 != null ? view4.getGlobalVisibleRect(rect4) : false;
        Rect rect5 = new Rect();
        View view5 = this.i;
        boolean localVisibleRect = view5 != null ? view5.getLocalVisibleRect(rect5) : false;
        Rect rect6 = new Rect();
        View view6 = this.i;
        if (view6 != null) {
            view6.getHitRect(rect6);
        }
        View view7 = this.i;
        int windowVisibility = view7 != null ? view7.getWindowVisibility() : 8;
        int i2 = this.l;
        if (i2 == -1) {
            i2 = windowVisibility;
        }
        View view8 = this.i;
        boolean zA = view8 != null ? this.d.a(view8, this.j) : false;
        boolean z2 = this.g == j53.l && !Rect.intersects(rect, rect3);
        if (!this.f.P0() ? !zA || z2 : !zA || ((this.l != -1 && i2 != 0) || z2)) {
            z = false;
        }
        int i3 = this.f.P0() ? i2 : windowVisibility;
        View view9 = this.i;
        Rect rect7 = (view9 == null || (context4 = view9.getContext()) == null) ? new Rect() : zn0.a(context4, rect);
        View view10 = this.i;
        boolean zIsAttachedToWindow = view10 != null ? view10.isAttachedToWindow() : false;
        View view11 = this.i;
        Rect rect8 = (view11 == null || (context3 = view11.getContext()) == null) ? new Rect() : zn0.a(context3, rect2);
        View view12 = this.i;
        Rect rect9 = (view12 == null || (context2 = view12.getContext()) == null) ? new Rect() : zn0.a(context2, rect4);
        View view13 = this.i;
        return new ey3(gy3Var, z, i3, rect7, zIsAttachedToWindow, rect8, rect9, globalVisibleRect, (view13 == null || (context = view13.getContext()) == null) ? new Rect() : zn0.a(context, rect5), localVisibleRect, rect6);
    }
}
