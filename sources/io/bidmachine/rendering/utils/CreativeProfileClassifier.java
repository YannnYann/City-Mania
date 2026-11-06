package io.bidmachine.rendering.utils;

import java.util.ArrayList;
import java.util.Iterator;
import java.util.List;
import java.util.Locale;
import kotlin.collections.CollectionsKt__CollectionsJVMKt;
import kotlin.collections.CollectionsKt__CollectionsKt;
import kotlin.collections.CollectionsKt__IterablesKt;
import kotlin.jvm.internal.Intrinsics;
import kotlin.text.Regex;
import kotlin.text.RegexOption;

/* JADX INFO: loaded from: classes5.dex */
public final class CreativeProfileClassifier {
    public static final CreativeProfileClassifier INSTANCE = new CreativeProfileClassifier();
    public static final List a;
    public static final List b;
    public static final List c;
    public static final Regex d;

    static {
        List listListOf = CollectionsKt__CollectionsKt.listOf((Object[]) new String[]{"appdata.playable", "\"type\":\"p\"", "playable_click", "engaged_click_tracker", "tmlPlay", "window.dapi", "playable.js", "asset_provider=luna", "af_ad_type=playable", "af_ad_format=playable", "game.js", "playableInteraction", "playablefactory"});
        ArrayList arrayList = new ArrayList(CollectionsKt__IterablesKt.collectionSizeOrDefault(listListOf, 10));
        Iterator it = listListOf.iterator();
        while (it.hasNext()) {
            String lowerCase = ((String) it.next()).toLowerCase(Locale.ROOT);
            Intrinsics.checkNotNullExpressionValue(lowerCase, "this as java.lang.String).toLowerCase(Locale.ROOT)");
            arrayList.add(lowerCase);
        }
        a = arrayList;
        List listListOf2 = CollectionsKt__CollectionsKt.listOf((Object[]) new String[]{"<canvas", "webgl", "requestAnimationFrame", "ontouchstart", "phaser", "pixi", "cocos", "createjs", "playcanvas", "three.js", "bamAdConfig"});
        ArrayList arrayList2 = new ArrayList(CollectionsKt__IterablesKt.collectionSizeOrDefault(listListOf2, 10));
        Iterator it2 = listListOf2.iterator();
        while (it2.hasNext()) {
            String lowerCase2 = ((String) it2.next()).toLowerCase(Locale.ROOT);
            Intrinsics.checkNotNullExpressionValue(lowerCase2, "this as java.lang.String).toLowerCase(Locale.ROOT)");
            arrayList2.add(lowerCase2);
        }
        b = arrayList2;
        RegexOption regexOption = RegexOption.IGNORE_CASE;
        c = CollectionsKt__CollectionsJVMKt.listOf(new Regex("addEventListener\\s*\\(\\s*[\"'`]?(touch|pointer)", regexOption));
        d = new Regex("<script[^>]*src\\s*=\\s*[\"']?http", regexOption);
    }

    /* JADX WARN: Removed duplicated region for block: B:33:0x007b  */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct code enable 'Show inconsistent code' option in preferences
    */
    public final io.bidmachine.rendering.model.engagedclick.CreativeProfileInfo classifyByMarkup(java.lang.String r6) {
        /*
            r5 = this;
            java.lang.String r0 = "adm"
            kotlin.jvm.internal.Intrinsics.checkNotNullParameter(r6, r0)
            java.util.Locale r0 = java.util.Locale.ROOT
            java.lang.String r6 = r6.toLowerCase(r0)
            java.lang.String r0 = "this as java.lang.String).toLowerCase(Locale.ROOT)"
            kotlin.jvm.internal.Intrinsics.checkNotNullExpressionValue(r6, r0)
            java.util.List r0 = io.bidmachine.rendering.utils.CreativeProfileClassifier.a
            boolean r1 = r0 instanceof java.util.Collection
            r2 = 0
            r3 = 2
            r4 = 0
            if (r1 == 0) goto L20
            boolean r1 = r0.isEmpty()
            if (r1 == 0) goto L20
            goto L40
        L20:
            java.util.Iterator r0 = r0.iterator()
        L24:
            boolean r1 = r0.hasNext()
            if (r1 == 0) goto L40
            java.lang.Object r1 = r0.next()
            java.lang.CharSequence r1 = (java.lang.CharSequence) r1
            boolean r1 = kotlin.text.StringsKt__StringsKt.contains$default(r6, r1, r4, r3, r2)
            if (r1 == 0) goto L24
            io.bidmachine.rendering.model.engagedclick.CreativeProfileInfo r6 = new io.bidmachine.rendering.model.engagedclick.CreativeProfileInfo
            io.bidmachine.rendering.model.engagedclick.CreativeProfile r0 = io.bidmachine.rendering.model.engagedclick.CreativeProfile.LIKELY_PLAYABLE
            io.bidmachine.rendering.model.engagedclick.ProfileSource r1 = io.bidmachine.rendering.model.engagedclick.ProfileSource.ADM_HINT
            r6.<init>(r0, r1)
            return r6
        L40:
            java.util.List r0 = io.bidmachine.rendering.utils.CreativeProfileClassifier.b
            boolean r1 = r0 instanceof java.util.Collection
            if (r1 == 0) goto L4d
            boolean r1 = r0.isEmpty()
            if (r1 == 0) goto L4d
            goto L64
        L4d:
            java.util.Iterator r0 = r0.iterator()
        L51:
            boolean r1 = r0.hasNext()
            if (r1 == 0) goto L64
            java.lang.Object r1 = r0.next()
            java.lang.CharSequence r1 = (java.lang.CharSequence) r1
            boolean r1 = kotlin.text.StringsKt__StringsKt.contains$default(r6, r1, r4, r3, r2)
            if (r1 == 0) goto L51
            goto L87
        L64:
            java.util.List r0 = io.bidmachine.rendering.utils.CreativeProfileClassifier.c
            boolean r1 = r0 instanceof java.util.Collection
            if (r1 == 0) goto L71
            boolean r1 = r0.isEmpty()
            if (r1 == 0) goto L71
            goto L91
        L71:
            java.util.Iterator r0 = r0.iterator()
        L75:
            boolean r1 = r0.hasNext()
            if (r1 == 0) goto L91
            java.lang.Object r1 = r0.next()
            kotlin.text.Regex r1 = (kotlin.text.Regex) r1
            boolean r1 = r1.containsMatchIn(r6)
            if (r1 == 0) goto L75
        L87:
            io.bidmachine.rendering.model.engagedclick.CreativeProfileInfo r6 = new io.bidmachine.rendering.model.engagedclick.CreativeProfileInfo
            io.bidmachine.rendering.model.engagedclick.CreativeProfile r0 = io.bidmachine.rendering.model.engagedclick.CreativeProfile.INTERACTIVE_HTML
            io.bidmachine.rendering.model.engagedclick.ProfileSource r1 = io.bidmachine.rendering.model.engagedclick.ProfileSource.ADM_HINT
            r6.<init>(r0, r1)
            return r6
        L91:
            int r0 = r6.length()
            r1 = 1500(0x5dc, float:2.102E-42)
            if (r0 > r1) goto Lab
            kotlin.text.Regex r0 = io.bidmachine.rendering.utils.CreativeProfileClassifier.d
            boolean r6 = r0.containsMatchIn(r6)
            if (r6 == 0) goto Lab
            io.bidmachine.rendering.model.engagedclick.CreativeProfileInfo r6 = new io.bidmachine.rendering.model.engagedclick.CreativeProfileInfo
            io.bidmachine.rendering.model.engagedclick.CreativeProfile r0 = io.bidmachine.rendering.model.engagedclick.CreativeProfile.INTERACTIVE_HTML
            io.bidmachine.rendering.model.engagedclick.ProfileSource r1 = io.bidmachine.rendering.model.engagedclick.ProfileSource.ADM_HINT
            r6.<init>(r0, r1)
            return r6
        Lab:
            io.bidmachine.rendering.model.engagedclick.CreativeProfileInfo$Companion r6 = io.bidmachine.rendering.model.engagedclick.CreativeProfileInfo.Companion
            io.bidmachine.rendering.model.engagedclick.CreativeProfileInfo r6 = r6.getDEFAULT_CREATIVE_PROFILE_INFO()
            return r6
        */
        throw new UnsupportedOperationException("Method not decompiled: io.bidmachine.rendering.utils.CreativeProfileClassifier.classifyByMarkup(java.lang.String):io.bidmachine.rendering.model.engagedclick.CreativeProfileInfo");
    }
}
