package ads_mobile_sdk;

import android.content.Context;
import kotlin.jvm.functions.Function0;
import kotlin.jvm.internal.Lambda;

/* JADX INFO: loaded from: classes.dex */
public final class di2 extends Lambda implements Function0 {
    public final /* synthetic */ fi2 a;

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public di2(fi2 fi2Var) {
        super(0);
        this.a = fi2Var;
    }

    @Override // kotlin.jvm.functions.Function0
    public final Object invoke() {
        ii2 ii2Var;
        Context context = this.a.b;
        ii2 ii2Var2 = ii2.h;
        synchronized (ii2.class) {
            try {
                if (ii2.h == null) {
                    ii2.h = new ii2(context);
                }
                ii2Var = ii2.h;
            } catch (Throwable th) {
                throw th;
            }
        }
        return ii2Var;
    }
}
