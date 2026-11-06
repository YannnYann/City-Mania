package com.facebook.ads.redexgen.X;

import android.os.Build;
import android.view.View;

/* JADX INFO: renamed from: com.facebook.ads.redexgen.X.Dr, reason: case insensitive filesystem */
/* JADX INFO: loaded from: assets/audience_network/classes.dex */
public abstract class AbstractC1549Dr<T> {
    public static String[] A04 = {"RFDucqLHel64tUIjBf5BP", "Vav3MORieShB", "08zBECUloRewUiHhc8hb2", "snZT2Dx9wD3FJXuPYLevE9CjsNzkaNKe", "7e1IhwpKBXjbofo", "tpM7v", "HrL9sLf7qsPM8ANz9z", "lN6cX"};
    public final int A00;
    public final int A01;
    public final int A02;
    public final Class<T> A03;

    public abstract T A02(View view);

    /* JADX WARN: Generic types in debug info not equals: com.facebook.ads.redexgen.X.Dr != androidx.core.view.ViewCompat$AccessibilityViewProperty<T> */
    public AbstractC1549Dr(int i, Class<T> type, int i2, int i3) {
        this.A02 = i;
        this.A03 = type;
        this.A00 = i2;
        this.A01 = i3;
    }

    /* JADX WARN: Generic types in debug info not equals: com.facebook.ads.redexgen.X.Dr != androidx.core.view.ViewCompat$AccessibilityViewProperty<T> */
    private boolean A00() {
        return Build.VERSION.SDK_INT >= this.A01;
    }

    /* JADX WARN: Generic types in debug info not equals: com.facebook.ads.redexgen.X.Dr != androidx.core.view.ViewCompat$AccessibilityViewProperty<T> */
    public final T A01(View view) {
        if (A00()) {
            T tA02 = A02(view);
            if (A04[1].length() == 3) {
                throw new RuntimeException();
            }
            A04[6] = "ApbvQgItc6EJe1ujWz";
            return tA02;
        }
        T t = (T) view.getTag(this.A02);
        if (this.A03.isInstance(t)) {
            return t;
        }
        return null;
    }
}
