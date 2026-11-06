package com.facebook.ads.redexgen.X;

import android.animation.Animator;
import android.animation.AnimatorListenerAdapter;
import android.view.View;
import com.unity3d.services.UnityAdsConstants;

/* JADX INFO: renamed from: com.facebook.ads.redexgen.X.dC, reason: case insensitive filesystem */
/* JADX INFO: loaded from: assets/audience_network/classes.dex */
public class C2296dC extends AnimatorListenerAdapter {
    public static String[] A01 = {"3J5cDVad4mW9vkElMc3OsUS7r8EZlE39", "h6bRkPy553bCAy1amrHUM8RqxgIOW2o8", "fpksqhdo9EiL3TJLaFmG7oCu1r9K", "lJjW0qitu5NILdXsS3BRz5RQsDn5loSa", "jrjPtqo2TtT08iP8QxuH9QitSJIqaNJp", "hUMcZshotDkSaD7wdQ9kJfmyHpwJvjMA", "tSCKCWomP5vbOsQQ1Yiozev7D3nD5ATQ", "aWL5kyBMd9kZhCXXBXyyL0Q3N4I1ZWNc"};
    public final /* synthetic */ C1461Ah A00;

    public C2296dC(C1461Ah c1461Ah) {
        this.A00 = c1461Ah;
    }

    @Override // android.animation.AnimatorListenerAdapter, android.animation.Animator.AnimatorListener
    public final void onAnimationCancel(Animator animator) {
        if (this.A00.A04) {
            View view = this.A00.A03;
            String[] strArr = A01;
            if (strArr[7].charAt(14) != strArr[3].charAt(14)) {
                throw new RuntimeException();
            }
            String[] strArr2 = A01;
            strArr2[1] = "5h3ewWtRejeXOmvUGpWApkn5USeyTQr7";
            strArr2[6] = "VmmYRwr0EoTUCeedPY4atWiJqM07FMep";
            AbstractC3111qc.A0I(view);
        }
        this.A00.A03.setAlpha(UnityAdsConstants.SafeGuards.InitRequestRetryPolicy.MIN_JITTER_PCT);
        this.A00.A01 = EnumC2322dc.A05;
        if (this.A00.A00 != null) {
            this.A00.A00.setListener(null);
            this.A00.A00 = null;
        }
    }

    @Override // android.animation.AnimatorListenerAdapter, android.animation.Animator.AnimatorListener
    public final void onAnimationEnd(Animator animator) {
        this.A00.A01 = EnumC2322dc.A03;
        if (this.A00.A00 != null) {
            this.A00.A00.setListener(null);
            this.A00.A00 = null;
        }
    }
}
