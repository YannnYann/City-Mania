package io.bidmachine.rendering.internal.view.privacy;

import android.content.Context;
import android.graphics.drawable.Drawable;
import android.view.View;
import android.widget.LinearLayout;
import android.widget.TextView;
import io.bidmachine.rendering.R$drawable;
import io.bidmachine.rendering.R$id;
import io.bidmachine.rendering.R$layout;
import io.bidmachine.util.UtilsKt;
import io.bidmachine.util.ViewUtilsKt;
import kotlin.Lazy;
import kotlin.LazyKt__LazyJVMKt;
import kotlin.Unit;
import kotlin.jvm.functions.Function0;
import kotlin.jvm.internal.Intrinsics;
import kotlin.jvm.internal.Lambda;

/* JADX INFO: loaded from: classes5.dex */
public final class c extends LinearLayout {
    public final Lazy a;
    public final Lazy b;
    public final Lazy c;
    public final Lazy d;
    public final Lazy e;
    public final Lazy f;
    public final Lazy g;

    public static final class a extends Lambda implements Function0 {
        public a() {
            super(0);
        }

        @Override // kotlin.jvm.functions.Function0
        /* JADX INFO: renamed from: a, reason: merged with bridge method [inline-methods] */
        public final LinearLayout invoke() {
            return (LinearLayout) c.this.findViewById(R$id.bmPrivacySheetActionButtonsContainer);
        }
    }

    public static final class b extends Lambda implements Function0 {
        public b() {
            super(0);
        }

        @Override // kotlin.jvm.functions.Function0
        /* JADX INFO: renamed from: a, reason: merged with bridge method [inline-methods] */
        public final View invoke() {
            return c.this.findViewById(R$id.bmPrivacySheetClose);
        }
    }

    /* JADX INFO: renamed from: io.bidmachine.rendering.internal.view.privacy.c$c, reason: collision with other inner class name */
    public static final class C1208c extends Lambda implements Function0 {
        public C1208c() {
            super(0);
        }

        @Override // kotlin.jvm.functions.Function0
        /* JADX INFO: renamed from: a, reason: merged with bridge method [inline-methods] */
        public final LinearLayout invoke() {
            return (LinearLayout) c.this.findViewById(R$id.bmPrivacySheetFooterContainer);
        }
    }

    public static final class d extends Lambda implements Function0 {
        public d() {
            super(0);
        }

        @Override // kotlin.jvm.functions.Function0
        /* JADX INFO: renamed from: a, reason: merged with bridge method [inline-methods] */
        public final TextView invoke() {
            return (TextView) c.this.findViewById(R$id.bmPrivacySheetFooterText);
        }
    }

    public static final class e extends Lambda implements Function0 {
        public e() {
            super(0);
        }

        @Override // kotlin.jvm.functions.Function0
        /* JADX INFO: renamed from: a, reason: merged with bridge method [inline-methods] */
        public final TextView invoke() {
            return (TextView) c.this.findViewById(R$id.bmPrivacySheetFooterTitle);
        }
    }

    public static final class f extends Lambda implements Function0 {
        public f() {
            super(0);
        }

        @Override // kotlin.jvm.functions.Function0
        /* JADX INFO: renamed from: a, reason: merged with bridge method [inline-methods] */
        public final TextView invoke() {
            return (TextView) c.this.findViewById(R$id.bmPrivacySheetSubtitle);
        }
    }

    public static final class g extends Lambda implements Function0 {
        public g() {
            super(0);
        }

        @Override // kotlin.jvm.functions.Function0
        /* JADX INFO: renamed from: a, reason: merged with bridge method [inline-methods] */
        public final TextView invoke() {
            return (TextView) c.this.findViewById(R$id.bmPrivacySheetTitle);
        }
    }

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public c(Context context) {
        super(context);
        Intrinsics.checkNotNullParameter(context, "context");
        this.a = LazyKt__LazyJVMKt.lazy(new g());
        this.b = LazyKt__LazyJVMKt.lazy(new f());
        this.c = LazyKt__LazyJVMKt.lazy(new b());
        this.d = LazyKt__LazyJVMKt.lazy(new a());
        this.e = LazyKt__LazyJVMKt.lazy(new C1208c());
        this.f = LazyKt__LazyJVMKt.lazy(new e());
        this.g = LazyKt__LazyJVMKt.lazy(new d());
        View.inflate(context, R$layout.bm_privacy_sheet, this);
        setOrientation(1);
        setBackgroundResource(R$drawable.bm_bg_privacy_sheet);
        int iDpToPx = UtilsKt.dpToPx(context, 16.0f);
        setPadding(iDpToPx, iDpToPx, iDpToPx, 0);
    }

    public static final void b(Function0 clickListener, View view) {
        Intrinsics.checkNotNullParameter(clickListener, "$clickListener");
        clickListener.invoke();
    }

    private final LinearLayout getActionButtonsContainer() {
        Object value = this.d.getValue();
        Intrinsics.checkNotNullExpressionValue(value, "<get-actionButtonsContainer>(...)");
        return (LinearLayout) value;
    }

    private final View getCloseButton() {
        Object value = this.c.getValue();
        Intrinsics.checkNotNullExpressionValue(value, "<get-closeButton>(...)");
        return (View) value;
    }

    private final LinearLayout getFooterContainer() {
        Object value = this.e.getValue();
        Intrinsics.checkNotNullExpressionValue(value, "<get-footerContainer>(...)");
        return (LinearLayout) value;
    }

    private final TextView getFooterTextTextView() {
        Object value = this.g.getValue();
        Intrinsics.checkNotNullExpressionValue(value, "<get-footerTextTextView>(...)");
        return (TextView) value;
    }

    private final TextView getFooterTitleTextView() {
        Object value = this.f.getValue();
        Intrinsics.checkNotNullExpressionValue(value, "<get-footerTitleTextView>(...)");
        return (TextView) value;
    }

    private final TextView getSubtitleTextView() {
        Object value = this.b.getValue();
        Intrinsics.checkNotNullExpressionValue(value, "<get-subtitleTextView>(...)");
        return (TextView) value;
    }

    private final TextView getTitleTextView() {
        Object value = this.a.getValue();
        Intrinsics.checkNotNullExpressionValue(value, "<get-titleTextView>(...)");
        return (TextView) value;
    }

    public final void a(String title, Drawable drawable, final Function0 clickListener) {
        Intrinsics.checkNotNullParameter(title, "title");
        Intrinsics.checkNotNullParameter(clickListener, "clickListener");
        LinearLayout actionButtonsContainer = getActionButtonsContainer();
        Context context = getContext();
        Intrinsics.checkNotNullExpressionValue(context, "context");
        io.bidmachine.rendering.internal.view.privacy.a aVar = new io.bidmachine.rendering.internal.view.privacy.a(context);
        aVar.setText(title);
        aVar.setActionIcon(drawable);
        aVar.setOnClickListener(new View.OnClickListener() { // from class: io.bidmachine.rendering.internal.view.privacy.c$$ExternalSyntheticLambda0
            @Override // android.view.View.OnClickListener
            public final void onClick(View view) {
                c.a(clickListener, view);
            }
        });
        actionButtonsContainer.addView(aVar, -1, -2);
        ViewUtilsKt.showViewSafely(getActionButtonsContainer());
    }

    public final void setOnCloseButtonClickListener(final Function0<Unit> clickListener) {
        Intrinsics.checkNotNullParameter(clickListener, "clickListener");
        getCloseButton().setOnClickListener(new View.OnClickListener() { // from class: io.bidmachine.rendering.internal.view.privacy.c$$ExternalSyntheticLambda1
            @Override // android.view.View.OnClickListener
            public final void onClick(View view) {
                c.b(clickListener, view);
            }
        });
    }

    public final void setSubtitle(String subtitle) {
        Intrinsics.checkNotNullParameter(subtitle, "subtitle");
        getSubtitleTextView().setText(subtitle);
    }

    public final void setTitle(String title) {
        Intrinsics.checkNotNullParameter(title, "title");
        getTitleTextView().setText(title);
    }

    public static final void a(Function0 clickListener, View view) {
        Intrinsics.checkNotNullParameter(clickListener, "$clickListener");
        clickListener.invoke();
    }

    public final void a() {
        getActionButtonsContainer().removeAllViews();
        ViewUtilsKt.hideViewSafely(getActionButtonsContainer());
    }

    public final void a(String str, String str2) {
        boolean z = true;
        boolean z2 = str == null || str.length() == 0;
        if (str2 != null && str2.length() != 0) {
            z = false;
        }
        if (z2 && z) {
            ViewUtilsKt.hideViewSafely(getFooterContainer());
            return;
        }
        if (z2) {
            ViewUtilsKt.hideViewSafely(getFooterTitleTextView());
        } else {
            getFooterTitleTextView().setText(str);
            ViewUtilsKt.showViewSafely(getFooterTitleTextView());
        }
        if (z) {
            ViewUtilsKt.hideViewSafely(getFooterTextTextView());
        } else {
            getFooterTextTextView().setText(str2);
            ViewUtilsKt.showViewSafely(getFooterTextTextView());
        }
        ViewUtilsKt.showViewSafely(getFooterContainer());
    }
}
