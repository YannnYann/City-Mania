package com.ironsource.adqualitysdk.sdk.i;

import android.os.SystemClock;
import android.view.MotionEvent;
import com.ironsource.adqualitysdk.sdk.StringFog;
import java.util.Calendar;

/* JADX INFO: renamed from: com.ironsource.adqualitysdk.sdk.i.ἳ, reason: contains not printable characters */
/* JADX INFO: loaded from: classes3.dex */
public final class C0753 extends AbstractRunnableC0689 {

    /* JADX INFO: renamed from: ｋ, reason: contains not printable characters */
    public final /* synthetic */ C0752 f3073;

    /* JADX INFO: renamed from: ﾇ, reason: contains not printable characters */
    public final /* synthetic */ MotionEvent f3074;

    public C0753(C0752 c0752, MotionEvent motionEvent) {
        this.f3073 = c0752;
        this.f3074 = motionEvent;
    }

    @Override // com.ironsource.adqualitysdk.sdk.i.AbstractRunnableC0689
    /* JADX INFO: renamed from: ﾒ */
    public final void mo1013() {
        try {
            int iRound = Math.round(this.f3074.getRawX());
            int iRound2 = Math.round(this.f3074.getRawY());
            String str = AbstractC0077.f850;
            if (iRound >= 0 && iRound2 >= 0 && iRound <= AbstractC0962.m1573(AbstractC0077.m1083(), false).optInt(AbstractC0077.f843) && iRound2 <= AbstractC0962.m1573(AbstractC0077.m1083(), false).optInt(AbstractC0077.f842)) {
                String str2 = AbstractC0061.f813;
                C0163 c0163 = new C0163(iRound, iRound2, Calendar.getInstance().getTimeInMillis(), SystemClock.elapsedRealtime());
                C0752 c0752 = this.f3073;
                synchronized (c0752) {
                    c0752.f3070 = c0163;
                }
                return;
            }
            AbstractC0182.m1147(StringFog.decrypt("k7z2RDu968Chs/FqM6LLyrq163U/o8nGt7U=\n", "1NCZJlrRv68=\n"), StringFog.decrypt("PtBU9xw6LvMP0VW0Bn8o4APJRPBUdT7xStBHtBZ1PusOzAH3G3U54QPRQOARaXGlEQ==\n", "ar8hlHQaS4U=\n") + iRound + StringFog.decrypt("9pc=\n", "2rfedQkiiw0=\n") + iRound2 + StringFog.decrypt("aA==\n", "FbavRLfPlo0=\n"));
        } catch (Throwable th) {
            AbstractC1003.m1592(StringFog.decrypt("n+nQhbbNRHit5tervtJkcrbgzbSy02Z+u+A=\n", "2IW/59ehEBc=\n"), StringFog.decrypt("S79vVEZT5+AuonNvWwbt5g==\n", "Ds0dOzRzjo4=\n"), th, false);
        }
    }
}
