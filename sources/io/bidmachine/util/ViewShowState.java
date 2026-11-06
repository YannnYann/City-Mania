package io.bidmachine.util;

import android.view.View;
import android.view.ViewGroup;
import android.view.ViewParent;
import java.lang.ref.WeakReference;
import kotlin.jvm.internal.Intrinsics;

/* JADX INFO: compiled from: ViewShowState.kt */
/* JADX INFO: loaded from: classes5.dex */
public final class ViewShowState {
    public int index = -1;
    public ViewGroup.LayoutParams layoutParams;
    public WeakReference<ViewGroup> weakParent;

    public final void saveViewShowState(View view) {
        Intrinsics.checkNotNullParameter(view, "view");
        ViewParent parent = view.getParent();
        ViewGroup viewGroup = parent instanceof ViewGroup ? (ViewGroup) parent : null;
        if (viewGroup == null) {
            return;
        }
        this.weakParent = new WeakReference<>(viewGroup);
        this.layoutParams = view.getLayoutParams();
        this.index = viewGroup.indexOfChild(view);
    }

    public final void restoreViewShowState(View view) {
        ViewGroup viewGroup;
        Intrinsics.checkNotNullParameter(view, "view");
        WeakReference<ViewGroup> weakReference = this.weakParent;
        if (weakReference != null && (viewGroup = weakReference.get()) != null) {
            ViewUtilsKt.addViewSafely(viewGroup, view, this.index, this.layoutParams);
        }
        clear();
    }

    public final void clear() {
        WeakReference<ViewGroup> weakReference = this.weakParent;
        if (weakReference != null) {
            weakReference.clear();
        }
        this.weakParent = null;
        this.layoutParams = null;
        this.index = -1;
    }
}
