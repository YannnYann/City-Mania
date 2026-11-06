package ads_mobile_sdk;

import android.hardware.SensorManager;
import kotlin.Unit;
import kotlin.jvm.functions.Function1;
import kotlin.jvm.internal.Lambda;

/* JADX INFO: loaded from: classes.dex */
public final class qp1 extends Lambda implements Function1 {
    public final /* synthetic */ sp1 a;
    public final /* synthetic */ rp1 b;

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public qp1(sp1 sp1Var, rp1 rp1Var) {
        super(1);
        this.a = sp1Var;
        this.b = rp1Var;
    }

    @Override // kotlin.jvm.functions.Function1
    public final Object invoke(Object obj) {
        SensorManager sensorManager = this.a.c;
        if (sensorManager != null) {
            sensorManager.unregisterListener(this.b);
        }
        return Unit.INSTANCE;
    }
}
