package io.bidmachine.rendering.internal.view.privacy;

import android.content.Context;
import android.content.res.Resources;
import android.graphics.Bitmap;
import android.graphics.Insets;
import android.graphics.Rect;
import android.graphics.drawable.BitmapDrawable;
import android.graphics.drawable.Drawable;
import android.os.Build;
import android.view.View;
import android.view.WindowInsets;
import android.widget.FrameLayout;
import io.bidmachine.rendering.internal.view.privacy.b;
import io.bidmachine.rendering.model.PrivacySheetParams;
import io.bidmachine.util.ImageUtilsKt;
import io.bidmachine.util.UtilsKt;
import java.util.Iterator;
import java.util.List;
import kotlin.Lazy;
import kotlin.LazyKt__LazyJVMKt;
import kotlin.Unit;
import kotlin.jvm.functions.Function0;
import kotlin.jvm.functions.Function1;
import kotlin.jvm.internal.Intrinsics;
import kotlin.jvm.internal.Lambda;

/* JADX INFO: loaded from: classes5.dex */
public final class b extends FrameLayout {
    public final Lazy a;
    public Function0 b;

    public static final class a extends Lambda implements Function0 {
        public a() {
            super(0);
        }

        public final void a() {
            b.this.getOnCloseClickListener().invoke();
        }

        @Override // kotlin.jvm.functions.Function0
        public /* bridge */ /* synthetic */ Object invoke() {
            a();
            return Unit.INSTANCE;
        }
    }

    /* JADX INFO: renamed from: io.bidmachine.rendering.internal.view.privacy.b$b, reason: collision with other inner class name */
    public static final class C1207b extends Lambda implements Function0 {
        public static final C1207b a = new C1207b();

        public C1207b() {
            super(0);
        }

        public final void a() {
        }

        @Override // kotlin.jvm.functions.Function0
        public /* bridge */ /* synthetic */ Object invoke() {
            a();
            return Unit.INSTANCE;
        }
    }

    public static final class c extends Lambda implements Function0 {
        public final /* synthetic */ Context a;

        /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
        public c(Context context) {
            super(0);
            this.a = context;
        }

        /* JADX INFO: Access modifiers changed from: private */
        public static final void a(View view) {
        }

        @Override // kotlin.jvm.functions.Function0
        /* JADX INFO: renamed from: a, reason: merged with bridge method [inline-methods] */
        public final io.bidmachine.rendering.internal.view.privacy.c invoke() {
            io.bidmachine.rendering.internal.view.privacy.c cVar = new io.bidmachine.rendering.internal.view.privacy.c(this.a);
            cVar.setOnClickListener(new View.OnClickListener() { // from class: io.bidmachine.rendering.internal.view.privacy.b$c$$ExternalSyntheticLambda0
                @Override // android.view.View.OnClickListener
                public final void onClick(View view) {
                    b.c.a(view);
                }
            });
            return cVar;
        }
    }

    public static final class d extends Lambda implements Function0 {
        public final /* synthetic */ Function1 a;
        public final /* synthetic */ PrivacySheetParams.Action b;

        /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
        public d(Function1 function1, PrivacySheetParams.Action action) {
            super(0);
            this.a = function1;
            this.b = action;
        }

        public final void a() {
            this.a.invoke(this.b);
        }

        @Override // kotlin.jvm.functions.Function0
        public /* bridge */ /* synthetic */ Object invoke() {
            a();
            return Unit.INSTANCE;
        }
    }

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public b(Context context) {
        super(context);
        Intrinsics.checkNotNullParameter(context, "context");
        this.a = LazyKt__LazyJVMKt.lazy(new c(context));
        this.b = C1207b.a;
        setOnClickListener(new View.OnClickListener() { // from class: io.bidmachine.rendering.internal.view.privacy.b$$ExternalSyntheticLambda0
            @Override // android.view.View.OnClickListener
            public final void onClick(View view) {
                b.a(this.f$0, view);
            }
        });
        io.bidmachine.rendering.internal.view.privacy.c privacySheetView = getPrivacySheetView();
        privacySheetView.setOnCloseButtonClickListener(new a());
        FrameLayout.LayoutParams layoutParams = new FrameLayout.LayoutParams(-1, -2);
        layoutParams.gravity = 81;
        Unit unit = Unit.INSTANCE;
        addView(privacySheetView, layoutParams);
        b();
    }

    public static final void a(b this$0, View view) {
        Intrinsics.checkNotNullParameter(this$0, "this$0");
        this$0.b.invoke();
    }

    private final io.bidmachine.rendering.internal.view.privacy.c getPrivacySheetView() {
        return (io.bidmachine.rendering.internal.view.privacy.c) this.a.getValue();
    }

    public final void b() {
        final int paddingBottom = getPrivacySheetView().getPaddingBottom();
        setOnApplyWindowInsetsListener(new View.OnApplyWindowInsetsListener() { // from class: io.bidmachine.rendering.internal.view.privacy.b$$ExternalSyntheticLambda1
            @Override // android.view.View.OnApplyWindowInsetsListener
            public final WindowInsets onApplyWindowInsets(View view, WindowInsets windowInsets) {
                return b.a(this.f$0, paddingBottom, view, windowInsets);
            }
        });
    }

    public final Function0<Unit> getOnCloseClickListener() {
        return this.b;
    }

    @Override // android.view.ViewGroup
    public void measureChildWithMargins(View child, int i, int i2, int i3, int i4) {
        Intrinsics.checkNotNullParameter(child, "child");
        int size = View.MeasureSpec.getSize(i);
        Context context = getContext();
        Intrinsics.checkNotNullExpressionValue(context, "context");
        int iDpToPx = UtilsKt.dpToPx(context, 600.0f);
        Context context2 = getContext();
        Intrinsics.checkNotNullExpressionValue(context2, "context");
        if (size >= UtilsKt.dpToPx(context2, 32.0f) + iDpToPx) {
            i = View.MeasureSpec.makeMeasureSpec(iDpToPx, 1073741824);
        }
        super.measureChildWithMargins(child, i, i2, i3, i4);
    }

    public final void setOnCloseClickListener(Function0<Unit> function0) {
        Intrinsics.checkNotNullParameter(function0, "<set-?>");
        this.b = function0;
    }

    public final void setSubtitle(String subtitle) {
        Intrinsics.checkNotNullParameter(subtitle, "subtitle");
        getPrivacySheetView().setSubtitle(subtitle);
    }

    public final void setTitle(String title) {
        Intrinsics.checkNotNullParameter(title, "title");
        getPrivacySheetView().setTitle(title);
    }

    public final void a(List actions, Function1 clickListener) {
        BitmapDrawable bitmapDrawable;
        Intrinsics.checkNotNullParameter(actions, "actions");
        Intrinsics.checkNotNullParameter(clickListener, "clickListener");
        a();
        Iterator it = actions.iterator();
        while (it.hasNext()) {
            PrivacySheetParams.Action action = (PrivacySheetParams.Action) it.next();
            String title = action.getTitle();
            Bitmap icon = action.getIcon();
            if (icon != null) {
                Resources resources = getResources();
                Intrinsics.checkNotNullExpressionValue(resources, "resources");
                bitmapDrawable = ImageUtilsKt.toBitmapDrawable(icon, resources);
            } else {
                bitmapDrawable = null;
            }
            a(title, bitmapDrawable, new d(clickListener, action));
        }
    }

    public final void a(String title, Drawable drawable, Function0 clickListener) {
        Intrinsics.checkNotNullParameter(title, "title");
        Intrinsics.checkNotNullParameter(clickListener, "clickListener");
        getPrivacySheetView().a(title, drawable, clickListener);
    }

    public final void a() {
        getPrivacySheetView().a();
    }

    public final void a(String str, String str2) {
        getPrivacySheetView().a(str, str2);
    }

    public static final WindowInsets a(b this$0, int i, View view, WindowInsets insets) {
        Rect rect;
        Intrinsics.checkNotNullParameter(this$0, "this$0");
        Intrinsics.checkNotNullParameter(view, "<anonymous parameter 0>");
        Intrinsics.checkNotNullParameter(insets, "insets");
        if (Build.VERSION.SDK_INT >= 30) {
            Insets insets2 = insets.getInsets(WindowInsets.Type.systemBars());
            rect = new Rect(insets2.left, insets2.top, insets2.right, insets2.bottom);
        } else {
            rect = new Rect(insets.getSystemWindowInsetLeft(), insets.getSystemWindowInsetTop(), insets.getSystemWindowInsetRight(), insets.getSystemWindowInsetBottom());
        }
        this$0.getPrivacySheetView().setPadding(this$0.getPrivacySheetView().getPaddingLeft(), this$0.getPrivacySheetView().getPaddingTop(), this$0.getPrivacySheetView().getPaddingRight(), i + rect.bottom);
        this$0.setPadding(0, rect.top, 0, 0);
        return insets;
    }
}
