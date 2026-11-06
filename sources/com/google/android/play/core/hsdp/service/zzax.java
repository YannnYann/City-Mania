package com.google.android.play.core.hsdp.service;

import android.app.Activity;
import android.util.Log;
import android.view.View;
import android.view.WindowManager;
import com.google.android.play.core.hsdp.R$dimen;

/* JADX INFO: compiled from: com.google.android.play:hsdp@@2.0.1 */
/* JADX INFO: loaded from: classes3.dex */
public final class zzax {
    public View zza = null;
    public final Activity zzb;
    public final WindowManager zzc;

    public zzax(Activity activity) {
        this.zzb = activity;
        this.zzc = (WindowManager) activity.getSystemService("window");
    }

    public static /* synthetic */ void zza(zzax zzaxVar, View view) {
        Log.i("HsdpLoadingPanel", "hideLoading");
        try {
            if (view.getParent() != null) {
                zzaxVar.zzc.removeView(view);
            }
        } catch (RuntimeException e) {
            Log.e("HsdpLoadingPanel", "Error removing view from WindowManager", e);
        }
        zzaxVar.zza = null;
    }

    public final void zzb() {
        Log.i("HsdpLoadingPanel", "try to hideLoading");
        final View view = this.zza;
        if (view == null) {
            return;
        }
        this.zzb.runOnUiThread(new Runnable() { // from class: com.google.android.play.core.hsdp.service.zzau
            @Override // java.lang.Runnable
            public final void run() {
                zzax.zza(this.zza, view);
            }
        });
    }

    /* JADX WARN: Removed duplicated region for block: B:53:0x00f9  */
    /* JADX WARN: Removed duplicated region for block: B:55:0x0105  */
    /* JADX WARN: Removed duplicated region for block: B:82:0x026b  */
    /* JADX WARN: Removed duplicated region for block: B:92:0x008a A[EXC_TOP_SPLITTER, SYNTHETIC] */
    @android.annotation.SuppressLint({"InflateParams"})
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct code enable 'Show inconsistent code' option in preferences
    */
    public final void zzc() throws android.content.pm.PackageManager.NameNotFoundException {
        /*
            Method dump skipped, instruction units count: 641
            To view this dump change 'Code comments level' option to 'DEBUG'
        */
        throw new UnsupportedOperationException("Method not decompiled: com.google.android.play.core.hsdp.service.zzax.zzc():void");
    }

    public final void zzd() {
        View view = this.zza;
        if (view == null) {
            return;
        }
        if (this.zzb.isInPictureInPictureMode()) {
            zzb();
            return;
        }
        try {
            WindowManager.LayoutParams layoutParams = (WindowManager.LayoutParams) view.getLayoutParams();
            if (layoutParams != null) {
                Activity activity = this.zzb;
                layoutParams.height = Math.min(activity.getResources().getDimensionPixelSize(R$dimen.sdk_hsdp_loading_ui_height), (int) (zza.zzb(activity) * 0.6f));
                if (activity.getResources().getConfiguration().screenWidthDp > 640) {
                    layoutParams.width = zza.zza(activity, 640);
                } else {
                    layoutParams.width = -1;
                }
                this.zzc.updateViewLayout(view, layoutParams);
                Log.i("HsdpLoadingPanel", "updateLoadingView: updated window size.");
            }
        } catch (RuntimeException e) {
            Log.e("HsdpLoadingPanel", "updateLoadingView: error updating window size.", e);
        }
    }

    public final boolean zze() {
        return (this.zzb.getResources().getConfiguration().uiMode & 48) == 32;
    }
}
