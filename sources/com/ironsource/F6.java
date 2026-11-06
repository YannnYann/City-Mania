package com.ironsource;

import android.app.Activity;
import com.ironsource.mediationsdk.logger.IronSourceError;
import com.unity3d.mediation.LevelPlayAdInfo;

/* JADX INFO: loaded from: classes3.dex */
@InterfaceC3930xb
public interface F6 {
    void a(Activity activity);

    void a(C3871u6 c3871u6);

    void a(C3871u6 c3871u6, IronSourceError ironSourceError);

    void a(C3871u6 c3871u6, LevelPlayAdInfo levelPlayAdInfo);

    void b(C3871u6 c3871u6, IronSourceError ironSourceError);

    void b(C3871u6 c3871u6, LevelPlayAdInfo levelPlayAdInfo);

    void c(C3871u6 c3871u6, LevelPlayAdInfo levelPlayAdInfo);

    void loadAd();
}
