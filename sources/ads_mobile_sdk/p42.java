package ads_mobile_sdk;

import android.content.res.Resources;
import android.graphics.Bitmap;
import android.graphics.drawable.BitmapDrawable;
import android.net.Uri;
import kotlin.jvm.functions.Function0;
import kotlin.jvm.internal.Intrinsics;
import kotlin.jvm.internal.Lambda;

/* JADX INFO: loaded from: classes.dex */
public final class p42 extends Lambda implements Function0 {
    public final /* synthetic */ v01 a;
    public final /* synthetic */ String b;
    public final /* synthetic */ double c;
    public final /* synthetic */ int d;
    public final /* synthetic */ int e;

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public p42(v01 v01Var, String str, double d, int i, int i2) {
        super(0);
        this.a = v01Var;
        this.b = str;
        this.c = d;
        this.d = i;
        this.e = i2;
    }

    @Override // kotlin.jvm.functions.Function0
    public final Object invoke() {
        BitmapDrawable bitmapDrawable = new BitmapDrawable(Resources.getSystem(), (Bitmap) ((q01) this.a).b);
        Uri uri = Uri.parse(this.b);
        Intrinsics.checkNotNullExpressionValue(uri, "parse(...)");
        return new km1(bitmapDrawable, uri, this.c, this.d, this.e);
    }
}
