package ads_mobile_sdk;

import android.content.Context;
import kotlinx.coroutines.CoroutineScope;

/* JADX INFO: loaded from: classes.dex */
public final class nj0 {
    public vh1 a;
    public vh1 b;
    public vh1 c;
    public dw2 d;
    public vh1 e;
    public dw2 f;
    public dw2 g;

    public nj0(Context context, Integer num, Long l, zw3 zw3Var, e01 e01Var, CoroutineScope coroutineScope) {
        a(context, num, l, zw3Var, e01Var, coroutineScope);
    }

    public final void a(Context context, Integer num, Long l, zw3 zw3Var, e01 e01Var, CoroutineScope coroutineScope) {
        this.a = vh1.a(context);
        this.b = vh1.a(coroutineScope);
        this.c = vh1.a(num);
        ay ayVar = zx.a;
        Object obj = do0.c;
        this.d = new do0(ayVar);
        this.e = vh1.a(l);
        this.f = new do0(new mc2(this.a, this.c, this.e, vh1.a(zw3Var)));
        this.g = new do0(new bc2(this.a, this.b, this.c, this.d, this.f, new do0(new ww3(this.b, vh1.a(e01Var)))));
    }
}
