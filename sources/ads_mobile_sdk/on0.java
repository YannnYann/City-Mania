package ads_mobile_sdk;

import com.unity3d.services.UnityAdsConstants;

/* JADX INFO: loaded from: classes.dex */
public final class on0 implements Runnable {
    public final /* synthetic */ pn0 a;

    public on0(pn0 pn0Var) {
        this.a = pn0Var;
    }

    @Override // java.lang.Runnable
    public final void run() {
        float f;
        pn0 pn0Var = this.a;
        int streamVolume = pn0Var.c.getStreamVolume(3);
        int streamMaxVolume = pn0Var.c.getStreamMaxVolume(3);
        pn0Var.d.getClass();
        if (streamMaxVolume <= 0 || streamVolume <= 0) {
            f = UnityAdsConstants.SafeGuards.InitRequestRetryPolicy.MIN_JITTER_PCT;
        } else {
            f = streamVolume / streamMaxVolume;
            if (f > 1.0f) {
                f = 1.0f;
            }
        }
        this.a.g.set(false);
        if (((Float) this.a.f.getAndSet(Float.valueOf(f))).floatValue() != f) {
            this.a.a.post(new nn0(this, f));
        }
    }
}
