package com.facebook.ads.redexgen.X;

import android.util.Log;
import android.view.MotionEvent;
import android.view.View;
import com.facebook.ads.MediaViewVideoRenderer;
import com.facebook.ads.NativeAd;
import com.facebook.ads.internal.api.DefaultMediaViewVideoRendererApi;
import com.facebook.ads.internal.api.MediaViewVideoRendererApi;
import com.facebook.ads.internal.settings.AdInternalSettings;
import com.unity3d.services.UnityAdsConstants;
import com.vungle.ads.internal.protos.Sdk;
import java.lang.ref.WeakReference;
import java.util.Arrays;
import java.util.concurrent.atomic.AtomicBoolean;

/* JADX INFO: renamed from: com.facebook.ads.redexgen.X.Gf, reason: case insensitive filesystem */
/* JADX INFO: loaded from: assets/audience_network/classes.dex */
public final class C1614Gf extends C2691jg implements DefaultMediaViewVideoRendererApi {
    public static byte[] A0I;
    public static String[] A0J = {"mcYgxpLQMmIwsDd5yEmcOVEUvqtoI", "GHoJM0N9xHnxy27wJlEicj6316JJBG", "sAgmez8xlBVRjdgohc9cPNZKpCHjl", "UXd4O0RMEZeMz8rPKuZc9Jx8", "lkMSGOb1N9f2znZPpxO7v43dGPgWn", "ZJq7h5cFUWj9FCmvTSQNl6xA6rnC8", "yifDfgH7QVrqMR4w0vNHSMY9h4Ewh", "QZpfE8IVFABXRQwraZ"};
    public static final String A0K;
    public MediaViewVideoRenderer A01;
    public NativeAd.NativeOptions A02;
    public MediaViewVideoRendererApi A03;
    public C1643Hi A04;
    public InterfaceC2930nb A05;
    public AnonymousClass72 A07;
    public C5B A08;
    public AnonymousClass56 A09;
    public AbstractC2225c3 A0A;
    public C2224c2 A0B;
    public boolean A0C;
    public boolean A0D;
    public boolean A0E;
    public final InterfaceC2367eM A0F = new C1620Gl(this);
    public final AtomicBoolean A0G = new AtomicBoolean(false);
    public final AtomicBoolean A0H = new AtomicBoolean(false);
    public EnumC2941nm A06 = EnumC2941nm.A03;
    public float A00 = UnityAdsConstants.SafeGuards.InitRequestRetryPolicy.MIN_JITTER_PCT;

    public static String A09(int i, int i2, int i3) {
        byte[] bArrCopyOfRange = Arrays.copyOfRange(A0I, i, i + i2);
        for (int i4 = 0; i4 < bArrCopyOfRange.length; i4++) {
            bArrCopyOfRange[i4] = (byte) ((bArrCopyOfRange[i4] ^ i3) ^ Sdk.SDKError.Reason.ASSET_FAILED_MAX_SPACE_EXCEEDED_VALUE);
        }
        return new String(bArrCopyOfRange);
    }

    public static void A0K() {
        A0I = new byte[]{7, 32, 56, 47, 34, 39, 42, 110, 60, 43, 32, 42, 43, 60, 43, 60, 110, 45, 38, 39, 34, 42, 110, 45, 33, 32, 40, 39, 41, 96, 14, 38, 39, 42, 34, 21, 42, 38, 52, 21, 42, 39, 38, 44, 99, 42, 48, 99, 45, 54, 47, 47, 120, 99, 54, 45, 34, 33, 47, 38, 99, 55, 44, 99, 37, 42, 45, 39, 99, 42, 55, 109, 16, 43, 36, 39, 41, 32, 101, 49, 42, 101, 35, 44, 43, 33, 101, 8, 32, 33, 44, 36, 19, 44, 32, 50, 19, 44, 33, 32, 42, 101, 38, 45, 44, 41, 33, 107};
    }

    static {
        A0K();
        A0K = C1614Gf.class.getSimpleName();
    }

    private C1619Gk A03(MediaViewVideoRendererApi mediaViewVideoRendererApi) {
        return new C1619Gk(this, mediaViewVideoRendererApi);
    }

    private C1618Gj A04(MediaViewVideoRendererApi mediaViewVideoRendererApi) {
        return new C1618Gj(this, mediaViewVideoRendererApi);
    }

    private C1616Gh A05() {
        return new C1616Gh(this);
    }

    private C2224c2 A08() {
        return new C2224c2(this.A01, 50, true, new WeakReference(this.A0A), this.A04);
    }

    private void A0C() {
        if (this.A07 != null) {
            C2363eI c2363eI = (C2363eI) this.A07.getVideoView();
            if (A0J[3].length() != 24) {
                throw new RuntimeException();
            }
            String[] strArr = A0J;
            strArr[2] = "uL1T6UePNJ7Kw1irCYcqiA1GlgiEZ";
            strArr[0] = "2BZHbySyGqLzqR4K5b7TQMpiAd64K";
            c2363eI.setViewImplInflationListener(this.A0F);
        }
    }

    private void A0D() {
        if (this.A07 != null) {
            this.A07.getVideoView().setOnTouchListener(new View.OnTouchListener() { // from class: com.facebook.ads.redexgen.X.nW
                @Override // android.view.View.OnTouchListener
                public final boolean onTouch(View view, MotionEvent motionEvent) {
                    return C1614Gf.A0U(view, motionEvent);
                }
            });
        }
    }

    private void A0E() {
        if (this.A07 != null) {
            this.A07.getVideoView().setOnTouchListener(new ViewOnTouchListenerC2929na(this));
        }
    }

    private void A0F() {
        if (this.A07 != null) {
            View videoView = this.A07.getVideoView();
            String[] strArr = A0J;
            if (strArr[4].length() == strArr[1].length()) {
                throw new RuntimeException();
            }
            A0J[7] = "MUEPyY1MJMWvhU3XHu";
            ((C2363eI) videoView).setViewImplInflationListener(null);
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void A0G() {
        if (this.A02 != null && this.A02.getHideMediaControls() != null) {
            this.A04.A0F().ACW();
        }
        if (!C2888mv.A1Z(this.A04)) {
            this.A04.A0F().ACV();
        }
        if (this.A09 != null) {
            if (this.A02 != null && this.A02.getHideMediaControls() != null && this.A02.getHideMediaControls().booleanValue() && !C2888mv.A1Z(this.A04)) {
                this.A09.post(new Runnable() { // from class: com.facebook.ads.redexgen.X.nX
                    @Override // java.lang.Runnable
                    public final void run() {
                        this.A00.A0a();
                    }
                });
            } else {
                if (this.A07 == null) {
                    return;
                }
                this.A07.post(new Runnable() { // from class: com.facebook.ads.redexgen.X.nY
                    @Override // java.lang.Runnable
                    public final void run() {
                        this.A00.A0b();
                    }
                });
            }
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void A0H() {
        if (this.A02 != null && this.A02.getUnMuteVolume() != null) {
            this.A04.A0F().ACY();
        }
        if (!C2888mv.A1a(this.A04)) {
            InterfaceC2325df interfaceC2325dfA0F = this.A04.A0F();
            String[] strArr = A0J;
            if (strArr[2].length() != strArr[0].length()) {
                throw new RuntimeException();
            }
            String[] strArr2 = A0J;
            strArr2[2] = "1LM46mBaQZ9lvhhfym5pesMrcVXQN";
            strArr2[0] = "TQntEEQ1zf2wxryvKBf6rjJ9ZG9X1";
            interfaceC2325dfA0F.ACX();
        }
        if (this.A03 != null) {
            if (this.A02 != null && this.A02.getUnMuteVolume() != null && this.A02.getUnMuteVolume().booleanValue() && !C2888mv.A1a(this.A04)) {
                this.A03.setVolume(1.0f);
            } else {
                this.A03.setVolume(this.A00);
            }
        }
    }

    private void A0I() {
        if (this.A01.getVisibility() == 0 && this.A0C) {
            MediaViewVideoRenderer mediaViewVideoRenderer = this.A01;
            String[] strArr = A0J;
            if (strArr[4].length() == strArr[1].length()) {
                throw new RuntimeException();
            }
            String[] strArr2 = A0J;
            strArr2[4] = "vtumVYeB8x7vkBeCNzRl37Vgwgf5m";
            strArr2[1] = "l5c2Nb35iHyego1JNAmcVzJY15xyfp";
            if (mediaViewVideoRenderer.hasWindowFocus()) {
                this.A0B.A0U();
                return;
            }
        }
        if (this.A07 != null && this.A07.getState() == EnumC2234cC.A05) {
            this.A0E = true;
        }
        this.A0B.A0V();
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void A0J() {
        this.A06 = EnumC2941nm.A03;
        A0F();
    }

    /* JADX INFO: Access modifiers changed from: private */
    /* JADX WARN: Removed duplicated region for block: B:8:0x002a  */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct code enable 'Show inconsistent code' option in preferences
    */
    public void A0Q(com.facebook.ads.redexgen.X.GT r6, com.facebook.ads.redexgen.X.InterfaceC2930nb r7) {
        /*
            r5 = this;
            r0 = 0
            r5.A0D = r0
            r5.A0E = r0
            r5.A05 = r7
            r5.A0C()
            com.facebook.ads.redexgen.X.5B r3 = r5.A08
            if (r6 == 0) goto L2a
            com.facebook.ads.redexgen.X.ni r4 = r6.getAdCoverImage()
            java.lang.String[] r2 = com.facebook.ads.redexgen.X.C1614Gf.A0J
            r0 = 2
            r1 = r2[r0]
            r0 = 0
            r0 = r2[r0]
            int r1 = r1.length()
            int r0 = r0.length()
            if (r1 == r0) goto L2c
            java.lang.RuntimeException r0 = new java.lang.RuntimeException
            r0.<init>()
            throw r0
        L2a:
            r1 = 0
            goto L3d
        L2c:
            java.lang.String[] r2 = com.facebook.ads.redexgen.X.C1614Gf.A0J
            java.lang.String r1 = "zpp3cHPhluFOPvL30kkcY8af"
            r0 = 3
            r2[r0] = r1
            if (r4 == 0) goto L2a
            com.facebook.ads.redexgen.X.ni r0 = r6.getAdCoverImage()
            java.lang.String r1 = r0.getUrl()
        L3d:
            com.facebook.ads.redexgen.X.Gi r0 = new com.facebook.ads.redexgen.X.Gi
            r0.<init>(r5)
            r3.setImage(r1, r0)
            com.facebook.ads.redexgen.X.nm r0 = r6.A1D()
            r5.A06 = r0
            com.facebook.ads.redexgen.X.56 r1 = r5.A09
            java.lang.String r0 = r6.A1K()
            r1.setPlayAccessibilityLabel(r0)
            com.facebook.ads.redexgen.X.56 r1 = r5.A09
            java.lang.String r0 = r6.A1J()
            r1.setPauseAccessibilityLabel(r0)
            com.facebook.ads.redexgen.X.c2 r0 = r5.A0B
            r0.A0U()
            return
        */
        throw new UnsupportedOperationException("Method not decompiled: com.facebook.ads.redexgen.X.C1614Gf.A0Q(com.facebook.ads.redexgen.X.GT, com.facebook.ads.redexgen.X.nb):void");
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void A0R(EnumC2349e4 enumC2349e4) {
        if (this.A07 != null) {
            this.A07.A0f(enumC2349e4, 24);
        } else {
            if (!AdInternalSettings.isDebugBuild()) {
                return;
            }
            Log.e(A0K, A09(30, 42, 60));
        }
    }

    private boolean A0S() {
        if (this.A02 != null && this.A02.getDisableFullScreen() != null) {
            this.A04.A0F().ACU();
        }
        if (!C2888mv.A1Y(this.A04)) {
            this.A04.A0F().ACT();
        }
        NativeAd.NativeOptions nativeOptions = this.A02;
        if (A0J[3].length() != 24) {
            throw new RuntimeException();
        }
        A0J[7] = "RWwkRb5gAe3cvvOYUG";
        return (nativeOptions == null || this.A02.getDisableFullScreen() == null || !this.A02.getDisableFullScreen().booleanValue() || C2888mv.A1Y(this.A04)) ? false : true;
    }

    /* JADX INFO: Access modifiers changed from: private */
    public boolean A0T() {
        if (this.A07 == null || this.A07.getState() == EnumC2234cC.A06) {
            return false;
        }
        return this.A06 == EnumC2941nm.A05 || this.A06 == EnumC2941nm.A03;
    }

    public static /* synthetic */ boolean A0U(View view, MotionEvent motionEvent) {
        return false;
    }

    public final /* synthetic */ void A0a() {
        if (this.A07 != null) {
            this.A07.A0h(this.A09);
        }
    }

    public final /* synthetic */ void A0b() {
        if (this.A07 != null) {
            AnonymousClass72 anonymousClass72 = this.A07;
            String[] strArr = A0J;
            if (strArr[2].length() != strArr[0].length()) {
                throw new RuntimeException();
            }
            A0J[3] = "DdJUE8X44wBIaC44Y91rVqqX";
            anonymousClass72.A0g(this.A09);
        }
    }

    /* JADX WARN: Code restructure failed: missing block: B:16:0x00a6, code lost:
    
        r5 = r6.A07;
        r2 = com.facebook.ads.redexgen.X.C1614Gf.A0J;
     */
    /* JADX WARN: Code restructure failed: missing block: B:17:0x00b8, code lost:
    
        if (r2[2].length() == r2[0].length()) goto L21;
     */
    /* JADX WARN: Code restructure failed: missing block: B:21:0x00c3, code lost:
    
        r2 = com.facebook.ads.redexgen.X.C1614Gf.A0J;
        r2[6] = "2aK7TrzSKlLOXQMMYyslcv3rZKnIT";
        r2[5] = "rJ0uIs3irNdkufru0tgAA9z3l7YlJ";
     */
    /* JADX WARN: Code restructure failed: missing block: B:22:0x00cf, code lost:
    
        if (r5 != null) goto L28;
     */
    /* JADX WARN: Code restructure failed: missing block: B:24:0x00d5, code lost:
    
        if (com.facebook.ads.internal.settings.AdInternalSettings.isDebugBuild() == false) goto L26;
     */
    /* JADX WARN: Code restructure failed: missing block: B:25:0x00d7, code lost:
    
        android.util.Log.e(com.facebook.ads.redexgen.X.C1614Gf.A0K, A09(72, 36, 58));
     */
    /* JADX WARN: Code restructure failed: missing block: B:26:0x00e6, code lost:
    
        r6.A0B.A0W(0);
        r6.A0B.A0X(250);
        r3.AKm();
     */
    /* JADX WARN: Code restructure failed: missing block: B:27:0x00f5, code lost:
    
        return;
     */
    /* JADX WARN: Code restructure failed: missing block: B:28:0x00f6, code lost:
    
        r6.A07.A0g(r6.A08);
        r5 = r6.A07;
        r2 = com.facebook.ads.redexgen.X.C1614Gf.A0J;
     */
    /* JADX WARN: Code restructure failed: missing block: B:29:0x010f, code lost:
    
        if (r2[6].length() == r2[5].length()) goto L32;
     */
    /* JADX WARN: Code restructure failed: missing block: B:31:0x0116, code lost:
    
        throw new java.lang.RuntimeException();
     */
    /* JADX WARN: Code restructure failed: missing block: B:32:0x0117, code lost:
    
        com.facebook.ads.redexgen.X.C1614Gf.A0J[3] = "N5wNlZvELtjdUjcESL7VUEU7";
        r5.A0g(r6.A09);
     */
    @Override // com.facebook.ads.internal.api.DefaultMediaViewVideoRendererApi
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct code enable 'Show inconsistent code' option in preferences
    */
    public final void initialize(android.content.Context r7, com.facebook.ads.MediaViewVideoRenderer r8, com.facebook.ads.internal.api.MediaViewVideoRendererApi r9, int r10) {
        /*
            Method dump skipped, instruction units count: 300
            To view this dump change 'Code comments level' option to 'DEBUG'
        */
        throw new UnsupportedOperationException("Method not decompiled: com.facebook.ads.redexgen.X.C1614Gf.initialize(android.content.Context, com.facebook.ads.MediaViewVideoRenderer, com.facebook.ads.internal.api.MediaViewVideoRendererApi, int):void");
    }

    @Override // com.facebook.ads.redexgen.X.C2691jg, com.facebook.ads.internal.api.AdComponentViewParentApi
    public final void onAttachedToWindow() {
        super.onAttachedToWindow();
        this.A0C = true;
        A0I();
    }

    @Override // com.facebook.ads.redexgen.X.C2691jg, com.facebook.ads.internal.api.AdComponentViewParentApi
    public final void onDetachedFromWindow() {
        super.onDetachedFromWindow();
        this.A0C = false;
        A0I();
    }

    @Override // com.facebook.ads.internal.api.DefaultMediaViewVideoRendererApi
    public final void onPrepared() {
        boolean zA0r = C2888mv.A0r(this.A04);
        boolean zA0S = A0S();
        this.A01.setOnTouchListener(new ViewOnTouchListenerC2928nZ(this, zA0r, zA0S));
        boolean disableVideoFullscreenOnNative = zA0r || zA0S;
        if (!disableVideoFullscreenOnNative) {
            A0E();
        } else {
            A0D();
        }
    }

    @Override // com.facebook.ads.redexgen.X.C2691jg, com.facebook.ads.internal.api.AdComponentViewParentApi
    public final void onVisibilityChanged(View view, int i) {
        super.onVisibilityChanged(view, i);
        A0I();
    }

    @Override // com.facebook.ads.redexgen.X.C2691jg, com.facebook.ads.internal.api.AdComponentView
    public final void onWindowFocusChanged(boolean z) {
        super.onWindowFocusChanged(z);
        A0I();
    }
}
