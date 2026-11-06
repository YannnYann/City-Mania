package io.bidmachine.rendering.internal.view;

import android.content.Context;
import android.widget.FrameLayout;
import io.bidmachine.rendering.internal.controller.g;
import io.bidmachine.rendering.internal.controller.h;
import io.bidmachine.rendering.internal.j;
import io.bidmachine.rendering.internal.k;
import io.bidmachine.rendering.internal.t;
import io.bidmachine.rendering.model.AdPhaseParams;
import io.bidmachine.rendering.model.BrokenCreativeEvent;
import io.bidmachine.rendering.model.ClickData;
import io.bidmachine.rendering.model.PrivacySheetParams;
import io.bidmachine.rendering.model.animation.AnimationParams;
import io.bidmachine.rendering.utils.UiUtils;
import io.bidmachine.util.Error;
import io.bidmachine.util.SystemComponent;
import io.bidmachine.util.Tag;
import io.bidmachine.util.ViewUtils;
import kotlin.jvm.functions.Function0;
import kotlin.jvm.internal.Intrinsics;

/* JADX INFO: loaded from: classes5.dex */
public final class f extends FrameLayout {
    public final Tag a;
    public final io.bidmachine.rendering.internal.controller.e b;
    public final d c;
    public c d;

    public final class a implements g {
        public a() {
        }

        @Override // io.bidmachine.rendering.internal.controller.g
        public void a(io.bidmachine.rendering.internal.controller.e adPhaseController, Error error) {
            Intrinsics.checkNotNullParameter(adPhaseController, "adPhaseController");
            Intrinsics.checkNotNullParameter(error, "error");
            t.a(f.this.a, "onAdPhaseFailToLoad (%s) - %s", adPhaseController, error);
            adPhaseController.destroy();
        }

        @Override // io.bidmachine.rendering.internal.controller.g
        public void b(io.bidmachine.rendering.internal.controller.e adPhaseController, Error error) {
            Intrinsics.checkNotNullParameter(adPhaseController, "adPhaseController");
            Intrinsics.checkNotNullParameter(error, "error");
        }

        @Override // io.bidmachine.rendering.internal.controller.g
        public void b(io.bidmachine.rendering.internal.controller.e adPhaseController) {
            Intrinsics.checkNotNullParameter(adPhaseController, "adPhaseController");
            t.b(f.this.a, "onAdPhaseLoaded (%s)", adPhaseController);
            f fVar = f.this;
            adPhaseController.a(fVar, fVar);
            adPhaseController.a(f.this.new b());
            f.this.c();
        }

        @Override // io.bidmachine.rendering.internal.controller.g
        public void a(io.bidmachine.rendering.internal.controller.e adPhaseController) {
            Intrinsics.checkNotNullParameter(adPhaseController, "adPhaseController");
            adPhaseController.e();
        }
    }

    public final class b implements h {
        public b() {
        }

        @Override // io.bidmachine.rendering.internal.controller.h
        public void a() {
        }

        @Override // io.bidmachine.rendering.internal.controller.h
        public void a(SystemComponent systemComponent, ClickData clickData) {
        }

        @Override // io.bidmachine.rendering.internal.controller.h
        public void b() {
            f.this.c.c();
        }

        @Override // io.bidmachine.rendering.internal.controller.h
        public void c(AnimationParams animationParams, Function0 callback) {
            Intrinsics.checkNotNullParameter(callback, "callback");
            f.this.a(animationParams, callback);
        }

        @Override // io.bidmachine.rendering.internal.controller.h
        public void d() {
            f.this.c.a();
        }

        @Override // io.bidmachine.rendering.internal.controller.h
        public void e() {
        }

        @Override // io.bidmachine.rendering.internal.controller.h
        public void b(AnimationParams animationParams, Function0 callback) {
            Intrinsics.checkNotNullParameter(callback, "callback");
            callback.invoke();
        }

        @Override // io.bidmachine.rendering.internal.controller.h
        public void d(AnimationParams animationParams, Function0 callback) {
            Intrinsics.checkNotNullParameter(callback, "callback");
            f.this.a(animationParams, callback);
        }

        @Override // io.bidmachine.rendering.internal.controller.h
        public void a(PrivacySheetParams privacySheetParams) {
            Intrinsics.checkNotNullParameter(privacySheetParams, "privacySheetParams");
        }

        @Override // io.bidmachine.rendering.internal.controller.h
        public void a(BrokenCreativeEvent brokenCreativeEvent) {
            Intrinsics.checkNotNullParameter(brokenCreativeEvent, "brokenCreativeEvent");
            f.this.a(brokenCreativeEvent);
        }

        @Override // io.bidmachine.rendering.internal.controller.h
        public void a(AnimationParams animationParams, Function0 callback) {
            Intrinsics.checkNotNullParameter(callback, "callback");
            callback.invoke();
        }
    }

    public interface c {
        void a(BrokenCreativeEvent brokenCreativeEvent);

        void a(AnimationParams animationParams, Function0 function0);

        void onLoaded();
    }

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public f(Context context, AdPhaseParams adPhaseParams) {
        super(context);
        Intrinsics.checkNotNullParameter(context, "context");
        Tag tag = new Tag("PlaceholderView");
        this.a = tag;
        Tag tag2 = new Tag("PlaceholderViewAdPhaseController");
        this.b = new io.bidmachine.rendering.internal.controller.f(context, adPhaseParams == null ? k.a() : adPhaseParams, tag, tag2, new io.bidmachine.rendering.internal.state.d(tag2.toString(), j.i.a()), new a());
        d dVar = new d(context);
        this.c = dVar;
        addView(dVar, ViewUtils.createMatchParentParams());
        dVar.a();
    }

    public static final void c(f this$0) {
        Intrinsics.checkNotNullParameter(this$0, "this$0");
        this$0.removeAllViews();
    }

    public final void d() {
        this.b.a(true);
        this.b.a(false);
    }

    public final void e() {
        this.b.b(true);
    }

    public final void f() {
        this.b.b();
    }

    public final c getListener() {
        return this.d;
    }

    public final void setListener(c cVar) {
        this.d = cVar;
    }

    public final void b() {
        t.b(this.a, "load", new Object[0]);
        this.b.a();
    }

    public final void c() {
        t.b(this.a, "notifyPlaceholderLoaded", new Object[0]);
        UiUtils.onUiThread(new Runnable() { // from class: io.bidmachine.rendering.internal.view.f$$ExternalSyntheticLambda2
            @Override // java.lang.Runnable
            public final void run() {
                f.d(this.f$0);
            }
        });
    }

    public static final void d(f this$0) {
        Intrinsics.checkNotNullParameter(this$0, "this$0");
        c cVar = this$0.d;
        if (cVar != null) {
            cVar.onLoaded();
        }
    }

    public final void a() {
        this.d = null;
        this.b.destroy();
        UiUtils.onUiThread(new Runnable() { // from class: io.bidmachine.rendering.internal.view.f$$ExternalSyntheticLambda1
            @Override // java.lang.Runnable
            public final void run() {
                f.c(this.f$0);
            }
        });
    }

    public final void b(final AnimationParams animationParams, final Function0 function0) {
        t.b(this.a, "notifyPlaceholderClosed", new Object[0]);
        UiUtils.onUiThread(new Runnable() { // from class: io.bidmachine.rendering.internal.view.f$$ExternalSyntheticLambda3
            @Override // java.lang.Runnable
            public final void run() {
                f.a(this.f$0, animationParams, function0);
            }
        });
    }

    public static final void b(f this$0, BrokenCreativeEvent brokenCreativeEvent) {
        Intrinsics.checkNotNullParameter(this$0, "this$0");
        Intrinsics.checkNotNullParameter(brokenCreativeEvent, "$brokenCreativeEvent");
        c cVar = this$0.d;
        if (cVar != null) {
            cVar.a(brokenCreativeEvent);
        }
    }

    public final void a(AnimationParams animationParams, Function0 callback) {
        Intrinsics.checkNotNullParameter(callback, "callback");
        b(animationParams, callback);
    }

    public static final void a(f this$0, AnimationParams animationParams, Function0 callback) {
        Intrinsics.checkNotNullParameter(this$0, "this$0");
        Intrinsics.checkNotNullParameter(callback, "$callback");
        c cVar = this$0.d;
        if (cVar != null) {
            cVar.a(animationParams, callback);
        }
    }

    public final void a(final BrokenCreativeEvent brokenCreativeEvent) {
        t.b(this.a, "notifyBrokenCreativeEvent", new Object[0]);
        UiUtils.onUiThread(new Runnable() { // from class: io.bidmachine.rendering.internal.view.f$$ExternalSyntheticLambda0
            @Override // java.lang.Runnable
            public final void run() {
                f.b(this.f$0, brokenCreativeEvent);
            }
        });
    }
}
