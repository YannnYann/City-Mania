package com.facebook.ads.redexgen.X;

import android.graphics.Typeface;
import android.os.Bundle;
import android.text.TextUtils;
import android.util.SparseBooleanArray;
import android.view.View;
import android.widget.ImageView;
import android.widget.RelativeLayout;
import android.widget.TextView;
import com.vungle.ads.internal.protos.Sdk;
import java.util.ArrayList;
import java.util.Arrays;
import java.util.Iterator;
import java.util.List;
import java.util.Objects;

/* JADX INFO: renamed from: com.facebook.ads.redexgen.X.mi, reason: case insensitive filesystem */
/* JADX INFO: loaded from: assets/audience_network/classes.dex */
public final class C2875mi {
    public static byte[] A0b;
    public static String[] A0c = {"wmhzjtJNgJPoD37pgtS32tHcCkcaAcK2", "M5rbo4IbPB8RiQlV8", "kqsU3TZVJYHjw7Vsj4hL4NX5aIRgmyZM", "Ct63LEx6fKI28HUDmJfMA1qFsnzrhICQ", "Ggy2PWGKxQkrPFXnNSboiVH1AWHMAr2d", "vOxGe6IrDCnFtZ8SEEXVIzND7xq46iVi", "FRACt27AEHyHYshaD", "gYry3sFzGArTzPEqkBCG1bf"};
    public static final int A0d;
    public static final int A0e;
    public static final int A0f;
    public static final int A0g;
    public long A00;
    public View A01;
    public ImageView A02;
    public RelativeLayout A03;
    public TextView A04;
    public TextView A05;
    public C3049pc A06;
    public C3052pf A07;
    public C3061po A08;
    public C13093u A09;
    public C3251ss A0A;
    public C3320tz A0B;
    public ViewOnClickListenerC1569El A0C;
    public C3333uC A0D;
    public C1508Cc A0E;
    public C2854mN A0F;
    public C2826lu A0G;
    public InterfaceC2825lt A0H;
    public C1466Am A0I;
    public List<InterfaceC2644iv> A0J;
    public final RelativeLayout A0Q;
    public final TextView A0R;
    public final LA A0S;
    public final C1643Hi A0T;
    public final InterfaceC2909nG A0U;
    public final C2917nO A0V;
    public final C3102qT A0W;
    public final AbstractC3137r2 A0X;
    public final InterfaceC3144r9 A0Y;
    public final C3346uP A0Z;
    public final C2224c2 A0a;
    public boolean A0M = false;
    public boolean A0K = false;
    public boolean A0L = false;
    public final int A0O = 1;
    public boolean A0N = false;
    public final SparseBooleanArray A0P = new SparseBooleanArray();

    public static String A06(int i, int i2, int i3) {
        byte[] bArrCopyOfRange = Arrays.copyOfRange(A0b, i, i + i2);
        for (int i4 = 0; i4 < bArrCopyOfRange.length; i4++) {
            bArrCopyOfRange[i4] = (byte) ((bArrCopyOfRange[i4] ^ i3) ^ 14);
        }
        return new String(bArrCopyOfRange);
    }

    /* JADX WARN: Failed to parse debug info
    java.lang.ArrayIndexOutOfBoundsException
     */
    public static List<C2647iy> A07(List<InterfaceC2644iv> list) {
        ArrayList arrayList = new ArrayList();
        if (list == null) {
            return arrayList;
        }
        Iterator<InterfaceC2644iv> it = list.iterator();
        while (it.hasNext()) {
            List<C2647iy> listA7q = it.next().A7q();
            if (listA7q != null) {
                arrayList.addAll(listA7q);
            }
        }
        return arrayList;
    }

    /* JADX WARN: Failed to parse debug info
    java.lang.ArrayIndexOutOfBoundsException
     */
    public static List<C2647iy> A08(List<C2637io> list, int i, int i2, ViewOnClickListenerC1569El viewOnClickListenerC1569El, List<C2420fE> list2, InterfaceC2602iD interfaceC2602iD) {
        ArrayList arrayList = new ArrayList(i2);
        for (int i3 = 0; i3 < i2; i3++) {
            int i4 = i + i3;
            if (i4 >= list.size()) {
                break;
            }
            C2637io c2637io = list.get(i4);
            arrayList.add(new C2647iy(i4, i2, c2637io.A02(), viewOnClickListenerC1569El, A03(list2, i4), interfaceC2602iD, c2637io.A03()));
        }
        return arrayList;
    }

    public static void A0J() {
        A0b = new byte[]{81, 90, 87, 68, 64, 93, 92, 109, 71, 66, 105, 123, 116, 105, 55, 105, 127, 104, 115, 124, 55, 119, 127, 126, 115, 111, 119, 6, 28, 27, 18, 25, 16, 42, 28, 24, 20, 18, 16, 32, 59, 59, 56, 54, 53, 38};
    }

    /* JADX WARN: Failed to parse debug info
    java.lang.ArrayIndexOutOfBoundsException
     */
    private void A0T(Bundle bundle) {
        if (this.A0J != null) {
            boolean zIsEmpty = this.A0J.isEmpty();
            String[] strArr = A0c;
            if (strArr[1].length() != strArr[6].length()) {
                throw new RuntimeException();
            }
            A0c[4] = "IjuB2paeAIyV1f1v4wXvkLgk7dUmIJVu";
            if (zIsEmpty) {
                return;
            }
            this.A03 = new RelativeLayout(this.A0T);
            this.A03.setLayoutParams(new RelativeLayout.LayoutParams(-1, -1));
            this.A09 = new C13093u(this.A0T);
            RelativeLayout.LayoutParams layoutParams = new RelativeLayout.LayoutParams(-1, -2);
            layoutParams.addRule(13);
            this.A09.setLayoutParams(layoutParams);
            AbstractC3111qc.A0L(this.A09);
            this.A0E = new C1508Cc(this.A09, 1, this.A0J.size(), this.A0a, bundle, this.A0S.A1O() > 0);
            this.A0E.A0l(true);
            this.A09.setAdapter(new C9(this.A0T, this.A0S, this.A0U, new C2771kz(this.A0T), this.A0a, this.A0W, this.A0Y, this.A0S.A37(), 1, this.A0E, this.A0X, this.A0J, this.A0P));
            this.A09.A1o(this.A09.getOnScrollListener());
            A0B();
            A0D();
            this.A03.addView(this.A09);
            if (this.A0D != null) {
                this.A03.addView(this.A0D);
            }
            this.A03.addView(this.A0Q);
        }
    }

    /* JADX WARN: Failed to parse debug info
    java.lang.ArrayIndexOutOfBoundsException
     */
    private void A0a(List<C2637io> list, ViewOnClickListenerC1569El viewOnClickListenerC1569El, List<C2420fE> list2) {
        int size = list.size();
        this.A0J = new ArrayList(size);
        for (int i = 0; i < size; i++) {
            C2637io c2637io = list.get(i);
            String strA02 = c2637io.A02();
            if (!TextUtils.isEmpty(strA02)) {
                this.A0J.add(new C4(new C2647iy(i, size, strA02, viewOnClickListenerC1569El, A03(list2, i), null, c2637io.A03())));
            }
        }
    }

    static {
        A0J();
        A0g = AbstractC3068pv.A0W;
        A0f = AbstractC3068pv.A0N;
        A0d = AbstractC3068pv.A0S;
        A0e = AbstractC3068pv.A0A;
    }

    public C2875mi(C1643Hi c1643Hi, LA la, InterfaceC2909nG interfaceC2909nG, C2224c2 c2224c2, C3102qT c3102qT, InterfaceC3144r9 interfaceC3144r9, AbstractC3137r2 abstractC3137r2, C2917nO c2917nO) {
        this.A0T = c1643Hi;
        this.A0S = la;
        this.A0U = interfaceC2909nG;
        this.A0a = c2224c2;
        this.A0W = c3102qT;
        this.A0Y = interfaceC3144r9;
        this.A0X = abstractC3137r2;
        this.A0V = c2917nO;
        this.A0Q = new RelativeLayout(this.A0T);
        this.A0Z = new C3346uP(this.A0T);
        this.A0R = new TextView(this.A0T);
    }

    private ImageView A00(ViewOnClickListenerC1569El viewOnClickListenerC1569El) {
        ImageView imageView = new ImageView(this.A0T);
        RelativeLayout.LayoutParams layoutParams = new RelativeLayout.LayoutParams(A0e, A0e);
        layoutParams.addRule(14);
        layoutParams.addRule(2, viewOnClickListenerC1569El.getId());
        layoutParams.setMargins(0, 0, 0, AbstractC3068pv.A0y);
        imageView.setLayoutParams(layoutParams);
        imageView.setImageBitmap(AbstractC3123qo.A01(EnumC3122qn.CHEVRON_UP));
        AbstractC3111qc.A0L(imageView);
        return imageView;
    }

    private TextView A01() {
        TextView textView = new TextView(this.A0T);
        textView.setTextColor(-855638017);
        textView.setMaxLines(1);
        textView.setTypeface(Typeface.DEFAULT);
        textView.setTextSize(14.0f);
        textView.setLayoutParams(new RelativeLayout.LayoutParams(-2, -2));
        AbstractC3111qc.A0L(textView);
        return textView;
    }

    private TextView A02() {
        String strA1n = this.A0S.A1n();
        if (strA1n != null) {
            boolean zIsEmpty = strA1n.isEmpty();
            String[] strArr = A0c;
            if (strArr[0].charAt(27) == strArr[3].charAt(27)) {
                throw new RuntimeException();
            }
            A0c[4] = "YKlVwjdcHL25z9qVuQu7SA5yaoJNv3UH";
            if (!zIsEmpty) {
                TextView promoCodeTitleView = new TextView(this.A0T);
                promoCodeTitleView.setText(strA1n);
                promoCodeTitleView.setTextSize(17.0f);
                promoCodeTitleView.setTextColor(-1);
                promoCodeTitleView.setTypeface(Typeface.DEFAULT_BOLD);
                promoCodeTitleView.setGravity(17);
                AbstractC3111qc.A0L(promoCodeTitleView);
                return promoCodeTitleView;
            }
        }
        String[] strArr2 = A0c;
        if (strArr2[5].charAt(26) == strArr2[2].charAt(26)) {
            throw new RuntimeException();
        }
        A0c[4] = "7Ol8BJziZ0eCODjPb6OCvIEjiGZxQWOK";
        return null;
    }

    public static C2420fE A03(List<C2420fE> list, int i) {
        if (list == null || i >= list.size()) {
            return null;
        }
        return list.get(i);
    }

    public static /* synthetic */ AnonymousClass22 A09(InterfaceC2825lt interfaceC2825lt) {
        interfaceC2825lt.AEy();
        return AnonymousClass22.A01;
    }

    private void A0A() {
        if (this.A01 != null) {
            AbstractC3111qc.A0K(this.A01);
            this.A01 = null;
        }
        if (this.A0I != null) {
            AbstractC3111qc.A0K(this.A0I);
            this.A0I = null;
        }
    }

    private void A0B() {
        int size;
        if (this.A09 == null || this.A0J == null || (size = this.A0J.size()) <= 1) {
            return;
        }
        IY snapHelper = new C7P();
        snapHelper.A0G(this.A09);
        this.A0D = new C3333uC(this.A0T, size);
        this.A0D.setDotsOnlyMode(this.A0S.A2h());
        int itemCount = AbstractC3068pv.A0X;
        RelativeLayout.LayoutParams indicatorLayoutParams = new RelativeLayout.LayoutParams(-1, itemCount);
        indicatorLayoutParams.setMargins(0, AbstractC3068pv.A0A, 0, 0);
        indicatorLayoutParams.addRule(3, this.A09.getId());
        indicatorLayoutParams.addRule(14);
        this.A0D.setLayoutParams(indicatorLayoutParams);
        AbstractC3111qc.A0L(this.A0D);
        if (this.A0E != null) {
            this.A0E.A0i(new CG(this));
            this.A0E.A0h(this.A0D);
        }
    }

    private void A0C() {
        if (this.A09 == null) {
            return;
        }
        this.A09.A1n(new CF(this, C12973i.A03));
    }

    private void A0D() {
        RelativeLayout.LayoutParams layoutParams = new RelativeLayout.LayoutParams(-1, -2);
        layoutParams.addRule(14);
        if (this.A09 != null) {
            layoutParams.addRule(2, this.A09.getId());
        }
        layoutParams.setMargins(0, 0, 0, AbstractC3068pv.A0A);
        this.A0Q.setLayoutParams(layoutParams);
        A0E();
        A0F();
        this.A0Q.addView(this.A0Z);
        if (A0c[7].length() != 23) {
            throw new RuntimeException();
        }
        String[] strArr = A0c;
        strArr[5] = "8KcewuvUOQmDoGzCCi48J48118a3ZAlx";
        strArr[2] = "W9ZEAZvTrDXSIUtvJ9fFOVPh9jJBvEq3";
        this.A0Q.addView(this.A0R);
    }

    private void A0E() {
        RelativeLayout.LayoutParams layoutParams = new RelativeLayout.LayoutParams(-2, -2);
        layoutParams.width = A0g;
        layoutParams.height = A0g;
        layoutParams.addRule(14);
        this.A0Z.setRadius(A0f);
        this.A0Z.setLayoutParams(layoutParams);
        AbstractC3111qc.A0O(this.A0Z, 0);
        AbstractC3111qc.A0H(1106, this.A0Z);
        new AsyncTaskC1577Et(this.A0Z, this.A0T).A05(A0g, A0g).A07(this.A0S.A35().A01());
    }

    private void A0F() {
        this.A0R.setText(this.A0S.A32().A0J().A0G());
        this.A0R.setTextColor(-1);
        this.A0R.setMaxLines(1);
        this.A0R.setTypeface(Typeface.DEFAULT_BOLD);
        this.A0R.setTextSize(20.0f);
        this.A0R.setEllipsize(TextUtils.TruncateAt.END);
        RelativeLayout.LayoutParams layoutParams = new RelativeLayout.LayoutParams(-2, -2);
        layoutParams.addRule(14);
        layoutParams.addRule(3, this.A0Z.getId());
        layoutParams.setMargins(AbstractC3068pv.A0P, AbstractC3068pv.A0X, AbstractC3068pv.A0P, 0);
        this.A0R.setLayoutParams(layoutParams);
        AbstractC3111qc.A0H(1107, this.A0R);
    }

    private void A0G() {
        if (this.A0C != null) {
            int iA04 = this.A0S.A31().A01().A04();
            this.A07 = new C3052pf();
            this.A07.A09(this.A0C, iA04);
        }
    }

    private void A0H() {
        if (this.A03 != null) {
            List<C2637io> listA1w = this.A0S.A1w();
            if (!listA1w.isEmpty()) {
                C1643Hi c1643Hi = this.A0T;
                RelativeLayout relativeLayout = this.A03;
                C2637io c2637io = listA1w.get(0);
                if (A0c[4].charAt(19) == 'g') {
                    throw new RuntimeException();
                }
                A0c[7] = "CtNo196Fe3KoY20FKnvv0Db";
                AbstractC3353uW.A00(c1643Hi, relativeLayout, c2637io.A02());
            }
        }
    }

    private void A0I() {
        EnumC2603iE viewType = EnumC2603iE.A00(this.A0S.A1g());
        if (viewType == null) {
        }
        switch (C2882mp.A00[viewType.ordinal()]) {
            case 1:
                A0P(this.A0S.A31().A01().A04());
                A0S(0L);
                break;
            case 2:
                A0P(this.A0S.A31().A01().A04());
                A0S(0L);
                break;
            case 3:
                A0G();
                A0S(0L);
                break;
        }
    }

    private final void A0K() {
        if (this.A03 != null) {
            if (this.A0S.A3S() || this.A0S.A3O()) {
                this.A0A = AbstractC3256sx.A01(this.A0T, true, this.A0S, this.A0V, this.A0Y, EnumC3254sv.A03, AbstractC3253su.A00(this.A0S));
                AbstractC3111qc.A0H(1116, this.A0A);
                RelativeLayout.LayoutParams layoutParams = new RelativeLayout.LayoutParams(-2, -2);
                layoutParams.addRule(12);
                layoutParams.addRule(11);
                layoutParams.setMargins(AbstractC3068pv.A00, AbstractC3068pv.A00, AbstractC3068pv.A0H, AbstractC3068pv.A0A);
                this.A0A.setLayoutParams(layoutParams);
                this.A03.addView(this.A0A);
            }
        }
    }

    private final void A0L() {
        if (this.A03 != null && this.A0S.A3U()) {
            C3255sw c3255swA02 = AbstractC3256sx.A02(this.A0T, EnumC3254sv.A03, this.A0S);
            AbstractC3111qc.A0H(1117, c3255swA02);
            RelativeLayout.LayoutParams layoutParams = new RelativeLayout.LayoutParams(-2, -2);
            layoutParams.addRule(12);
            layoutParams.addRule(9);
            layoutParams.setMargins(AbstractC3068pv.A0H, AbstractC3068pv.A00, AbstractC3068pv.A00, AbstractC3068pv.A0A);
            c3255swA02.setLayoutParams(layoutParams);
            this.A03.addView(c3255swA02);
        }
    }

    private final void A0M() {
        if (this.A03 != null) {
            this.A0B = new C3320tz(this.A0T, this.A0S, this.A0Y, this.A0V);
            this.A03.addView(this.A0B.A0A());
            this.A0B.A0A().bringToFront();
        }
    }

    private final void A0N() {
        if (this.A0K && this.A0E != null) {
            this.A0E.A0V();
        }
    }

    private final void A0O() {
        if (this.A0K && this.A0E != null) {
            this.A0E.A0X();
        }
    }

    private void A0P(int i) {
        if (this.A0C != null) {
            this.A07 = new C3052pf();
            this.A07.A08(this.A0C, i);
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void A0Q(int i) {
        if (!this.A0N && this.A0G != null && this.A03 != null) {
            this.A0N = true;
            long jA0B = 0;
            long jA0C = this.A00;
            if (this.A08 != null) {
                jA0B = this.A08.A0B();
                jA0C = this.A08.A0C();
                this.A08.A0D();
                this.A08 = null;
            }
            A0A();
            A0k();
            A0l();
            this.A03.removeAllViews();
            if (A0c[4].charAt(19) == 'g') {
                throw new RuntimeException();
            }
            String[] strArr = A0c;
            strArr[1] = "XDZvMu68Wy31BwuYj";
            strArr[6] = "RtFjp8dWsBLi8PnQD";
            this.A0G.A0N(i);
            final InterfaceC2825lt interfaceC2825lt = this.A0H;
            if (interfaceC2825lt != null && jA0C > 0) {
                this.A0G.A0O(jA0C, jA0B, new InterfaceC12470n() { // from class: com.facebook.ads.redexgen.X.5n
                    @Override // com.facebook.ads.redexgen.X.InterfaceC12470n
                    public final Object AB0() {
                        return C2875mi.A09(interfaceC2825lt);
                    }
                });
            }
        }
    }

    private void A0R(long j) {
        View viewA01;
        if (this.A0C == null || this.A03 == null) {
            return;
        }
        int i = (int) j;
        this.A0I = new C1466Am(this.A0T, i);
        this.A0I.A0A(AbstractC1576Es.A0g, AbstractC1576Es.A0f, true);
        AbstractC3111qc.A0L(this.A0I);
        if (this.A0S.A2i()) {
            viewA01 = C2337ds.A01(this.A0T, this.A0I, i);
        } else {
            viewA01 = this.A0I;
        }
        this.A01 = viewA01;
        int forceTimeMsInt = AbstractC3068pv.A0U;
        RelativeLayout.LayoutParams layoutParams = new RelativeLayout.LayoutParams(-1, forceTimeMsInt);
        if (this.A04 != null) {
            int forceTimeMsInt2 = this.A04.getId();
            layoutParams.addRule(2, forceTimeMsInt2);
        } else if (this.A0A != null) {
            int forceTimeMsInt3 = this.A0A.getId();
            layoutParams.addRule(2, forceTimeMsInt3);
        } else if (this.A0B != null) {
            int forceTimeMsInt4 = this.A0B.A0A().getId();
            layoutParams.addRule(2, forceTimeMsInt4);
        } else {
            layoutParams.addRule(12);
        }
        layoutParams.addRule(14);
        int i2 = AbstractC3068pv.A0H;
        int i3 = AbstractC3068pv.A00;
        int i4 = AbstractC3068pv.A0H;
        int forceTimeMsInt5 = AbstractC3068pv.A0c;
        layoutParams.setMargins(i2, i3, i4, forceTimeMsInt5);
        this.A03.addView(viewA01, layoutParams);
        RelativeLayout.LayoutParams layoutParams2 = (RelativeLayout.LayoutParams) this.A0C.getLayoutParams();
        layoutParams2.removeRule(2);
        layoutParams2.removeRule(12);
        int forceTimeMsInt6 = viewA01.getId();
        layoutParams2.addRule(2, forceTimeMsInt6);
        this.A0C.setLayoutParams(layoutParams2);
        if (this.A08 != null) {
            this.A08.A0H(new InterfaceC3058pl() { // from class: com.facebook.ads.redexgen.X.CH
                @Override // com.facebook.ads.redexgen.X.InterfaceC3058pl
                public final void AGc(long j2) {
                    this.A00.A0m(j2);
                }
            });
        }
    }

    private final void A0S(long j) {
        if (this.A0C != null) {
            this.A06 = new C3049pc(j);
            if (this.A02 != null) {
                this.A06.A0B(this.A0C, this.A02);
            } else {
                this.A06.A0B(this.A0C);
            }
        }
    }

    private void A0U(ViewOnClickListenerC1569El viewOnClickListenerC1569El) {
        A0Z(this.A0S.A1w(), this.A0S.A1H(), viewOnClickListenerC1569El, this.A0S.A2K() ? this.A0S.A39() : null);
        A0T(null);
        if (this.A0S.A2I()) {
            RelativeLayout relativeLayout = this.A03;
            String[] strArr = A0c;
            if (strArr[1].length() != strArr[6].length()) {
                throw new RuntimeException();
            }
            String[] strArr2 = A0c;
            strArr2[0] = "OyR1vCv1zgrGy5NQPzLPo5FirG7oD10E";
            strArr2[3] = "H1imMuNzdg4YFaBUdWuZd1xnVhMFjBBL";
            if (relativeLayout != null) {
                if (this.A0G != null) {
                    this.A0G.A0J();
                    this.A0G = null;
                }
                this.A0N = false;
                this.A0G = new C2826lu(this.A0T, this.A03, this.A0S, this.A0U, this.A0W, this.A0Y, this.A0V, this.A0a, this.A0S.A33(), this.A0P);
                this.A0G.A0P(A07(this.A0J));
            }
        }
    }

    private void A0V(ViewOnClickListenerC1569El viewOnClickListenerC1569El) {
        this.A0M = this.A0S.A2K();
        A0a(this.A0S.A1w(), viewOnClickListenerC1569El, this.A0M ? this.A0S.A39() : null);
        A0T(null);
        this.A0Q.setVisibility(8);
        A0C();
        if (this.A0M && this.A03 != null && this.A0J != null) {
            this.A0F = new C2854mN(this.A0T, this.A03, this.A0J);
        }
        if (this.A09 != null) {
            RelativeLayout.LayoutParams layoutParams = (RelativeLayout.LayoutParams) this.A09.getLayoutParams();
            layoutParams.removeRule(13);
            layoutParams.addRule(10);
            layoutParams.setMargins(0, AbstractC3068pv.A0P + AbstractC3137r2.A00, 0, 0);
            this.A09.setLayoutParams(layoutParams);
        }
    }

    private void A0W(final ViewOnClickListenerC1569El viewOnClickListenerC1569El) {
        List<C2637io> listA1w = this.A0S.A1w();
        if (listA1w.isEmpty()) {
            return;
        }
        C2637io c2637io = listA1w.get(0);
        String strA02 = c2637io.A02();
        this.A03 = new RelativeLayout(this.A0T);
        this.A03.setLayoutParams(new RelativeLayout.LayoutParams(-1, -1));
        ImageView imageView = new ImageView(this.A0T);
        imageView.setAdjustViewBounds(true);
        imageView.setScaleType(ImageView.ScaleType.FIT_CENTER);
        RelativeLayout.LayoutParams layoutParams = new RelativeLayout.LayoutParams(-1, -2);
        layoutParams.addRule(13);
        imageView.setLayoutParams(layoutParams);
        AbstractC3111qc.A0L(imageView);
        new AsyncTaskC1577Et(imageView, this.A0T).A07(strA02);
        final String strA03 = c2637io.A03();
        imageView.setOnClickListener(new View.OnClickListener() { // from class: com.facebook.ads.redexgen.X.n1
            @Override // android.view.View.OnClickListener
            public final void onClick(View view) {
                C2875mi.A0Y(strA03, viewOnClickListenerC1569El, view);
            }
        });
        this.A03.addView(imageView);
        AbstractC3111qc.A0P(this.A0Q, 8);
    }

    public static /* synthetic */ void A0Y(String str, ViewOnClickListenerC1569El viewOnClickListenerC1569El, View view) {
        if (!TextUtils.isEmpty(str)) {
            viewOnClickListenerC1569El.setClickUrl(str);
        }
        viewOnClickListenerC1569El.A0E(A06(27, 12, Sdk.SDKError.Reason.INVALID_RI_ENDPOINT_VALUE));
    }

    /* JADX WARN: Incorrect condition in loop: B:7:0x001a */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct code enable 'Show inconsistent code' option in preferences
    */
    private void A0Z(java.util.List<com.facebook.ads.redexgen.X.C2637io> r10, int r11, com.facebook.ads.redexgen.X.ViewOnClickListenerC1569El r12, java.util.List<com.facebook.ads.redexgen.X.C2420fE> r13) {
        /*
            r9 = this;
            com.facebook.ads.redexgen.X.LA r0 = r9.A0S
            boolean r0 = r0.A2I()
            if (r0 == 0) goto L33
            com.facebook.ads.redexgen.X.CK r8 = new com.facebook.ads.redexgen.X.CK
            r8.<init>()
        Ld:
            java.util.ArrayList r0 = new java.util.ArrayList
            r0.<init>()
            r9.A0J = r0
            r4 = 0
        L15:
            r3 = r10
            int r0 = r3.size()
            if (r4 >= r0) goto L35
            r5 = r11
            r6 = r12
            r7 = r13
            java.util.List r3 = A08(r3, r4, r5, r6, r7, r8)
            java.util.List<com.facebook.ads.redexgen.X.iv> r2 = r9.A0J
            int r1 = r3.size()
            com.facebook.ads.redexgen.X.C5 r0 = new com.facebook.ads.redexgen.X.C5
            r0.<init>(r3, r1)
            r2.add(r0)
            int r4 = r4 + r5
            goto L15
        L33:
            r8 = 0
            goto Ld
        L35:
            return
        */
        throw new UnsupportedOperationException("Method not decompiled: com.facebook.ads.redexgen.X.C2875mi.A0Z(java.util.List, int, com.facebook.ads.redexgen.X.El, java.util.List):void");
    }

    private boolean A0b() {
        if (!this.A0S.A3S() && !this.A0S.A3O()) {
            LA la = this.A0S;
            String[] strArr = A0c;
            if (strArr[1].length() != strArr[6].length()) {
                throw new RuntimeException();
            }
            String[] strArr2 = A0c;
            strArr2[5] = "AtQC8qL6sNR1q1lUShXc5Up1t9GetrPO";
            strArr2[2] = "g09TAOI6JmA9le553UvOejsoG8NtT7zC";
            if (!la.A3U()) {
                return false;
            }
        }
        return true;
    }

    public final RelativeLayout A0d() {
        return this.A03;
    }

    public final void A0e() {
        if (this.A07 != null) {
            this.A07.A05();
        }
        A0k();
        A0l();
        A0A();
        if (this.A08 != null) {
            C3061po c3061po = this.A08;
            String[] strArr = A0c;
            if (strArr[5].charAt(26) == strArr[2].charAt(26)) {
                throw new RuntimeException();
            }
            A0c[7] = "b3Mug6svYuHPEn32ZnRehHC";
            c3061po.A0D();
        }
        if (this.A0B != null) {
            this.A0B.A0B();
        }
        if (this.A0G != null) {
            this.A0G.A0J();
            this.A0G = null;
        }
    }

    public final void A0f() {
        A0N();
        if (this.A08 != null) {
            C3061po c3061po = this.A08;
            String[] strArr = A0c;
            if (strArr[0].charAt(27) == strArr[3].charAt(27)) {
                throw new RuntimeException();
            }
            A0c[7] = "mnShHBs10cE8zNTjSV3RIjC";
            c3061po.A0E();
        }
        if (this.A0B != null) {
            this.A0B.A0C();
        }
        if (this.A0A != null) {
            C3251ss c3251ss = this.A0A;
            String[] strArr2 = A0c;
            if (strArr2[1].length() != strArr2[6].length()) {
                String[] strArr3 = A0c;
                strArr3[1] = "ueVYLBgy3RaCrxm5u";
                strArr3[6] = "pRtLM5p9Pq6RGsG2C";
                c3251ss.A0P();
            } else {
                String[] strArr4 = A0c;
                strArr4[0] = "zqO25Ej2YgcvB6AumP8Brgpeoau4axJx";
                strArr4[3] = "fz5PMQq2ut9b4ynzwsYh3w3dvRMr0NTS";
                c3251ss.A0P();
            }
        }
        if (this.A06 != null) {
            this.A06.A08();
        }
        if (this.A07 != null) {
            this.A07.A06();
        }
        if (this.A0G != null) {
            this.A0G.A0K();
        }
    }

    public final void A0g() {
        A0O();
        if (this.A08 != null) {
            this.A08.A0F();
        }
        if (this.A06 != null) {
            this.A06.A09();
        }
        if (this.A07 != null) {
            this.A07.A07();
        }
        C2826lu c2826lu = this.A0G;
        String[] strArr = A0c;
        if (strArr[0].charAt(27) == strArr[3].charAt(27)) {
            throw new RuntimeException();
        }
        A0c[7] = "oUibUOakpWyWjzaBwPteLT9";
        if (c2826lu != null) {
            this.A0G.A0L();
        }
    }

    public final void A0h() {
        if (this.A0S.A3R()) {
            this.A0X.setOnClickListener(new View.OnClickListener() { // from class: com.facebook.ads.redexgen.X.nK
                @Override // android.view.View.OnClickListener
                public final void onClick(View view) {
                    this.A00.A0o(view);
                }
            });
        } else {
            this.A0X.setOnClickListener(null);
        }
    }

    public final void A0i() {
        if (this.A03 != null) {
            if (A0b()) {
                A0K();
                A0L();
            } else {
                A0M();
            }
        }
    }

    public final void A0j() {
        if (this.A0J != null && this.A0E != null && this.A0S.A1O() > 0) {
            int size = this.A0J.size();
            this.A0K = true;
            this.A0E.A0e(size, this.A0S.A1O());
        }
    }

    public final void A0k() {
        if (this.A0K && this.A0E != null) {
            this.A0K = false;
            this.A0E.A0Y();
        }
    }

    public final void A0l() {
        if (this.A06 != null) {
            this.A06.A0A();
        }
    }

    public final /* synthetic */ void A0m(long j) {
        if (this.A0I != null) {
            this.A0I.A09((int) j);
        }
    }

    public final void A0n(long j, final InterfaceC2825lt interfaceC2825lt) {
        if (this.A08 != null) {
            this.A08.A0D();
        }
        A0A();
        this.A00 = j;
        this.A0H = interfaceC2825lt;
        Objects.requireNonNull(interfaceC2825lt);
        this.A08 = new C3061po(j, new InterfaceC3057pk() { // from class: com.facebook.ads.redexgen.X.CJ
            @Override // com.facebook.ads.redexgen.X.InterfaceC3057pk
            public final void AHJ() {
                interfaceC2825lt.AEy();
            }
        });
        A0R(j);
        this.A08.A0G();
    }

    public final /* synthetic */ void A0o(View view) {
        if (this.A0C != null) {
            this.A0C.A0E(A06(39, 7, 90));
        }
    }

    /* JADX WARN: Removed duplicated region for block: B:28:0x011b  */
    /* JADX WARN: Removed duplicated region for block: B:40:0x0156  */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct code enable 'Show inconsistent code' option in preferences
    */
    public final void A0p(com.facebook.ads.redexgen.X.ViewOnClickListenerC1569El r10) {
        /*
            Method dump skipped, instruction units count: 614
            To view this dump change 'Code comments level' option to 'DEBUG'
        */
        throw new UnsupportedOperationException("Method not decompiled: com.facebook.ads.redexgen.X.C2875mi.A0p(com.facebook.ads.redexgen.X.El):void");
    }

    public final void A0q(ViewOnClickListenerC1569El viewOnClickListenerC1569El) {
        EnumC2603iE enumC2603iEA00 = EnumC2603iE.A00(this.A0S.A1g());
        if (enumC2603iEA00 == null) {
            return;
        }
        viewOnClickListenerC1569El.setV2Design(true);
        switch (C2882mp.A00[enumC2603iEA00.ordinal()]) {
            case 1:
                A0W(viewOnClickListenerC1569El);
                break;
            case 2:
                A0V(viewOnClickListenerC1569El);
                break;
            case 3:
                A0U(viewOnClickListenerC1569El);
                break;
        }
        A0H();
    }

    public final void A0r(String str) {
        if (this.A03 != null) {
            this.A04 = A01();
            this.A04.setText(str);
            RelativeLayout.LayoutParams layoutParams = new RelativeLayout.LayoutParams(-2, -2);
            if (this.A0A != null) {
                layoutParams.addRule(2, this.A0A.getId());
            } else if (this.A0B != null) {
                layoutParams.addRule(2, this.A0B.A0A().getId());
            } else {
                layoutParams.addRule(12);
            }
            layoutParams.setMargins(AbstractC3068pv.A0n, 0, 0, AbstractC3068pv.A0c);
            this.A04.setLayoutParams(layoutParams);
            this.A03.addView(this.A04);
        }
    }

    public final void A0s(boolean z) {
        this.A0L = z;
    }

    public final boolean A0t() {
        return this.A08 != null && this.A08.A0I();
    }

    public final boolean A0u() {
        return this.A0L;
    }
}
