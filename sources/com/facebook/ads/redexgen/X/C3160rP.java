package com.facebook.ads.redexgen.X;

import android.widget.ImageView;
import android.widget.LinearLayout;
import android.widget.RelativeLayout;
import java.util.Arrays;

/* JADX INFO: renamed from: com.facebook.ads.redexgen.X.rP, reason: case insensitive filesystem */
/* JADX INFO: loaded from: assets/audience_network/classes.dex */
public final class C3160rP extends RelativeLayout {
    public static byte[] A03;
    public static final int A04;
    public static final int A05;
    public final ImageView A00;
    public final ImageView A01;
    public final C1643Hi A02;

    public static String A01(int i, int i2, int i3) {
        byte[] bArrCopyOfRange = Arrays.copyOfRange(A03, i, i + i2);
        for (int i4 = 0; i4 < bArrCopyOfRange.length; i4++) {
            bArrCopyOfRange[i4] = (byte) ((bArrCopyOfRange[i4] - i3) - 125);
        }
        return new String(bArrCopyOfRange);
    }

    public static void A02() {
        A03 = new byte[]{1, 20, 31, 30, 33, 35, -49, -16, 19};
    }

    static {
        A02();
        A05 = (int) (AbstractC3070px.A02 * 4.0f);
        A04 = (int) (AbstractC3070px.A02 * 6.0f);
    }

    public C3160rP(C1643Hi c1643Hi) {
        super(c1643Hi);
        this.A02 = c1643Hi;
        AbstractC3111qc.A0W(this, AbstractC3111qc.A06(855638016, A04));
        this.A01 = A00(EnumC3122qn.DEFAULT_INFO_ICON);
        this.A00 = A00(EnumC3122qn.AD_CHOICES_ICON);
        this.A00.setContentDescription(A01(0, 9, 50));
        LinearLayout linearLayout = new LinearLayout(c1643Hi);
        linearLayout.setOrientation(0);
        linearLayout.addView(this.A01);
        linearLayout.addView(this.A00);
        addView(linearLayout, new RelativeLayout.LayoutParams(-1, -1));
        setClickable(true);
        setFocusable(true);
    }

    private ImageView A00(EnumC3122qn enumC3122qn) {
        ImageView imageView = new ImageView(this.A02);
        imageView.setScaleType(ImageView.ScaleType.FIT_CENTER);
        imageView.setPadding(0, A05, 0, A05);
        imageView.setImageBitmap(AbstractC3123qo.A01(enumC3122qn));
        imageView.setColorFilter(-1);
        LinearLayout.LayoutParams iconLayoutParams = new LinearLayout.LayoutParams(0, -1);
        iconLayoutParams.weight = 1.0f;
        imageView.setLayoutParams(iconLayoutParams);
        return imageView;
    }
}
