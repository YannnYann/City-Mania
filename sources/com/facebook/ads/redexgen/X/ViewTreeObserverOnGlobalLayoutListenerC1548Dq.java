package com.facebook.ads.redexgen.X;

import android.os.Build;
import android.view.View;
import android.view.ViewTreeObserver;
import java.util.Iterator;
import java.util.Map;
import java.util.WeakHashMap;

/* JADX INFO: renamed from: com.facebook.ads.redexgen.X.Dq, reason: case insensitive filesystem */
/* JADX INFO: loaded from: assets/audience_network/classes.dex */
public class ViewTreeObserverOnGlobalLayoutListenerC1548Dq implements ViewTreeObserver.OnGlobalLayoutListener, View.OnAttachStateChangeListener {
    public final WeakHashMap<View, Boolean> A00 = new WeakHashMap<>();

    /* JADX WARN: Failed to parse debug info
    java.lang.ArrayIndexOutOfBoundsException
     */
    private void A01(Map.Entry<View, Boolean> entry) {
        View key = entry.getKey();
        boolean zBooleanValue = entry.getValue().booleanValue();
        boolean z = key.isShown() && key.getWindowVisibility() == 0;
        if (zBooleanValue != z) {
            EC.A05(key, z ? 16 : 32);
            entry.setValue(Boolean.valueOf(z));
        }
    }

    private void A00(View view) {
        view.getViewTreeObserver().addOnGlobalLayoutListener(this);
    }

    @Override // android.view.ViewTreeObserver.OnGlobalLayoutListener
    public final void onGlobalLayout() {
        if (Build.VERSION.SDK_INT < 28) {
            Iterator<Map.Entry<View, Boolean>> it = this.A00.entrySet().iterator();
            while (it.hasNext()) {
                A01(it.next());
            }
        }
    }

    @Override // android.view.View.OnAttachStateChangeListener
    public final void onViewAttachedToWindow(View view) {
        A00(view);
    }

    @Override // android.view.View.OnAttachStateChangeListener
    public final void onViewDetachedFromWindow(View view) {
    }
}
