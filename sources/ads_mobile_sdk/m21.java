package ads_mobile_sdk;

import android.content.Context;
import android.net.Uri;
import android.os.SystemClock;
import android.provider.Settings;
import com.ironsource.C3522b4;
import java.math.BigInteger;
import java.security.MessageDigest;
import java.security.NoSuchAlgorithmException;
import java.util.Arrays;
import java.util.LinkedHashMap;
import java.util.List;
import java.util.Locale;
import java.util.Map;
import java.util.Set;
import java.util.concurrent.atomic.AtomicReference;
import kotlin.collections.CollectionsKt___CollectionsKt;
import kotlin.collections.MapsKt__MapsKt;
import kotlin.jvm.internal.Intrinsics;
import kotlin.jvm.internal.StringCompanionObject;
import kotlin.sequences.Sequence;
import kotlin.sequences.SequencesKt___SequencesKt;
import kotlin.text.Charsets;
import kotlin.text.MatchGroup;
import kotlin.text.MatchGroupCollection;
import kotlin.text.MatchResult;
import kotlin.text.Regex;
import kotlin.text.StringsKt__StringsJVMKt;
import kotlin.text.StringsKt__StringsKt;
import kotlin.time.Duration;
import kotlin.time.DurationKt;
import kotlin.time.DurationUnit;

/* JADX INFO: loaded from: classes.dex */
public final class m21 {
    public static Uri a(Uri uri, String parameterValue) {
        Intrinsics.checkNotNullParameter(uri, "<this>");
        Intrinsics.checkNotNullParameter("ms", "parameterName");
        Intrinsics.checkNotNullParameter(parameterValue, "parameterValue");
        String string = uri.toString();
        Intrinsics.checkNotNullExpressionValue(string, "toString(...)");
        int iIndexOf$default = StringsKt__StringsKt.indexOf$default((CharSequence) string, "&adurl", 0, false, 6, (Object) null);
        if (iIndexOf$default == -1) {
            iIndexOf$default = StringsKt__StringsKt.indexOf$default((CharSequence) string, "?adurl=", 0, false, 6, (Object) null);
        }
        if (iIndexOf$default == -1) {
            Uri uriBuild = uri.buildUpon().appendQueryParameter("ms", parameterValue).build();
            Intrinsics.checkNotNull(uriBuild);
            return uriBuild;
        }
        StringBuilder sb = new StringBuilder(parameterValue.length() + string.length() + 2 + 2);
        int i = iIndexOf$default + 1;
        String strSubstring = string.substring(0, i);
        Intrinsics.checkNotNullExpressionValue(strSubstring, "substring(...)");
        sb.append(strSubstring);
        sb.append("ms=");
        sb.append(parameterValue);
        sb.append(C3522b4.j.c);
        String strSubstring2 = string.substring(i);
        Intrinsics.checkNotNullExpressionValue(strSubstring2, "substring(...)");
        sb.append(strSubstring2);
        String string2 = sb.toString();
        Intrinsics.checkNotNullExpressionValue(string2, "toString(...)");
        return Uri.parse(string2);
    }

    public static String b(String applicationId) {
        MatchGroupCollection groups;
        MatchGroup matchGroup;
        Intrinsics.checkNotNullParameter(applicationId, "applicationId");
        MatchResult matchResultFind$default = Regex.find$default(o21.h, applicationId, 0, 2, null);
        if (matchResultFind$default == null || (groups = matchResultFind$default.getGroups()) == null || (matchGroup = groups.get(2)) == null) {
            return null;
        }
        return matchGroup.getValue();
    }

    public static String c(String adUnitId) {
        MatchGroupCollection groups;
        MatchGroup matchGroup;
        Intrinsics.checkNotNullParameter(adUnitId, "adUnitId");
        MatchResult matchResultFind$default = Regex.find$default(o21.i, adUnitId, 0, 2, null);
        if (matchResultFind$default == null || (groups = matchResultFind$default.getGroups()) == null || (matchGroup = groups.get(1)) == null) {
            return null;
        }
        return matchGroup.getValue();
    }

    public static String d(String string) {
        Intrinsics.checkNotNullParameter(string, "string");
        for (int i = 0; i < 2; i++) {
            try {
                MessageDigest messageDigest = MessageDigest.getInstance("MD5");
                byte[] bytes = string.getBytes(Charsets.UTF_8);
                Intrinsics.checkNotNullExpressionValue(bytes, "getBytes(...)");
                messageDigest.update(bytes);
                StringCompanionObject stringCompanionObject = StringCompanionObject.INSTANCE;
                String str = String.format(Locale.US, "%032X", Arrays.copyOf(new Object[]{new BigInteger(1, messageDigest.digest())}, 1));
                Intrinsics.checkNotNullExpressionValue(str, "format(...)");
                return str;
            } catch (NoSuchAlgorithmException unused) {
            }
        }
        return null;
    }

    public static String b(String regexString, String stringToMatch) {
        List<String> groupValues;
        Intrinsics.checkNotNullParameter(regexString, "regexString");
        Intrinsics.checkNotNullParameter(stringToMatch, "stringToMatch");
        MatchResult matchResultFind$default = Regex.find$default(new Regex(regexString), stringToMatch, 0, 2, null);
        if (matchResultFind$default != null && (groupValues = matchResultFind$default.getGroupValues()) != null && groupValues.size() >= 2) {
            int size = groupValues.size();
            for (int i = 1; i < size; i++) {
                if (!StringsKt__StringsKt.isBlank(groupValues.get(i))) {
                    return groupValues.get(i);
                }
            }
        }
        return null;
    }

    public static String c(String str, String str2) {
        boolean z = (Intrinsics.areEqual(str, "zh") && Intrinsics.areEqual(str2, "HK")) || (Intrinsics.areEqual(str, "en") && (Intrinsics.areEqual(str2, "AU") || Intrinsics.areEqual(str2, "IN"))) || ((Intrinsics.areEqual(str, "es") && Intrinsics.areEqual(str2, "MX")) || (Intrinsics.areEqual(str, "fr") && Intrinsics.areEqual(str2, "CA")));
        if (str2.length() <= 0 || !z) {
            return str;
        }
        Locale US = Locale.US;
        Intrinsics.checkNotNullExpressionValue(US, "US");
        String lowerCase = str2.toLowerCase(US);
        Intrinsics.checkNotNullExpressionValue(lowerCase, "toLowerCase(...)");
        return str + "-" + lowerCase;
    }

    public static String a(String str, String str2) {
        if (str == null) {
            str = "";
        }
        if (str2 == null) {
            str2 = "";
        }
        Locale US = Locale.US;
        Intrinsics.checkNotNullExpressionValue(US, "US");
        String upperCase = str2.toUpperCase(US);
        Intrinsics.checkNotNullExpressionValue(upperCase, "toUpperCase(...)");
        if (Intrinsics.areEqual(str, "zh")) {
            if (!Intrinsics.areEqual(upperCase, "CN") && !Intrinsics.areEqual(upperCase, "TW")) {
                String string = Locale.getDefault().toString();
                Intrinsics.checkNotNullExpressionValue(string, "toString(...)");
                if (StringsKt__StringsKt.contains((CharSequence) string, (CharSequence) "CN", true) || StringsKt__StringsKt.contains((CharSequence) string, (CharSequence) "Hans", true)) {
                    return "zh-CN";
                }
                if (StringsKt__StringsKt.contains((CharSequence) string, (CharSequence) "TW", true) || StringsKt__StringsKt.contains((CharSequence) string, (CharSequence) "Hant", true)) {
                    return "zh-TW";
                }
            } else {
                return str + "-" + upperCase;
            }
        }
        if (StringsKt__StringsJVMKt.equals(str, "zh-hans", true) || StringsKt__StringsJVMKt.equals(str, "zh-cn", true)) {
            return "zh-CN";
        }
        if (StringsKt__StringsJVMKt.equals(str, "zh-hant", true) || StringsKt__StringsJVMKt.equals(str, "zh_hant", true)) {
            return "zh-TW";
        }
        if (Intrinsics.areEqual(str, "he")) {
            return "iw";
        }
        if (StringsKt__StringsJVMKt.equals(str, "pt-pt", true)) {
            return "pt";
        }
        if (StringsKt__StringsJVMKt.equals(str, "en-gb", true)) {
            return "en";
        }
        return c(str, upperCase);
    }

    public static String a(String applicationId) {
        MatchGroupCollection groups;
        MatchGroup matchGroup;
        Intrinsics.checkNotNullParameter(applicationId, "applicationId");
        MatchResult matchResultFind$default = Regex.find$default(o21.h, applicationId, 0, 2, null);
        if (matchResultFind$default == null || (groups = matchResultFind$default.getGroups()) == null || (matchGroup = groups.get(1)) == null) {
            return null;
        }
        return matchGroup.getValue();
    }

    public static String a(Context context) {
        String string;
        Intrinsics.checkNotNullParameter(context, "context");
        AtomicReference atomicReference = o21.g;
        String str = (String) atomicReference.get();
        if (str != null) {
            return str;
        }
        String strD = "B3EEABB8EE11C2BE770B684D95219ECB";
        if (!jn0.a() && (string = Settings.Secure.getString(context.getContentResolver(), "android_id")) != null && string.length() != 0) {
            Intrinsics.checkNotNull(string);
            strD = d(string);
        }
        atomicReference.set(strD);
        return (String) atomicReference.get();
    }

    public static boolean a(Context context, String permissionName) {
        Intrinsics.checkNotNullParameter(context, "context");
        Intrinsics.checkNotNullParameter(permissionName, "permissionName");
        return context.checkSelfPermission(permissionName) == 0;
    }

    /* JADX WARN: Removed duplicated region for block: B:7:0x0013  */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct code enable 'Show inconsistent code' option in preferences
    */
    public final java.lang.Object a(long r5, kotlin.jvm.functions.Function1 r7, kotlin.coroutines.Continuation r8) {
        /*
            r4 = this;
            boolean r0 = r8 instanceof ads_mobile_sdk.j21
            if (r0 == 0) goto L13
            r0 = r8
            ads_mobile_sdk.j21 r0 = (ads_mobile_sdk.j21) r0
            int r1 = r0.c
            r2 = -2147483648(0xffffffff80000000, float:-0.0)
            r3 = r1 & r2
            if (r3 == 0) goto L13
            int r1 = r1 - r2
            r0.c = r1
            goto L18
        L13:
            ads_mobile_sdk.j21 r0 = new ads_mobile_sdk.j21
            r0.<init>(r4, r8)
        L18:
            java.lang.Object r8 = r0.a
            java.lang.Object r1 = kotlin.coroutines.intrinsics.IntrinsicsKt__IntrinsicsKt.getCOROUTINE_SUSPENDED()
            int r2 = r0.c
            r3 = 1
            if (r2 == 0) goto L33
            if (r2 != r3) goto L2b
            kotlin.ResultKt.throwOnFailure(r8)     // Catch: kotlinx.coroutines.TimeoutCancellationException -> L29
            goto L45
        L29:
            r5 = move-exception
            goto L4b
        L2b:
            java.lang.IllegalStateException r5 = new java.lang.IllegalStateException
            java.lang.String r6 = "call to 'resume' before 'invoke' with coroutine"
            r5.<init>(r6)
            throw r5
        L33:
            kotlin.ResultKt.throwOnFailure(r8)
            ads_mobile_sdk.k21 r8 = new ads_mobile_sdk.k21     // Catch: kotlinx.coroutines.TimeoutCancellationException -> L29
            r2 = 0
            r8.<init>(r7, r2)     // Catch: kotlinx.coroutines.TimeoutCancellationException -> L29
            r0.c = r3     // Catch: kotlinx.coroutines.TimeoutCancellationException -> L29
            java.lang.Object r8 = kotlinx.coroutines.TimeoutKt.m2940withTimeoutKLykuaI(r5, r8, r0)     // Catch: kotlinx.coroutines.TimeoutCancellationException -> L29
            if (r8 != r1) goto L45
            return r1
        L45:
            ads_mobile_sdk.q01 r5 = new ads_mobile_sdk.q01     // Catch: kotlinx.coroutines.TimeoutCancellationException -> L29
            r5.<init>(r8)     // Catch: kotlinx.coroutines.TimeoutCancellationException -> L29
            return r5
        L4b:
            ads_mobile_sdk.r01 r6 = new ads_mobile_sdk.r01
            r6.<init>(r5, r3)
            java.lang.String r7 = "exception"
            kotlin.jvm.internal.Intrinsics.checkNotNullParameter(r5, r7)
            ads_mobile_sdk.rr3 r7 = ads_mobile_sdk.hs3.a()
            ads_mobile_sdk.uj2 r8 = r7.e()
            r0 = 0
            r8.m = r0
            r7.a(r5)
            return r6
        */
        throw new UnsupportedOperationException("Method not decompiled: ads_mobile_sdk.m21.a(long, kotlin.jvm.functions.Function1, kotlin.coroutines.Continuation):java.lang.Object");
    }

    public static long a(tx timestampToElapsedRealTime, long j) {
        Intrinsics.checkNotNullParameter(timestampToElapsedRealTime, "$this$timestampToElapsedRealTime");
        timestampToElapsedRealTime.getClass();
        long jCurrentTimeMillis = System.currentTimeMillis();
        long jElapsedRealtime = SystemClock.elapsedRealtime();
        Duration.Companion companion = Duration.Companion;
        return DurationKt.toDuration(jElapsedRealtime - (jCurrentTimeMillis - j), DurationUnit.MILLISECONDS);
    }

    public static Map a(Uri uri) {
        Intrinsics.checkNotNullParameter(uri, "uri");
        if (uri.isOpaque()) {
            return MapsKt__MapsKt.emptyMap();
        }
        Set<String> queryParameterNames = uri.getQueryParameterNames();
        Intrinsics.checkNotNullExpressionValue(queryParameterNames, "getQueryParameterNames(...)");
        Sequence sequenceFilter = SequencesKt___SequencesKt.filter(CollectionsKt___CollectionsKt.asSequence(queryParameterNames), l21.a);
        LinkedHashMap linkedHashMap = new LinkedHashMap();
        for (Object obj : sequenceFilter) {
            linkedHashMap.put(obj, uri.getQueryParameter((String) obj));
        }
        return linkedHashMap;
    }
}
