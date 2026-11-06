package com.ironsource.adqualitysdk.sdk.i;

import com.ironsource.adqualitysdk.sdk.StringFog;
import net.pubnative.lite.sdk.vpaid.PlayerInfo;
import net.pubnative.lite.sdk.vpaid.VideoAdListener;

/* JADX INFO: renamed from: com.ironsource.adqualitysdk.sdk.i.ɪ, reason: contains not printable characters */
/* JADX INFO: loaded from: classes3.dex */
public final class C0110 extends VideoAdListener implements InterfaceC0445 {

    /* JADX INFO: renamed from: ｋ, reason: contains not printable characters */
    public final /* synthetic */ C0108 f1044;

    /* JADX INFO: renamed from: ﾇ, reason: contains not printable characters */
    public final C0875 f1045;

    /* JADX INFO: renamed from: ﾒ, reason: contains not printable characters */
    public final VideoAdListener f1046;

    public C0110(C0108 c0108, VideoAdListener videoAdListener, C0875 c0875) {
        this.f1044 = c0108;
        this.f1046 = videoAdListener;
        this.f1045 = c0875;
    }

    public final void onAdClicked() {
        this.f1044.m1187(this, this.f1045, StringFog.decrypt("pPL21/Pa+beb6ObX8v7v1Z3109bf9/SYmf72\n", "8puSspybnfs=\n"), new Object[0]);
        VideoAdListener videoAdListener = this.f1046;
        if (videoAdListener != null) {
            videoAdListener.onAdClicked();
        }
    }

    public final void onAdCustomEndCardFound() {
        this.f1044.m1187(this, this.f1045, StringFog.decrypt("W7LRwq8Wn/dkqMHCrjKJlWK19MODIojPYrbwyaQUmslpndrSrjM=\n", "Ddu1p8BX+7s=\n"), new Object[0]);
        VideoAdListener videoAdListener = this.f1046;
        if (videoAdListener != null) {
            videoAdListener.onAdCustomEndCardFound();
        }
    }

    public final void onAdDidReachEnd() {
        this.f1044.m1187(this, this.f1045, StringFog.decrypt("dyz8zqIe8MZINuzOozrmpE4r2c+JNvDYRCT7w4gx8A==\n", "IUWYq81flIo=\n"), new Object[0]);
        VideoAdListener videoAdListener = this.f1046;
        if (videoAdListener != null) {
            videoAdListener.onAdDidReachEnd();
        }
    }

    public final void onAdDismissed() {
        this.f1044.m1187(this, this.f1045, StringFog.decrypt("M/a4dq2N8YcM7Kh2rKnn5QrxnXeGpeamDOyvdqY=\n", "ZZ/cE8LMlcs=\n"), new Object[0]);
        VideoAdListener videoAdListener = this.f1046;
        if (videoAdListener != null) {
            videoAdListener.onAdDismissed();
        }
    }

    public final void onAdExpired() {
        this.f1044.m1187(this, this.f1045, StringFog.decrypt("A4zZorNhqLc8lsmiskW+1TqL/KOZWLySJ4DZ\n", "VeW9x9wgzPs=\n"), new Object[0]);
        VideoAdListener videoAdListener = this.f1046;
        if (videoAdListener != null) {
            videoAdListener.onAdExpired();
        }
    }

    public final void onAdLoadFail(PlayerInfo playerInfo) {
        this.f1044.m1187(this, this.f1045, StringFog.decrypt("FG+PNH+k4eQrdZ80foD3hi1oqjVciuTMBGeCPQ==\n", "QgbrURDlhag=\n"), playerInfo);
        VideoAdListener videoAdListener = this.f1046;
        if (videoAdListener != null) {
            videoAdListener.onAdLoadFail(playerInfo);
        }
    }

    public final void onAdLoadSuccess() {
        this.f1044.m1187(this, this.f1045, StringFog.decrypt("RdFRab6FcF96y0Fpv6FmPXzWdGidq3V3QM1Wb7S3Zw==\n", "E7g1DNHEFBM=\n"), new Object[0]);
        VideoAdListener videoAdListener = this.f1046;
        if (videoAdListener != null) {
            videoAdListener.onAdLoadSuccess();
        }
    }

    public final void onAdSkipped() {
        this.f1044.m1187(this, this.f1045, StringFog.decrypt("x/Cr7/ePXif46rvv9qtIRf73ju7LpVMb4fyr\n", "kZnPipjOOms=\n"), new Object[0]);
        VideoAdListener videoAdListener = this.f1046;
        if (videoAdListener != null) {
            videoAdListener.onAdSkipped();
        }
    }

    public final void onAdStarted() {
        this.f1044.m1187(this, this.f1045, StringFog.decrypt("EDThUVgceLQvLvFRWThu1ikzxFBkKX2KMjjh\n", "Rl2FNDddHPg=\n"), new Object[0]);
        VideoAdListener videoAdListener = this.f1046;
        if (videoAdListener != null) {
            videoAdListener.onAdStarted();
        }
    }

    public final void onCustomCTACLick(boolean z) {
        this.f1044.m1187(this, this.f1045, StringFog.decrypt("WikCnCgr9/dlMxKcKQ/hlWMuJYw0HvzWTxQnugsD8NA=\n", "DEBm+Udqk7s=\n"), Boolean.valueOf(z));
        VideoAdListener videoAdListener = this.f1046;
        if (videoAdListener != null) {
            videoAdListener.onCustomCTACLick(z);
        }
    }

    public final void onCustomCTALoadFail() {
        this.f1044.m1187(this, this.f1045, StringFog.decrypt("RtzK2QfcHNN5xtrZBvgKsX/b7ckb6RfyU+Hv8Af8HNlx3MI=\n", "ELWuvGideJ8=\n"), new Object[0]);
        VideoAdListener videoAdListener = this.f1046;
        if (videoAdListener != null) {
            videoAdListener.onCustomCTALoadFail();
        }
    }

    public final void onCustomCTAShow() {
        this.f1044.m1187(this, this.f1045, StringFog.decrypt("aPtMvpjQsktX4Vy+mfSkKVH8a66E5blqfcZpiJ/+oQ==\n", "PpIo2/eR1gc=\n"), new Object[0]);
        VideoAdListener videoAdListener = this.f1046;
        if (videoAdListener != null) {
            videoAdListener.onCustomCTAShow();
        }
    }

    public final void onCustomEndCardClick(String str) {
        this.f1044.m1187(this, this.f1045, StringFog.decrypt("FWvVEWETiqAqccURYDecwixs8gF9JoGBBmzVN28giq8va9If\n", "QwKxdA5S7uw=\n"), str);
        VideoAdListener videoAdListener = this.f1046;
        if (videoAdListener != null) {
            videoAdListener.onCustomEndCardClick(str);
        }
    }

    public final void onCustomEndCardShow(String str) {
        this.f1044.m1187(this, this.f1045, StringFog.decrypt("FrRA8fCOW+gprlDx8apNii+zZ+Hsu1DJBbNA1/69W/coslM=\n", "QN0klJ/PP6Q=\n"), str);
        VideoAdListener videoAdListener = this.f1046;
        if (videoAdListener != null) {
            videoAdListener.onCustomEndCardShow(str);
        }
    }

    public final void onDefaultEndCardClick(String str) {
        this.f1044.m1187(this, this.f1045, StringFog.decrypt("vTL8S0Hgr16CKOxLQMS5PIQ13EtIwL5+nx72Sm3AuXaoN/FNRQ==\n", "61uYLi6hyxI=\n"), str);
        VideoAdListener videoAdListener = this.f1046;
        if (videoAdListener != null) {
            videoAdListener.onDefaultEndCardClick(str);
        }
    }

    public final void onDefaultEndCardShow(String str) {
        this.f1044.m1187(this, this.f1045, StringFog.decrypt("fpl0/+2pv1lBg2T/7I2pO0eeVP/kia55XLV+/sGJqXF7mH/t\n", "KPAQmoLo2xU=\n"), str);
        VideoAdListener videoAdListener = this.f1046;
        if (videoAdListener != null) {
            videoAdListener.onDefaultEndCardShow(str);
        }
    }

    public final void onEndCardClosed(Boolean bool) {
        this.f1044.m1187(this, this.f1045, StringFog.decrypt("tmC7ZQE0msSJeqtlABCMpo9nmm4KNp/6hEqzbx0Qmg==\n", "4AnfAG51/og=\n"), bool);
        VideoAdListener videoAdListener = this.f1046;
        if (videoAdListener != null) {
            videoAdListener.onEndCardClosed(bool);
        }
    }

    public final void onEndCardLoadFail(Boolean bool) {
        this.f1044.m1187(this, this.f1045, StringFog.decrypt("hvXX9rI/p/m578f2sxuxm7/y9v25PaLHtNDc8rk4oty8\n", "0Jyzk91+w7U=\n"), bool);
        VideoAdListener videoAdListener = this.f1046;
        if (videoAdListener != null) {
            videoAdListener.onEndCardLoadFail(bool);
        }
    }

    public final void onEndCardLoadSuccess(Boolean bool) {
        this.f1044.m1187(this, this.f1045, StringFog.decrypt("O1g3UnIwRecEQidScxRThQJfFll5MkDZCX08VnkiVMgOVCBE\n", "bTFTNx1xIas=\n"), bool);
        VideoAdListener videoAdListener = this.f1046;
        if (videoAdListener != null) {
            videoAdListener.onEndCardLoadSuccess(bool);
        }
    }

    public final void onEndCardSkipped(Boolean bool) {
        this.f1044.m1187(this, this.f1045, StringFog.decrypt("XLZbtdi+AoFjrEu12ZoU42Wxer7TvAe/boxUucePA6k=\n", "Ct8/0Lf/Zs0=\n"), bool);
        VideoAdListener videoAdListener = this.f1046;
        if (videoAdListener != null) {
            videoAdListener.onEndCardSkipped(bool);
        }
    }

    public final void onLeaveApp() {
        this.f1044.m1187(this, this.f1045, StringFog.decrypt("d2ecCR81HXhIfYwJHhELGk5gtAkRAhx1UX4=\n", "IQ74bHB0eTQ=\n"), new Object[0]);
        VideoAdListener videoAdListener = this.f1046;
        if (videoAdListener != null) {
            videoAdListener.onLeaveApp();
        }
    }

    public final void onReplay() {
        this.f1044.m1187(this, this.f1045, StringFog.decrypt("PU7JrcmYrNwCVNmtyLy6vgRJ/63Wtanp\n", "ayetyKbZyJA=\n"), new Object[0]);
        VideoAdListener videoAdListener = this.f1046;
        if (videoAdListener != null) {
            videoAdListener.onReplay();
        }
    }

    public final void onReplayFinish() {
        this.f1044.m1187(this, this.f1045, StringFog.decrypt("4sX2icecBubd3+aJxrgQhNvCwInYsQPT8sX8hdu1\n", "tKyS7KjdYqo=\n"), new Object[0]);
        VideoAdListener videoAdListener = this.f1046;
        if (videoAdListener != null) {
            videoAdListener.onReplayFinish();
        }
    }

    @Override // com.ironsource.adqualitysdk.sdk.i.InterfaceC0445
    /* JADX INFO: renamed from: ﾒ */
    public final Object mo1025() {
        return this.f1046;
    }

    public final void onAdDismissed(int i) {
        this.f1044.m1187(this, this.f1045, StringFog.decrypt("TGQ/5l+yZD5zfi/mXpZyXHVjGud0mnMfc34o5lSkaQZyXSnsV4FlAWk=\n", "Gg1bgzDzAHI=\n"), Integer.valueOf(i));
        VideoAdListener videoAdListener = this.f1046;
        if (videoAdListener != null) {
            videoAdListener.onAdDismissed(i);
        }
    }
}
