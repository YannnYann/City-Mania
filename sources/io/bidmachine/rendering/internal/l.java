package io.bidmachine.rendering.internal;

import com.ironsource.G5;
import com.unity3d.services.UnityAdsConstants;
import io.bidmachine.rendering.model.ElementLayoutParams;
import io.bidmachine.rendering.model.SideBindParams;
import io.bidmachine.rendering.model.SideType;
import io.bidmachine.util.UtilsKt;
import java.util.Iterator;
import java.util.Locale;
import kotlin.Pair;
import kotlin.jvm.internal.Intrinsics;
import kotlin.text.StringsKt__StringsKt;

/* JADX INFO: loaded from: classes5.dex */
public final class l {
    public static final l a = new l();

    public final ElementLayoutParams a(String value) {
        Intrinsics.checkNotNullParameter(value, "value");
        if (StringsKt__StringsKt.isBlank(value)) {
            return null;
        }
        ElementLayoutParams.Builder builder = new ElementLayoutParams.Builder();
        Iterator it = StringsKt__StringsKt.split$default((CharSequence) value, new char[]{';'}, false, 0, 6, (Object) null).iterator();
        while (it.hasNext()) {
            a.a(builder, (String) it.next());
        }
        return builder.build();
    }

    /* JADX WARN: Can't fix incorrect switch cases order, some code will duplicate */
    /* JADX WARN: Failed to restore switch over string. Please report as a decompilation issue */
    public final SideType b(String str) {
        if (str == null || StringsKt__StringsKt.isBlank(str)) {
            return null;
        }
        String lowerCase = str.toLowerCase(Locale.ROOT);
        Intrinsics.checkNotNullExpressionValue(lowerCase, "this as java.lang.String).toLowerCase(Locale.ROOT)");
        String string = StringsKt__StringsKt.trim(lowerCase).toString();
        switch (string.hashCode()) {
            case -1383228885:
                if (string.equals("bottom")) {
                    return SideType.Bottom;
                }
                return null;
            case 115029:
                if (string.equals("top")) {
                    return SideType.Top;
                }
                return null;
            case 3317767:
                if (string.equals("left")) {
                    return SideType.Left;
                }
                return null;
            case 108511772:
                if (string.equals("right")) {
                    return SideType.Right;
                }
                return null;
            case 665239235:
                if (string.equals("centerx")) {
                    return SideType.CenterX;
                }
                return null;
            case 665239236:
                if (string.equals("centery")) {
                    return SideType.CenterY;
                }
                return null;
            default:
                return null;
        }
    }

    /* JADX WARN: Failed to restore switch over string. Please report as a decompilation issue */
    public final void a(ElementLayoutParams.Builder builder, String str) {
        float f;
        float fFloatValue;
        String second;
        Pair<String, String> pairDivide;
        Pair<String, String> pairDivide2 = UtilsKt.divide(str, G5.U);
        if (pairDivide2 == null) {
            t.a("ElementLayoutParamsParser", "Invalid constraint - %s", str);
            return;
        }
        String lowerCase = pairDivide2.getFirst().toLowerCase(Locale.ROOT);
        Intrinsics.checkNotNullExpressionValue(lowerCase, "this as java.lang.String).toLowerCase(Locale.ROOT)");
        String string = StringsKt__StringsKt.trim(lowerCase).toString();
        String second2 = pairDivide2.getSecond();
        if (!StringsKt__StringsKt.isBlank(string) && !StringsKt__StringsKt.isBlank(second2)) {
            String str2 = null;
            Float floatOrDefault$default = UtilsKt.toFloatOrDefault$default(second2, null, 1, null);
            if (floatOrDefault$default == null) {
                char c = '+';
                char c2 = '*';
                String first = null;
                second = null;
                fFloatValue = UnityAdsConstants.SafeGuards.InitRequestRetryPolicy.MIN_JITTER_PCT;
                for (String str3 : m.b(second2, new Character[]{'+', '-', '*'})) {
                    if (StringsKt__StringsKt.startsWith$default((CharSequence) str3, c2, false, 2, (Object) null)) {
                        String strSubstring = str3.substring(1, str3.length());
                        Intrinsics.checkNotNullExpressionValue(strSubstring, "this as java.lang.String…ing(startIndex, endIndex)");
                        Float floatOrDefault$default2 = UtilsKt.toFloatOrDefault$default(strSubstring, null, 1, null);
                        fFloatValue = floatOrDefault$default2 != null ? floatOrDefault$default2.floatValue() : 0.0f;
                    } else {
                        if (!StringsKt__StringsKt.startsWith$default((CharSequence) str3, c, false, 2, (Object) null) && !StringsKt__StringsKt.startsWith$default((CharSequence) str3, '-', false, 2, (Object) null)) {
                            if (StringsKt__StringsKt.contains$default((CharSequence) str3, '.', false, 2, (Object) null) && (pairDivide = UtilsKt.divide(str3, '.')) != null) {
                                first = pairDivide.getFirst();
                                second = pairDivide.getSecond();
                            }
                        } else {
                            String strSubstring2 = str3.substring(0, str3.length());
                            Intrinsics.checkNotNullExpressionValue(strSubstring2, "this as java.lang.String…ing(startIndex, endIndex)");
                            floatOrDefault$default = UtilsKt.toFloatOrDefault$default(strSubstring2, null, 1, null);
                        }
                        c = '+';
                    }
                    c2 = '*';
                }
                f = UnityAdsConstants.SafeGuards.InitRequestRetryPolicy.MIN_JITTER_PCT;
                str2 = first;
            } else {
                f = UnityAdsConstants.SafeGuards.InitRequestRetryPolicy.MIN_JITTER_PCT;
                fFloatValue = 0.0f;
                second = null;
            }
            if (floatOrDefault$default == null) {
                floatOrDefault$default = Float.valueOf(f);
            }
            switch (string.hashCode()) {
                case -1383228885:
                    if (string.equals("bottom")) {
                        builder.setBottomSideBindParams(a(second, str2));
                        builder.setMarginBottom(floatOrDefault$default.floatValue());
                        return;
                    }
                    break;
                case -1221029593:
                    if (string.equals("height")) {
                        builder.setHeight(floatOrDefault$default.floatValue());
                        builder.setHeightPercent(fFloatValue);
                        return;
                    }
                    break;
                case 115029:
                    if (string.equals("top")) {
                        builder.setTopSideBindParams(a(second, str2));
                        builder.setMarginTop(floatOrDefault$default.floatValue());
                        return;
                    }
                    break;
                case 3317767:
                    if (string.equals("left")) {
                        builder.setLeftSideBindParams(a(second, str2));
                        builder.setMarginLeft(floatOrDefault$default.floatValue());
                        return;
                    }
                    break;
                case 108511772:
                    if (string.equals("right")) {
                        builder.setRightSideBindParams(a(second, str2));
                        builder.setMarginRight(floatOrDefault$default.floatValue());
                        return;
                    }
                    break;
                case 113126854:
                    if (string.equals("width")) {
                        builder.setWidth(floatOrDefault$default.floatValue());
                        builder.setWidthPercent(fFloatValue);
                        return;
                    }
                    break;
                case 665239235:
                    if (string.equals("centerx")) {
                        builder.setCenterXSideBindParams(a(second, str2));
                        builder.setTranslationX(floatOrDefault$default.floatValue());
                        return;
                    }
                    break;
                case 665239236:
                    if (string.equals("centery")) {
                        builder.setCenterYSideBindParams(a(second, str2));
                        builder.setTranslationY(floatOrDefault$default.floatValue());
                        return;
                    }
                    break;
            }
            t.a("ElementLayoutParamsParser", "Unsupported SourceAnchor - %s", string);
            return;
        }
        t.a("ElementLayoutParamsParser", "Invalid constraint params - %s", str);
    }

    public final SideBindParams a(String str, String str2) {
        SideType sideTypeB;
        if (str2 == null || StringsKt__StringsKt.isBlank(str2) || (sideTypeB = b(str)) == null) {
            return null;
        }
        return new SideBindParams(sideTypeB, str2);
    }
}
