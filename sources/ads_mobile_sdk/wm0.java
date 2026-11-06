package ads_mobile_sdk;

import android.content.Intent;
import android.net.Uri;
import kotlin.jvm.functions.Function0;
import kotlin.jvm.internal.Lambda;

/* JADX INFO: loaded from: classes.dex */
public final class wm0 extends Lambda implements Function0 {
    public final /* synthetic */ an0 a;

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public wm0(an0 an0Var) {
        super(0);
        this.a = an0Var;
    }

    @Override // kotlin.jvm.functions.Function0
    public final Object invoke() {
        Intent intent = new Intent("android.intent.action.VIEW", Uri.parse("https://play.google.com/d"));
        intent.setPackage("com.android.vending");
        return Boolean.valueOf(intent.resolveActivity(this.a.e) != null);
    }
}
