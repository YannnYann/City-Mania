package io.bidmachine.media3.ui;

import android.text.Spannable;
import android.text.SpannableString;
import android.text.Spanned;
import android.text.style.AbsoluteSizeSpan;
import android.text.style.RelativeSizeSpan;
import com.google.common.base.Predicate;
import io.bidmachine.media3.common.text.Cue;
import io.bidmachine.media3.common.text.LanguageFeatureSpan;
import io.bidmachine.media3.common.util.Assertions;

/* JADX INFO: loaded from: classes5.dex */
public final class SubtitleViewUtils {
    public static float resolveTextSize(int i, float f, int i2, int i3) {
        float f2;
        if (f == -3.4028235E38f) {
            return -3.4028235E38f;
        }
        if (i == 0) {
            f2 = i3;
        } else {
            if (i != 1) {
                if (i != 2) {
                    return -3.4028235E38f;
                }
                return f;
            }
            f2 = i2;
        }
        return f * f2;
    }

    public static void removeAllEmbeddedStyling(Cue.Builder builder) {
        builder.clearWindowColor();
        if (builder.getText() instanceof Spanned) {
            if (!(builder.getText() instanceof Spannable)) {
                builder.setText(SpannableString.valueOf(builder.getText()));
            }
            removeSpansIf((Spannable) Assertions.checkNotNull(builder.getText()), new Predicate() { // from class: io.bidmachine.media3.ui.SubtitleViewUtils$$ExternalSyntheticLambda1
                @Override // com.google.common.base.Predicate
                public final boolean apply(Object obj) {
                    return SubtitleViewUtils.$r8$lambda$O9zHc9OsbQIBnPbOmpAX1370sno(obj);
                }
            });
        }
        removeEmbeddedFontSizes(builder);
    }

    public static /* synthetic */ boolean $r8$lambda$O9zHc9OsbQIBnPbOmpAX1370sno(Object obj) {
        return !(obj instanceof LanguageFeatureSpan);
    }

    public static void removeEmbeddedFontSizes(Cue.Builder builder) {
        builder.setTextSize(-3.4028235E38f, Integer.MIN_VALUE);
        if (builder.getText() instanceof Spanned) {
            if (!(builder.getText() instanceof Spannable)) {
                builder.setText(SpannableString.valueOf(builder.getText()));
            }
            removeSpansIf((Spannable) Assertions.checkNotNull(builder.getText()), new Predicate() { // from class: io.bidmachine.media3.ui.SubtitleViewUtils$$ExternalSyntheticLambda0
                @Override // com.google.common.base.Predicate
                public final boolean apply(Object obj) {
                    return SubtitleViewUtils.m2670$r8$lambda$vH9YDcIEMdGXNDNm7GV9kXWxbU(obj);
                }
            });
        }
    }

    /* JADX INFO: renamed from: $r8$lambda$vH9-YDcIEMdGXNDNm7GV9kXWxbU, reason: not valid java name */
    public static /* synthetic */ boolean m2670$r8$lambda$vH9YDcIEMdGXNDNm7GV9kXWxbU(Object obj) {
        return (obj instanceof AbsoluteSizeSpan) || (obj instanceof RelativeSizeSpan);
    }

    public static void removeSpansIf(Spannable spannable, Predicate<Object> predicate) {
        for (Object obj : spannable.getSpans(0, spannable.length(), Object.class)) {
            if (predicate.apply(obj)) {
                spannable.removeSpan(obj);
            }
        }
    }
}
