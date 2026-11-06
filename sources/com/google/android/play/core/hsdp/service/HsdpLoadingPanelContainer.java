package com.google.android.play.core.hsdp.service;

import android.content.Context;
import android.content.res.Configuration;
import android.util.AttributeSet;
import android.widget.FrameLayout;

/* JADX INFO: compiled from: com.google.android.play:hsdp@@2.0.1 */
/* JADX INFO: loaded from: classes3.dex */
public final class HsdpLoadingPanelContainer extends FrameLayout {
    public Runnable zza;

    @Override // android.view.View
    public void onConfigurationChanged(Configuration configuration) {
        super.onConfigurationChanged(configuration);
        Runnable runnable = this.zza;
        if (runnable != null) {
            removeCallbacks(runnable);
            post(this.zza);
        }
    }

    public void setOnConfigurationChangedListener(Runnable runnable) {
        this.zza = runnable;
    }

    public HsdpLoadingPanelContainer(Context context, AttributeSet attributeSet) {
        super(context, attributeSet);
    }
}
