package io.bidmachine.iab.mraid;

import android.content.Context;
import android.graphics.Point;
import android.view.GestureDetector;
import android.view.MotionEvent;
import io.bidmachine.util.UiUtilsKt;
import kotlin.jvm.internal.Intrinsics;

/* JADX INFO: loaded from: classes5.dex */
public final class WebViewGestureDetector extends GestureDetector {
    public final a a;

    public static final class a extends GestureDetector.SimpleOnGestureListener {
        public boolean a;
        public volatile long b;
        public volatile Point c;

        public final Point a() {
            return this.c;
        }

        public final long b() {
            return this.b;
        }

        public final boolean c() {
            return this.a;
        }

        public final void d() {
            this.a = false;
            this.c = null;
        }

        @Override // android.view.GestureDetector.SimpleOnGestureListener, android.view.GestureDetector.OnGestureListener
        public boolean onSingleTapUp(MotionEvent e) {
            Intrinsics.checkNotNullParameter(e, "e");
            this.a = true;
            this.b = System.currentTimeMillis();
            this.c = UiUtilsKt.isRealMotionEvent(e) ? new Point((int) e.getRawX(), (int) e.getRawY()) : null;
            return super.onSingleTapUp(e);
        }
    }

    /* JADX WARN: 'this' call moved to the top of the method (can break code semantics) */
    public WebViewGestureDetector(Context context) {
        this(context, new a());
        Intrinsics.checkNotNullParameter(context, "context");
    }

    public final Point getClickPoint() {
        return this.a.a();
    }

    public final long getClickTimeMs() {
        return this.a.b();
    }

    public final boolean isClicked() {
        return this.a.c();
    }

    public final void resetClick() {
        this.a.d();
    }

    public WebViewGestureDetector(Context context, a aVar) {
        super(context, aVar);
        this.a = aVar;
        setIsLongpressEnabled(false);
    }
}
