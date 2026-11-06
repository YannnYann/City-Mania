package com.facebook.ads.redexgen.X;

import android.widget.RelativeLayout;
import java.util.ArrayList;
import java.util.Arrays;
import java.util.List;

/* JADX INFO: renamed from: com.facebook.ads.redexgen.X.tV, reason: case insensitive filesystem */
/* JADX INFO: loaded from: assets/audience_network/classes.dex */
public final class C3290tV extends RelativeLayout {
    public static InterfaceC3144r9 A05;
    public static byte[] A06;
    public static String[] A07 = {"CT308ms2RTF49ixw7iITcI5DvAIGWMXZ", "UVauKq3DlAHpB1vMyeeSD4Us6AaVXCYd", "G3Ivv2DNtSsvdOlvNnw6jHI40eb4uyYL", "qur6nZLrhU9XJET37yOODnXWYcrj37IJ", "OCLfHPrXkMpm02uq88EYR3Uw1JpI2kE3", "KopKmjllEHptdGx3", "mL4xXMXopKoNgp", "1VwEGJcTQNgN7iTbFc9O"};
    public static final int A08;
    public static final int A09;
    public static final int A0A;
    public IY A00;
    public C1643Hi A01;
    public C3T A02;
    public F2 A03;
    public C3345uO A04;

    public static String A00(int i, int i2, int i3) {
        byte[] bArrCopyOfRange = Arrays.copyOfRange(A06, i, i + i2);
        int i4 = 0;
        while (true) {
            int length = bArrCopyOfRange.length;
            if (A07[6].length() == 9) {
                throw new RuntimeException();
            }
            String[] strArr = A07;
            strArr[2] = "hwjeWCnyrgrPOyFOaJyYR4Ki88uO9bQs";
            strArr[0] = "4m7NTkn57B9pIqsgccGzW0RoTzQfESBy";
            if (i4 >= length) {
                return new String(bArrCopyOfRange);
            }
            bArrCopyOfRange[i4] = (byte) ((bArrCopyOfRange[i4] - i3) - 119);
            i4++;
        }
    }

    public static void A02() {
        A06 = new byte[]{-25, 5, 22, 19, 25, 23, 9, 16, -60, -14, 5, 24, 13, 26, 9, -60, 26, 13, 9, 27, -60, 5, 8, 9, 20, 24, 9, 22, -60, 13, 23, 18, -53, 24, -60, 7, 22, 9, 5, 24, 9, 8, -60, 20, 22, 19, 20, 9, 22, 16, 29, -5, -7, 2, -7, 6, -3, -9};
    }

    static {
        A02();
        A09 = AbstractC3068pv.A0y;
        A08 = A09 * 10;
        A0A = (int) (AbstractC3070px.A02 * 15.0f);
        A05 = new F1();
    }

    public C3290tV(C1643Hi c1643Hi) {
        super(c1643Hi);
        this.A01 = c1643Hi;
        this.A02 = new C3T(c1643Hi);
        AbstractC3111qc.A0L(this.A02);
        this.A00 = new C7P();
        this.A00.A0G(this.A02);
        RelativeLayout.LayoutParams layoutParams = new RelativeLayout.LayoutParams(-1, -1);
        layoutParams.addRule(13);
        addView(this.A02, layoutParams);
    }

    private ArrayList<C2999ol> A01(LA la) {
        if (la == null) {
            return new ArrayList<>();
        }
        List<C2420fE> listA39 = la.A39();
        ArrayList<C2999ol> arrayList = new ArrayList<>(listA39.size());
        for (int i = 0; i < listA39.size(); i++) {
            arrayList.add(new C2999ol(i, listA39.size(), listA39.get(i)));
        }
        return arrayList;
    }

    public final void A04() {
        this.A02.setAdapter(null);
    }

    public final void A05(GT gt, int i) {
        ArrayList<C2999ol> arrayListA01 = A01(gt.A13());
        this.A02.setCardsInfo(arrayListA01);
        this.A03 = new F2(this.A01, arrayListA01, gt.A13(), this.A01.A02().A0A(), gt, A05, gt.A13().A37(), this.A02.getCarouselCardBehaviorHelper(), null);
        this.A02.setAdapter(this.A03);
        if (i == 0) {
            i = AbstractC3070px.A04.widthPixels;
        }
        int i2 = i - A08;
        if (A07[4].charAt(22) == 'f') {
            throw new RuntimeException();
        }
        A07[5] = "x3kPSyXPXXgJlLSMaorwFJdxdHWI";
        this.A03.A0Q(i2, 16, 0);
        this.A03.A0G();
        setupDotsLayout(gt, arrayListA01);
    }

    public final void A06(C2224c2 c2224c2) {
        if (this.A03 != null) {
            this.A03.A0R(c2224c2);
        } else {
            this.A01.A08().ABz(A00(51, 7, 29), AbstractC2811lf.A1v, new C2812lg(A00(0, 51, 45)));
        }
        this.A02.A27(c2224c2);
    }

    public static InterfaceC3144r9 getDummyListener() {
        return A05;
    }

    @Override // android.widget.RelativeLayout, android.view.ViewGroup, android.view.View
    public final void onLayout(boolean z, int i, int i2, int i3, int i4) {
        if (z && this.A03 != null) {
            this.A03.A0Q((i3 - i) - A08, 16, 0);
        }
        super.onLayout(z, i, i2, i3, i4);
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void setUpLayoutForCardAtIndex(int i) {
        if (this.A04 != null) {
            this.A04.A00(i);
        }
    }

    private void setupDotsLayout(GT gt, ArrayList<C2999ol> arrayList) {
        this.A02.getCarouselCardBehaviorHelper().A0i(new F0(this));
        this.A04 = new C3345uO(this.A01, gt.A13().A31().A01(), arrayList.size());
        AbstractC3111qc.A0L(this.A04);
        RelativeLayout.LayoutParams layoutParams = new RelativeLayout.LayoutParams(-1, -2);
        layoutParams.addRule(3, this.A02.getId());
        layoutParams.setMargins(0, A0A, 0, 0);
        addView(this.A04, layoutParams);
    }
}
