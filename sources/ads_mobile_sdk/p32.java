package ads_mobile_sdk;

import android.content.Context;
import android.view.GestureDetector;
import android.view.MotionEvent;
import android.view.View;
import android.widget.FrameLayout;
import android.widget.ImageView;
import com.google.android.libraries.ads.mobile.sdk.internal.nativead.InternalNativeAd;
import java.lang.ref.WeakReference;
import java.util.LinkedHashMap;
import java.util.Map;
import java.util.concurrent.atomic.AtomicBoolean;
import kotlin.Unit;
import kotlin.collections.MapsKt__MapsKt;
import kotlin.jvm.internal.Intrinsics;
import kotlinx.coroutines.BuildersKt__Builders_commonKt;

/* JADX INFO: loaded from: classes.dex */
public final class p32 implements o32 {
    public FrameLayout b;
    public FrameLayout c;
    public final AtomicBoolean d;
    public View e;
    public ImageView.ScaleType f;
    public GestureDetector g;
    public final LinkedHashMap h;
    public InternalNativeAd i;

    public static final void a(p32 this$0, String watermark) {
        Context context;
        Intrinsics.checkNotNullParameter(this$0, "this$0");
        Intrinsics.checkNotNullParameter(watermark, "$watermark");
        synchronized (this$0) {
            try {
                if (this$0.d.get()) {
                    return;
                }
                FrameLayout frameLayout = this$0.c;
                if (frameLayout != null && (context = frameLayout.getContext()) != null) {
                    Intrinsics.checkNotNull(context);
                    FrameLayout frameLayout2 = new FrameLayout(context);
                    frameLayout2.setLayoutParams(new FrameLayout.LayoutParams(-1, -1));
                    sy3.a(context, frameLayout2, watermark);
                    frameLayout.addView(frameLayout2);
                }
                Unit unit = Unit.INSTANCE;
            } catch (Throwable th) {
                throw th;
            }
        }
    }

    public final View b(String assetName) {
        Intrinsics.checkNotNullParameter(assetName, "assetName");
        synchronized (this) {
            if (this.d.get()) {
                return null;
            }
            WeakReference weakReference = (WeakReference) this.h.get(assetName);
            return weakReference != null ? (View) weakReference.get() : null;
        }
    }

    @Override // android.view.View.OnClickListener
    public final void onClick(View view) {
        j12 j12VarR;
        Intrinsics.checkNotNullParameter(view, "view");
        synchronized (this) {
            try {
                if (!this.d.get() && this.g == null) {
                    InternalNativeAd internalNativeAd = this.i;
                    if (internalNativeAd != null && (j12VarR = internalNativeAd.r()) != null) {
                        FrameLayout frameLayout = this.b;
                        LinkedHashMap linkedHashMap = this.h;
                        ImageView.ScaleType scaleType = this.f;
                        if (scaleType == null) {
                            scaleType = t32.i;
                        }
                        j12VarR.a(view, frameLayout, linkedHashMap, scaleType);
                        Unit unit = Unit.INSTANCE;
                    }
                }
            } finally {
            }
        }
    }

    @Override // android.view.View.OnTouchListener
    public final boolean onTouch(View view, MotionEvent motionEvent) {
        j12 j12VarR;
        nr3 nr3VarO;
        Intrinsics.checkNotNullParameter(motionEvent, "motionEvent");
        synchronized (this) {
            try {
                if (this.d.get()) {
                    return false;
                }
                InternalNativeAd internalNativeAd = this.i;
                if (internalNativeAd != null && (j12VarR = internalNativeAd.r()) != null) {
                    InternalNativeAd internalNativeAd2 = this.i;
                    if (internalNativeAd2 != null && !internalNativeAd2.y()) {
                        j12VarR.a(this.b, motionEvent);
                    }
                    InternalNativeAd internalNativeAd3 = this.i;
                    if (internalNativeAd3 != null && !internalNativeAd3.w()) {
                        InternalNativeAd internalNativeAd4 = this.i;
                        if (internalNativeAd4 != null && (nr3VarO = internalNativeAd4.o()) != null) {
                            ((tk0) nr3VarO).a(motionEvent);
                        }
                        if (j12VarR.e() != 0) {
                            WeakReference weakReference = new WeakReference(view);
                            Intrinsics.checkNotNullParameter(weakReference, "<set-?>");
                            j12VarR.f = weakReference;
                            GestureDetector gestureDetector = this.g;
                            if (gestureDetector != null) {
                                gestureDetector.onTouchEvent(motionEvent);
                            }
                        }
                    }
                    return false;
                }
                return false;
            } finally {
            }
        }
    }

    public final FrameLayout c() {
        synchronized (this) {
            if (this.d.get()) {
                return null;
            }
            return this.b;
        }
    }

    public p32(FrameLayout frameLayout, FrameLayout frameLayout2) {
        this.b = frameLayout;
        this.c = frameLayout2;
        if (frameLayout != null) {
            frameLayout.setOnClickListener(this);
        }
        FrameLayout frameLayout3 = this.b;
        if (frameLayout3 != null) {
            frameLayout3.setOnTouchListener(this);
        }
        this.d = new AtomicBoolean(false);
        this.h = new LinkedHashMap();
    }

    public final ImageView.ScaleType e() {
        synchronized (this) {
            if (this.d.get()) {
                return null;
            }
            return this.f;
        }
    }

    public final Map b() {
        synchronized (this) {
            if (this.d.get()) {
                return MapsKt__MapsKt.emptyMap();
            }
            return MapsKt__MapsKt.toMap(this.h);
        }
    }

    public final void c(InternalNativeAd internalNativeAd) {
        synchronized (this) {
            try {
                FrameLayout frameLayout = this.c;
                if (frameLayout != null) {
                    frameLayout.setClickable(false);
                }
                FrameLayout frameLayout2 = this.c;
                if (frameLayout2 != null) {
                    frameLayout2.removeAllViews();
                }
                internalNativeAd.t().a.a();
                internalNativeAd.r().a(this.b, this.h);
                Unit unit = Unit.INSTANCE;
            } catch (Throwable th) {
                throw th;
            }
        }
    }

    public static final void a(p32 this$0) {
        Context context;
        FrameLayout frameLayout;
        Intrinsics.checkNotNullParameter(this$0, "this$0");
        synchronized (this$0) {
            try {
                if (this$0.d.get()) {
                    return;
                }
                FrameLayout frameLayout2 = this$0.b;
                if (frameLayout2 != null && (context = frameLayout2.getContext()) != null) {
                    Intrinsics.checkNotNull(context);
                    if (this$0.e == null) {
                        View view = new View(context);
                        view.setLayoutParams(new FrameLayout.LayoutParams(-1, 0));
                        this$0.e = view;
                    }
                    FrameLayout frameLayout3 = this$0.b;
                    View view2 = this$0.e;
                    if (!Intrinsics.areEqual(frameLayout3, view2 != null ? view2.getParent() : null) && (frameLayout = this$0.b) != null) {
                        frameLayout.addView(this$0.e);
                    }
                }
                Unit unit = Unit.INSTANCE;
            } catch (Throwable th) {
                throw th;
            }
        }
    }

    public final FrameLayout d() {
        synchronized (this) {
            if (this.d.get()) {
                return null;
            }
            return this.c;
        }
    }

    public final void b(InternalNativeAd internalNativeAd) throws Throwable {
        synchronized (this) {
            try {
                if (this.d.get()) {
                    return;
                }
                internalNativeAd.t().a(this);
                t32 t32VarS = internalNativeAd.s();
                t32VarS.getClass();
                Intrinsics.checkNotNullParameter(this, "nativeAdViewContainer");
                BuildersKt__Builders_commonKt.launch$default(t32VarS.a, null, null, new s32(t32VarS, this, null), 3, null);
                try {
                    internalNativeAd.r().a(new WeakReference(this), this.b, this.h, this, this);
                    Unit unit = Unit.INSTANCE;
                    return;
                } catch (Throwable th) {
                    th = th;
                }
            } catch (Throwable th2) {
                th = th2;
            }
            throw th;
        }
    }

    public final void a(InternalNativeAd newNativeAd) {
        Context context;
        Intrinsics.checkNotNullParameter(newNativeAd, "newNativeAd");
        synchronized (this) {
            try {
                if (this.d.get()) {
                    return;
                }
                InternalNativeAd internalNativeAd = this.i;
                if (internalNativeAd != null) {
                    c(internalNativeAd);
                }
                a();
                b(newNativeAd);
                String str = newNativeAd.q().v;
                if (str != null) {
                    if (str.length() <= 0) {
                        str = null;
                    }
                    if (str != null) {
                        a(str);
                    }
                }
                FrameLayout frameLayout = this.b;
                if (frameLayout != null && (context = frameLayout.getContext()) != null) {
                    Intrinsics.checkNotNull(context);
                    this.g = newNativeAd.r().e() != 0 ? new GestureDetector(context, new i52(newNativeAd.r(), new WeakReference(this.b))) : null;
                }
                this.i = newNativeAd;
                Unit unit = Unit.INSTANCE;
            } catch (Throwable th) {
                throw th;
            }
        }
    }

    public final void a(View view, String assetName) {
        Intrinsics.checkNotNullParameter(assetName, "assetName");
        synchronized (this) {
            try {
                if (this.d.get()) {
                    return;
                }
                if (view != null) {
                    this.h.put(assetName, new WeakReference(view));
                } else {
                    this.h.remove(assetName);
                }
                if (Intrinsics.areEqual("3011", assetName)) {
                    return;
                }
                if (view != null) {
                    view.setOnTouchListener(this);
                }
                if (view != null) {
                    view.setClickable(true);
                }
                if (view != null) {
                    view.setOnClickListener(this);
                    Unit unit = Unit.INSTANCE;
                }
            } finally {
            }
        }
    }

    public final void a() {
        o32.a.getClass();
        n32.b.post(new Runnable() { // from class: ads_mobile_sdk.p32$$ExternalSyntheticLambda1
            @Override // java.lang.Runnable
            public final void run() {
                p32.a(this.f$0);
            }
        });
    }

    public final void a(final String str) {
        o32.a.getClass();
        n32.b.post(new Runnable() { // from class: ads_mobile_sdk.p32$$ExternalSyntheticLambda0
            @Override // java.lang.Runnable
            public final void run() {
                p32.a(this.f$0, str);
            }
        });
    }
}
