package io.bidmachine.util;

import android.app.Activity;
import android.content.Context;
import android.content.ContextWrapper;
import android.graphics.Insets;
import android.graphics.Paint;
import android.graphics.Rect;
import android.text.Layout;
import android.view.View;
import android.view.ViewGroup;
import android.view.ViewParent;
import android.view.ViewTreeObserver;
import android.view.Window;
import android.view.WindowInsets;
import com.unity3d.services.UnityAdsConstants;
import java.util.ArrayList;
import java.util.List;
import kotlin.Result;
import kotlin.Unit;
import kotlin.coroutines.Continuation;
import kotlin.coroutines.intrinsics.IntrinsicsKt__IntrinsicsJvmKt;
import kotlin.coroutines.intrinsics.IntrinsicsKt__IntrinsicsKt;
import kotlin.coroutines.jvm.internal.DebugProbesKt;
import kotlin.jvm.functions.Function0;
import kotlin.jvm.functions.Function1;
import kotlin.jvm.internal.Intrinsics;
import kotlin.text.StringsKt__StringsKt;
import kotlinx.coroutines.CancellableContinuation;
import kotlinx.coroutines.CancellableContinuationImpl;

/* JADX INFO: compiled from: ViewUtils.kt */
/* JADX INFO: loaded from: classes5.dex */
public final class ViewUtilsKt {
    public static final void setLayoutParamsSafely(final View view, final ViewGroup.LayoutParams layoutParams) {
        Intrinsics.checkNotNullParameter(layoutParams, "layoutParams");
        if (view == null) {
            return;
        }
        UiUtils.onUiThread(new SafeRunnable() { // from class: io.bidmachine.util.ViewUtilsKt.setLayoutParamsSafely.1
            @Override // io.bidmachine.util.SafeRunnable
            public void onRun() {
                view.setLayoutParams(layoutParams);
            }
        });
    }

    public static final void updateLayout(View view, int i, int i2) {
        Intrinsics.checkNotNullParameter(view, "<this>");
        view.layout(view.getLeft(), view.getTop(), view.getLeft() + i, view.getTop() + i2);
    }

    public static final void showViewSafely(final View view) {
        if (view == null) {
            return;
        }
        UiUtils.onUiThread(new SafeRunnable() { // from class: io.bidmachine.util.ViewUtilsKt.showViewSafely.1
            @Override // io.bidmachine.util.SafeRunnable
            public void onRun() {
                view.setVisibility(0);
            }
        });
    }

    public static final void hideViewSafely(final View view) {
        if (view == null) {
            return;
        }
        UiUtils.onUiThread(new SafeRunnable() { // from class: io.bidmachine.util.ViewUtilsKt.hideViewSafely.1
            @Override // io.bidmachine.util.SafeRunnable
            public void onRun() {
                view.setVisibility(8);
            }
        });
    }

    public static final void invisibleViewSafely(final View view) {
        if (view == null) {
            return;
        }
        UiUtils.onUiThread(new SafeRunnable() { // from class: io.bidmachine.util.ViewUtilsKt.invisibleViewSafely.1
            @Override // io.bidmachine.util.SafeRunnable
            public void onRun() {
                view.setVisibility(4);
            }
        });
    }

    public static final Unit removeFromParent(View view) {
        Intrinsics.checkNotNullParameter(view, "<this>");
        ViewParent parent = view.getParent();
        ViewGroup viewGroup = parent instanceof ViewGroup ? (ViewGroup) parent : null;
        if (viewGroup == null) {
            return null;
        }
        viewGroup.removeView(view);
        return Unit.INSTANCE;
    }

    public static final boolean isViewVisible(View view) {
        Intrinsics.checkNotNullParameter(view, "<this>");
        return ViewUtils.isViewVisible(view.getVisibility());
    }

    public static final Rect getLocationInWindow(View view) {
        Intrinsics.checkNotNullParameter(view, "<this>");
        int[] iArr = new int[2];
        view.getLocationInWindow(iArr);
        return new Rect(iArr[0], iArr[1], view.getWidth() + iArr[0], view.getHeight() + iArr[1]);
    }

    public static final void setInsetsChanger(View view, final int i) {
        Intrinsics.checkNotNullParameter(view, "<this>");
        view.setOnApplyWindowInsetsListener(new View.OnApplyWindowInsetsListener() { // from class: io.bidmachine.util.ViewUtilsKt$$ExternalSyntheticLambda0
            @Override // android.view.View.OnApplyWindowInsetsListener
            public final WindowInsets onApplyWindowInsets(View view2, WindowInsets windowInsets) {
                return ViewUtilsKt.setInsetsChanger$lambda$3(i, view2, windowInsets);
            }
        });
    }

    public static final WindowInsets setInsetsChanger$lambda$3(int i, View selfView, WindowInsets windowInsets) {
        Intrinsics.checkNotNullParameter(selfView, "selfView");
        Intrinsics.checkNotNullParameter(windowInsets, "windowInsets");
        Insets insets = windowInsets.getInsets(i);
        Intrinsics.checkNotNullExpressionValue(insets, "windowInsets.getInsets(typeInsets)");
        selfView.setPadding(insets.left, insets.top, insets.right, insets.bottom);
        return windowInsets;
    }

    public static /* synthetic */ boolean addViewSafely$default(ViewGroup viewGroup, View view, int i, ViewGroup.LayoutParams layoutParams, int i2, Object obj) {
        if ((i2 & 2) != 0) {
            i = -1;
        }
        if ((i2 & 4) != 0) {
            layoutParams = null;
        }
        return addViewSafely(viewGroup, view, i, layoutParams);
    }

    public static final boolean addViewSafely(ViewGroup viewGroup, View view, int i, ViewGroup.LayoutParams layoutParams) {
        Boolean bool;
        Intrinsics.checkNotNullParameter(viewGroup, "<this>");
        Intrinsics.checkNotNullParameter(view, "view");
        try {
            removeFromParent(view);
            if (layoutParams != null) {
                viewGroup.addView(view, i, layoutParams);
            } else {
                viewGroup.addView(view, i);
            }
            bool = Boolean.TRUE;
        } catch (Throwable unused) {
            bool = null;
        }
        return Intrinsics.areEqual(bool, Boolean.TRUE);
    }

    public static /* synthetic */ void addSingleViewSafely$default(ViewGroup viewGroup, View view, ViewGroup.LayoutParams layoutParams, int i, Object obj) {
        if ((i & 2) != 0) {
            layoutParams = null;
        }
        addSingleViewSafely(viewGroup, view, layoutParams);
    }

    public static final void addSingleViewSafely(ViewGroup viewGroup, View view, ViewGroup.LayoutParams layoutParams) {
        Intrinsics.checkNotNullParameter(viewGroup, "<this>");
        Intrinsics.checkNotNullParameter(view, "view");
        try {
            viewGroup.removeAllViews();
            Unit unit = Unit.INSTANCE;
        } catch (Throwable unused) {
        }
        addViewSafely$default(viewGroup, view, 0, layoutParams, 2, null);
    }

    public static final View findParentView(View view, Function1<? super View, Boolean> predicate) {
        Intrinsics.checkNotNullParameter(view, "<this>");
        Intrinsics.checkNotNullParameter(predicate, "predicate");
        Object parent = view.getParent();
        while (parent instanceof View) {
            View view2 = (View) parent;
            if (predicate.invoke(view2).booleanValue()) {
                return view2;
            }
            parent = view2.getParent();
        }
        return null;
    }

    public static final boolean isContentView(View view) {
        Intrinsics.checkNotNullParameter(view, "<this>");
        return view.getId() == 16908290;
    }

    public static final View findContentOrRootView(View view) {
        Intrinsics.checkNotNullParameter(view, "<this>");
        if (isContentView(view)) {
            return view;
        }
        ViewParent parent = view.getParent();
        View view2 = null;
        while (parent instanceof View) {
            view2 = (View) parent;
            if (isContentView(view2)) {
                return view2;
            }
            parent = view2.getParent();
        }
        return view2;
    }

    public static final Activity findActivity(View view) {
        Intrinsics.checkNotNullParameter(view, "<this>");
        View viewFindContentOrRootView = findContentOrRootView(view);
        Context context = viewFindContentOrRootView != null ? viewFindContentOrRootView.getContext() : null;
        if (context instanceof Activity) {
            return (Activity) context;
        }
        if (context instanceof ContextWrapper) {
            return UtilsKt.findActivity$default((ContextWrapper) context, 0, 1, null);
        }
        return null;
    }

    public static final Window findWindow(View view) {
        Intrinsics.checkNotNullParameter(view, "<this>");
        Activity activityFindActivity = findActivity(view);
        if (activityFindActivity != null) {
            return activityFindActivity.getWindow();
        }
        return null;
    }

    public static final Object awaitLayout(final View view, Continuation<? super View> continuation) {
        final CancellableContinuationImpl cancellableContinuationImpl = new CancellableContinuationImpl(IntrinsicsKt__IntrinsicsJvmKt.intercepted(continuation), 1);
        cancellableContinuationImpl.initCancellability();
        if (view.isLaidOut() && !view.isLayoutRequested()) {
            cancellableContinuationImpl.resumeWith(Result.m2760constructorimpl(view));
        } else {
            final View.OnLayoutChangeListener onLayoutChangeListener = new View.OnLayoutChangeListener() { // from class: io.bidmachine.util.ViewUtilsKt$awaitLayout$2$listener$1
                @Override // android.view.View.OnLayoutChangeListener
                public void onLayoutChange(final View view2, int i, int i2, int i3, int i4, int i5, int i6, int i7, int i8) {
                    Intrinsics.checkNotNullParameter(view2, "view");
                    view.removeOnLayoutChangeListener(this);
                    final CancellableContinuation<View> cancellableContinuation = cancellableContinuationImpl;
                    final Function0<Unit> function0 = new Function0<Unit>() { // from class: io.bidmachine.util.ViewUtilsKt$awaitLayout$2$listener$1$onLayoutChange$resume$1
                        /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
                        /* JADX WARN: Multi-variable type inference failed */
                        {
                            super(0);
                        }

                        @Override // kotlin.jvm.functions.Function0
                        public /* bridge */ /* synthetic */ Unit invoke() {
                            invoke2();
                            return Unit.INSTANCE;
                        }

                        /* JADX INFO: renamed from: invoke, reason: avoid collision after fix types in other method */
                        public final void invoke2() {
                            CancellableContinuation<View> cancellableContinuation2 = cancellableContinuation;
                            Result.Companion companion = Result.Companion;
                            cancellableContinuation2.resumeWith(Result.m2760constructorimpl(view2));
                        }
                    };
                    if (view2.isInLayout()) {
                        if (view2.post(new Runnable(function0) { // from class: io.bidmachine.util.ViewUtilsKt$sam$java_lang_Runnable$0
                            public final /* synthetic */ Function0 function;

                            {
                                Intrinsics.checkNotNullParameter(function0, "function");
                                this.function = function0;
                            }

                            @Override // java.lang.Runnable
                            public final /* synthetic */ void run() {
                                this.function.invoke();
                            }
                        })) {
                            return;
                        }
                        function0.invoke();
                        return;
                    }
                    function0.invoke();
                }
            };
            cancellableContinuationImpl.invokeOnCancellation(new Function1<Throwable, Unit>() { // from class: io.bidmachine.util.ViewUtilsKt$awaitLayout$2$1
                /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
                {
                    super(1);
                }

                @Override // kotlin.jvm.functions.Function1
                public /* bridge */ /* synthetic */ Unit invoke(Throwable th) {
                    invoke2(th);
                    return Unit.INSTANCE;
                }

                /* JADX INFO: renamed from: invoke, reason: avoid collision after fix types in other method */
                public final void invoke2(Throwable th) {
                    view.removeOnLayoutChangeListener(onLayoutChangeListener);
                }
            });
            view.addOnLayoutChangeListener(onLayoutChangeListener);
            if (!view.isLaidOut() && !view.isLayoutRequested()) {
                view.requestLayout();
            }
        }
        Object result = cancellableContinuationImpl.getResult();
        if (result == IntrinsicsKt__IntrinsicsKt.getCOROUTINE_SUSPENDED()) {
            DebugProbesKt.probeCoroutineSuspended(continuation);
        }
        return result;
    }

    public static final void addOnPreDrawListenerSafely(View view, ViewTreeObserver.OnPreDrawListener onPreDrawListener) {
        Intrinsics.checkNotNullParameter(view, "<this>");
        Intrinsics.checkNotNullParameter(onPreDrawListener, "onPreDrawListener");
        ViewTreeObserver viewTreeObserver = view.getViewTreeObserver();
        if (viewTreeObserver != null) {
            addOnPreDrawListenerSafely(viewTreeObserver, onPreDrawListener);
        }
    }

    public static final void addOnPreDrawListenerSafely(ViewTreeObserver viewTreeObserver, ViewTreeObserver.OnPreDrawListener onPreDrawListener) {
        Intrinsics.checkNotNullParameter(viewTreeObserver, "<this>");
        Intrinsics.checkNotNullParameter(onPreDrawListener, "onPreDrawListener");
        if (viewTreeObserver.isAlive()) {
            viewTreeObserver.addOnPreDrawListener(onPreDrawListener);
        }
    }

    public static final void removeOnPreDrawListenerSafely(View view, ViewTreeObserver.OnPreDrawListener onPreDrawListener) {
        Intrinsics.checkNotNullParameter(view, "<this>");
        Intrinsics.checkNotNullParameter(onPreDrawListener, "onPreDrawListener");
        ViewTreeObserver viewTreeObserver = view.getViewTreeObserver();
        if (viewTreeObserver != null) {
            removeOnPreDrawListenerSafely(viewTreeObserver, onPreDrawListener);
        }
    }

    public static final void removeOnPreDrawListenerSafely(ViewTreeObserver viewTreeObserver, ViewTreeObserver.OnPreDrawListener onPreDrawListener) {
        Intrinsics.checkNotNullParameter(viewTreeObserver, "<this>");
        Intrinsics.checkNotNullParameter(onPreDrawListener, "onPreDrawListener");
        if (viewTreeObserver.isAlive()) {
            viewTreeObserver.removeOnPreDrawListener(onPreDrawListener);
        }
    }

    public static final int getWidthDp(View view) {
        Intrinsics.checkNotNullParameter(view, "<this>");
        Context context = view.getContext();
        Intrinsics.checkNotNullExpressionValue(context, "context");
        return UtilsKt.pxToDp(context, view.getWidth());
    }

    public static final int getHeightDp(View view) {
        Intrinsics.checkNotNullParameter(view, "<this>");
        Context context = view.getContext();
        Intrinsics.checkNotNullExpressionValue(context, "context");
        return UtilsKt.pxToDp(context, view.getHeight());
    }

    public static final boolean contains(ViewGroup viewGroup, View view) {
        Intrinsics.checkNotNullParameter(viewGroup, "<this>");
        Intrinsics.checkNotNullParameter(view, "view");
        return view.getParent() == viewGroup;
    }

    public static final float measureText(Paint paint, CharSequence text) {
        Intrinsics.checkNotNullParameter(paint, "<this>");
        Intrinsics.checkNotNullParameter(text, "text");
        return paint.measureText(text, 0, text.length());
    }

    public static final String getLineText(Layout layout, int i) {
        Intrinsics.checkNotNullParameter(layout, "<this>");
        if (i < 0 || i >= layout.getLineCount()) {
            return null;
        }
        CharSequence text = layout.getText();
        Intrinsics.checkNotNullExpressionValue(text, "text");
        return text.subSequence(layout.getLineStart(i), layout.getLineEnd(i)).toString();
    }

    public static final List<String> getTextList(Layout layout) {
        String string;
        Intrinsics.checkNotNullParameter(layout, "<this>");
        ArrayList arrayList = new ArrayList();
        int lineCount = layout.getLineCount();
        for (int i = 0; i < lineCount; i++) {
            String lineText = getLineText(layout, i);
            if (lineText != null && (string = StringsKt__StringsKt.trim(lineText).toString()) != null) {
                arrayList.add(string);
            }
        }
        return arrayList;
    }

    public static final float getMaxLineWidth(Layout layout) {
        Intrinsics.checkNotNullParameter(layout, "<this>");
        int lineCount = layout.getLineCount();
        float f = UnityAdsConstants.SafeGuards.InitRequestRetryPolicy.MIN_JITTER_PCT;
        for (int i = 0; i < lineCount; i++) {
            float lineWidth = layout.getLineWidth(i);
            if (lineWidth > f) {
                f = lineWidth;
            }
        }
        return f;
    }
}
