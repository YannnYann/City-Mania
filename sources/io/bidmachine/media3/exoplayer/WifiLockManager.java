package io.bidmachine.media3.exoplayer;

import android.content.Context;
import android.net.wifi.WifiManager;
import android.os.Looper;
import com.ironsource.X3;
import io.bidmachine.media3.common.util.Clock;
import io.bidmachine.media3.common.util.HandlerWrapper;
import io.bidmachine.media3.common.util.Log;

/* JADX INFO: loaded from: classes5.dex */
public final class WifiLockManager {
    public boolean enabled;
    public boolean stayAwake;
    public final HandlerWrapper wifiLockHandler;
    public final WifiLockManagerInternal wifiLockManagerInternal;

    public WifiLockManager(Context context, Looper looper, Clock clock) {
        this.wifiLockManagerInternal = new WifiLockManagerInternal(context.getApplicationContext());
        this.wifiLockHandler = clock.createHandler(looper, null);
    }

    public void setEnabled(final boolean z) {
        if (this.enabled == z) {
            return;
        }
        this.enabled = z;
        final boolean z2 = this.stayAwake;
        this.wifiLockHandler.post(new Runnable() { // from class: io.bidmachine.media3.exoplayer.WifiLockManager$$ExternalSyntheticLambda0
            @Override // java.lang.Runnable
            public final void run() {
                this.f$0.wifiLockManagerInternal.updateWifiLock(z, z2);
            }
        });
    }

    public void setStayAwake(final boolean z) {
        if (this.stayAwake == z) {
            return;
        }
        this.stayAwake = z;
        if (this.enabled) {
            this.wifiLockHandler.post(new Runnable() { // from class: io.bidmachine.media3.exoplayer.WifiLockManager$$ExternalSyntheticLambda1
                @Override // java.lang.Runnable
                public final void run() {
                    this.f$0.wifiLockManagerInternal.updateWifiLock(true, z);
                }
            });
        }
    }

    public static final class WifiLockManagerInternal {
        public final Context applicationContext;
        public WifiManager.WifiLock wifiLock;

        public WifiLockManagerInternal(Context context) {
            this.applicationContext = context;
        }

        public void updateWifiLock(boolean z, boolean z2) {
            if (z && this.wifiLock == null) {
                WifiManager wifiManager = (WifiManager) this.applicationContext.getApplicationContext().getSystemService(X3.b);
                if (wifiManager == null) {
                    Log.w("WifiLockManager", "WifiManager is null, therefore not creating the WifiLock.");
                    return;
                } else {
                    WifiManager.WifiLock wifiLockCreateWifiLock = wifiManager.createWifiLock(3, "ExoPlayer:WifiLockManager");
                    this.wifiLock = wifiLockCreateWifiLock;
                    wifiLockCreateWifiLock.setReferenceCounted(false);
                }
            }
            WifiManager.WifiLock wifiLock = this.wifiLock;
            if (wifiLock == null) {
                return;
            }
            if (z && z2) {
                wifiLock.acquire();
            } else {
                wifiLock.release();
            }
        }
    }
}
