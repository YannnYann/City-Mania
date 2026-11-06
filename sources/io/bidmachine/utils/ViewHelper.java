package io.bidmachine.utils;

import android.view.View;
import android.view.ViewGroup;
import io.bidmachine.core.Logger;

/* JADX INFO: loaded from: classes5.dex */
public class ViewHelper {
    public static void removeViewFromParent(View view) {
        if (view != null && (view.getParent() instanceof ViewGroup)) {
            ((ViewGroup) view.getParent()).removeView(view);
        }
    }

    public static void safeAddSingleView(ViewGroup viewGroup, View view, ViewGroup.LayoutParams layoutParams) {
        try {
            viewGroup.removeAllViews();
        } catch (Exception e) {
            Logger.w(e);
        }
        safeAddView(viewGroup, view, layoutParams);
    }

    public static void safeAddView(ViewGroup viewGroup, View view, ViewGroup.LayoutParams layoutParams) {
        try {
            removeViewFromParent(view);
            if (layoutParams != null) {
                viewGroup.addView(view, layoutParams);
            } else {
                viewGroup.addView(view);
            }
        } catch (Exception e) {
            Logger.w(e);
        }
    }
}
