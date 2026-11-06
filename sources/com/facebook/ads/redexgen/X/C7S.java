package com.facebook.ads.redexgen.X;

import android.animation.TimeInterpolator;
import android.animation.ValueAnimator;
import android.view.View;
import android.view.ViewPropertyAnimator;
import com.unity3d.services.UnityAdsConstants;
import java.util.ArrayList;
import java.util.Iterator;
import java.util.List;

/* JADX INFO: renamed from: com.facebook.ads.redexgen.X.7S, reason: invalid class name */
/* JADX INFO: loaded from: assets/audience_network/classes.dex */
public final class C7S extends AbstractC1661Ia {
    public static TimeInterpolator A0B;
    public static String[] A0C = {"K3xavpXOVVnTPS8V8FmisIpuez1NdmFn", "QjoCrUVtXYT15qNhmppxWCsnlOvXMRWn", "HVYav4KnfeU3lAWSFDiSVAYelCZD7hW1", "SKhwmHHGUoQzTLK2kw5WKB1efbL3jYLm", "aZpNXGptJoOcjVlsPlgA0RFw1bcc4fI1", "y8DDj9eTKGlZyxtiH83YwnquX80t2qUq", "Eqht3urb", "PkOCx2w9GPXTa0iGANdHxOJetOGxrMw0"};
    public ArrayList<AbstractC2663jE> A0A = new ArrayList<>();
    public ArrayList<AbstractC2663jE> A07 = new ArrayList<>();
    public ArrayList<C2619iU> A09 = new ArrayList<>();
    public ArrayList<C2618iT> A08 = new ArrayList<>();
    public ArrayList<ArrayList<AbstractC2663jE>> A01 = new ArrayList<>();
    public ArrayList<ArrayList<C2619iU>> A05 = new ArrayList<>();
    public ArrayList<ArrayList<C2618iT>> A03 = new ArrayList<>();
    public ArrayList<AbstractC2663jE> A00 = new ArrayList<>();
    public ArrayList<AbstractC2663jE> A04 = new ArrayList<>();
    public ArrayList<AbstractC2663jE> A06 = new ArrayList<>();
    public ArrayList<AbstractC2663jE> A02 = new ArrayList<>();

    /* JADX WARN: Failed to parse debug info
    java.lang.ArrayIndexOutOfBoundsException
     */
    @Override // com.facebook.ads.redexgen.X.AbstractC2641is
    public final void A0H() {
        for (int size = this.A09.size() - 1; size >= 0; size--) {
            C2619iU c2619iU = this.A09.get(size);
            View view = c2619iU.A04.A0H;
            view.setTranslationY(UnityAdsConstants.SafeGuards.InitRequestRetryPolicy.MIN_JITTER_PCT);
            view.setTranslationX(UnityAdsConstants.SafeGuards.InitRequestRetryPolicy.MIN_JITTER_PCT);
            A0U(c2619iU.A04);
            this.A09.remove(size);
        }
        for (int size2 = this.A0A.size() - 1; size2 >= 0; size2--) {
            A0V(this.A0A.get(size2));
            this.A0A.remove(size2);
        }
        for (int size3 = this.A07.size() - 1; size3 >= 0; size3--) {
            AbstractC2663jE abstractC2663jE = this.A07.get(size3);
            abstractC2663jE.A0H.setAlpha(1.0f);
            A0T(abstractC2663jE);
            this.A07.remove(size3);
        }
        for (int size4 = this.A08.size() - 1; size4 >= 0; size4--) {
            A00(this.A08.get(size4));
        }
        this.A08.clear();
        if (A0M()) {
            for (int size5 = this.A05.size() - 1; size5 >= 0; size5--) {
                ArrayList<C2619iU> arrayList = this.A05.get(size5);
                for (int size6 = arrayList.size() - 1; size6 >= 0; size6--) {
                    C2619iU c2619iU2 = arrayList.get(size6);
                    View view2 = c2619iU2.A04.A0H;
                    view2.setTranslationY(UnityAdsConstants.SafeGuards.InitRequestRetryPolicy.MIN_JITTER_PCT);
                    view2.setTranslationX(UnityAdsConstants.SafeGuards.InitRequestRetryPolicy.MIN_JITTER_PCT);
                    A0U(c2619iU2.A04);
                    arrayList.remove(size6);
                    if (arrayList.isEmpty()) {
                        this.A05.remove(arrayList);
                    }
                }
            }
            for (int size7 = this.A01.size() - 1; size7 >= 0; size7--) {
                ArrayList<AbstractC2663jE> arrayList2 = this.A01.get(size7);
                for (int size8 = arrayList2.size() - 1; size8 >= 0; size8--) {
                    AbstractC2663jE abstractC2663jE2 = arrayList2.get(size8);
                    abstractC2663jE2.A0H.setAlpha(1.0f);
                    A0T(abstractC2663jE2);
                    arrayList2.remove(size8);
                    if (arrayList2.isEmpty()) {
                        this.A01.remove(arrayList2);
                    }
                }
            }
            for (int size9 = this.A03.size() - 1; size9 >= 0; size9--) {
                ArrayList<C2618iT> arrayList3 = this.A03.get(size9);
                for (int size10 = arrayList3.size() - 1; size10 >= 0; size10--) {
                    A00(arrayList3.get(size10));
                    if (arrayList3.isEmpty()) {
                        this.A03.remove(arrayList3);
                    }
                }
            }
            A03(this.A06);
            A03(this.A04);
            A03(this.A00);
            A03(this.A02);
            A0G();
        }
    }

    /* JADX WARN: Failed to parse debug info
    java.lang.ArrayIndexOutOfBoundsException
     */
    @Override // com.facebook.ads.redexgen.X.AbstractC2641is
    public final void A0I() {
        boolean z = !this.A0A.isEmpty();
        boolean z2 = !this.A09.isEmpty();
        boolean z3 = !this.A08.isEmpty();
        boolean z4 = !this.A07.isEmpty();
        if (z || z2 || z4 || z3) {
            Iterator<AbstractC2663jE> it = this.A0A.iterator();
            while (it.hasNext()) {
                A01(it.next());
            }
            this.A0A.clear();
            if (z2) {
                ArrayList<C2619iU> arrayList = new ArrayList<>();
                arrayList.addAll(this.A09);
                this.A05.add(arrayList);
                this.A09.clear();
                RunnableC2610iL runnableC2610iL = new RunnableC2610iL(this, arrayList);
                if (z) {
                    AbstractC2565hb.A0E(arrayList.get(0).A04.A0H, runnableC2610iL, A0D());
                } else {
                    runnableC2610iL.run();
                }
            }
            if (z3) {
                ArrayList<C2618iT> arrayList2 = new ArrayList<>();
                arrayList2.addAll(this.A08);
                this.A03.add(arrayList2);
                this.A08.clear();
                RunnableC2611iM runnableC2611iM = new RunnableC2611iM(this, arrayList2);
                if (z) {
                    AbstractC2565hb.A0E(arrayList2.get(0).A05.A0H, runnableC2611iM, A0D());
                } else {
                    runnableC2611iM.run();
                }
            }
            if (z4) {
                ArrayList<AbstractC2663jE> arrayList3 = new ArrayList<>();
                arrayList3.addAll(this.A07);
                this.A01.add(arrayList3);
                this.A07.clear();
                RunnableC2612iN runnableC2612iN = new RunnableC2612iN(this, arrayList3);
                if (!z && !z2 && !z3) {
                    runnableC2612iN.run();
                    return;
                }
                if (A0C[0].charAt(3) == 'S') {
                    throw new RuntimeException();
                }
                String[] strArr = A0C;
                strArr[4] = "oGS3g0YSOogxL8fDiPQ9wWzcLRV8E0qu";
                strArr[3] = "UwBhVdK7HoWqzQqehBBKiWd5H5AJwN9O";
                AbstractC2565hb.A0E(arrayList3.get(0).A0H, runnableC2612iN, Math.max(z2 ? A0C() : 0L, z3 ? A0B() : 0L) + (z ? A0D() : 0L));
            }
        }
    }

    /* JADX WARN: Failed to parse debug info
    java.lang.ArrayIndexOutOfBoundsException
     */
    @Override // com.facebook.ads.redexgen.X.AbstractC1661Ia
    public final boolean A0Z(AbstractC2663jE abstractC2663jE, int i, int i2, int i3, int i4) {
        View view = abstractC2663jE.A0H;
        int translationX = i + ((int) abstractC2663jE.A0H.getTranslationX());
        int translationY = i2 + ((int) abstractC2663jE.A0H.getTranslationY());
        A02(abstractC2663jE);
        int i5 = i3 - translationX;
        int i6 = i4 - translationY;
        if (i5 == 0 && i6 == 0) {
            A0U(abstractC2663jE);
            return false;
        }
        if (i5 != 0) {
            view.setTranslationX(-i5);
        }
        if (i6 != 0) {
            view.setTranslationY(-i6);
        }
        this.A09.add(new C2619iU(abstractC2663jE, translationX, translationY, i3, i4));
        return true;
    }

    private void A00(C2618iT c2618iT) {
        if (c2618iT.A05 != null) {
            A05(c2618iT, c2618iT.A05);
        }
        if (c2618iT.A04 != null) {
            A05(c2618iT, c2618iT.A04);
        }
    }

    private void A01(AbstractC2663jE abstractC2663jE) {
        View view = abstractC2663jE.A0H;
        ViewPropertyAnimator viewPropertyAnimatorAnimate = view.animate();
        this.A06.add(abstractC2663jE);
        ViewPropertyAnimator animation = viewPropertyAnimatorAnimate.setDuration(A0D());
        animation.alpha(UnityAdsConstants.SafeGuards.InitRequestRetryPolicy.MIN_JITTER_PCT).setListener(new C2613iO(this, abstractC2663jE, viewPropertyAnimatorAnimate, view)).start();
    }

    private void A02(AbstractC2663jE abstractC2663jE) {
        if (A0B == null) {
            A0B = new ValueAnimator().getInterpolator();
        }
        abstractC2663jE.A0H.animate().setInterpolator(A0B);
        A0L(abstractC2663jE);
    }

    private final void A03(List<AbstractC2663jE> list) {
        for (int size = list.size() - 1; size >= 0; size--) {
            list.get(size).A0H.animate().cancel();
        }
    }

    private void A04(List<C2618iT> list, AbstractC2663jE abstractC2663jE) {
        for (int size = list.size() - 1; size >= 0; size--) {
            C2618iT changeInfo = list.get(size);
            if (A05(changeInfo, abstractC2663jE) && changeInfo.A05 == null && changeInfo.A04 == null) {
                list.remove(changeInfo);
            }
        }
    }

    private boolean A05(C2618iT c2618iT, AbstractC2663jE abstractC2663jE) {
        boolean z = false;
        if (c2618iT.A04 == abstractC2663jE) {
            c2618iT.A04 = null;
        } else if (c2618iT.A05 == abstractC2663jE) {
            c2618iT.A05 = null;
            z = true;
        } else {
            return false;
        }
        abstractC2663jE.A0H.setAlpha(1.0f);
        abstractC2663jE.A0H.setTranslationX(UnityAdsConstants.SafeGuards.InitRequestRetryPolicy.MIN_JITTER_PCT);
        abstractC2663jE.A0H.setTranslationY(UnityAdsConstants.SafeGuards.InitRequestRetryPolicy.MIN_JITTER_PCT);
        A0W(abstractC2663jE, z);
        return true;
    }

    /* JADX WARN: Code restructure failed: missing block: B:35:0x00d6, code lost:
    
        r5 = r5 - 1;
     */
    @Override // com.facebook.ads.redexgen.X.AbstractC2641is
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct code enable 'Show inconsistent code' option in preferences
    */
    public final void A0L(com.facebook.ads.redexgen.X.AbstractC2663jE r10) {
        /*
            Method dump skipped, instruction units count: 312
            To view this dump change 'Code comments level' option to 'DEBUG'
        */
        throw new UnsupportedOperationException("Method not decompiled: com.facebook.ads.redexgen.X.C7S.A0L(com.facebook.ads.redexgen.X.jE):void");
    }

    /* JADX WARN: Removed duplicated region for block: B:20:0x0073  */
    @Override // com.facebook.ads.redexgen.X.AbstractC2641is
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct code enable 'Show inconsistent code' option in preferences
    */
    public final boolean A0M() {
        /*
            r4 = this;
            java.util.ArrayList<com.facebook.ads.redexgen.X.jE> r0 = r4.A07
            boolean r0 = r0.isEmpty()
            if (r0 == 0) goto Lb8
            java.util.ArrayList<com.facebook.ads.redexgen.X.iT> r0 = r4.A08
            boolean r0 = r0.isEmpty()
            if (r0 == 0) goto Lb8
            java.util.ArrayList<com.facebook.ads.redexgen.X.iU> r0 = r4.A09
            boolean r0 = r0.isEmpty()
            if (r0 == 0) goto Lb8
            java.util.ArrayList<com.facebook.ads.redexgen.X.jE> r0 = r4.A0A
            boolean r0 = r0.isEmpty()
            if (r0 == 0) goto Lb8
            java.util.ArrayList<com.facebook.ads.redexgen.X.jE> r0 = r4.A04
            boolean r3 = r0.isEmpty()
            java.lang.String[] r2 = com.facebook.ads.redexgen.X.C7S.A0C
            r0 = 2
            r1 = r2[r0]
            r0 = 5
            r2 = r2[r0]
            r0 = 18
            char r1 = r1.charAt(r0)
            char r0 = r2.charAt(r0)
            if (r1 == r0) goto La5
            java.lang.String[] r2 = com.facebook.ads.redexgen.X.C7S.A0C
            java.lang.String r1 = "HATKbuX1ioRbKjbJza4uRkbMkwnilInw"
            r0 = 4
            r2[r0] = r1
            java.lang.String r1 = "55W5G9gSwoJRpeM2nuMk9rdzPBhIsXI5"
            r0 = 3
            r2[r0] = r1
            if (r3 == 0) goto Lb8
            java.util.ArrayList<com.facebook.ads.redexgen.X.jE> r0 = r4.A06
            boolean r0 = r0.isEmpty()
            if (r0 == 0) goto Lb8
            java.util.ArrayList<com.facebook.ads.redexgen.X.jE> r0 = r4.A00
            boolean r3 = r0.isEmpty()
            java.lang.String[] r2 = com.facebook.ads.redexgen.X.C7S.A0C
            r0 = 2
            r1 = r2[r0]
            r0 = 5
            r2 = r2[r0]
            r0 = 18
            char r1 = r1.charAt(r0)
            char r0 = r2.charAt(r0)
            if (r1 == r0) goto La2
            java.lang.String[] r2 = com.facebook.ads.redexgen.X.C7S.A0C
            java.lang.String r1 = "PBqWGImhwZdo7IXQpaNFK9QlBHxMp4wk"
            r0 = 7
            r2[r0] = r1
            if (r3 == 0) goto Lb8
        L73:
            java.util.ArrayList<com.facebook.ads.redexgen.X.jE> r0 = r4.A02
            boolean r0 = r0.isEmpty()
            if (r0 == 0) goto Lb8
            java.util.ArrayList<java.util.ArrayList<com.facebook.ads.redexgen.X.iU>> r0 = r4.A05
            boolean r0 = r0.isEmpty()
            if (r0 == 0) goto Lb8
            java.util.ArrayList<java.util.ArrayList<com.facebook.ads.redexgen.X.jE>> r0 = r4.A01
            boolean r0 = r0.isEmpty()
            if (r0 == 0) goto Lb8
            java.util.ArrayList<java.util.ArrayList<com.facebook.ads.redexgen.X.iT>> r3 = r4.A03
            java.lang.String[] r1 = com.facebook.ads.redexgen.X.C7S.A0C
            r0 = 7
            r1 = r1[r0]
            r0 = 30
            char r1 = r1.charAt(r0)
            r0 = 119(0x77, float:1.67E-43)
            if (r1 == r0) goto Lab
            java.lang.RuntimeException r0 = new java.lang.RuntimeException
            r0.<init>()
            throw r0
        La2:
            if (r3 == 0) goto Lb8
            goto L73
        La5:
            java.lang.RuntimeException r0 = new java.lang.RuntimeException
            r0.<init>()
            throw r0
        Lab:
            java.lang.String[] r2 = com.facebook.ads.redexgen.X.C7S.A0C
            java.lang.String r1 = "80rjjAfjuSoUPBYOWBOUrC4mhnJBtDwK"
            r0 = 7
            r2[r0] = r1
            boolean r0 = r3.isEmpty()
            if (r0 != 0) goto Lba
        Lb8:
            r0 = 1
        Lb9:
            return r0
        Lba:
            r0 = 0
            goto Lb9
        */
        throw new UnsupportedOperationException("Method not decompiled: com.facebook.ads.redexgen.X.C7S.A0M():boolean");
    }

    @Override // com.facebook.ads.redexgen.X.AbstractC2641is
    public final boolean A0S(AbstractC2663jE abstractC2663jE, List<Object> payloads) {
        return !payloads.isEmpty() || super.A0S(abstractC2663jE, payloads);
    }

    @Override // com.facebook.ads.redexgen.X.AbstractC1661Ia
    public final boolean A0X(AbstractC2663jE abstractC2663jE) {
        A02(abstractC2663jE);
        abstractC2663jE.A0H.setAlpha(UnityAdsConstants.SafeGuards.InitRequestRetryPolicy.MIN_JITTER_PCT);
        this.A07.add(abstractC2663jE);
        return true;
    }

    @Override // com.facebook.ads.redexgen.X.AbstractC1661Ia
    public final boolean A0Y(AbstractC2663jE abstractC2663jE) {
        A02(abstractC2663jE);
        this.A0A.add(abstractC2663jE);
        return true;
    }

    @Override // com.facebook.ads.redexgen.X.AbstractC1661Ia
    public final boolean A0a(AbstractC2663jE abstractC2663jE, AbstractC2663jE abstractC2663jE2, int i, int i2, int i3, int i4) {
        if (abstractC2663jE == abstractC2663jE2) {
            return A0Z(abstractC2663jE, i, i2, i3, i4);
        }
        float translationX = abstractC2663jE.A0H.getTranslationX();
        float translationY = abstractC2663jE.A0H.getTranslationY();
        float prevTranslationY = abstractC2663jE.A0H.getAlpha();
        A02(abstractC2663jE);
        float prevTranslationX = i3 - i;
        int deltaY = (int) (prevTranslationX - translationX);
        float prevTranslationX2 = i4 - i2;
        int deltaX = (int) (prevTranslationX2 - translationY);
        abstractC2663jE.A0H.setTranslationX(translationX);
        abstractC2663jE.A0H.setTranslationY(translationY);
        abstractC2663jE.A0H.setAlpha(prevTranslationY);
        if (abstractC2663jE2 != null) {
            A02(abstractC2663jE2);
            float prevTranslationX3 = -deltaY;
            abstractC2663jE2.A0H.setTranslationX(prevTranslationX3);
            float prevTranslationX4 = -deltaX;
            abstractC2663jE2.A0H.setTranslationY(prevTranslationX4);
            abstractC2663jE2.A0H.setAlpha(UnityAdsConstants.SafeGuards.InitRequestRetryPolicy.MIN_JITTER_PCT);
        }
        this.A08.add(new C2618iT(abstractC2663jE, abstractC2663jE2, i, i2, i3, i4));
        return true;
    }

    public final void A0b() {
        if (!A0M()) {
            A0G();
        }
    }

    public final void A0c(C2618iT c2618iT) {
        View view;
        AbstractC2663jE holder = c2618iT.A05;
        if (holder == null) {
            view = null;
        } else {
            view = holder.A0H;
        }
        AbstractC2663jE holder2 = c2618iT.A04;
        View view2 = holder2 != null ? holder2.A0H : null;
        if (view != null) {
            ViewPropertyAnimator oldViewAnim = view.animate().setDuration(A0B());
            this.A02.add(c2618iT.A05);
            oldViewAnim.translationX(c2618iT.A02 - c2618iT.A00);
            oldViewAnim.translationY(c2618iT.A03 - c2618iT.A01);
            oldViewAnim.alpha(UnityAdsConstants.SafeGuards.InitRequestRetryPolicy.MIN_JITTER_PCT).setListener(new C2616iR(this, c2618iT, oldViewAnim, view)).start();
        }
        if (view2 != null) {
            ViewPropertyAnimator viewPropertyAnimatorAnimate = view2.animate();
            this.A02.add(c2618iT.A04);
            viewPropertyAnimatorAnimate.translationX(UnityAdsConstants.SafeGuards.InitRequestRetryPolicy.MIN_JITTER_PCT).translationY(UnityAdsConstants.SafeGuards.InitRequestRetryPolicy.MIN_JITTER_PCT).setDuration(A0B()).alpha(1.0f).setListener(new C2617iS(this, c2618iT, viewPropertyAnimatorAnimate, view2)).start();
        }
    }

    public final void A0d(AbstractC2663jE abstractC2663jE) {
        View view = abstractC2663jE.A0H;
        ViewPropertyAnimator viewPropertyAnimatorAnimate = view.animate();
        this.A00.add(abstractC2663jE);
        ViewPropertyAnimator animation = viewPropertyAnimatorAnimate.alpha(1.0f).setDuration(A0A());
        animation.setListener(new C2614iP(this, abstractC2663jE, view, viewPropertyAnimatorAnimate)).start();
    }

    public final void A0e(AbstractC2663jE abstractC2663jE, int i, int i2, int i3, int i4) {
        View view = abstractC2663jE.A0H;
        int i5 = i3 - i;
        int i6 = i4 - i2;
        if (i5 != 0) {
            view.animate().translationX(UnityAdsConstants.SafeGuards.InitRequestRetryPolicy.MIN_JITTER_PCT);
        }
        if (i6 != 0) {
            view.animate().translationY(UnityAdsConstants.SafeGuards.InitRequestRetryPolicy.MIN_JITTER_PCT);
        }
        ViewPropertyAnimator viewPropertyAnimatorAnimate = view.animate();
        this.A04.add(abstractC2663jE);
        viewPropertyAnimatorAnimate.setDuration(A0C()).setListener(new C2615iQ(this, abstractC2663jE, i5, view, i6, viewPropertyAnimatorAnimate)).start();
    }
}
