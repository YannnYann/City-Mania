package com.facebook.ads.redexgen.X;

import android.graphics.Bitmap;
import android.widget.ImageView;
import android.widget.LinearLayout;
import java.util.Locale;

/* JADX INFO: renamed from: com.facebook.ads.redexgen.X.se, reason: case insensitive filesystem */
/* JADX INFO: loaded from: assets/audience_network/classes.dex */
public final class C3237se extends LinearLayout {
    public final Bitmap A00;

    public C3237se(C1643Hi c1643Hi, EnumC3254sv enumC3254sv) {
        super(c1643Hi);
        this.A00 = AbstractC3123qo.A01(EnumC3122qn.AD_CHOICE_ICON);
        c1643Hi.A0F().ABk(enumC3254sv.name().toLowerCase(Locale.US));
        A00();
        setAdChoiceIcon(c1643Hi);
    }

    private void A00() {
        setOrientation(0);
        setPadding(AbstractC3068pv.A0K, AbstractC3068pv.A0K, AbstractC3068pv.A0K, AbstractC3068pv.A0K);
        setClipToPadding(false);
        setGravity(17);
        AbstractC3111qc.A0O(this, -859190839);
        AbstractC3111qc.A0F(AbstractC3068pv.A0D, this);
    }

    private void setAdChoiceIcon(C1643Hi c1643Hi) {
        ImageView imageView = new ImageView(c1643Hi);
        AbstractC3111qc.A0L(imageView);
        imageView.setImageBitmap(this.A00);
        imageView.setScaleType(ImageView.ScaleType.FIT_CENTER);
        imageView.setAdjustViewBounds(true);
        imageView.setLayoutParams(new LinearLayout.LayoutParams(-2, AbstractC3068pv.A0X));
        addView(imageView);
    }
}
