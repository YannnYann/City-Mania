package com.ironsource.adqualitysdk.sdk.i;

import android.R;
import android.app.Activity;
import android.view.View;
import android.view.ViewGroup;
import android.view.ViewParent;

/* JADX INFO: renamed from: com.ironsource.adqualitysdk.sdk.i.丿, reason: contains not printable characters */
/* JADX INFO: loaded from: classes3.dex */
public final class C0834 implements z0 {

    /* JADX INFO: renamed from: ﾒ, reason: contains not printable characters */
    public final /* synthetic */ C0752 f3189;

    public C0834(C0752 c0752) {
        this.f3189 = c0752;
    }

    @Override // com.ironsource.adqualitysdk.sdk.i.z0
    /* JADX INFO: renamed from: ﾇ */
    public final void mo972(View view) {
    }

    @Override // com.ironsource.adqualitysdk.sdk.i.z0
    /* JADX INFO: renamed from: ﾒ */
    public final void mo975(View view) {
        boolean z;
        C0204 c0204M1165 = C0204.m1165();
        synchronized (c0204M1165) {
            z = c0204M1165.f1362;
        }
        if (z) {
            this.f3189.m1438();
            return;
        }
        if (view instanceof ViewGroup) {
            ViewGroup viewGroup = (ViewGroup) view;
            if (viewGroup.getContext() instanceof Activity) {
                ViewGroup viewGroup2 = (ViewGroup) ((Activity) viewGroup.getContext()).findViewById(R.id.content);
                this.f3189.getClass();
                if (viewGroup2 != null) {
                    ViewGroup viewGroup3 = viewGroup2;
                    while (true) {
                        if (viewGroup2 != null) {
                            ViewParent parent = viewGroup2.getParent();
                            if (parent != viewGroup) {
                                if (!(parent instanceof ViewGroup)) {
                                    break;
                                }
                                viewGroup3 = viewGroup2;
                                viewGroup2 = (ViewGroup) parent;
                            } else if (viewGroup3 == viewGroup2) {
                                break;
                            } else {
                                viewGroup = viewGroup3;
                            }
                        } else {
                            break;
                        }
                    }
                    viewGroup = viewGroup2;
                }
            }
            C0752 c0752 = this.f3189;
            c0752.getClass();
            C0752.m1437(c0752, viewGroup, new ViewOnLayoutChangeListenerC0808(c0752, viewGroup));
        }
    }
}
