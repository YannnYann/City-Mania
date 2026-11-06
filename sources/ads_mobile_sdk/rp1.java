package ads_mobile_sdk;

import android.hardware.Sensor;
import android.hardware.SensorEvent;
import android.hardware.SensorEventListener;
import android.hardware.SensorManager;
import com.ironsource.C3522b4;
import java.util.ArrayList;
import java.util.Iterator;
import kotlin.Result;
import kotlin.collections.CollectionsKt__IterablesKt;
import kotlin.collections.CollectionsKt___CollectionsKt;
import kotlin.jvm.internal.Intrinsics;
import kotlinx.coroutines.CancellableContinuation;
import kotlinx.coroutines.CancellableContinuationImpl;

/* JADX INFO: loaded from: classes.dex */
public final class rp1 implements SensorEventListener {
    public final ArrayList a = new ArrayList();
    public final int b;
    public final /* synthetic */ sp1 c;
    public final /* synthetic */ CancellableContinuation d;

    public rp1(sp1 sp1Var, CancellableContinuationImpl cancellableContinuationImpl) {
        this.c = sp1Var;
        this.d = cancellableContinuationImpl;
        this.b = sp1Var.a.b0();
    }

    @Override // android.hardware.SensorEventListener
    public final void onAccuracyChanged(Sensor sensor, int i) {
    }

    @Override // android.hardware.SensorEventListener
    public final void onSensorChanged(SensorEvent sensorEvent) {
        Sensor sensor;
        if (sensorEvent == null || (sensor = sensorEvent.sensor) == null) {
            return;
        }
        if (sensor.getType() == 1) {
            float[] fArr = sensorEvent.values;
            float f = fArr[0];
            float f2 = fArr[1];
            float f3 = fArr[2];
            this.a.add(Float.valueOf((float) Math.sqrt((f3 * f3) + (f2 * f2) + (f * f))));
            if (this.a.size() >= this.b) {
                SensorManager sensorManager = this.c.c;
                if (sensorManager != null) {
                    sensorManager.unregisterListener(this);
                }
                if (this.d.isActive()) {
                    double dAverageOfFloat = CollectionsKt___CollectionsKt.averageOfFloat(this.a);
                    ArrayList arrayList = this.a;
                    ArrayList arrayList2 = new ArrayList(CollectionsKt__IterablesKt.collectionSizeOrDefault(arrayList, 10));
                    Iterator it = arrayList.iterator();
                    while (it.hasNext()) {
                        double dFloatValue = ((double) ((Number) it.next()).floatValue()) - dAverageOfFloat;
                        arrayList2.add(Double.valueOf(dFloatValue * dFloatValue));
                    }
                    double dAverageOfDouble = CollectionsKt___CollectionsKt.averageOfDouble(arrayList2);
                    ex0 ex0Var = this.c.a;
                    ex0Var.getClass();
                    Intrinsics.checkNotNullParameter("gads:is_device_held:variance_threshold", C3522b4.i.W);
                    this.d.resumeWith(Result.m2760constructorimpl(Boolean.valueOf(dAverageOfDouble > ((Number) ex0Var.a("gads:is_device_held:variance_threshold", Double.valueOf(0.01d), yr.c)).doubleValue())));
                }
            }
        }
    }
}
