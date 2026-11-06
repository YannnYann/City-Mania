package io.blueflower.stapel2d.touch;

import com.badlogic.gdx.Application;
import com.badlogic.gdx.Gdx;
import com.badlogic.gdx.Input;
import com.badlogic.gdx.InputProcessor;
import com.badlogic.gdx.utils.TimeUtils;
import com.unity3d.services.UnityAdsConstants;
import com.vungle.ads.internal.protos.Sdk;
import io.blueflower.stapel2d.util.IntList;
import java.util.ArrayDeque;
import java.util.ArrayList;
import java.util.Iterator;
import java.util.LinkedList;
import java.util.List;
import java.util.Queue;

/* JADX INFO: loaded from: classes5.dex */
public final class TouchMapper {
    public float currentScrollPosition;
    public long lastMouseMoved;
    public float lastScrollPosition;
    public boolean mouse;
    public TouchPoint newPoint;
    public TouchPoint removedPoint;
    public float scrollChange;
    public final TouchPoint mousePoint = new TouchPoint();
    public InputProcessor processor = new FlushableInputProcessor() { // from class: io.blueflower.stapel2d.touch.TouchMapper.1
        public int actionIndex;
        public int actionMask;
        public int touchIdCtr;
        public MotionEvent genericMotionEvent = new MotionEvent() { // from class: io.blueflower.stapel2d.touch.TouchMapper.1.1
            @Override // io.blueflower.stapel2d.touch.TouchMapper.MotionEvent
            public int getX(int i) {
                return Gdx.input.getX(AnonymousClass1.this.activePointers.get(i));
            }

            @Override // io.blueflower.stapel2d.touch.TouchMapper.MotionEvent
            public int getY(int i) {
                return Gdx.input.getY(AnonymousClass1.this.activePointers.get(i));
            }

            @Override // io.blueflower.stapel2d.touch.TouchMapper.MotionEvent
            public int getPointerCount() {
                return AnonymousClass1.this.activePointers.size();
            }

            @Override // io.blueflower.stapel2d.touch.TouchMapper.MotionEvent
            public int getActionIndex() {
                return AnonymousClass1.this.actionIndex;
            }

            @Override // io.blueflower.stapel2d.touch.TouchMapper.MotionEvent
            public int getPointerId(int i) {
                return AnonymousClass1.this.touchIds[AnonymousClass1.this.activePointers.get(i) + (AnonymousClass1.this.activeButtons.get(i) * 10)];
            }

            @Override // io.blueflower.stapel2d.touch.TouchMapper.MotionEvent
            public int getActionMasked() {
                return AnonymousClass1.this.actionMask;
            }

            @Override // io.blueflower.stapel2d.touch.TouchMapper.MotionEvent
            public int getButton(int i) {
                return AnonymousClass1.this.activeButtons.get(i);
            }

            @Override // io.blueflower.stapel2d.touch.TouchMapper.MotionEvent
            public boolean isMouse() {
                AnonymousClass1 anonymousClass1 = AnonymousClass1.this;
                return TouchMapper.this.isMouseInput(anonymousClass1.activeButtons.get(AnonymousClass1.this.actionIndex));
            }
        };
        public int[] touchIds = new int[Sdk.SDKError.Reason.INVALID_TPAT_KEY_VALUE];
        public IntList activePointers = new IntList();
        public IntList activeButtons = new IntList();

        @Override // com.badlogic.gdx.InputProcessor
        public boolean keyDown(int i) {
            return false;
        }

        @Override // com.badlogic.gdx.InputProcessor
        public boolean keyTyped(char c) {
            return false;
        }

        @Override // com.badlogic.gdx.InputProcessor
        public boolean keyUp(int i) {
            return false;
        }

        @Override // io.blueflower.stapel2d.touch.TouchMapper.FlushableInputProcessor
        public void flush() {
            this.activePointers.clear();
            this.activeButtons.clear();
        }

        @Override // com.badlogic.gdx.InputProcessor
        public boolean touchDown(int i, int i2, int i3, int i4) throws Throwable {
            int i5 = 0;
            while (i5 < this.activePointers.size()) {
                if (!Gdx.input.isTouched(this.activePointers.get(i5)) || this.activePointers.get(i5) == i3) {
                    this.activePointers.removeAt(i5);
                    this.activeButtons.removeAt(i5);
                    i5--;
                }
                i5++;
            }
            if (TouchMapper.this.isMouseInput(i4)) {
                TouchMapper.this.lastMouseMoved = TimeUtils.millis();
            }
            int i6 = this.touchIdCtr;
            this.touchIdCtr = i6 + 1;
            this.touchIds[(i4 * 10) + i3] = i6;
            this.activePointers.add(i3);
            this.activeButtons.add(i4);
            this.actionMask = this.activePointers.size() == 1 ? 1 : 3;
            this.actionIndex = this.activePointers.size() - 1;
            TouchMapper.this.map(this.genericMotionEvent);
            return true;
        }

        @Override // com.badlogic.gdx.InputProcessor
        public boolean touchUp(int i, int i2, int i3, int i4) throws Throwable {
            int iIndexOf = -1;
            do {
                iIndexOf = this.activePointers.indexOf(i3, iIndexOf + 1);
                if (iIndexOf < 0) {
                    break;
                }
            } while (this.activeButtons.get(iIndexOf) != i4);
            if (iIndexOf >= 0) {
                this.actionMask = this.activePointers.size() == 1 ? 2 : 4;
                this.actionIndex = iIndexOf;
                TouchMapper.this.map(this.genericMotionEvent);
                this.touchIds[i3 + (i4 * 10)] = -1;
                this.activePointers.removeAt(iIndexOf);
                this.activeButtons.removeAt(iIndexOf);
            }
            return true;
        }

        @Override // com.badlogic.gdx.InputProcessor
        public boolean touchCancelled(int i, int i2, int i3, int i4) {
            return touchUp(i, i2, i3, i4);
        }

        @Override // com.badlogic.gdx.InputProcessor
        public boolean touchDragged(int i, int i2, int i3) throws Throwable {
            this.actionMask = 0;
            this.actionIndex = this.activePointers.indexOf(i3);
            TouchMapper.this.map(this.genericMotionEvent);
            return true;
        }

        @Override // com.badlogic.gdx.InputProcessor
        public boolean mouseMoved(int i, int i2) {
            TouchMapper.this.lastMouseMoved = TimeUtils.millis();
            return true;
        }

        @Override // com.badlogic.gdx.InputProcessor
        public boolean scrolled(float f, float f2) {
            TouchMapper.access$716(TouchMapper.this, f2);
            TouchMapper.this.lastMouseMoved = TimeUtils.millis();
            return true;
        }
    };
    public final List<TouchPoint> activePoints = new ArrayList();
    public final Queue<TouchPoint> newPoints = new ArrayDeque();
    public final Queue<TouchPoint> removedPoints = new ArrayDeque();
    public final List<TouchPoint> publicActivePoints = new ArrayList();
    public final Queue<TouchPoint> releasePoints = new ArrayDeque();

    public interface FlushableInputProcessor extends InputProcessor {
        void flush();
    }

    public interface MotionEvent {
        int getActionIndex();

        int getActionMasked();

        int getButton(int i);

        int getPointerCount();

        int getPointerId(int i);

        int getX(int i);

        int getY(int i);

        boolean isMouse();
    }

    public static /* synthetic */ float access$716(TouchMapper touchMapper, float f) {
        float f2 = touchMapper.currentScrollPosition + f;
        touchMapper.currentScrollPosition = f2;
        return f2;
    }

    public List<TouchPoint> getActivePoints() {
        return this.publicActivePoints;
    }

    public synchronized int countActualActivePoints() {
        return this.activePoints.size();
    }

    public float getScrollChange() {
        return this.scrollChange;
    }

    public synchronized void update() {
        while (!this.releasePoints.isEmpty()) {
            try {
                TouchPoint touchPointRemove = this.releasePoints.remove();
                touchPointRemove.setLastPosition(touchPointRemove.getX(), touchPointRemove.getY());
                touchPointRemove.setInvalid();
            } catch (Throwable th) {
                throw th;
            }
        }
        TouchPoint ghost = null;
        this.newPoint = this.newPoints.isEmpty() ? null : this.newPoints.remove().getGhost();
        if (!this.removedPoints.isEmpty() && this.newPoint == null) {
            ghost = this.removedPoints.remove().getGhost();
        }
        this.removedPoint = ghost;
        if (ghost != null) {
            this.releasePoints.add(ghost);
        }
        this.publicActivePoints.clear();
        boolean z = false;
        for (int i = 0; i < this.activePoints.size(); i++) {
            TouchPoint touchPoint = this.activePoints.get(i);
            TouchPoint ghost2 = touchPoint.getGhost();
            ghost2.fillWith(touchPoint);
            touchPoint.setLastPosition(touchPoint.getX(), touchPoint.getY());
            touchPoint.updateCounter++;
            this.publicActivePoints.add(ghost2);
        }
        float f = this.currentScrollPosition;
        this.scrollChange = f - this.lastScrollPosition;
        this.lastScrollPosition = f;
        TouchPoint touchPoint2 = this.mousePoint;
        touchPoint2.lastX = touchPoint2.x;
        touchPoint2.lastY = touchPoint2.y;
        touchPoint2.x = virtualToPixelsX(Gdx.input.getX());
        this.mousePoint.y = virtualToPixelsY(Gdx.input.getY());
        if (TimeUtils.millis() - this.lastMouseMoved <= 100 || this.scrollChange != UnityAdsConstants.SafeGuards.InitRequestRetryPolicy.MIN_JITTER_PCT || (this.mouse && this.publicActivePoints.isEmpty())) {
            z = true;
        }
        this.mouse = z;
        Iterator<TouchPoint> it = this.publicActivePoints.iterator();
        while (true) {
            if (it.hasNext()) {
                if (it.next().isMouse()) {
                    this.mouse = true;
                    break;
                }
            } else {
                break;
            }
        }
        if (!this.mouse) {
            TouchPoint touchPoint3 = this.mousePoint;
            touchPoint3.x = -1.0f;
            touchPoint3.y = -1.0f;
            touchPoint3.lastX = -1.0f;
            touchPoint3.lastY = -1.0f;
        }
    }

    public synchronized TouchUpdate getTouchUpdate() {
        return new TouchUpdate(this.newPoint, this.removedPoint, this.scrollChange, this.mousePoint);
    }

    public synchronized void flush() {
        this.activePoints.clear();
        this.newPoints.clear();
        this.removedPoints.clear();
        ((FlushableInputProcessor) this.processor).flush();
    }

    public synchronized void map(MotionEvent motionEvent) throws Throwable {
        MotionEvent motionEvent2;
        boolean z;
        try {
            try {
                int actionMasked = motionEvent.getActionMasked();
                int i = 0;
                while (i < motionEvent.getPointerCount()) {
                    TouchPoint point = getPoint(motionEvent.getPointerId(i));
                    if (point == null) {
                        if (i != motionEvent.getActionIndex()) {
                            motionEvent2 = motionEvent;
                        } else if (actionMasked == 1) {
                            int pointerId = motionEvent.getPointerId(i);
                            int button = motionEvent.getButton(i);
                            try {
                                if (!motionEvent.isMouse()) {
                                    try {
                                        if (!isMouseInput(motionEvent.getButton(i))) {
                                            z = false;
                                        }
                                        motionEvent2 = motionEvent;
                                        addTouchPoint(pointerId, motionEvent2, i, true, button, z);
                                    } catch (Throwable th) {
                                        th = th;
                                        throw th;
                                    }
                                }
                                addTouchPoint(pointerId, motionEvent2, i, true, button, z);
                            } catch (Throwable th2) {
                                th = th2;
                                throw th;
                            }
                            z = true;
                            motionEvent2 = motionEvent;
                        } else {
                            motionEvent2 = motionEvent;
                            if (actionMasked == 3) {
                                addTouchPoint(motionEvent2.getPointerId(i), motionEvent2, i, false, motionEvent2.getButton(i), motionEvent2.isMouse() || isMouseInput(motionEvent2.getButton(i)));
                            }
                        }
                    } else {
                        motionEvent2 = motionEvent;
                        fillTouchPoint(point, motionEvent2, i);
                        if ((i == motionEvent2.getActionIndex() && (actionMasked == 2 || actionMasked == 4)) || actionMasked == 5) {
                            removeTouchPoint(point);
                        }
                    }
                    i++;
                    motionEvent = motionEvent2;
                }
                MotionEvent motionEvent3 = motionEvent;
                LinkedList linkedList = new LinkedList();
                for (int i2 = 0; i2 < this.activePoints.size(); i2++) {
                    TouchPoint touchPoint = this.activePoints.get(i2);
                    boolean z2 = false;
                    for (int i3 = 0; i3 < motionEvent3.getPointerCount() && !z2; i3++) {
                        if (motionEvent3.getPointerId(i3) == touchPoint.getID()) {
                            z2 = true;
                        }
                    }
                    if (!z2) {
                        linkedList.add(touchPoint);
                    }
                }
                for (int i4 = 0; i4 < linkedList.size(); i4++) {
                    removeTouchPoint((TouchPoint) linkedList.get(i4));
                }
            } catch (Throwable th3) {
                th = th3;
            }
        } catch (Throwable th4) {
            th = th4;
        }
    }

    public boolean isMouse() {
        return this.mouse;
    }

    public final boolean isMouseInput(int i) {
        Input input = Gdx.input;
        if ((input instanceof TouchInput) && ((TouchInput) input).isTouchInput()) {
            return false;
        }
        return i != 0 || Gdx.app.getType() == Application.ApplicationType.Desktop;
    }

    public int getMouseX() {
        return Gdx.input.getX();
    }

    public int getMouseY() {
        return Gdx.input.getY();
    }

    public final TouchPoint getPoint(int i) {
        for (TouchPoint touchPoint : this.activePoints) {
            if (touchPoint.getID() == i) {
                return touchPoint;
            }
        }
        return null;
    }

    public final TouchPoint addTouchPoint(int i, MotionEvent motionEvent, int i2, boolean z, int i3, boolean z2) {
        TouchPoint touchPoint = new TouchPoint(i, z, virtualToPixelsX(motionEvent.getX(i2)), virtualToPixelsY(motionEvent.getY(i2)), i3, z2);
        touchPoint.setGhost(touchPoint.m2756clone());
        this.newPoints.add(touchPoint);
        this.activePoints.add(touchPoint);
        return touchPoint;
    }

    public final void fillTouchPoint(TouchPoint touchPoint, MotionEvent motionEvent, int i) {
        touchPoint.setPosition(virtualToPixelsX(motionEvent.getX(i)), virtualToPixelsY(motionEvent.getY(i)));
    }

    public final void removeTouchPoint(TouchPoint touchPoint) {
        this.activePoints.remove(touchPoint);
        this.removedPoints.add(touchPoint);
    }

    public final float virtualToPixelsX(float f) {
        return (f * Gdx.graphics.getBackBufferWidth()) / Gdx.graphics.getWidth();
    }

    public final float virtualToPixelsY(float f) {
        return (f * Gdx.graphics.getBackBufferHeight()) / Gdx.graphics.getHeight();
    }
}
