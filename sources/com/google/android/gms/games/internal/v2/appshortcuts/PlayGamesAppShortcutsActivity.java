package com.google.android.gms.games.internal.v2.appshortcuts;

import android.app.Activity;
import android.content.Intent;
import android.os.Looper;
import com.google.android.gms.internal.games_v2.zzad;
import com.google.android.gms.internal.games_v2.zzgc;

/* JADX INFO: compiled from: com.google.android.gms:play-services-games-v2@@22.1.0 */
/* JADX INFO: loaded from: classes3.dex */
@zzad
public final class PlayGamesAppShortcutsActivity extends Activity {
    public Intent zza;

    @Override // android.app.Activity
    public final void onActivityResult(int i, int i2, Intent intent) {
        super.onActivityResult(i, i2, intent);
        if (i != 1005000000) {
            return;
        }
        if (i2 != -1) {
            finish();
        } else {
            new zzgc(Looper.getMainLooper()).postDelayed(new Runnable() { // from class: com.google.android.gms.games.internal.v2.appshortcuts.zzy
                @Override // java.lang.Runnable
                public final /* synthetic */ void run() {
                    this.zza.zza();
                }
            }, 50L);
        }
    }

    /* JADX WARN: Removed duplicated region for block: B:50:0x0082 A[SYNTHETIC] */
    /* JADX WARN: Removed duplicated region for block: B:56:0x0050 A[SYNTHETIC] */
    @Override // android.app.Activity
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct code enable 'Show inconsistent code' option in preferences
    */
    public final void onCreate(android.os.Bundle r11) {
        /*
            Method dump skipped, instruction units count: 288
            To view this dump change 'Code comments level' option to 'DEBUG'
        */
        throw new UnsupportedOperationException("Method not decompiled: com.google.android.gms.games.internal.v2.appshortcuts.PlayGamesAppShortcutsActivity.onCreate(android.os.Bundle):void");
    }

    public final /* synthetic */ void zza() {
        startActivityForResult(this.zza, 1005000001);
        finish();
        System.exit(0);
    }
}
