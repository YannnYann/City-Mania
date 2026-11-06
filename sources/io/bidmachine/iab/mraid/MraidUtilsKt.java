package io.bidmachine.iab.mraid;

import android.R;
import android.app.Activity;
import android.content.Context;
import android.view.View;
import com.ironsource.C3522b4;
import java.util.ArrayList;
import java.util.Collection;
import java.util.Iterator;
import java.util.List;
import java.util.Set;
import java.util.regex.Matcher;
import java.util.regex.Pattern;
import kotlin.Pair;
import kotlin.TuplesKt;
import kotlin.collections.CollectionsKt__CollectionsKt;
import kotlin.collections.SetsKt__SetsKt;
import kotlin.jvm.internal.Intrinsics;
import kotlin.ranges.IntRange;

/* JADX INFO: loaded from: classes5.dex */
public final class MraidUtilsKt {
    public static final List a = CollectionsKt__CollectionsKt.listOf((Object[]) new Character[]{'\"', '\'', '`'});
    public static final MraidJsValidator b = new a();
    public static final Set c = SetsKt__SetsKt.setOf((Object[]) new String[]{"close", "expand", "open", "playVideo", "resize", "setOrientationProperties", "setResizeProperties", "useCustomClose", "noFill", C3522b4.i.r, "AdStarted", "AdStopped", "AdSkipped", "AdSkippableStateChange", "AdVideoStart", "AdVideoFirstQuartile", "AdVideoMidpoint", "AdVideoThirdQuartile", "AdVideoComplete", "AdUserClose", "AdPaused", "AdPlaying", "AdClickThru", "AdLog", "AdError", "createCalendarEvent", "storePicture", "openPrivacySheet"});

    public static final boolean a(int i) {
        return i > -1;
    }

    public static final String createMetaStyle() {
        return "<meta name=\"viewport\" content=\"width=device-width, initial-scale=1.0, minimum-scale=1.0, maximum-scale=1.0, user-scalable=no\" /><style>body { margin:0; padding:0;}*:not(input) { -webkit-touch-callout:none; -webkit-user-select:none; -webkit-text-size-adjust:none; -webkit-tap-highlight-color: rgba(0, 0, 0, 0); }</style>";
    }

    public static final List<IntRange> findQuotes(String str, List<Character> searchChars) {
        Intrinsics.checkNotNullParameter(str, "<this>");
        Intrinsics.checkNotNullParameter(searchChars, "searchChars");
        if (str.length() == 0) {
            return CollectionsKt__CollectionsKt.emptyList();
        }
        ArrayList arrayList = new ArrayList();
        Pair pair = null;
        int i = 0;
        int i2 = 0;
        boolean z = false;
        while (i < str.length()) {
            char cCharAt = str.charAt(i);
            int i3 = i2 + 1;
            if (cCharAt == '\\') {
                z = !z;
            } else {
                if (!z) {
                    if (pair == null) {
                        if (searchChars.contains(Character.valueOf(cCharAt))) {
                            pair = TuplesKt.to(Character.valueOf(cCharAt), Integer.valueOf(i2));
                        }
                    } else if (cCharAt == ((Character) pair.getFirst()).charValue()) {
                        arrayList.add(new IntRange(((Number) pair.getSecond()).intValue(), i2));
                        pair = null;
                    }
                }
                z = false;
            }
            i++;
            i2 = i3;
        }
        return arrayList;
    }

    public static /* synthetic */ List findQuotes$default(String str, List list, int i, Object obj) {
        if ((i & 1) != 0) {
            list = a;
        }
        return findQuotes(str, list);
    }

    public static final int findTagPosition(String str, String tag, List<IntRange> restrictedRangeList) {
        Intrinsics.checkNotNullParameter(str, "<this>");
        Intrinsics.checkNotNullParameter(tag, "tag");
        Intrinsics.checkNotNullParameter(restrictedRangeList, "restrictedRangeList");
        if (str.length() == 0 || tag.length() == 0) {
            return -1;
        }
        Matcher matcherA = a(str, tag);
        while (matcherA.find()) {
            int iEnd = matcherA.end();
            if (a(iEnd - 1, restrictedRangeList)) {
                return iEnd;
            }
        }
        return -1;
    }

    public static /* synthetic */ int findTagPosition$default(String str, String str2, List list, int i, Object obj) {
        if ((i & 2) != 0) {
            list = findQuotes$default(str, null, 1, null);
        }
        return findTagPosition(str, str2, list);
    }

    public static final StringBuilder injectMetaStyle(StringBuilder sb) {
        Intrinsics.checkNotNullParameter(sb, "<this>");
        if (sb.length() != 0) {
            String string = sb.toString();
            Intrinsics.checkNotNullExpressionValue(string, "toString()");
            int iFindTagPosition$default = findTagPosition$default(string, "head", null, 2, null);
            if (a(iFindTagPosition$default)) {
                sb.insert(iFindTagPosition$default, createMetaStyle());
            }
        }
        return sb;
    }

    public static final View a(Context context) {
        if (context instanceof Activity) {
            return ((Activity) context).getWindow().getDecorView().findViewById(R.id.content);
        }
        return null;
    }

    public static final View a(View view) {
        View rootView = view.getRootView();
        if (rootView == null) {
            return null;
        }
        View viewFindViewById = rootView.findViewById(R.id.content);
        return viewFindViewById == null ? rootView : viewFindViewById;
    }

    public static final boolean a(String str, String str2, List list) {
        return a(findTagPosition(str, str2, list));
    }

    public static final Matcher a(CharSequence charSequence, String str) {
        Pattern patternCompile = Pattern.compile('<' + str + "(?=[\\s/>])[^>]*>", 2);
        Intrinsics.checkNotNullExpressionValue(patternCompile, "compile(this, flags)");
        Matcher matcher = patternCompile.matcher(charSequence);
        Intrinsics.checkNotNullExpressionValue(matcher, "\"<$tag(?=[\\\\s/>])[^>]*>\"…)\n        .matcher(input)");
        return matcher;
    }

    public static final boolean a(int i, List list) {
        if ((list instanceof Collection) && list.isEmpty()) {
            return true;
        }
        Iterator it = list.iterator();
        while (it.hasNext()) {
            IntRange intRange = (IntRange) it.next();
            int first = intRange.getFirst();
            if (i <= intRange.getLast() && first <= i) {
                return false;
            }
        }
        return true;
    }
}
