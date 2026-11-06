package com.badlogic.gdx.backends.android;

import android.content.Context;
import android.view.MotionEvent;
import com.badlogic.gdx.Gdx;
import com.badlogic.gdx.backends.android.DefaultAndroidInput;
import java.util.Arrays;

/* JADX INFO: loaded from: classes.dex */
public class AndroidTouchHandler {
    public final int toGdxButton(int i) {
        if (i == 0 || i == 1) {
            return 0;
        }
        if (i == 2) {
            return 1;
        }
        if (i == 4) {
            return 2;
        }
        if (i == 8) {
            return 3;
        }
        return i == 16 ? 4 : -1;
    }

    /* JADX WARN: Can't fix incorrect switch cases order, some code will duplicate */
    public void onTouch(MotionEvent motionEvent, DefaultAndroidInput defaultAndroidInput) throws Throwable {
        DefaultAndroidInput defaultAndroidInput2;
        DefaultAndroidInput defaultAndroidInput3;
        DefaultAndroidInput defaultAndroidInput4 = defaultAndroidInput;
        int action = motionEvent.getAction() & 255;
        int action2 = (motionEvent.getAction() & 65280) >> 8;
        int pointerId = motionEvent.getPointerId(action2);
        long jNanoTime = System.nanoTime();
        synchronized (defaultAndroidInput) {
            try {
                try {
                    try {
                        switch (action) {
                            case 0:
                            case 5:
                                defaultAndroidInput2 = defaultAndroidInput4;
                                int freePointerIndex = defaultAndroidInput2.getFreePointerIndex();
                                if (freePointerIndex < 20) {
                                    defaultAndroidInput2.realId[freePointerIndex] = pointerId;
                                    int x = (int) motionEvent.getX(action2);
                                    int y = (int) motionEvent.getY(action2);
                                    int gdxButton = toGdxButton(motionEvent.getButtonState());
                                    if (gdxButton != -1) {
                                        defaultAndroidInput3 = defaultAndroidInput;
                                        postTouchEvent(defaultAndroidInput3, 0, x, y, freePointerIndex, gdxButton, jNanoTime);
                                    } else {
                                        defaultAndroidInput3 = defaultAndroidInput2;
                                    }
                                    defaultAndroidInput3.touchX[freePointerIndex] = x;
                                    defaultAndroidInput3.touchY[freePointerIndex] = y;
                                    defaultAndroidInput3.deltaX[freePointerIndex] = 0;
                                    defaultAndroidInput3.deltaY[freePointerIndex] = 0;
                                    defaultAndroidInput3.touched[freePointerIndex] = gdxButton != -1;
                                    defaultAndroidInput3.button[freePointerIndex] = gdxButton;
                                    defaultAndroidInput3.pressure[freePointerIndex] = motionEvent.getPressure(action2);
                                    Gdx.app.getGraphics().requestRendering();
                                    return;
                                }
                                Gdx.app.getGraphics().requestRendering();
                                return;
                            case 1:
                            case 3:
                            case 4:
                            case 6:
                                try {
                                    int iLookUpPointerIndex = defaultAndroidInput4.lookUpPointerIndex(pointerId);
                                    if (iLookUpPointerIndex != -1 && iLookUpPointerIndex < 20) {
                                        defaultAndroidInput4.realId[iLookUpPointerIndex] = -1;
                                        int x2 = (int) motionEvent.getX(action2);
                                        int y2 = (int) motionEvent.getY(action2);
                                        int i = defaultAndroidInput4.button[iLookUpPointerIndex];
                                        if (i == -1) {
                                            defaultAndroidInput2 = defaultAndroidInput4;
                                        } else if (action == 3) {
                                            postTouchEvent(defaultAndroidInput4, 5, x2, y2, iLookUpPointerIndex, i, jNanoTime);
                                            defaultAndroidInput2 = defaultAndroidInput;
                                        } else {
                                            defaultAndroidInput4 = defaultAndroidInput;
                                            postTouchEvent(defaultAndroidInput4, 1, x2, y2, iLookUpPointerIndex, i, jNanoTime);
                                            defaultAndroidInput2 = defaultAndroidInput4;
                                        }
                                        defaultAndroidInput2.touchX[iLookUpPointerIndex] = x2;
                                        defaultAndroidInput2.touchY[iLookUpPointerIndex] = y2;
                                        defaultAndroidInput2.deltaX[iLookUpPointerIndex] = 0;
                                        defaultAndroidInput2.deltaY[iLookUpPointerIndex] = 0;
                                        defaultAndroidInput2.touched[iLookUpPointerIndex] = false;
                                        defaultAndroidInput2.button[iLookUpPointerIndex] = 0;
                                        defaultAndroidInput2.pressure[iLookUpPointerIndex] = 0.0f;
                                        if (action == 3) {
                                            Arrays.fill(defaultAndroidInput2.realId, -1);
                                            Arrays.fill(defaultAndroidInput2.touched, false);
                                        }
                                        Gdx.app.getGraphics().requestRendering();
                                        return;
                                    }
                                    Gdx.app.getGraphics().requestRendering();
                                    return;
                                } catch (Throwable th) {
                                    th = th;
                                    throw th;
                                }
                            case 2:
                                int pointerCount = motionEvent.getPointerCount();
                                for (int i2 = 0; i2 < pointerCount; i2++) {
                                    int pointerId2 = motionEvent.getPointerId(i2);
                                    int x3 = (int) motionEvent.getX(i2);
                                    int y3 = (int) motionEvent.getY(i2);
                                    int iLookUpPointerIndex2 = defaultAndroidInput4.lookUpPointerIndex(pointerId2);
                                    if (iLookUpPointerIndex2 != -1) {
                                        if (iLookUpPointerIndex2 < 20) {
                                            int i3 = defaultAndroidInput4.button[iLookUpPointerIndex2];
                                            if (i3 != -1) {
                                                postTouchEvent(defaultAndroidInput4, 2, x3, y3, iLookUpPointerIndex2, i3, jNanoTime);
                                                defaultAndroidInput4 = defaultAndroidInput;
                                            } else {
                                                defaultAndroidInput4 = defaultAndroidInput;
                                                postTouchEvent(defaultAndroidInput4, 4, x3, y3, iLookUpPointerIndex2, 0, jNanoTime);
                                            }
                                            int[] iArr = defaultAndroidInput4.deltaX;
                                            int[] iArr2 = defaultAndroidInput4.touchX;
                                            iArr[iLookUpPointerIndex2] = x3 - iArr2[iLookUpPointerIndex2];
                                            int[] iArr3 = defaultAndroidInput4.deltaY;
                                            int[] iArr4 = defaultAndroidInput4.touchY;
                                            iArr3[iLookUpPointerIndex2] = y3 - iArr4[iLookUpPointerIndex2];
                                            iArr2[iLookUpPointerIndex2] = x3;
                                            iArr4[iLookUpPointerIndex2] = y3;
                                            defaultAndroidInput4.pressure[iLookUpPointerIndex2] = motionEvent.getPressure(i2);
                                        } else {
                                            Gdx.app.getGraphics().requestRendering();
                                            return;
                                        }
                                    }
                                }
                                Gdx.app.getGraphics().requestRendering();
                                return;
                            default:
                                Gdx.app.getGraphics().requestRendering();
                                return;
                        }
                    } catch (Throwable th2) {
                        th = th2;
                    }
                } catch (Throwable th3) {
                    th = th3;
                }
            } catch (Throwable th4) {
                th = th4;
            }
        }
    }

    public final void postTouchEvent(DefaultAndroidInput defaultAndroidInput, int i, int i2, int i3, int i4, int i5, long j) {
        DefaultAndroidInput.TouchEvent touchEventObtain = defaultAndroidInput.usedTouchEvents.obtain();
        touchEventObtain.timeStamp = j;
        touchEventObtain.pointer = i4;
        touchEventObtain.x = i2;
        touchEventObtain.y = i3;
        touchEventObtain.type = i;
        touchEventObtain.button = i5;
        defaultAndroidInput.touchEvents.add(touchEventObtain);
    }

    public boolean supportsMultitouch(Context context) {
        return context.getPackageManager().hasSystemFeature("android.hardware.touchscreen.multitouch");
    }
}
