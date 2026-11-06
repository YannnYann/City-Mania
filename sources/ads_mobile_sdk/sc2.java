package ads_mobile_sdk;

import android.view.View;
import kotlin.Unit;
import kotlin.jvm.functions.Function0;
import kotlin.jvm.internal.Lambda;

/* JADX INFO: loaded from: classes.dex */
public final class sc2 extends Lambda implements Function0 {
    public final /* synthetic */ k9 a;
    public final /* synthetic */ View b;
    public final /* synthetic */ tx0 c;
    public final /* synthetic */ String d;

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public sc2(k9 k9Var, View view, tx0 tx0Var, String str) {
        super(0);
        this.a = k9Var;
        this.b = view;
        this.c = tx0Var;
        this.d = str;
    }

    @Override // kotlin.jvm.functions.Function0
    public final Object invoke() {
        k9 k9Var = this.a;
        View view = this.b;
        tx0 tx0Var = this.c;
        String str = this.d;
        p9 p9Var = (p9) k9Var;
        if (!p9Var.f) {
            p9Var.b.a(view, tx0Var, str);
        }
        return Unit.INSTANCE;
    }
}
