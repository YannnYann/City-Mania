package io.blueflower.stapel2d.touch;

import com.unity3d.services.UnityAdsConstants;

/* JADX INFO: loaded from: classes5.dex */
public final class TouchUpdate {
    public TouchPoint add;
    public final TouchPoint mousePos;
    public TouchPoint remove;
    public float scrollChange;

    public TouchUpdate(TouchPoint touchPoint, TouchPoint touchPoint2, float f, TouchPoint touchPoint3) {
        this.add = touchPoint;
        this.remove = touchPoint2;
        this.scrollChange = f;
        this.mousePos = touchPoint3;
    }

    public TouchPoint getAddedTouchPoint() {
        return this.add;
    }

    public TouchPoint getRemovedTouchPoint() {
        return this.remove;
    }

    public void clearAddedTouchPoint() {
        this.add = null;
    }

    public float getScrollChange() {
        return this.scrollChange;
    }

    public void clearScrollChange() {
        this.scrollChange = UnityAdsConstants.SafeGuards.InitRequestRetryPolicy.MIN_JITTER_PCT;
    }

    public TouchPoint getMousePos() {
        return this.mousePos;
    }
}
