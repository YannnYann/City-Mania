package ads_mobile_sdk;

import com.google.gson.Gson;
import com.ironsource.C3522b4;
import java.util.regex.Pattern;
import kotlin.TuplesKt;
import kotlin.collections.MapsKt__MapsKt;
import kotlin.jvm.internal.Intrinsics;
import kotlin.text.StringsKt__StringsKt;

/* JADX INFO: loaded from: classes.dex */
public final class w61 {
    public static final Pattern c;
    public static final Pattern d;
    public static final Pattern e;
    public static final Pattern f;
    public final ex0 a;
    public final String b;

    static {
        Pattern patternCompile = Pattern.compile("^\\uFEFF?\\s*(\\s*<!--([^-]|(?!-->))*-->)*?\\s*<!DOCTYPE[^>]*>", 2);
        Intrinsics.checkNotNullExpressionValue(patternCompile, "compile(...)");
        c = patternCompile;
        Pattern patternCompile2 = Pattern.compile("^\\uFEFF?\\s*(\\s*<!--([^-]|(?!-->))*-->)*?\\s*<!DOCTYPE(\\s)+html(|(\\s)+[^>]*)>", 2);
        Intrinsics.checkNotNullExpressionValue(patternCompile2, "compile(...)");
        d = patternCompile2;
        Pattern patternCompile3 = Pattern.compile("^\\uFEFF?\\s*(\\s*<!--([^-]|(?!-->))*-->)*?\\s*<!DOCTYPE(\\s)+html(|(\\s)+[^>]*)>[.\\s]*<\\s*html[^>]*>", 2);
        Intrinsics.checkNotNullExpressionValue(patternCompile3, "compile(...)");
        e = patternCompile3;
        Pattern patternCompile4 = Pattern.compile("^\\uFEFF?\\s*(\\s*<!--([^-]|(?!-->))*-->)*?\\s*<!DOCTYPE(\\s)+html(|(\\s)+[^>]*)>[.\\s]*<\\s*html[^>]*>[.\\s]*<\\s*head[^>]*>", 2);
        Intrinsics.checkNotNullExpressionValue(patternCompile4, "compile(...)");
        f = patternCompile4;
    }

    public w61(ex0 flags, String gmaVersion) {
        Intrinsics.checkNotNullParameter(flags, "flags");
        Intrinsics.checkNotNullParameter(gmaVersion, "gmaVersion");
        this.a = flags;
        this.b = gmaVersion;
    }

    public static String a(String str, String str2) {
        return StringsKt__StringsKt.trim("\n      <script>Object.defineProperty(window,'" + str + "',{get:function(){return " + str2 + "}});</script>\n    ").toString();
    }

    public final String a() {
        return a("MRAID_ENV", StringsKt__StringsKt.trim("\n      {\"version\": \"" + this.a.f0() + "\", \"sdk\": \"Google Mobile Ads\", \"sdkVersion\": \"" + this.b + "\"}\n    ").toString());
    }

    public final String a(i2 configuration) {
        l40 l40Var;
        Intrinsics.checkNotNullParameter(configuration, "configuration");
        ex0 ex0Var = this.a;
        ex0Var.getClass();
        Intrinsics.checkNotNullParameter("gads:omid_javascript_session_service:enabled", C3522b4.i.W);
        if (!((Boolean) ex0Var.a("gads:omid_javascript_session_service:enabled", Boolean.FALSE, yr.b)).booleanValue() || !configuration.P) {
            return null;
        }
        dg2 dg2Var = configuration.T;
        if (!dg2Var.c) {
            return null;
        }
        if (dg2Var.a == cg2.a) {
            l40Var = l40.e;
        } else {
            l40Var = l40.c;
        }
        String json = new Gson().toJson(MapsKt__MapsKt.mapOf(TuplesKt.to("creativeType", l40Var.a), TuplesKt.to("contentUrl", configuration.x)));
        Intrinsics.checkNotNull(json);
        return a("GOOG_OMID_JAVASCRIPT_SESSION_SERVICE_ENV", json);
    }

    /* JADX WARN: Removed duplicated region for block: B:20:0x006b A[PHI: r0
      0x006b: PHI (r0v6 java.lang.Integer) = (r0v5 java.lang.Integer), (r0v12 java.lang.Integer), (r0v19 java.lang.Integer) binds: [B:7:0x002c, B:13:0x004b, B:19:0x006a] A[DONT_GENERATE, DONT_INLINE]] */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct code enable 'Show inconsistent code' option in preferences
    */
    public static java.lang.String a(java.lang.String r6, java.util.List r7) {
        /*
            java.lang.String r0 = "html"
            kotlin.jvm.internal.Intrinsics.checkNotNullParameter(r6, r0)
            java.lang.String r0 = "scripts"
            kotlin.jvm.internal.Intrinsics.checkNotNullParameter(r7, r0)
            java.util.regex.Pattern r0 = ads_mobile_sdk.w61.f
            java.util.regex.Matcher r0 = r0.matcher(r6)
            java.lang.String r1 = "matcher(...)"
            kotlin.jvm.internal.Intrinsics.checkNotNullExpressionValue(r0, r1)
            java.lang.String r2 = "<this>"
            kotlin.jvm.internal.Intrinsics.checkNotNullParameter(r0, r2)
            boolean r3 = r0.find()
            r4 = 0
            if (r3 == 0) goto L2a
            int r0 = r0.end()
            java.lang.Integer r0 = java.lang.Integer.valueOf(r0)
            goto L2b
        L2a:
            r0 = r4
        L2b:
            r3 = 0
            if (r0 == 0) goto L2f
            goto L6b
        L2f:
            java.util.regex.Pattern r0 = ads_mobile_sdk.w61.e
            java.util.regex.Matcher r0 = r0.matcher(r6)
            kotlin.jvm.internal.Intrinsics.checkNotNullExpressionValue(r0, r1)
            kotlin.jvm.internal.Intrinsics.checkNotNullParameter(r0, r2)
            boolean r5 = r0.find()
            if (r5 == 0) goto L4a
            int r0 = r0.end()
            java.lang.Integer r0 = java.lang.Integer.valueOf(r0)
            goto L4b
        L4a:
            r0 = r4
        L4b:
            if (r0 == 0) goto L4e
            goto L6b
        L4e:
            java.util.regex.Pattern r0 = ads_mobile_sdk.w61.d
            java.util.regex.Matcher r0 = r0.matcher(r6)
            kotlin.jvm.internal.Intrinsics.checkNotNullExpressionValue(r0, r1)
            kotlin.jvm.internal.Intrinsics.checkNotNullParameter(r0, r2)
            boolean r1 = r0.find()
            if (r1 == 0) goto L68
            int r0 = r0.end()
            java.lang.Integer r4 = java.lang.Integer.valueOf(r0)
        L68:
            if (r4 == 0) goto L70
            r0 = r4
        L6b:
            int r0 = r0.intValue()
            goto L7e
        L70:
            java.util.regex.Pattern r0 = ads_mobile_sdk.w61.c
            java.util.regex.Matcher r0 = r0.matcher(r6)
            boolean r0 = r0.find()
            if (r0 == 0) goto L7d
            return r6
        L7d:
            r0 = r3
        L7e:
            java.lang.StringBuilder r1 = new java.lang.StringBuilder
            r1.<init>()
            java.lang.String r2 = r6.substring(r3, r0)
            java.lang.String r3 = "substring(...)"
            kotlin.jvm.internal.Intrinsics.checkNotNullExpressionValue(r2, r3)
            r1.append(r2)
            java.util.Iterator r7 = r7.iterator()
        L93:
            boolean r2 = r7.hasNext()
            if (r2 == 0) goto La3
            java.lang.Object r2 = r7.next()
            java.lang.String r2 = (java.lang.String) r2
            r1.append(r2)
            goto L93
        La3:
            java.lang.String r6 = r6.substring(r0)
            kotlin.jvm.internal.Intrinsics.checkNotNullExpressionValue(r6, r3)
            r1.append(r6)
            java.lang.String r6 = r1.toString()
            java.lang.String r7 = "toString(...)"
            kotlin.jvm.internal.Intrinsics.checkNotNullExpressionValue(r6, r7)
            return r6
        */
        throw new UnsupportedOperationException("Method not decompiled: ads_mobile_sdk.w61.a(java.lang.String, java.util.List):java.lang.String");
    }
}
