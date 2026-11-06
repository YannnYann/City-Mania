package com.facebook.ads.redexgen.X;

import com.facebook.ads.androidx.media3.common.Timeline;
import com.facebook.video.heroplayer.exocustom.MetaExoPlayerCustomization;
import com.ironsource.C3539c3;
import com.unity3d.ads.core.domain.WebViewScreenCapture;
import com.unity3d.services.UnityAdsConstants;

/* JADX INFO: loaded from: assets/audience_network/classes.dex */
public class RT implements WY {
    public final float A00;
    public final float A01;
    public final int A02;
    public final int A03;
    public final int A04;
    public final int A05;
    public final int A06;
    public final long A07;
    public final InterfaceC1754Lu A08;

    @MetaExoPlayerCustomization
    public final InterfaceC2018Ws A09;
    public final int A0A;

    public RT() {
        this(UnityAdsConstants.AdOperations.SHOW_TIMEOUT_MS, C3539c3.g, C3539c3.g, 0.75f);
    }

    public RT(int i, int i2, int i3, float f) {
        this(null, -1, i, i2, i3, 1279, 719, f, 0.75f, WebViewScreenCapture.CACHE_TTL_MS, InterfaceC1754Lu.A00);
    }

    public RT(InterfaceC2018Ws interfaceC2018Ws) {
        this(interfaceC2018Ws, -1, UnityAdsConstants.AdOperations.SHOW_TIMEOUT_MS, C3539c3.g, C3539c3.g, 1279, 719, 0.75f, 0.75f, WebViewScreenCapture.CACHE_TTL_MS, InterfaceC1754Lu.A00);
    }

    public RT(@MetaExoPlayerCustomization("No longer set through factory") InterfaceC2018Ws interfaceC2018Ws, @MetaExoPlayerCustomization("Non standard variable; used in oculus") int i, @MetaExoPlayerCustomization("Removed from upstream") int i2, int i3, int i4, int i5, int i6, float f, float f2, long j, InterfaceC1754Lu interfaceC1754Lu) {
        this.A09 = interfaceC2018Ws;
        this.A0A = i;
        this.A05 = i2;
        this.A02 = i3;
        this.A06 = i4;
        this.A04 = i5;
        this.A03 = i6;
        this.A00 = f;
        this.A01 = f2;
        this.A07 = j;
        this.A08 = interfaceC1754Lu;
    }

    /* JADX WARN: Generic types in debug info not equals: com.facebook.ads.redexgen.X.9l != com.google.common.collect.ImmutableList<com.facebook.ads.androidx.media3.exoplayer.trackselection.AdaptiveTrackSelection$AdaptationCheckpoint> */
    private final C4B A00(U8 u8, int[] iArr, int i, InterfaceC2018Ws interfaceC2018Ws, AbstractC14399l<WG> abstractC14399l) {
        return new C4B(u8, iArr, i, interfaceC2018Ws, this.A0A, this.A05, this.A02, this.A06, this.A04, this.A03, this.A00, this.A01, this.A07, abstractC14399l, this.A08);
    }

    /* JADX WARN: Generic types in debug info not equals: com.facebook.ads.redexgen.X.9l != com.google.common.collect.ImmutableList<com.google.common.collect.ImmutableList<com.facebook.ads.androidx.media3.exoplayer.trackselection.AdaptiveTrackSelection$AdaptationCheckpoint>> */
    /* JADX WARN: Multi-variable type inference failed */
    @Override // com.facebook.ads.redexgen.X.WY
    public final RA[] A6A(WX[] wxArr, InterfaceC2018Ws interfaceC2018Ws, C1887Rk c1887Rk, Timeline timeline) {
        RA raA00;
        AbstractC14399l abstractC14399lA00 = C4B.A00(wxArr);
        RA[] raArr = new RA[wxArr.length];
        for (int i = 0; i < wxArr.length; i++) {
            WX wx = wxArr[i];
            if (wx != null && wx.A02.length != 0) {
                if (wx.A02.length == 1) {
                    raA00 = new C4A(wx.A01, wx.A02[0], wx.A00);
                } else {
                    raA00 = A00(wx.A01, wx.A02, wx.A00, interfaceC2018Ws, (AbstractC14399l) abstractC14399lA00.get(i));
                }
                raArr[i] = raA00;
            }
        }
        return raArr;
    }
}
