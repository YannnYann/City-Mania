package ads_mobile_sdk;

import android.graphics.drawable.Drawable;
import android.net.Uri;
import com.google.android.libraries.ads.mobile.sdk.common.Image;
import kotlin.jvm.internal.Intrinsics;

/* JADX INFO: loaded from: classes.dex */
public final class km1 {
    public final Drawable a;
    public final Uri b;
    public final double c;
    public final int d;
    public final int e;

    public km1(Drawable drawable, Uri uri, double d, int i, int i2) {
        Intrinsics.checkNotNullParameter(uri, "uri");
        this.a = drawable;
        this.b = uri;
        this.c = d;
        this.d = i;
        this.e = i2;
    }

    public final Image a() {
        return new Image(this.a, this.b, this.c);
    }

    public final boolean equals(Object obj) {
        if (this == obj) {
            return true;
        }
        if (!(obj instanceof km1)) {
            return false;
        }
        km1 km1Var = (km1) obj;
        return Intrinsics.areEqual(this.a, km1Var.a) && Intrinsics.areEqual(this.b, km1Var.b) && Double.compare(this.c, km1Var.c) == 0 && this.d == km1Var.d && this.e == km1Var.e;
    }

    public final int hashCode() {
        Drawable drawable = this.a;
        return Integer.hashCode(this.e) + y1.a(this.d, (Double.hashCode(this.c) + ((this.b.hashCode() + ((drawable == null ? 0 : drawable.hashCode()) * 31)) * 31)) * 31, 31);
    }

    public final String toString() {
        return "InternalNativeAdImage(drawable=" + this.a + ", uri=" + this.b + ", scale=" + this.c + ", width=" + this.d + ", height=" + this.e + ")";
    }
}
