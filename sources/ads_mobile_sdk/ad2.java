package ads_mobile_sdk;

import java.util.Iterator;
import java.util.Timer;
import kotlin.Unit;
import kotlin.jvm.functions.Function0;
import kotlin.jvm.internal.Lambda;

/* JADX INFO: loaded from: classes.dex */
public final class ad2 extends Lambda implements Function0 {
    public final /* synthetic */ aq1 a;
    public final /* synthetic */ zp1 b;

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public ad2(aq1 aq1Var, zp1 zp1Var) {
        super(0);
        this.a = aq1Var;
        this.b = zp1Var;
    }

    @Override // kotlin.jvm.functions.Function0
    public final Object invoke() {
        aq1 aq1Var = this.a;
        zp1 zp1Var = this.b;
        Iterator it = aq1Var.e.values().iterator();
        while (it.hasNext()) {
            ((k9) it.next()).a();
        }
        Timer timer = new Timer();
        timer.schedule(new yp1(aq1Var, zp1Var, timer), 1000L);
        return Unit.INSTANCE;
    }
}
