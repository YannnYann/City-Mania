package com.facebook.ads.redexgen.X;

import android.view.MotionEvent;
import android.view.View;
import android.view.ViewGroup;
import android.webkit.WebChromeClient;
import android.webkit.WebViewClient;
import com.google.android.gms.common.api.Api;
import com.vungle.ads.internal.protos.Sdk;
import java.util.Arrays;

/* JADX INFO: renamed from: com.facebook.ads.redexgen.X.Dx, reason: case insensitive filesystem */
/* JADX INFO: loaded from: assets/audience_network/classes.dex */
public class C1555Dx extends AbstractC3292tX {
    public static byte[] A01;
    public final /* synthetic */ C1930Tb A00;

    static {
        A02();
    }

    public static String A01(int i, int i2, int i3) {
        byte[] bArrCopyOfRange = Arrays.copyOfRange(A01, i, i + i2);
        for (int i4 = 0; i4 < bArrCopyOfRange.length; i4++) {
            bArrCopyOfRange[i4] = (byte) ((bArrCopyOfRange[i4] ^ i3) ^ Sdk.SDKError.Reason.ASSET_WRITE_ERROR_VALUE);
        }
        return new String(bArrCopyOfRange);
    }

    public static void A02() {
        A01 = new byte[]{5, 24, 15, 0, 12, 8, 2, 62, 18, 5, 10, 62, 13, 0, 24, 4, 19, 62, 2, 14, 15, 21, 4, 15, 21, 62, 9, 4, 8, 6, 9, 21, 12, 17, 6, 9, 5, 1, 11, 55, 27, 12, 3, 55, 4, 9, 17, 13, 26, 55, 11, 7, 6, 28, 13, 6, 28, 55, 31, 1, 12, 28, 0};
    }

    /* JADX WARN: Failed to parse debug info
    java.lang.ArrayIndexOutOfBoundsException
     */
    @Override // android.webkit.WebView, android.widget.AbsoluteLayout, android.view.View
    public final void onMeasure(int i, int i2) {
        int dynamicWebViewWidth = getDynamicWebViewWidth();
        int dynamicWebViewHeight = getDynamicWebViewHeight();
        if (dynamicWebViewWidth <= 0 || dynamicWebViewHeight <= 0) {
            super.onMeasure(i, i2);
            return;
        }
        float f = dynamicWebViewWidth / dynamicWebViewHeight;
        int mode = View.MeasureSpec.getMode(i);
        int mode2 = View.MeasureSpec.getMode(i2);
        boolean z = mode != 1073741824;
        boolean z2 = mode2 != 1073741824;
        int width = getResources().getDisplayMetrics().widthPixels;
        int height = getResources().getDisplayMetrics().heightPixels;
        ViewGroup viewGroup = (ViewGroup) getParent();
        if (viewGroup != null) {
            int width2 = viewGroup.getWidth();
            height = Api.BaseClientBuilder.API_PRIORITY_OTHER;
            width = width2 != 0 ? viewGroup.getWidth() : Api.BaseClientBuilder.API_PRIORITY_OTHER;
            if (viewGroup.getHeight() != 0) {
                height = viewGroup.getHeight();
            }
        }
        int iA00 = A00(dynamicWebViewWidth, width, i);
        int iA002 = A00(dynamicWebViewHeight, height, i2);
        if ((z2 || z) && Math.abs((iA00 / iA002) - f) > 1.0E-7d) {
            boolean z3 = false;
            if (z2) {
                iA002 = (int) (iA00 / f);
                z3 = true;
            }
            if (!z3 && z) {
                iA00 = (int) (iA002 * f);
            }
        }
        setMeasuredDimension(iA00, iA002);
    }

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public C1555Dx(C1930Tb c1930Tb, C1643Hi c1643Hi) {
        super(c1643Hi);
        this.A00 = c1930Tb;
        getSettings().setAllowFileAccess(true);
        setBackgroundColor(0);
    }

    private int A00(int i, int i2, int i3) {
        int specMode = View.MeasureSpec.getMode(i3);
        int result = View.MeasureSpec.getSize(i3);
        switch (specMode) {
            case Integer.MIN_VALUE:
                return Math.min(Math.min(i, result), i2);
            case 0:
                return Math.min(i, i2);
            case 1073741824:
                return result;
            default:
                return i;
        }
    }

    @Override // com.facebook.ads.redexgen.X.AbstractC3292tX
    public final WebChromeClient A0G() {
        return new C2887mu(this.A00);
    }

    @Override // com.facebook.ads.redexgen.X.AbstractC3292tX
    public final WebViewClient A0H() {
        return new C2574hl(this.A00);
    }

    private int getDynamicWebViewHeight() {
        return this.A00.A0E.A1x().optInt(A01(0, 32, 19));
    }

    private int getDynamicWebViewWidth() {
        return this.A00.A0E.A1x().optInt(A01(32, 31, 26));
    }

    @Override // android.webkit.WebView, android.view.View
    public final boolean onTouchEvent(MotionEvent motionEvent) {
        if (this.A00.A04 != null) {
            this.A00.A04.AHL(this, motionEvent);
        }
        return super.onTouchEvent(motionEvent);
    }
}
