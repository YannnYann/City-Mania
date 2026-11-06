package io.bidmachine.rendering.internal.adform.label;

import android.content.Context;
import android.graphics.Typeface;
import android.view.View;
import android.widget.TextView;
import com.unity3d.services.UnityAdsConstants;
import io.bidmachine.rendering.Repository;
import io.bidmachine.rendering.internal.H;
import io.bidmachine.rendering.internal.adform.c;
import io.bidmachine.rendering.model.AdElementParams;
import io.bidmachine.rendering.model.AppearanceParams;
import io.bidmachine.rendering.model.Border;
import io.bidmachine.rendering.model.FontStyleType;
import io.bidmachine.util.UtilsKt;
import io.bidmachine.util.gradient.GradientDrawable;
import kotlin.jvm.internal.DefaultConstructorMarker;
import kotlin.jvm.internal.Intrinsics;

/* JADX INFO: loaded from: classes5.dex */
public final class a extends io.bidmachine.rendering.internal.adform.a {
    public static final C1169a y = new C1169a(null);
    public final TextView x;

    /* JADX INFO: renamed from: io.bidmachine.rendering.internal.adform.label.a$a, reason: collision with other inner class name */
    public static final class C1169a {
        public /* synthetic */ C1169a(DefaultConstructorMarker defaultConstructorMarker) {
            this();
        }

        public C1169a() {
        }
    }

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public a(Context context, Object assetsHolder, Repository repository, AdElementParams adElementParams, c adFormListener, io.bidmachine.rendering.internal.event.a eventCallback, io.bidmachine.rendering.internal.detector.brokencreative.a aVar) {
        super(context, assetsHolder, repository, adElementParams, adFormListener, eventCallback, aVar);
        Intrinsics.checkNotNullParameter(context, "context");
        Intrinsics.checkNotNullParameter(assetsHolder, "assetsHolder");
        Intrinsics.checkNotNullParameter(repository, "repository");
        Intrinsics.checkNotNullParameter(adElementParams, "adElementParams");
        Intrinsics.checkNotNullParameter(adFormListener, "adFormListener");
        Intrinsics.checkNotNullParameter(eventCallback, "eventCallback");
        this.x = new TextView(context);
    }

    @Override // io.bidmachine.rendering.internal.adform.a
    public View B() {
        return this.x;
    }

    @Override // io.bidmachine.rendering.internal.InterfaceC4239b
    public void a() {
        this.x.setText(g().getText());
        Integer strokeColor = x().getStrokeColor();
        if (strokeColor != null) {
            this.x.setTextColor(strokeColor.intValue());
        }
        Float fontSize = x().getFontSize();
        if (fontSize != null && fontSize.floatValue() > UnityAdsConstants.SafeGuards.InitRequestRetryPolicy.MIN_JITTER_PCT) {
            this.x.setTextSize(1, fontSize.floatValue());
        }
        FontStyleType fontStyleType = x().getFontStyleType();
        if (fontStyleType != null) {
            this.x.setTypeface(Typeface.create(Typeface.DEFAULT, fontStyleType.getTypeface()));
        }
        Integer textMaxLines = x().getTextMaxLines();
        if (textMaxLines != null && textMaxLines.intValue() > 0) {
            this.x.setMaxLines(textMaxLines.intValue());
        }
        if (x().getTextLineSpacingPx(y()) != null) {
            this.x.setLineSpacing(r0.intValue(), 1.0f);
        }
        this.x.setGravity(x().getTextHorizontalGravity().getValue() | 16);
        Integer shadowColor = x().getShadowColor();
        if (shadowColor != null) {
            int iIntValue = shadowColor.intValue();
            float fDpToPx = UtilsKt.dpToPx(y(), 1.0f);
            this.x.setShadowLayer(UtilsKt.dpToPx(y(), 1.0f), fDpToPx, fDpToPx, iIntValue);
        }
        this.x.setIncludeFontPadding(false);
        w().b(this);
        D();
    }

    @Override // io.bidmachine.rendering.internal.adform.a
    public void a(View view, H h) {
        Intrinsics.checkNotNullParameter(view, "view");
        int cornerRadiusPxOrDefault$default = AppearanceParams.getCornerRadiusPxOrDefault$default(x(), y(), 0, 2, null);
        Border border = x().getBorder(y());
        if (h != null) {
            H.a(h, z(), (View) this.x, Integer.valueOf(cornerRadiusPxOrDefault$default), border, false, (H.a) null, 48, (Object) null);
            return;
        }
        TextView textView = this.x;
        GradientDrawable gradientDrawable = new GradientDrawable();
        gradientDrawable.setCornerRadius(cornerRadiusPxOrDefault$default);
        if (border != null) {
            GradientDrawable.setStroke$default(gradientDrawable, border.getStrokeWidthPx(), border.getStrokeColor(), UnityAdsConstants.SafeGuards.InitRequestRetryPolicy.MIN_JITTER_PCT, UnityAdsConstants.SafeGuards.InitRequestRetryPolicy.MIN_JITTER_PCT, 12, null);
            this.x.setPadding(border.getStrokeWidthPx(), border.getStrokeWidthPx() - UtilsKt.dpToPx(y(), 2.0f), border.getStrokeWidthPx(), border.getStrokeWidthPx() + UtilsKt.dpToPx(y(), 2.0f));
        }
        textView.setBackground(gradientDrawable);
    }
}
