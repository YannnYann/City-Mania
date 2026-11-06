package com.facebook.ads.redexgen.X;

import android.graphics.Bitmap;
import android.graphics.Typeface;
import android.graphics.drawable.BitmapDrawable;
import android.graphics.drawable.Drawable;
import android.net.Uri;
import android.text.TextUtils;
import android.widget.LinearLayout;
import android.widget.TextView;
import java.util.Arrays;
import javax.annotation.Nullable;

/* JADX INFO: renamed from: com.facebook.ads.redexgen.X.tL, reason: case insensitive filesystem */
/* JADX INFO: loaded from: assets/audience_network/classes.dex */
public final class C3280tL extends LinearLayout {
    public static byte[] A04;
    public static String[] A05 = {"rybz38pXB9X39cwsoqFfGwBKt2i8OhQ", "LePR7deMi3PH1SNHBT9O", "3nfXBExj5KU92NItEL7UbwmFptXoAyKk", "NauGHui9tU94UIUuur0IyrfT8CcnHRpj", "jCn5Tns9CSZU", "w3DEeQDG58r6C2cvHP24TJBqgTEEun6", "7xmWA6JS6", "WYHqkeA8qC0kGKRV06CdOWMSOzVOE9Zh"};
    public static final int A06;

    @Nullable
    public Bitmap A00;
    public TextView A01;
    public TextView A02;
    public final C1643Hi A03;

    public static String A00(int i, int i2, int i3) {
        byte[] bArrCopyOfRange = Arrays.copyOfRange(A04, i, i + i2);
        for (int i4 = 0; i4 < bArrCopyOfRange.length; i4++) {
            bArrCopyOfRange[i4] = (byte) ((bArrCopyOfRange[i4] ^ i3) ^ 8);
        }
        return new String(bArrCopyOfRange);
    }

    public static void A02() {
        A04 = new byte[]{107, 119, 119, 115, 112};
        String[] strArr = A05;
        if (strArr[5].length() != strArr[0].length()) {
            throw new RuntimeException();
        }
        A05[2] = "0iSOIWjBNzRrFyLbOy7sJWW5VG7vj16T";
    }

    static {
        A02();
        A06 = AbstractC3068pv.A06;
    }

    public C3280tL(C1643Hi c1643Hi) {
        super(c1643Hi);
        this.A03 = c1643Hi;
        A01();
    }

    private void A01() {
        setOrientation(1);
        this.A02 = new TextView(getContext());
        LinearLayout.LayoutParams layoutParams = new LinearLayout.LayoutParams(-1, -2);
        this.A02.setTextColor(-16250871);
        this.A02.setTextSize(2, 15.0f);
        this.A02.setEllipsize(TextUtils.TruncateAt.END);
        this.A02.setSingleLine(true);
        this.A02.setVisibility(8);
        this.A02.setGravity(17);
        this.A02.setTypeface(Typeface.DEFAULT_BOLD);
        addView(this.A02, layoutParams);
        this.A01 = new TextView(getContext());
        LinearLayout.LayoutParams subtitleTextViewParams = new LinearLayout.LayoutParams(-2, -2);
        this.A01.setAlpha(0.5f);
        this.A01.setTextColor(-9211021);
        this.A01.setTextSize(2, 12.0f);
        this.A01.setCompoundDrawablePadding(AbstractC3068pv.A0B);
        this.A01.setEllipsize(TextUtils.TruncateAt.END);
        this.A01.setSingleLine(true);
        this.A01.setVisibility(8);
        this.A01.setGravity(17);
        addView(this.A01, subtitleTextViewParams);
        if (C2888mv.A2z(this.A03)) {
            TextView textView = this.A02;
            String[] strArr = A05;
            if (strArr[5].length() != strArr[0].length()) {
                throw new RuntimeException();
            }
            A05[4] = "oekAhlM5gA8b";
            textView.setVisibility(4);
            this.A01.setVisibility(4);
        }
    }

    private Bitmap getPadlockBitmap() {
        if (this.A00 == null) {
            this.A00 = AbstractC3123qo.A01(EnumC3122qn.BROWSER_PADLOCK_V2);
            this.A00 = Bitmap.createScaledBitmap(this.A00, A06, A06, true);
        }
        return this.A00;
    }

    public void setSubtitle(@Nullable String str) {
        BitmapDrawable bitmapDrawable;
        if (TextUtils.isEmpty(str)) {
            this.A01.setText((CharSequence) null);
            this.A01.setVisibility(4);
            return;
        }
        Uri uriA00 = AbstractC3036pP.A00(str);
        this.A01.setText(uriA00.getHost());
        TextView textView = this.A01;
        if (A00(0, 5, 11).equals(uriA00.getScheme())) {
            bitmapDrawable = new BitmapDrawable(getResources(), getPadlockBitmap());
        } else {
            bitmapDrawable = null;
        }
        textView.setCompoundDrawablesRelativeWithIntrinsicBounds(bitmapDrawable, (Drawable) null, (Drawable) null, (Drawable) null);
        String[] strArr = A05;
        if (strArr[5].length() != strArr[0].length()) {
            throw new RuntimeException();
        }
        A05[4] = "1ZNDTk2jSNrze57SG6j3";
        this.A01.setVisibility(0);
    }

    public void setTitle(String str) {
        if (TextUtils.isEmpty(str)) {
            this.A02.setText((CharSequence) null);
            this.A02.setVisibility(4);
        } else {
            this.A02.setText(str);
            this.A02.setVisibility(0);
        }
    }
}
