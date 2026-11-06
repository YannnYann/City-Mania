package ads_mobile_sdk;

import android.view.InputEvent;
import android.view.MotionEvent;
import java.util.ArrayDeque;
import java.util.HashMap;

/* JADX INFO: loaded from: classes.dex */
public final class bd1 {
    public InputEvent b;
    public MotionEvent c;
    public final ArrayDeque a = new ArrayDeque();
    public zc1 d = new zc1();

    public final synchronized void a(HashMap map) {
        try {
            InputEvent inputEvent = this.b;
            if (inputEvent != null) {
                map.put("evt", inputEvent);
            }
            MotionEvent motionEvent = this.c;
            if (motionEvent != null) {
                map.put("nv", motionEvent);
            }
            map.put("oe", this.d);
            ArrayDeque arrayDeque = this.a;
            map.put("ro", arrayDeque.toArray(new ad1[arrayDeque.size()]));
            this.d = new zc1();
            this.a.clear();
            this.c = null;
            this.b = null;
        } catch (Throwable th) {
            throw th;
        }
    }

    public final synchronized void a(InputEvent inputEvent) {
        try {
            this.b = inputEvent;
            if (inputEvent instanceof MotionEvent) {
                MotionEvent motionEvent = (MotionEvent) inputEvent;
                if (motionEvent.getAction() == 1) {
                    this.c = MotionEvent.obtain(motionEvent);
                }
                zc1 zc1Var = this.d;
                zc1Var.getClass();
                int action = motionEvent.getAction();
                if (action == 0) {
                    zc1Var.a++;
                    zc1Var.g = 0.0d;
                    zc1Var.e = motionEvent.getRawX();
                    zc1Var.f = motionEvent.getRawY();
                    zc1Var.h = motionEvent.getX();
                    zc1Var.i = motionEvent.getY();
                    zc1Var.j = motionEvent.getRawX();
                    zc1Var.k = motionEvent.getRawY();
                } else if (action == 1) {
                    zc1Var.c++;
                    zc1Var.g = Math.hypot(((double) motionEvent.getRawX()) - zc1Var.e, ((double) motionEvent.getRawY()) - zc1Var.f) + zc1Var.g;
                    zc1Var.e = motionEvent.getRawX();
                    zc1Var.f = motionEvent.getRawY();
                } else if (action == 2) {
                    zc1Var.b += (long) (motionEvent.getHistorySize() + 1);
                    zc1Var.g = Math.hypot(((double) motionEvent.getRawX()) - zc1Var.e, ((double) motionEvent.getRawY()) - zc1Var.f) + zc1Var.g;
                    zc1Var.e = motionEvent.getRawX();
                    zc1Var.f = motionEvent.getRawY();
                } else if (action == 3) {
                    zc1Var.d++;
                }
                if (this.a.size() >= 6) {
                    this.a.remove();
                }
                this.a.add(new ad1(motionEvent));
            }
        } catch (Throwable th) {
            throw th;
        }
    }
}
