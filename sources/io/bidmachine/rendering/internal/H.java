package io.bidmachine.rendering.internal;

import android.animation.Animator;
import android.animation.AnimatorListenerAdapter;
import android.animation.TimeInterpolator;
import android.animation.ValueAnimator;
import android.content.Context;
import android.graphics.Bitmap;
import android.graphics.drawable.Drawable;
import android.view.View;
import android.view.animation.DecelerateInterpolator;
import android.widget.ImageView;
import com.unity3d.services.UnityAdsConstants;
import io.bidmachine.rendering.Repository;
import io.bidmachine.rendering.model.Background;
import io.bidmachine.rendering.model.BackgroundSource;
import io.bidmachine.rendering.model.Base64ResourceSource;
import io.bidmachine.rendering.model.Border;
import io.bidmachine.rendering.model.Color;
import io.bidmachine.rendering.model.ColorBackgroundSource;
import io.bidmachine.rendering.model.ColorPlaceholderSource;
import io.bidmachine.rendering.model.ColorSource;
import io.bidmachine.rendering.model.Gradient;
import io.bidmachine.rendering.model.GradientColorSource;
import io.bidmachine.rendering.model.GradientType;
import io.bidmachine.rendering.model.HtmlResourceSource;
import io.bidmachine.rendering.model.Image;
import io.bidmachine.rendering.model.ImageBackgroundSource;
import io.bidmachine.rendering.model.ImagePlaceholderSource;
import io.bidmachine.rendering.model.MediaSource;
import io.bidmachine.rendering.model.MediaSourceKt;
import io.bidmachine.rendering.model.NamePlaceholderSource;
import io.bidmachine.rendering.model.OneColorSource;
import io.bidmachine.rendering.model.Placeholder;
import io.bidmachine.rendering.model.PlaceholderSource;
import io.bidmachine.rendering.model.ResourceSource;
import io.bidmachine.rendering.model.ScaleType;
import io.bidmachine.rendering.model.ScaleTypeKt;
import io.bidmachine.rendering.model.UrlResourceSource;
import io.bidmachine.rendering.model.XmlResourceSource;
import io.bidmachine.util.ColorUtilsKt;
import io.bidmachine.util.Error;
import io.bidmachine.util.UtilsKt;
import io.bidmachine.util.gradient.GradientDrawable;
import java.lang.ref.WeakReference;
import java.util.List;
import java.util.concurrent.atomic.AtomicBoolean;
import kotlin.Unit;
import kotlin.collections.CollectionsKt___CollectionsKt;
import kotlin.jvm.functions.Function0;
import kotlin.jvm.functions.Function1;
import kotlin.jvm.internal.DefaultConstructorMarker;
import kotlin.jvm.internal.Intrinsics;
import kotlin.jvm.internal.Lambda;

/* JADX INFO: loaded from: classes5.dex */
public final class H {
    public final Context a;
    public final Repository b;
    public final Background c;
    public final AtomicBoolean d;
    public final AtomicBoolean e;
    public final io.bidmachine.rendering.internal.meanbackground.g f;
    public final AtomicBoolean g;
    public Animator h;

    public static final class a {
        public final long a;
        public final TimeInterpolator b;

        public a(long j, TimeInterpolator interpolator) {
            Intrinsics.checkNotNullParameter(interpolator, "interpolator");
            this.a = j;
            this.b = interpolator;
        }

        public final long a() {
            return this.a;
        }

        public final TimeInterpolator b() {
            return this.b;
        }

        public boolean equals(Object obj) {
            if (this == obj) {
                return true;
            }
            if (!(obj instanceof a)) {
                return false;
            }
            a aVar = (a) obj;
            return this.a == aVar.a && Intrinsics.areEqual(this.b, aVar.b);
        }

        public int hashCode() {
            return (Long.hashCode(this.a) * 31) + this.b.hashCode();
        }

        public String toString() {
            return "AnimationConfig(durationMs=" + this.a + ", interpolator=" + this.b + ')';
        }

        public final boolean a(View view) {
            Intrinsics.checkNotNullParameter(view, "view");
            return this.a > 0 && view.isLaidOut();
        }

        public /* synthetic */ a(long j, TimeInterpolator timeInterpolator, int i, DefaultConstructorMarker defaultConstructorMarker) {
            this((i & 1) != 0 ? 200L : j, (i & 2) != 0 ? new DecelerateInterpolator() : timeInterpolator);
        }
    }

    public final class b implements Repository.ResultCallback {
        public final boolean a;
        public final ScaleType b;
        public final Integer c;
        public final Border d;
        public final WeakReference e;
        public final /* synthetic */ H f;

        public b(H h, View view, boolean z, ScaleType scaleType, Integer num, Border border) {
            Intrinsics.checkNotNullParameter(view, "view");
            this.f = h;
            this.a = z;
            this.b = scaleType;
            this.c = num;
            this.d = border;
            this.e = new WeakReference(view);
        }

        /* JADX WARN: Can't rename method to resolve collision */
        @Override // io.bidmachine.util.ResultCallback
        public void onError(Error error) {
            Intrinsics.checkNotNullParameter(error, "error");
        }

        @Override // io.bidmachine.rendering.Repository.ResultCallback, io.bidmachine.util.ResultCallback
        public void onSuccess(Bitmap successType) {
            Intrinsics.checkNotNullParameter(successType, "successType");
            H h = this.f;
            try {
                View view = (View) this.e.get();
                if (view == null) {
                    return;
                }
                Intrinsics.checkNotNullExpressionValue(view, "weakView.get() ?: return");
                h.a(view, this.a, successType, this.b, this.c, this.d);
                Unit unit = Unit.INSTANCE;
            } catch (Throwable unused) {
            }
        }
    }

    public static final class c extends Lambda implements Function1 {
        public final /* synthetic */ View b;
        public final /* synthetic */ boolean c;
        public final /* synthetic */ Integer d;
        public final /* synthetic */ Border e;
        public final /* synthetic */ a f;

        /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
        public c(View view, boolean z, Integer num, Border border, a aVar) {
            super(1);
            this.b = view;
            this.c = z;
            this.d = num;
            this.e = border;
            this.f = aVar;
        }

        public final void a(int i) {
            H.this.a(this.b, this.c, i, this.d, this.e, this.f);
        }

        @Override // kotlin.jvm.functions.Function1
        public /* bridge */ /* synthetic */ Object invoke(Object obj) {
            a(((Number) obj).intValue());
            return Unit.INSTANCE;
        }
    }

    public static final class d extends Lambda implements Function1 {
        public final /* synthetic */ View b;
        public final /* synthetic */ boolean c;
        public final /* synthetic */ Gradient d;
        public final /* synthetic */ Integer e;
        public final /* synthetic */ Border f;
        public final /* synthetic */ a g;

        /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
        public d(View view, boolean z, Gradient gradient, Integer num, Border border, a aVar) {
            super(1);
            this.b = view;
            this.c = z;
            this.d = gradient;
            this.e = num;
            this.f = border;
            this.g = aVar;
        }

        public final void a(List it) {
            Intrinsics.checkNotNullParameter(it, "it");
            H.this.a(this.b, this.c, new Gradient(this.d.getType(), this.d.getDirection(), it), this.e, this.f, this.g);
        }

        @Override // kotlin.jvm.functions.Function1
        public /* bridge */ /* synthetic */ Object invoke(Object obj) {
            a((List) obj);
            return Unit.INSTANCE;
        }
    }

    public static final class e extends Lambda implements Function0 {
        public final /* synthetic */ View b;
        public final /* synthetic */ boolean c;
        public final /* synthetic */ int d;
        public final /* synthetic */ Integer e;
        public final /* synthetic */ Border f;
        public final /* synthetic */ a g;

        /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
        public e(View view, boolean z, int i, Integer num, Border border, a aVar) {
            super(0);
            this.b = view;
            this.c = z;
            this.d = i;
            this.e = num;
            this.f = border;
            this.g = aVar;
        }

        public final void a() {
            H.this.a(this.b, this.c, this.d, this.e, this.f, this.g);
        }

        @Override // kotlin.jvm.functions.Function0
        public /* bridge */ /* synthetic */ Object invoke() {
            a();
            return Unit.INSTANCE;
        }
    }

    public static final class f extends Lambda implements Function0 {
        public final /* synthetic */ View b;
        public final /* synthetic */ boolean c;
        public final /* synthetic */ Gradient d;
        public final /* synthetic */ Integer e;
        public final /* synthetic */ Border f;
        public final /* synthetic */ a g;

        /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
        public f(View view, boolean z, Gradient gradient, Integer num, Border border, a aVar) {
            super(0);
            this.b = view;
            this.c = z;
            this.d = gradient;
            this.e = num;
            this.f = border;
            this.g = aVar;
        }

        public final void a() {
            H.this.a(this.b, this.c, this.d, this.e, this.f, this.g);
        }

        @Override // kotlin.jvm.functions.Function0
        public /* bridge */ /* synthetic */ Object invoke() {
            a();
            return Unit.INSTANCE;
        }
    }

    public static final class g extends AnimatorListenerAdapter {
        public final /* synthetic */ WeakReference a;
        public final /* synthetic */ Drawable b;

        public g(WeakReference weakReference, Drawable drawable) {
            this.a = weakReference;
            this.b = drawable;
        }

        @Override // android.animation.AnimatorListenerAdapter, android.animation.Animator.AnimatorListener
        public void onAnimationStart(Animator animation) {
            Intrinsics.checkNotNullParameter(animation, "animation");
            View view = (View) this.a.get();
            if (view == null) {
                return;
            }
            view.setBackground(this.b);
        }
    }

    /* JADX WARN: Multi-variable type inference failed */
    public H(Context context, Repository repository, Background background) {
        Intrinsics.checkNotNullParameter(context, "context");
        Intrinsics.checkNotNullParameter(repository, "repository");
        Intrinsics.checkNotNullParameter(background, "background");
        this.a = context;
        this.b = repository;
        this.c = background;
        this.d = new AtomicBoolean(false);
        this.e = new AtomicBoolean(false);
        this.f = new io.bidmachine.rendering.internal.meanbackground.g(null, 0 == true ? 1 : 0, 3, 0 == true ? 1 : 0);
        this.g = new AtomicBoolean(false);
    }

    public static /* synthetic */ void a(H h, Object obj, View view, Integer num, Border border, boolean z, a aVar, int i, Object obj2) {
        if ((i & 4) != 0) {
            num = null;
        }
        if ((i & 8) != 0) {
            border = null;
        }
        if ((i & 16) != 0) {
            z = true;
        }
        if ((i & 32) != 0) {
            aVar = null;
        }
        h.a(obj, view, num, border, z, aVar);
    }

    public final void a(Object assetsHolder, View view, Integer num, Border border, boolean z, a aVar) {
        BackgroundSource source;
        Placeholder placeholder;
        Intrinsics.checkNotNullParameter(assetsHolder, "assetsHolder");
        Intrinsics.checkNotNullParameter(view, "view");
        if (this.e.compareAndSet(false, true) && (placeholder = this.c.getPlaceholder()) != null) {
            try {
                a(this, assetsHolder, view, placeholder, num, border, (a) null, 32, (Object) null);
                Unit unit = Unit.INSTANCE;
            } catch (Throwable unused) {
            }
        }
        boolean zIsContextBased = this.c.isContextBased();
        if (((!z || zIsContextBased) && (z || !zIsContextBased)) || (source = this.c.getSource()) == null) {
            return;
        }
        try {
            a(assetsHolder, view, source, num, border, aVar);
            Unit unit2 = Unit.INSTANCE;
        } catch (Throwable unused2) {
        }
    }

    public static /* synthetic */ void a(H h, Object obj, View view, Placeholder placeholder, Integer num, Border border, a aVar, int i, Object obj2) {
        if ((i & 8) != 0) {
            num = null;
        }
        if ((i & 16) != 0) {
            border = null;
        }
        if ((i & 32) != 0) {
            aVar = null;
        }
        h.a(obj, view, placeholder, num, border, aVar);
    }

    public final void a(Object assetsHolder, View view, Placeholder placeholder, Integer num, Border border, a aVar) {
        Intrinsics.checkNotNullParameter(assetsHolder, "assetsHolder");
        Intrinsics.checkNotNullParameter(view, "view");
        Intrinsics.checkNotNullParameter(placeholder, "placeholder");
        PlaceholderSource source = placeholder.getSource();
        if (source instanceof NamePlaceholderSource) {
            a(this, view, false, k.a.c(((NamePlaceholderSource) source).getName()), (ScaleType) null, num, border, 8, (Object) null);
        } else if (source instanceof ColorPlaceholderSource) {
            a(view, false, ((ColorPlaceholderSource) source).getColor(), num, border, aVar);
        } else if (source instanceof ImagePlaceholderSource) {
            a(assetsHolder, view, false, ((ImagePlaceholderSource) source).getImage(), num, border);
        }
    }

    public final void a(Object assetsHolder, View view, BackgroundSource backgroundSource, Integer num, Border border, a aVar) {
        Intrinsics.checkNotNullParameter(assetsHolder, "assetsHolder");
        Intrinsics.checkNotNullParameter(view, "view");
        Intrinsics.checkNotNullParameter(backgroundSource, "backgroundSource");
        if (backgroundSource instanceof ColorBackgroundSource) {
            a(view, true, ((ColorBackgroundSource) backgroundSource).getColor(), num, border, aVar);
        } else if (backgroundSource instanceof ImageBackgroundSource) {
            a(assetsHolder, view, true, ((ImageBackgroundSource) backgroundSource).getImage(), num, border);
        }
    }

    public final void a(View view, boolean z, Color color, Integer num, Border border, a aVar) {
        Intrinsics.checkNotNullParameter(view, "view");
        Intrinsics.checkNotNullParameter(color, "color");
        boolean zIsContextBased = color.isContextBased();
        ColorSource source = color.getSource();
        if (source instanceof OneColorSource) {
            int color2 = ((OneColorSource) source).getColor();
            e eVar = new e(view, z, color2, num, border, aVar);
            if (!zIsContextBased) {
                eVar.invoke();
                return;
            } else {
                this.f.a(view, Integer.valueOf(color2), eVar, new c(view, z, num, border, aVar));
                return;
            }
        }
        if (source instanceof GradientColorSource) {
            Gradient gradient = ((GradientColorSource) source).getGradient();
            f fVar = new f(view, z, gradient, num, border, aVar);
            if (!zIsContextBased) {
                fVar.invoke();
            } else {
                this.f.b(view, -16777216, fVar, new d(view, z, gradient, num, border, aVar));
            }
        }
    }

    public final void a(View view, boolean z, int i, Integer num, Border border, a aVar) {
        Intrinsics.checkNotNullParameter(view, "view");
        GradientDrawable gradientDrawable = new GradientDrawable();
        gradientDrawable.setColor(i);
        if (num != null) {
            gradientDrawable.setCornerRadius(num.intValue());
        }
        if (border != null) {
            GradientDrawable.setStroke$default(gradientDrawable, border.getStrokeWidthPx(), border.getStrokeColor(), UnityAdsConstants.SafeGuards.InitRequestRetryPolicy.MIN_JITTER_PCT, UnityAdsConstants.SafeGuards.InitRequestRetryPolicy.MIN_JITTER_PCT, 12, null);
            view.setPadding(border.getStrokeWidthPx(), border.getStrokeWidthPx() - UtilsKt.dpToPx(this.a, 2.0f), border.getStrokeWidthPx(), border.getStrokeWidthPx() + UtilsKt.dpToPx(this.a, 2.0f));
        }
        a(view, z, gradientDrawable, aVar);
    }

    public final void a(View view, boolean z, Gradient gradient, Integer num, Border border, a aVar) {
        Intrinsics.checkNotNullParameter(view, "view");
        Intrinsics.checkNotNullParameter(gradient, "gradient");
        int drawableGradientType = gradient.getType().toDrawableGradientType();
        GradientDrawable gradientDrawable = new GradientDrawable(gradient.getDirection().toDrawableGradientOrientation(), CollectionsKt___CollectionsKt.toIntArray(gradient.getColors()));
        gradientDrawable.setGradientType(drawableGradientType);
        if (gradient.getType() == GradientType.Radial) {
            GradientDrawable.setGradientRadius$default(gradientDrawable, UnityAdsConstants.SafeGuards.InitRequestRetryPolicy.MIN_JITTER_PCT, 2, 1, null);
        }
        if (num != null) {
            gradientDrawable.setCornerRadius(num.intValue());
        }
        if (border != null) {
            GradientDrawable.setStroke$default(gradientDrawable, border.getStrokeWidthPx(), border.getStrokeColor(), UnityAdsConstants.SafeGuards.InitRequestRetryPolicy.MIN_JITTER_PCT, UnityAdsConstants.SafeGuards.InitRequestRetryPolicy.MIN_JITTER_PCT, 12, null);
            view.setPadding(border.getStrokeWidthPx(), border.getStrokeWidthPx() - UtilsKt.dpToPx(this.a, 2.0f), border.getStrokeWidthPx(), border.getStrokeWidthPx() + UtilsKt.dpToPx(this.a, 2.0f));
        }
        a(view, z, gradientDrawable, aVar);
    }

    public final void a(Object assetsHolder, View view, boolean z, Image image, Integer num, Border border) {
        Intrinsics.checkNotNullParameter(assetsHolder, "assetsHolder");
        Intrinsics.checkNotNullParameter(view, "view");
        Intrinsics.checkNotNullParameter(image, "image");
        ResourceSource source = image.getResource().getSource();
        if (source instanceof Base64ResourceSource) {
            a(view, z, k.b(((Base64ResourceSource) source).getBase64()), image.getScaleType(), num, border);
            return;
        }
        if (source instanceof UrlResourceSource) {
            MediaSource mediaSourceUrlsToMediaSource = MediaSourceKt.urlsToMediaSource(((UrlResourceSource) source).getUrls());
            if (mediaSourceUrlsToMediaSource != null) {
                this.b.getImage(mediaSourceUrlsToMediaSource, assetsHolder, new b(this, view, z, image.getScaleType(), num, border));
                return;
            }
            return;
        }
        if (source instanceof HtmlResourceSource) {
            return;
        }
        boolean z2 = source instanceof XmlResourceSource;
    }

    public static /* synthetic */ void a(H h, View view, boolean z, Bitmap bitmap, ScaleType scaleType, Integer num, Border border, int i, Object obj) {
        if ((i & 8) != 0) {
            scaleType = null;
        }
        if ((i & 16) != 0) {
            num = null;
        }
        if ((i & 32) != 0) {
            border = null;
        }
        h.a(view, z, bitmap, scaleType, num, border);
    }

    public final void a(View view, boolean z, Bitmap bitmap, ScaleType scaleType, Integer num, Border border) {
        Intrinsics.checkNotNullParameter(view, "view");
        if (bitmap == null) {
            return;
        }
        ImageView.ScaleType imageViewScaleType = ScaleTypeKt.toImageViewScaleType(scaleType);
        B b2 = new B(bitmap);
        b2.a(imageViewScaleType);
        if (num != null && num.intValue() > 0) {
            b2.b(num.intValue());
        }
        if (border != null) {
            b2.a(border.getStrokeWidthPx());
            b2.a(border.getStrokeColor());
            view.setPadding(border.getStrokeWidthPx(), border.getStrokeWidthPx() - UtilsKt.dpToPx(this.a, 2.0f), border.getStrokeWidthPx(), border.getStrokeWidthPx() + UtilsKt.dpToPx(this.a, 2.0f));
        }
        a(view, z, b2, null);
    }

    public final void a(View view, boolean z, Drawable drawable, a aVar) {
        Intrinsics.checkNotNullParameter(view, "view");
        Intrinsics.checkNotNullParameter(drawable, "drawable");
        if (this.d.compareAndSet(false, z)) {
            drawable.setAlpha((int) UtilsKt.fromRatio(Float.valueOf(this.c.getOpacity()), 255.0f));
            drawable.setBounds(0, 0, view.getWidth(), view.getHeight());
            if (aVar != null && aVar.a(view)) {
                a(view, drawable, aVar);
            } else {
                view.setBackground(drawable);
            }
        }
    }

    public final void a(View view, final Drawable drawable, a aVar) {
        a();
        if (!this.g.compareAndSet(false, true)) {
            view.setBackground(drawable);
            return;
        }
        WeakReference weakReference = new WeakReference(view);
        ValueAnimator valueAnimatorOfFloat = ValueAnimator.ofFloat(UnityAdsConstants.SafeGuards.InitRequestRetryPolicy.MIN_JITTER_PCT, 1.0f);
        valueAnimatorOfFloat.setDuration(aVar.a());
        valueAnimatorOfFloat.setInterpolator(aVar.b());
        valueAnimatorOfFloat.addUpdateListener(new ValueAnimator.AnimatorUpdateListener() { // from class: io.bidmachine.rendering.internal.H$$ExternalSyntheticLambda0
            @Override // android.animation.ValueAnimator.AnimatorUpdateListener
            public final void onAnimationUpdate(ValueAnimator valueAnimator) {
                H.a(drawable, valueAnimator);
            }
        });
        valueAnimatorOfFloat.addListener(new g(weakReference, drawable));
        this.h = valueAnimatorOfFloat;
        valueAnimatorOfFloat.start();
    }

    public static final void a(Drawable newDrawable, ValueAnimator it) {
        Intrinsics.checkNotNullParameter(newDrawable, "$newDrawable");
        Intrinsics.checkNotNullParameter(it, "it");
        Object animatedValue = it.getAnimatedValue();
        Intrinsics.checkNotNull(animatedValue, "null cannot be cast to non-null type kotlin.Float");
        newDrawable.setAlpha(ColorUtilsKt.toColorInt(((Float) animatedValue).floatValue()));
    }

    public final void a() {
        Animator animator = this.h;
        if (animator != null) {
            animator.cancel();
            animator.removeAllListeners();
        }
        this.h = null;
    }
}
