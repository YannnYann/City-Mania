package ads_mobile_sdk;

import android.hardware.display.DisplayManager;

/* JADX INFO: loaded from: classes.dex */
public final class oe2 implements DisplayManager.DisplayListener {
    @Override // android.hardware.display.DisplayManager.DisplayListener
    public final void onDisplayAdded(int i) {
    }

    @Override // android.hardware.display.DisplayManager.DisplayListener
    public final void onDisplayChanged(int i) {
        pe2.a.submit(new ne2());
    }

    @Override // android.hardware.display.DisplayManager.DisplayListener
    public final void onDisplayRemoved(int i) {
    }
}
