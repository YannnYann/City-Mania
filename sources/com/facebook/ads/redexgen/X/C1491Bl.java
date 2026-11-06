package com.facebook.ads.redexgen.X;

import android.view.View;
import android.widget.FrameLayout;
import android.widget.TextView;
import com.facebook.ads.AdOptionsView;
import com.facebook.ads.MediaView;
import com.facebook.ads.NativeAd;
import java.util.ArrayList;

/* JADX INFO: renamed from: com.facebook.ads.redexgen.X.Bl, reason: case insensitive filesystem */
/* JADX INFO: loaded from: assets/audience_network/classes.dex */
public final class C1491Bl extends FrameLayout implements InterfaceC2481gD {
    public TextView A00;
    public TextView A01;
    public TextView A02;
    public TextView A03;
    public final MediaView A04;
    public final NativeAd A05;
    public final C2458fq A06;
    public final ArrayList<View> A07;
    public static String[] A08 = {"LrUXeZd5oXG5wJ7", "S6ePTdxfK6c7yhvbHMQjZqIgQsLDz3QO", "YqVXoEdDoNpK3nL0El5", "Exhg7LXIw6HgSAmcccR052cOKtX3WF", "LN", "59F20xOEewuTmZzPatOKMeF6XI6ZvB1j", "IRBrDKvf2o0dBHWjf99N02m12yrR0Bg7", "KZ90h8EmVWfLUNKv0pT"};
    public static final int A0E = (int) (AbstractC3070px.A02 * 6.0f);
    public static final int A0D = (int) (AbstractC3070px.A02 * 8.0f);
    public static final int A0C = (int) (AbstractC3070px.A02 * 12.0f);
    public static final int A0A = (int) (AbstractC3070px.A02 * 350.0f);
    public static final int A09 = (int) (AbstractC3070px.A02 * 250.0f);
    public static final int A0B = (int) (AbstractC3070px.A02 * 175.0f);

    public C1491Bl(C1643Hi c1643Hi, NativeAd nativeAd, C2939nk c2939nk, EnumC2940nl enumC2940nl, C3346uP c3346uP, MediaView mediaView, AdOptionsView adOptionsView) {
        super(c1643Hi);
        this.A07 = new ArrayList<>();
        this.A05 = nativeAd;
        this.A04 = mediaView;
        this.A06 = new C2458fq(c1643Hi, this.A05, c2939nk, c3346uP, adOptionsView);
        this.A06.setPadding(A0C, A0C, A0C, A0E);
        addView(this.A06, new FrameLayout.LayoutParams(-1, -2));
        if (enumC2940nl == EnumC2940nl.A09 || enumC2940nl == EnumC2940nl.A0B) {
            A07(c2939nk);
        }
        addView(this.A04, new FrameLayout.LayoutParams(-1, -2));
        if (enumC2940nl != EnumC2940nl.A0B || this.A05.getAdCreativeType() != NativeAd.AdCreativeType.CAROUSEL) {
            A06(c2939nk);
            A04(c2939nk);
            A05(c2939nk);
        }
        this.A07.add(c3346uP);
        this.A07.add(mediaView);
    }

    /* JADX WARN: Removed duplicated region for block: B:28:0x0093  */
    /* JADX WARN: Removed duplicated region for block: B:29:0x0095  */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct code enable 'Show inconsistent code' option in preferences
    */
    private int A00() {
        /*
            r8 = this;
            android.widget.TextView r0 = r8.A03
            r3 = 0
            if (r0 == 0) goto L97
            android.widget.TextView r0 = r8.A03
            int r0 = r0.getVisibility()
            if (r0 != 0) goto L97
            android.widget.TextView r0 = r8.A03
            int r7 = r0.getMeasuredHeight()
        L13:
            android.widget.TextView r4 = r8.A02
            java.lang.String[] r1 = com.facebook.ads.redexgen.X.C1491Bl.A08
            r0 = 1
            r1 = r1[r0]
            r0 = 0
            char r1 = r1.charAt(r0)
            r0 = 107(0x6b, float:1.5E-43)
            if (r1 == r0) goto La0
            java.lang.String[] r2 = com.facebook.ads.redexgen.X.C1491Bl.A08
            java.lang.String r1 = "SrhbzBCrZmwJCsE1GN19GBhRpshhKBl4"
            r0 = 6
            r2[r0] = r1
            java.lang.String r1 = "lZXGEU0s5y97LRskCQS4IC0Q6rEMlB8o"
            r0 = 5
            r2[r0] = r1
            if (r4 == 0) goto L95
            android.widget.TextView r0 = r8.A02
            int r0 = r0.getVisibility()
            if (r0 != 0) goto L95
            android.widget.TextView r0 = r8.A02
            int r6 = r0.getMeasuredHeight()
        L3f:
            android.widget.TextView r0 = r8.A00
            if (r0 == 0) goto L93
            android.widget.TextView r0 = r8.A00
            int r0 = r0.getVisibility()
            if (r0 != 0) goto L93
            android.widget.TextView r0 = r8.A00
            int r5 = r0.getMeasuredHeight()
        L51:
            android.widget.TextView r4 = r8.A01
            java.lang.String[] r1 = com.facebook.ads.redexgen.X.C1491Bl.A08
            r0 = 1
            r1 = r1[r0]
            r0 = 0
            char r1 = r1.charAt(r0)
            r0 = 107(0x6b, float:1.5E-43)
            if (r1 == r0) goto L9a
            java.lang.String[] r2 = com.facebook.ads.redexgen.X.C1491Bl.A08
            java.lang.String r1 = "nRuc5lutSXPKh9f7kKzdW2kIhLu3nB9m"
            r0 = 6
            r2[r0] = r1
            java.lang.String r1 = "FuxAmHJZMOFMUG38wB3yXnFuBZuRMBRE"
            r0 = 5
            r2[r0] = r1
            if (r4 == 0) goto L83
            android.widget.TextView r0 = r8.A01
            int r0 = r0.getVisibility()
            if (r0 != 0) goto L83
            android.widget.TextView r0 = r8.A01
            int r3 = r0.getMeasuredHeight()
            int r0 = com.facebook.ads.redexgen.X.C1491Bl.A0C
            int r3 = r3 + r0
            int r0 = com.facebook.ads.redexgen.X.C1491Bl.A0D
            int r3 = r3 + r0
        L83:
            int r1 = r8.getMeasuredHeight()
            com.facebook.ads.redexgen.X.fq r0 = r8.A06
            int r0 = r0.getMeasuredHeight()
            int r1 = r1 - r0
            int r1 = r1 - r7
            int r1 = r1 - r6
            int r1 = r1 - r5
            int r1 = r1 - r3
            return r1
        L93:
            r5 = 0
            goto L51
        L95:
            r6 = 0
            goto L3f
        L97:
            r7 = 0
            goto L13
        L9a:
            java.lang.RuntimeException r0 = new java.lang.RuntimeException
            r0.<init>()
            throw r0
        La0:
            java.lang.RuntimeException r0 = new java.lang.RuntimeException
            r0.<init>()
            throw r0
        */
        throw new UnsupportedOperationException("Method not decompiled: com.facebook.ads.redexgen.X.C1491Bl.A00():int");
    }

    private void A01() {
        if (this.A03 != null) {
            this.A03.setLines(1);
        }
        if (this.A02 != null) {
            this.A02.setLines(1);
        }
        if (this.A00 != null) {
            this.A00.setLines(1);
        }
    }

    private void A02(int i) {
        AbstractC3111qc.A0P(this.A04, i > A0B ? 0 : 8);
        AbstractC3111qc.A0P(this.A03, i > A0A ? 0 : 8);
        AbstractC3111qc.A0P(this.A00, i <= A09 ? 8 : 0);
    }

    public static void A03(int i, int i2, TextView... textViewArr) {
        for (TextView textView : textViewArr) {
            if (textView != null && textView.getVisibility() == 0) {
                int iA04 = AbstractC3111qc.A04(textView, i2);
                textView.setLines(iA04 + 1);
                textView.measure(i, View.MeasureSpec.makeMeasureSpec(textView.getMeasuredHeight() + (textView.getLineHeight() * iA04), 1073741824));
                i2 -= textView.getLineHeight() * iA04;
            }
        }
    }

    private void A04(C2939nk c2939nk) {
        if (this.A05.getAdBodyText() != null && !this.A05.getAdBodyText().trim().isEmpty()) {
            this.A00 = new TextView(getContext());
            c2939nk.A06(this.A00);
            this.A00.setText(this.A05.getAdBodyText());
            this.A00.setPadding(A0C, 0, A0C, 0);
            addView(this.A00, new FrameLayout.LayoutParams(-1, -2));
        }
    }

    private void A05(C2939nk c2939nk) {
        if (this.A05.hasCallToAction()) {
            this.A01 = new TextView(getContext());
            AbstractC3111qc.A0L(this.A01);
            c2939nk.A05(this.A01);
            this.A01.setText(this.A05.getAdCallToAction());
            this.A01.setPadding(A0D, A0D, A0D, A0D);
            FrameLayout.LayoutParams layoutParams = new FrameLayout.LayoutParams(-1, -2);
            layoutParams.setMargins(A0D, 0, A0D, 0);
            addView(this.A01, layoutParams);
            this.A07.add(this.A01);
        }
    }

    private void A06(C2939nk c2939nk) {
        if (this.A05.getAdHeadline() != null && !this.A05.getAdHeadline().trim().isEmpty()) {
            this.A02 = new TextView(getContext());
            c2939nk.A07(this.A02);
            this.A02.setText(this.A05.getAdHeadline());
            this.A02.setPadding(A0C, A0D, A0C, 0);
            addView(this.A02, new FrameLayout.LayoutParams(-1, -2));
        }
    }

    private void A07(C2939nk c2939nk) {
        if (this.A05.getAdLinkDescription() != null && !this.A05.getAdLinkDescription().trim().isEmpty()) {
            this.A03 = new TextView(getContext());
            c2939nk.A06(this.A03);
            this.A03.setText(this.A05.getAdLinkDescription());
            this.A03.setPadding(A0C, 0, A0C, A0D);
            addView(this.A03, new FrameLayout.LayoutParams(-1, -2));
        }
    }

    @Override // com.facebook.ads.redexgen.X.InterfaceC2481gD
    public View getView() {
        return this;
    }

    @Override // com.facebook.ads.redexgen.X.InterfaceC2481gD
    public ArrayList<View> getViewsForInteraction() {
        return this.A07;
    }

    @Override // android.widget.FrameLayout, android.view.ViewGroup, android.view.View
    public final void onLayout(boolean z, int i, int i2, int i3, int i4) {
        C2458fq c2458fq = this.A06;
        int top = this.A06.getMeasuredHeight();
        c2458fq.layout(i, i2, i3, top + i2);
        int top2 = this.A06.getMeasuredHeight();
        int i5 = i2 + top2;
        if (this.A03 != null) {
            int top3 = this.A03.getVisibility();
            if (top3 == 0) {
                int measuredHeight = this.A03.getMeasuredHeight();
                int top4 = i5 + measuredHeight;
                this.A03.layout(i, i5, i3, top4);
                i5 += measuredHeight;
            }
        }
        MediaView mediaView = this.A04;
        int top5 = this.A04.getMeasuredHeight();
        mediaView.layout(i, i5, i3, top5 + i5);
        int top6 = this.A04.getMeasuredHeight();
        int i6 = i5 + top6;
        if (this.A02 != null) {
            TextView textView = this.A02;
            int top7 = this.A02.getMeasuredHeight();
            textView.layout(i, i6, i3, top7 + i6);
            int top8 = this.A02.getMeasuredHeight();
            i6 += top8;
        }
        if (this.A00 != null) {
            int top9 = this.A00.getVisibility();
            if (top9 == 0) {
                TextView textView2 = this.A00;
                if (A08[1].charAt(0) == 'k') {
                    throw new RuntimeException();
                }
                A08[3] = "gjv6mmFqHT0";
                int top10 = this.A00.getMeasuredHeight();
                textView2.layout(i, i6, i3, top10 + i6);
            }
        }
        if (this.A01 != null) {
            TextView textView3 = this.A01;
            int i7 = A0C + i;
            int top11 = this.A01.getMeasuredHeight();
            int i8 = i4 - top11;
            int top12 = A0C;
            int i9 = i8 - top12;
            int top13 = A0C;
            int i10 = i3 - top13;
            int top14 = A0C;
            textView3.layout(i7, i9, i10, i4 - top14);
        }
    }

    @Override // android.widget.FrameLayout, android.view.View
    public final void onMeasure(int i, int i2) {
        int emptySpace;
        A02(View.MeasureSpec.getSize(i2));
        A01();
        super.onMeasure(i, i2);
        int requiredHeight = A00();
        int emptySpace2 = this.A04.getMediaWidth();
        if (emptySpace2 == 0) {
            emptySpace = requiredHeight;
        } else {
            int emptySpace3 = this.A04.getMediaHeight();
            if (emptySpace3 == 0 || ((IC) this.A04.getMediaViewApi()).A0b()) {
                emptySpace = requiredHeight;
            } else {
                int emptySpace4 = this.A04.getMediaHeight();
                float f = emptySpace4;
                int emptySpace5 = this.A04.getMediaWidth();
                float aspectRatio = f / emptySpace5;
                int emptySpace6 = this.A04.getMeasuredWidth();
                emptySpace = Math.min((int) (emptySpace6 * aspectRatio), requiredHeight);
            }
        }
        MediaView mediaView = this.A04;
        int mediaViewHeight = View.MeasureSpec.makeMeasureSpec(emptySpace, 1073741824);
        mediaView.measure(i, mediaViewHeight);
        if (emptySpace < requiredHeight) {
            A03(i, requiredHeight - emptySpace, this.A02, this.A00, this.A03);
        }
    }

    @Override // com.facebook.ads.redexgen.X.InterfaceC2481gD
    public final void unregisterView() {
        this.A05.unregisterView();
    }
}
