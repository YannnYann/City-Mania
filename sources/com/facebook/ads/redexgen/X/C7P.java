package com.facebook.ads.redexgen.X;

import android.content.Context;
import android.util.DisplayMetrics;
import android.view.View;
import com.google.android.gms.common.api.Api;

/* JADX INFO: renamed from: com.facebook.ads.redexgen.X.7P, reason: invalid class name */
/* JADX INFO: loaded from: assets/audience_network/classes.dex */
public final class C7P extends IY {
    public static String[] A02 = {"C44Ajl3kvJruV1G0pt7gVRuztfjSJyFq", "J5x5lFquh7whloqA7FngbvBzLsCb", "NWBvU5bW0Pue", "3", "BTAVkHunqM91yRRN2KcoYuZCergWfboL", "2NY5ANPTvwBPWrnTgdotgLNYCmp8", "bg7eF9CjngMlwdFplTojabi", "lLeEucKPPYu6Z0yxrpg2o1MG4v3W39r2"};
    public AbstractC2629ig A00;
    public AbstractC2629ig A01;

    private int A00(AbstractC2645iw abstractC2645iw, View view, AbstractC2629ig abstractC2629ig) {
        int containerCenter;
        int iA0G = abstractC2629ig.A0G(view) + (abstractC2629ig.A0E(view) / 2);
        if (abstractC2645iw.A2s()) {
            int iA0B = abstractC2629ig.A0B();
            int childCenter = abstractC2629ig.A0C();
            containerCenter = iA0B + (childCenter / 2);
        } else {
            int childCenter2 = abstractC2629ig.A06();
            containerCenter = childCenter2 / 2;
        }
        return iA0G - containerCenter;
    }

    private View A01(AbstractC2645iw abstractC2645iw, AbstractC2629ig abstractC2629ig) {
        int childCenter;
        int iA1T = abstractC2645iw.A1T();
        if (iA1T == 0) {
            return null;
        }
        View view = null;
        if (abstractC2645iw.A2s()) {
            int iA0B = abstractC2629ig.A0B();
            int iA0C = abstractC2629ig.A0C();
            if (A02[3].length() != 1) {
                throw new RuntimeException();
            }
            A02[4] = "QSrTWOl4jyYASaYHeqwJw7nAVlZS9nVf";
            int childCount = iA0C / 2;
            childCenter = iA0B + childCount;
        } else {
            int childCount2 = abstractC2629ig.A06();
            childCenter = childCount2 / 2;
        }
        int i = Api.BaseClientBuilder.API_PRIORITY_OTHER;
        for (int absClosest = 0; absClosest < iA1T; absClosest++) {
            View viewA20 = abstractC2645iw.A20(absClosest);
            int iA0G = abstractC2629ig.A0G(viewA20);
            int childCount3 = abstractC2629ig.A0E(viewA20);
            int childCount4 = Math.abs((iA0G + (childCount3 / 2)) - childCenter);
            if (childCount4 < i) {
                i = childCount4;
                view = viewA20;
            }
        }
        return view;
    }

    private View A02(AbstractC2645iw abstractC2645iw, AbstractC2629ig abstractC2629ig) {
        int iA1T = abstractC2645iw.A1T();
        if (iA1T == 0) {
            return null;
        }
        View closestChild = null;
        int childStart = Api.BaseClientBuilder.API_PRIORITY_OTHER;
        for (int i = 0; i < iA1T; i++) {
            View viewA20 = abstractC2645iw.A20(i);
            int childCount = abstractC2629ig.A0G(viewA20);
            if (childCount < childStart) {
                childStart = childCount;
                if (A02[3].length() != 1) {
                    throw new RuntimeException();
                }
                A02[3] = "0";
                closestChild = viewA20;
            }
        }
        return closestChild;
    }

    private AbstractC2629ig A03(AbstractC2645iw abstractC2645iw) {
        if (this.A00 == null || this.A00.A02 != abstractC2645iw) {
            this.A00 = AbstractC2629ig.A00(abstractC2645iw);
        }
        return this.A00;
    }

    private AbstractC2629ig A04(AbstractC2645iw abstractC2645iw) {
        if (this.A01 == null || this.A01.A02 != abstractC2645iw) {
            this.A01 = AbstractC2629ig.A01(abstractC2645iw);
        }
        return this.A01;
    }

    /* JADX WARN: Multi-variable type inference failed */
    /* JADX WARN: Removed duplicated region for block: B:30:0x007a  */
    @Override // com.facebook.ads.redexgen.X.IY
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct code enable 'Show inconsistent code' option in preferences
    */
    public final int A0C(com.facebook.ads.redexgen.X.AbstractC2645iw r10, int r11, int r12) {
        /*
            r9 = this;
            int r8 = r10.A1W()
            r4 = -1
            if (r8 != 0) goto L8
            return r4
        L8:
            r1 = 0
            boolean r0 = r10.A2w()
            if (r0 == 0) goto L1a
            com.facebook.ads.redexgen.X.ig r0 = r9.A04(r10)
            android.view.View r1 = r9.A02(r10, r0)
        L17:
            if (r1 != 0) goto L42
            return r4
        L1a:
            boolean r0 = r10.A2v()
            if (r0 == 0) goto L17
            com.facebook.ads.redexgen.X.ig r3 = r9.A03(r10)
            java.lang.String[] r1 = com.facebook.ads.redexgen.X.C7P.A02
            r0 = 3
            r0 = r1[r0]
            int r1 = r0.length()
            r0 = 1
            if (r1 == r0) goto L36
            java.lang.RuntimeException r0 = new java.lang.RuntimeException
            r0.<init>()
            throw r0
        L36:
            java.lang.String[] r2 = com.facebook.ads.redexgen.X.C7P.A02
            java.lang.String r1 = "gb7KateBwDTMhlVKT6fWGE4qrSBelOuo"
            r0 = 4
            r2[r0] = r1
            android.view.View r1 = r9.A02(r10, r3)
            goto L17
        L42:
            int r3 = r10.A1o(r1)
            if (r3 != r4) goto L49
            return r4
        L49:
            boolean r0 = r10.A2v()
            r7 = 0
            if (r0 == 0) goto La1
            if (r11 <= 0) goto L9f
            r6 = 1
        L53:
            r5 = 0
            boolean r0 = r10 instanceof com.facebook.ads.redexgen.X.InterfaceC2657j8
            if (r0 == 0) goto L89
            com.facebook.ads.redexgen.X.j8 r10 = (com.facebook.ads.redexgen.X.InterfaceC2657j8) r10
            int r0 = r8 + (-1)
            android.graphics.PointF r4 = r10.A5f(r0)
            java.lang.String[] r1 = com.facebook.ads.redexgen.X.C7P.A02
            r0 = 3
            r0 = r1[r0]
            int r1 = r0.length()
            r0 = 1
            if (r1 == r0) goto L95
            java.lang.String[] r2 = com.facebook.ads.redexgen.X.C7P.A02
            java.lang.String r1 = "yuw4mNpzW34AqVSRehlxNeo"
            r0 = 6
            r2[r0] = r1
            java.lang.String r1 = "wkUUhZpWZ02e"
            r0 = 2
            r2[r0] = r1
            if (r4 == 0) goto L89
        L7a:
            float r0 = r4.x
            r1 = 0
            int r0 = (r0 > r1 ? 1 : (r0 == r1 ? 0 : -1))
            if (r0 < 0) goto L87
            float r0 = r4.y
            int r0 = (r0 > r1 ? 1 : (r0 == r1 ? 0 : -1))
            if (r0 >= 0) goto L88
        L87:
            r7 = 1
        L88:
            r5 = r7
        L89:
            if (r5 == 0) goto L90
            if (r6 == 0) goto L8f
            int r3 = r3 + (-1)
        L8f:
            return r3
        L90:
            if (r6 == 0) goto L8f
            int r3 = r3 + 1
            goto L8f
        L95:
            java.lang.String[] r2 = com.facebook.ads.redexgen.X.C7P.A02
            java.lang.String r1 = "mSLQWLSJnMsLfeZB8hd0gvJZQvTgwPgU"
            r0 = 0
            r2[r0] = r1
            if (r4 == 0) goto L89
            goto L7a
        L9f:
            r6 = 0
            goto L53
        La1:
            if (r12 <= 0) goto La5
            r6 = 1
            goto L53
        La5:
            r6 = 0
            goto L53
        */
        throw new UnsupportedOperationException("Method not decompiled: com.facebook.ads.redexgen.X.C7P.A0C(com.facebook.ads.redexgen.X.iw, int, int):int");
    }

    @Override // com.facebook.ads.redexgen.X.IY
    public final View A0D(AbstractC2645iw abstractC2645iw) {
        if (abstractC2645iw.A2w()) {
            return A01(abstractC2645iw, A04(abstractC2645iw));
        }
        if (abstractC2645iw.A2v()) {
            return A01(abstractC2645iw, A03(abstractC2645iw));
        }
        return null;
    }

    @Override // com.facebook.ads.redexgen.X.IY
    public final J5 A0E(AbstractC2645iw abstractC2645iw) {
        if (!(abstractC2645iw instanceof InterfaceC2657j8)) {
            return null;
        }
        final Context context = super.A00.getContext();
        return new J5(context) { // from class: com.facebook.ads.redexgen.X.7Q
            @Override // com.facebook.ads.redexgen.X.J5, com.facebook.ads.redexgen.X.AbstractC2658j9
            public final void A0L(View view, C2660jB c2660jB, C2656j7 c2656j7) {
                int[] iArrA0H = this.A00.A0H(((IY) this.A00).A00.getLayoutManager(), view);
                if (iArrA0H != null) {
                    int time = iArrA0H[0];
                    int dy = iArrA0H[1];
                    int dx = A0S(Math.max(Math.abs(time), Math.abs(dy)));
                    if (dx > 0) {
                        c2656j7.A04(time, dy, dx, ((J5) this).A04);
                    }
                }
            }

            @Override // com.facebook.ads.redexgen.X.J5
            public final float A0P(DisplayMetrics displayMetrics) {
                return 100.0f / displayMetrics.densityDpi;
            }

            @Override // com.facebook.ads.redexgen.X.J5
            public final int A0R(int i) {
                return Math.min(100, super.A0R(i));
            }
        };
    }

    @Override // com.facebook.ads.redexgen.X.IY
    public final int[] A0H(AbstractC2645iw abstractC2645iw, View view) {
        int[] iArr = new int[2];
        if (abstractC2645iw.A2v()) {
            iArr[0] = A00(abstractC2645iw, view, A03(abstractC2645iw));
        } else {
            iArr[0] = 0;
        }
        boolean zA2w = abstractC2645iw.A2w();
        String[] strArr = A02;
        if (strArr[1].length() != strArr[5].length()) {
            throw new RuntimeException();
        }
        A02[0] = "E62MX6H1I4NpqQbgkpQnwXfK7jhgOp7C";
        if (zA2w) {
            iArr[1] = A00(abstractC2645iw, view, A04(abstractC2645iw));
        } else {
            iArr[1] = 0;
        }
        return iArr;
    }
}
