package com.facebook.ads.redexgen.X;

import android.view.View;
import android.view.animation.AlphaAnimation;
import com.facebook.ads.internal.api.BuildConfigApi;
import com.facebook.ads.internal.settings.AdInternalSettings;
import com.unity3d.services.UnityAdsConstants;

/* JADX INFO: renamed from: com.facebook.ads.redexgen.X.4v, reason: invalid class name and case insensitive filesystem */
/* JADX INFO: loaded from: assets/audience_network/classes.dex */
public final class C13364v extends G2<C2224c2> implements InterfaceC2776l6 {
    public static String[] A02 = {"iVby5wy6H7l4dzY0Hld0xs9tuHtnGk", "Nr0U5YnFPaRVMsCPPiWFbDdqiRS3TX59", "NmHEOi9mcJk9OQjZmIqLk3AYwOx5ICK3", "j6OxXppfxNxejmkkIb10P2S2ED13bfax", "YxA", "okdCTGqDBxOQkU", "XAA3rxsPdfTGxXL8JCFSxOB2RupP9g", "Mu"};
    public C1643Hi A00;
    public boolean A01;

    public C13364v(C2224c2 c2224c2, C1643Hi c1643Hi) {
        super(c2224c2);
        this.A00 = c1643Hi;
        this.A01 = false;
    }

    private void A00(int i) {
        if (!this.A01) {
            this.A00.A0F().A4L(i);
        }
        String[] strArr = A02;
        if (strArr[0].length() != strArr[6].length()) {
            throw new RuntimeException();
        }
        A02[1] = "k6Oe58jhR2JQ133LIP7LsY5lW6eco9l5";
        this.A01 = true;
    }

    @Override // com.facebook.ads.redexgen.X.AbstractRunnableC3004oq
    public final void A07() {
        C2224c2 c2224c2A08 = A08();
        int iIntValue = 0;
        if (c2224c2A08 == null) {
            A00(0);
            return;
        }
        View view = c2224c2A08.A0C;
        AbstractC2225c3 abstractC2225c3 = (AbstractC2225c3) c2224c2A08.A0E.get();
        int i = 1;
        boolean z = view == null;
        if (!z && abstractC2225c3 != null) {
            C2222c0 c2222c0A0E = C2224c2.A0E(view, c2224c2A08.A0A, this.A00);
            if (c2222c0A0E.A04()) {
                C2224c2.A05(c2224c2A08);
            } else {
                c2224c2A08.A00 = 0;
            }
            boolean z2 = c2224c2A08.A00 > c2224c2A08.A09;
            boolean wasViewable = c2224c2A08.A05 != null && c2224c2A08.A05.A04();
            if (z2 || !c2222c0A0E.A04()) {
                c2224c2A08.A05 = c2222c0A0E;
            }
            String strValueOf = String.valueOf(c2222c0A0E.A01());
            synchronized (c2224c2A08) {
                if (c2224c2A08.A06.containsKey(strValueOf)) {
                    iIntValue = ((Integer) c2224c2A08.A06.get(strValueOf)).intValue();
                }
                c2224c2A08.A06.put(strValueOf, Integer.valueOf(iIntValue + 1));
            }
            if (z2 && !wasViewable) {
                this.A01 = true;
                c2224c2A08.A03 = System.currentTimeMillis();
                if (c2224c2A08.A07) {
                    this.A00.A0F().A4M();
                }
                abstractC2225c3.A03();
                if (BuildConfigApi.isDebug() && AdInternalSettings.isVisibleAnimation()) {
                    AlphaAnimation alphaAnimation = new AlphaAnimation(1.0f, UnityAdsConstants.SafeGuards.InitRequestRetryPolicy.MIN_JITTER_PCT);
                    alphaAnimation.setDuration(500L);
                    view.startAnimation(alphaAnimation);
                }
                if (!c2224c2A08.A0F) {
                    return;
                }
            } else if (!z2 && wasViewable) {
                this.A01 = true;
                if (c2224c2A08.A07) {
                    this.A00.A0F().A3o(c2222c0A0E.A02());
                }
                abstractC2225c3.A00();
            } else {
                abstractC2225c3.A02();
                if (!this.A01 && c2224c2A08.A07) {
                    this.A00.A0F().A4K(c2222c0A0E.A02());
                }
                this.A01 = true;
            }
            if (!c2224c2A08.A08 && c2224c2A08.A04 != null) {
                c2224c2A08.A0B.postDelayed(c2224c2A08.A04, c2224c2A08.A02);
                return;
            }
            return;
        }
        if (c2224c2A08.A07) {
            if (!z) {
                i = 2;
            }
            A00(i);
        }
    }

    @Override // com.facebook.ads.redexgen.X.InterfaceC2776l6
    public final C1643Hi A7M() {
        return this.A00;
    }
}
