package com.facebook.ads.redexgen.X;

import android.view.View;
import android.view.ViewGroup;
import android.widget.GridLayout;
import android.widget.ImageView;
import com.vungle.ads.internal.protos.Sdk;
import java.util.Arrays;

/* JADX INFO: renamed from: com.facebook.ads.redexgen.X.3k, reason: invalid class name and case insensitive filesystem */
/* JADX INFO: loaded from: assets/audience_network/classes.dex */
public final class C12993k extends AbstractC13485h {
    public static byte[] A03;
    public static String[] A04 = {"ikKBtYlS8EdGbd8Sq0odZDfnKoONzGS0", "DBn5Ocauyc7zo9ZGObGFJIKtaqVZxBSQ", "lm7EQ53jnO2V3HqlwmL25Q2MhvIqQm3f", "CWbrj9d1nRNP380gvlaxSmFYAfG3rwR8", "vQbY5", "jSDd3UBGb0rrzazSerBNNvLK", "fNekV3QJ4rl1LJIejAM1xLsHFOam23d9", "PNLhKgEBvYWcTJr0QfmKKMeNnWmRDpMq"};
    public GridLayout A00;
    public final C3374ur A01;
    public final C1508Cc A02;

    public static String A02(int i, int i2, int i3) {
        byte[] bArrCopyOfRange = Arrays.copyOfRange(A03, i, i + i2);
        for (int i4 = 0; i4 < bArrCopyOfRange.length; i4++) {
            bArrCopyOfRange[i4] = (byte) ((bArrCopyOfRange[i4] - i3) - 48);
        }
        return new String(bArrCopyOfRange);
    }

    public static void A03() {
        A03 = new byte[]{-34, -36, -19, -22, -16, -18, -32, -25, -38, -15, -83, 14, 26, 11, 9, 13, 11, 28, 25, 31, 29, 15, 22, -48, -50, -41, -50, -37, -46, -52};
        if (A04[6].charAt(29) != '3') {
            throw new RuntimeException();
        }
        A04[1] = "2CnBTVnu05c3qC8r6cXLkJUhY8FNHlP8";
    }

    static {
        A03();
    }

    public C12993k(C3374ur c3374ur, String str, C1508Cc c1508Cc) {
        super(c3374ur, false, str, c1508Cc);
        this.A01 = c3374ur;
        this.A02 = c1508Cc;
    }

    public static GridLayout.LayoutParams A00(int i, int i2, int i3, int i4, int i5) {
        GridLayout.LayoutParams layoutParams = new GridLayout.LayoutParams(new ViewGroup.MarginLayoutParams(i, i2));
        layoutParams.rowSpec = GridLayout.spec(i3 / i4);
        layoutParams.columnSpec = GridLayout.spec(i3 % i4);
        A04(layoutParams, i3, i4, i5);
        return layoutParams;
    }

    private ImageView A01(int i, int i2, int i3, int i4, int i5, final C2647iy c2647iy) {
        ImageView imageView = new ImageView(this.A01.A06());
        imageView.setAdjustViewBounds(true);
        imageView.setScaleType(ImageView.ScaleType.FIT_CENTER);
        AbstractC3111qc.A0O(imageView, Integer.MIN_VALUE);
        imageView.setLayoutParams(A00(i, i2, i3, i4, i5));
        imageView.setOnClickListener(new View.OnClickListener() { // from class: com.facebook.ads.redexgen.X.ls
            @Override // android.view.View.OnClickListener
            public final void onClick(View view) {
                this.A00.A1x(c2647iy, view);
            }
        });
        return imageView;
    }

    public static void A04(GridLayout.LayoutParams layoutParams, int i, int i2, int i3) {
        int topMargin = i / i2;
        int i4 = i % i2;
        int leftMargin = i4 > 0 ? AbstractC3068pv.A01 : 0;
        int row = i2 - 1;
        int bottomMargin = i4 < row ? AbstractC3068pv.A01 : 0;
        int col = topMargin > 0 ? AbstractC3068pv.A01 : 0;
        int row2 = i3 - 1;
        int rightMargin = topMargin < row2 ? AbstractC3068pv.A01 : 0;
        layoutParams.setMargins(leftMargin, col, bottomMargin, rightMargin);
    }

    private void A05(GridLayout gridLayout, InterfaceC2644iv interfaceC2644iv, int index, int i) {
        if (interfaceC2644iv.A7q() == null || interfaceC2644iv.A7q().isEmpty()) {
            return;
        }
        int[] iArrA1w = A1w(interfaceC2644iv.A97(), interfaceC2644iv.A8p(), i > 1 ? AbstractC3068pv.A0B : 0, i);
        int i2 = iArrA1w[0];
        int i3 = iArrA1w[1];
        int i4 = 0;
        while (true) {
            int size = interfaceC2644iv.A7q().size();
            String[] strArr = A04;
            if (strArr[2].charAt(8) != strArr[3].charAt(8)) {
                throw new RuntimeException();
            }
            A04[0] = "2ARBnrZ1cEerP2LUfHum4n3Blmwa36s7";
            if (i4 < size) {
                C2647iy c2647iy = interfaceC2644iv.A7q().get(i4);
                ImageView imageViewA01 = A01(i2, i3, i4, i, index, c2647iy);
                gridLayout.addView(imageViewA01);
                setImageUrl(imageViewA01, c2647iy.A06());
                i4++;
            } else {
                return;
            }
        }
    }

    private void A06(C2647iy c2647iy) {
        if (this.A01.A05().A2I() && c2647iy.A05() != null && A08(c2647iy)) {
            c2647iy.A05().AGa(c2647iy.A02());
        } else {
            A07(c2647iy);
        }
        this.A02.A0Y();
    }

    private void A07(C2647iy c2647iy) {
        if (this.A01.A05().A2K() && c2647iy.A03() != null) {
            A1q();
            setCTAInfo(c2647iy.A03().A0K(), c2647iy.A08());
            getCtaButton().A0E(A02(0, 11, 75));
            return;
        }
        String strA07 = c2647iy.A07();
        if (strA07 != null && !strA07.isEmpty()) {
            c2647iy.A04().A0F();
            c2647iy.A04().setClickUrl(strA07, c2647iy.A08());
        }
        ViewOnClickListenerC1569El viewOnClickListenerC1569ElA04 = c2647iy.A04();
        String productUrl = A02(11, 12, Sdk.SDKError.Reason.INVALID_ADS_ENDPOINT_VALUE);
        viewOnClickListenerC1569ElA04.A0E(productUrl);
    }

    private boolean A08(C2647iy c2647iy) {
        if (c2647iy.A03() == null || c2647iy.A03().A0K() == null) {
            return false;
        }
        C2420fE c2420fEA03 = c2647iy.A03();
        if (A04[1].length() != 32) {
            throw new RuntimeException();
        }
        A04[0] = "OoaFjyiLcTNH6IsRKncfqxguSLJA4cDe";
        String ctaUrl = c2420fEA03.A0K().A06();
        if (ctaUrl == null || ctaUrl.isEmpty()) {
            return false;
        }
        try {
            return C2826lu.A08(AbstractC3036pP.A00(ctaUrl)) != null;
        } catch (SecurityException e) {
            this.A01.A06().A08().ABz(A02(23, 7, 57), AbstractC2811lf.A2a, new C2812lg(e));
            return false;
        }
    }

    @Override // com.facebook.ads.redexgen.X.AbstractC13485h
    public final void A1t(C1643Hi c1643Hi) {
    }

    @Override // com.facebook.ads.redexgen.X.AbstractC13485h
    public final void A1u(C1643Hi c1643Hi, InterfaceC2644iv interfaceC2644iv) {
        int iCeil = (int) Math.ceil(Math.sqrt(interfaceC2644iv.A8p()));
        int columnCount = interfaceC2644iv.A8p();
        int iCeil2 = (int) Math.ceil(((double) columnCount) / ((double) iCeil));
        if (this.A00 != null) {
            removeView(this.A00);
        }
        ViewGroup.LayoutParams layoutParams = new GridLayout.LayoutParams(new ViewGroup.MarginLayoutParams(-1, -2));
        GridLayout gridLayout = new GridLayout(c1643Hi);
        gridLayout.setRowCount(iCeil2);
        gridLayout.setColumnCount(iCeil);
        gridLayout.setUseDefaultMargins(false);
        gridLayout.setOrientation(1);
        gridLayout.setLayoutParams(layoutParams);
        addView(gridLayout);
        this.A00 = gridLayout;
        A05(gridLayout, interfaceC2644iv, iCeil2, iCeil);
    }

    public final /* synthetic */ void A1x(C2647iy c2647iy, View view) {
        A06(c2647iy);
    }

    private void setImageUrl(ImageView imageView, String str) {
        new AsyncTaskC1577Et(imageView, this.A01.A06()).A04().A06(new C7(this)).A07(str);
    }
}
