package com.badlogic.gdx.backends.android;

import android.view.MotionEvent;
import com.badlogic.gdx.Gdx;
import com.badlogic.gdx.backends.android.DefaultAndroidInput;

/* JADX INFO: loaded from: classes.dex */
public class AndroidMouseHandler {
    public int deltaX = 0;
    public int deltaY = 0;

    public boolean onGenericMotion(MotionEvent motionEvent, DefaultAndroidInput defaultAndroidInput) throws Throwable {
        DefaultAndroidInput defaultAndroidInput2;
        if ((motionEvent.getSource() & 2) == 0) {
            return false;
        }
        int action = motionEvent.getAction() & 255;
        long jNanoTime = System.nanoTime();
        synchronized (defaultAndroidInput) {
            try {
                if (action == 7) {
                    defaultAndroidInput2 = defaultAndroidInput;
                    int x = (int) motionEvent.getX();
                    int y = (int) motionEvent.getY();
                    if (x != this.deltaX || y != this.deltaY) {
                        postTouchEvent(defaultAndroidInput2, 4, x, y, 0, 0, jNanoTime);
                        this.deltaX = x;
                        this.deltaY = y;
                    }
                } else if (action != 8) {
                    defaultAndroidInput2 = defaultAndroidInput;
                } else {
                    try {
                        defaultAndroidInput2 = defaultAndroidInput;
                        postTouchEvent(defaultAndroidInput2, 3, 0, 0, (int) (-Math.signum(motionEvent.getAxisValue(10))), (int) (-Math.signum(motionEvent.getAxisValue(9))), jNanoTime);
                    } catch (Throwable th) {
                        th = th;
                        throw th;
                    }
                }
                Gdx.app.getGraphics().requestRendering();
                return true;
            } catch (Throwable th2) {
                th = th2;
            }
        }
        throw th;
    }

    public final void postTouchEvent(DefaultAndroidInput defaultAndroidInput, int i, int i2, int i3, int i4, int i5, long j) {
        DefaultAndroidInput.TouchEvent touchEventObtain = defaultAndroidInput.usedTouchEvents.obtain();
        touchEventObtain.timeStamp = j;
        touchEventObtain.x = i2;
        touchEventObtain.y = i3;
        touchEventObtain.type = i;
        touchEventObtain.scrollAmountX = i4;
        touchEventObtain.scrollAmountY = i5;
        defaultAndroidInput.touchEvents.add(touchEventObtain);
    }
}
