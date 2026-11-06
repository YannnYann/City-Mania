package ads_mobile_sdk;

import android.graphics.drawable.Drawable;
import android.net.Uri;
import com.google.android.gms.ads.nativead.NativeAd;

/* JADX INFO: loaded from: classes.dex */
public final class s12 implements s91 {
    public final Drawable a;
    public final Uri b;
    public final double c;
    public final int d;
    public final int e;

    public s12(NativeAd.Image image) {
        this.a = image.getDrawable();
        this.b = image.getUri();
        this.c = image.getScale();
        this.d = image.getWidth();
        this.e = image.getHeight();
    }

    @Override // ads_mobile_sdk.s91
    public final Drawable e() {
        return this.a;
    }

    @Override // ads_mobile_sdk.s91
    public final Uri d() {
        return this.b;
    }

    @Override // ads_mobile_sdk.s91
    public final double a() {
        return this.c;
    }

    @Override // ads_mobile_sdk.s91
    public final int b() {
        return this.d;
    }

    @Override // ads_mobile_sdk.s91
    public final int c() {
        return this.e;
    }
}
