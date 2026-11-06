package com.facebook.ads.redexgen.X;

import android.graphics.Canvas;
import android.graphics.Path;
import android.graphics.RectF;
import android.os.Handler;
import android.os.Looper;
import android.view.MotionEvent;
import android.webkit.WebChromeClient;
import android.webkit.WebViewClient;
import com.unity3d.services.UnityAdsConstants;
import java.lang.ref.WeakReference;
import java.util.Arrays;
import java.util.concurrent.atomic.AtomicBoolean;
import java.util.concurrent.atomic.AtomicInteger;
import java.util.concurrent.atomic.AtomicReference;

/* JADX INFO: renamed from: com.facebook.ads.redexgen.X.Ev, reason: case insensitive filesystem */
/* JADX INFO: loaded from: assets/audience_network/classes.dex */
public final class C1579Ev extends AbstractC3292tX {
    public static byte[] A0F;
    public static String[] A0G = {"8gq0YClbFfezV7VWazRrkmUo5IqHlAe0", "DZEC2fF8R1zbFaxtc", "FhN1N87P5UC3PnJCVDWnxEC", "JmSzPmcyjiRof3lizahs2qZ", "A3Evrr3LcR4BJzz79LIh", "2a6NLKfKqYFtWGCWoigE8lnPrM", "Nz12Z6hGfXPsqa2uThDzH9TN", "eI6gTMB0yvKckA2LC3VZ0zYV"};
    public static final String A0H;
    public float A00;
    public C3102qT A01;
    public AbstractC2225c3 A02;
    public C2224c2 A03;
    public boolean A04;
    public boolean A05;
    public boolean A06;
    public final Path A07;
    public final RectF A08;
    public final C1643Hi A09;
    public final WeakReference<InterfaceC3295ta> A0A;
    public final AtomicBoolean A0B;
    public final AtomicBoolean A0C;
    public final AtomicInteger A0D;
    public final AtomicReference<String> A0E;

    public static String A02(int i, int i2, int i3) {
        byte[] bArrCopyOfRange = Arrays.copyOfRange(A0F, i, i + i2);
        int i4 = 0;
        while (true) {
            int length = bArrCopyOfRange.length;
            String[] strArr = A0G;
            if (strArr[7].length() != strArr[6].length()) {
                throw new RuntimeException();
            }
            A0G[1] = "qkBM5EbEKD4bLDmS2";
            if (i4 >= length) {
                return new String(bArrCopyOfRange);
            }
            bArrCopyOfRange[i4] = (byte) ((bArrCopyOfRange[i4] - i3) - 94);
            i4++;
        }
    }

    public static void A04() {
        A0F = new byte[]{0, 35, 2, 46, 45, 51, 49, 46, 43};
    }

    static {
        A04();
        A0H = C1579Ev.class.getSimpleName();
    }

    public C1579Ev(C1643Hi c1643Hi, WeakReference<InterfaceC3295ta> weakReference, int i, String str) {
        this(c1643Hi, weakReference, i, false);
        if (C2888mv.A1z(c1643Hi)) {
            c1643Hi.A02().A0B().AM8(this, str == null ? A02(0, 0, 74) : str, false, true);
            this.A06 = true;
        }
    }

    public C1579Ev(C1643Hi c1643Hi, WeakReference<InterfaceC3295ta> weakReference, int i, boolean z) {
        super(c1643Hi);
        this.A0B = new AtomicBoolean();
        this.A0C = new AtomicBoolean(true);
        this.A07 = new Path();
        this.A08 = new RectF();
        this.A0D = new AtomicInteger(5000);
        this.A0E = new AtomicReference<>();
        this.A01 = new C3102qT();
        this.A05 = true;
        this.A06 = false;
        this.A09 = c1643Hi;
        this.A04 = z;
        this.A0A = weakReference;
        this.A02 = new C1583Ez(this);
        this.A03 = new C2224c2(this, i, new WeakReference(this.A02), this.A09);
        setWebChromeClient(A0G());
        setWebViewClient(A0H());
        getSettings().setSupportZoom(false);
        getSettings().setCacheMode(1);
        addJavascriptInterface(new C3294tZ(this, weakReference.get(), this.A03, this.A0B, this.A0C, this.A09), A02(0, 9, 97));
    }

    private final boolean A05() {
        return this.A0B.get();
    }

    @Override // com.facebook.ads.redexgen.X.AbstractC3292tX
    public final WebChromeClient A0G() {
        return new C3296tb();
    }

    @Override // com.facebook.ads.redexgen.X.AbstractC3292tX
    public final WebViewClient A0H() {
        return new C3297tc(this.A09, this.A0A, new WeakReference(this.A03), new WeakReference(this.A01), new WeakReference(this.A0C), new WeakReference(this), this.A0D, this.A0E, this.A04);
    }

    public final void A0K() {
        this.A09.A0F().AMA();
        this.A0B.set(true);
        new Handler(Looper.getMainLooper()).post(new C1581Ex(this.A03));
    }

    public final void A0L(int i, int i2) {
        if (this.A03 != null) {
            this.A03.A0W(i);
            this.A03.A0X(i2);
        }
    }

    @Override // com.facebook.ads.redexgen.X.AbstractC3292tX, android.webkit.WebView
    public final void destroy() {
        if (this.A06) {
            this.A09.A02().A0B().ALo(this);
        }
        if (this.A03 != null) {
            this.A03.A0V();
            this.A03 = null;
        }
        AbstractC3111qc.A0K(this);
        this.A02 = null;
        this.A01 = null;
        AbstractC3298td.A03(this);
        super.destroy();
    }

    public C3102qT getTouchDataRecorder() {
        return this.A01;
    }

    public C2224c2 getViewabilityChecker() {
        return this.A03;
    }

    @Override // android.webkit.WebView, android.view.View
    public final void onDraw(Canvas canvas) {
        if (this.A00 > UnityAdsConstants.SafeGuards.InitRequestRetryPolicy.MIN_JITTER_PCT) {
            this.A08.set(UnityAdsConstants.SafeGuards.InitRequestRetryPolicy.MIN_JITTER_PCT, UnityAdsConstants.SafeGuards.InitRequestRetryPolicy.MIN_JITTER_PCT, getWidth(), getHeight());
            this.A07.reset();
            this.A07.addRoundRect(this.A08, this.A00, this.A00, Path.Direction.CW);
            canvas.clipPath(this.A07);
        }
        super.onDraw(canvas);
    }

    @Override // android.webkit.WebView, android.view.View
    public final boolean onTouchEvent(MotionEvent motionEvent) {
        this.A01.A06(this.A09, motionEvent, this, this);
        return super.onTouchEvent(motionEvent);
    }

    @Override // android.webkit.WebView, android.view.View
    public final void onWindowVisibilityChanged(int i) {
        super.onWindowVisibilityChanged(i);
        if (this.A0A.get() != null) {
            this.A0A.get();
        }
        if (i == 0) {
            InterfaceC2325df interfaceC2325dfA0F = this.A09.A0F();
            if (AbstractC3188rr.A01(interfaceC2325dfA0F.getId())) {
                String strName = EnumC2984oW.A04.name();
                if (A0G[1].length() != 17) {
                    throw new RuntimeException();
                }
                String[] strArr = A0G;
                strArr[7] = "DtJWCHxLbH6gtxJRxIB1oyEG";
                strArr[6] = "cIpyg99BbIZ2paT5Gicx86FT";
                interfaceC2325dfA0F.A5E(strName);
            }
        }
        if (this.A03 == null) {
            return;
        }
        this.A09.A0F().AMO(i);
        if (i == 0 && A05()) {
            this.A03.A0U();
        } else {
            if (i != 8) {
                return;
            }
            this.A03.A0V();
        }
    }

    public void setBlockLocalFileAccessOutsideCache(boolean z) {
        this.A04 = z;
    }

    public void setCheckAssetsByJavascriptBridge(boolean z) {
        this.A0C.set(z);
    }

    public void setCornerRadius(float f) {
        this.A00 = f;
        invalidate();
    }

    public void setLogMultipleImpressions(boolean z) {
        this.A05 = z;
    }

    public void setRequestId(String str) {
        this.A0E.set(str);
    }

    public void setWebViewTimeoutInMillis(int i) {
        if (i >= 0) {
            this.A0D.set(i);
        }
    }
}
