package com.iab.omid.library.vungle.adsession;

import android.view.View;
import android.view.ViewTreeObserver;
import com.iab.omid.library.vungle.internal.i;

/* JADX INFO: loaded from: classes3.dex */
class AdSessionViewTracker {
    private View.OnAttachStateChangeListener attachChangeListener;
    private ViewTreeObserver.OnWindowFocusChangeListener focusChangeListener;
    private com.iab.omid.library.vungle.weakreference.a weakTrackedView = new com.iab.omid.library.vungle.weakreference.a(null);

    /* JADX INFO: Access modifiers changed from: private */
    public void registerFocusListener(View view) {
        if (this.focusChangeListener == null) {
            this.focusChangeListener = new ViewTreeObserver.OnWindowFocusChangeListener() { // from class: com.iab.omid.library.vungle.adsession.AdSessionViewTracker.2
                @Override // android.view.ViewTreeObserver.OnWindowFocusChangeListener
                public void onWindowFocusChanged(boolean z) {
                    i.c().d();
                }
            };
            view.getViewTreeObserver().addOnWindowFocusChangeListener(this.focusChangeListener);
            if (view.hasWindowFocus()) {
                i.c().d();
            }
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void unregisterFocusListener(View view) {
        if (this.focusChangeListener != null) {
            if (view.getViewTreeObserver().isAlive()) {
                view.getViewTreeObserver().removeOnWindowFocusChangeListener(this.focusChangeListener);
            }
            this.focusChangeListener = null;
        }
    }

    public void stopTracking() {
        View view = this.weakTrackedView.get();
        if (view != null) {
            View.OnAttachStateChangeListener onAttachStateChangeListener = this.attachChangeListener;
            if (onAttachStateChangeListener != null) {
                view.removeOnAttachStateChangeListener(onAttachStateChangeListener);
                this.attachChangeListener = null;
            }
            unregisterFocusListener(view);
        }
        this.weakTrackedView.clear();
    }

    public void trackView(View view) {
        stopTracking();
        if (view == null) {
            return;
        }
        this.weakTrackedView = new com.iab.omid.library.vungle.weakreference.a(view);
        View.OnAttachStateChangeListener onAttachStateChangeListener = new View.OnAttachStateChangeListener() { // from class: com.iab.omid.library.vungle.adsession.AdSessionViewTracker.1
            @Override // android.view.View.OnAttachStateChangeListener
            public void onViewAttachedToWindow(View view2) {
                AdSessionViewTracker.this.registerFocusListener(view2);
            }

            @Override // android.view.View.OnAttachStateChangeListener
            public void onViewDetachedFromWindow(View view2) {
                AdSessionViewTracker.this.unregisterFocusListener(view2);
            }
        };
        this.attachChangeListener = onAttachStateChangeListener;
        view.addOnAttachStateChangeListener(onAttachStateChangeListener);
        if (view.isAttachedToWindow()) {
            registerFocusListener(view);
        }
    }
}
