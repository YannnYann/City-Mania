package com.facebook.ads.redexgen.X;

import android.os.Bundle;
import android.view.View;
import android.view.accessibility.AccessibilityNodeProvider;

/* JADX INFO: loaded from: assets/audience_network/classes.dex */
public class JN extends C2542hE {
    @Override // com.facebook.ads.redexgen.X.C2542hE
    public final View.AccessibilityDelegate A00(AbstractC2543hF abstractC2543hF) {
        return new C2540hC(this, abstractC2543hF);
    }

    @Override // com.facebook.ads.redexgen.X.C2542hE
    public final C2591i2 A01(View.AccessibilityDelegate accessibilityDelegate, View view) {
        AccessibilityNodeProvider accessibilityNodeProvider = accessibilityDelegate.getAccessibilityNodeProvider(view);
        if (accessibilityNodeProvider != null) {
            return new C2591i2(accessibilityNodeProvider);
        }
        return null;
    }

    @Override // com.facebook.ads.redexgen.X.C2542hE
    public final boolean A02(View.AccessibilityDelegate accessibilityDelegate, View view, int i, Bundle bundle) {
        return accessibilityDelegate.performAccessibilityAction(view, i, bundle);
    }
}
