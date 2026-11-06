package com.ironsource.adqualitysdk.sdk.i;

import com.ironsource.adqualitysdk.sdk.StringFog;
import java.util.Map;
import java.util.regex.Matcher;
import java.util.regex.Pattern;

/* JADX INFO: renamed from: com.ironsource.adqualitysdk.sdk.i.ṟ, reason: contains not printable characters */
/* JADX INFO: loaded from: classes3.dex */
public abstract class AbstractC0727 {

    /* JADX INFO: renamed from: ﱡ, reason: contains not printable characters */
    public static volatile boolean f2977;

    /* JADX INFO: renamed from: ﺙ, reason: contains not printable characters */
    public static final C0741 f2978;

    /* JADX INFO: renamed from: ﻏ, reason: contains not printable characters */
    public static final Pattern f2979;

    /* JADX INFO: renamed from: ﻐ, reason: contains not printable characters */
    public static final Pattern f2980;

    /* JADX INFO: renamed from: ﻛ, reason: contains not printable characters */
    public static final Pattern f2981;

    /* JADX INFO: renamed from: ｋ, reason: contains not printable characters */
    public static final Pattern f2982;

    /* JADX INFO: renamed from: ﾇ, reason: contains not printable characters */
    public static final Pattern f2983;

    /* JADX INFO: renamed from: ﾒ, reason: contains not printable characters */
    public static final Pattern f2984;

    static {
        StringFog.decrypt("6hFWTBU=\n", "pnQuKWejSgA=\n");
        f2984 = Pattern.compile(StringFog.decrypt("LrZcCMV5yuxUsmB+3hWd9123DQiGHLjrWg==\n", "cO09Jb8457Y=\n"));
        f2983 = Pattern.compile(StringFog.decrypt("sHBM5lKXKNOSCTr7NeJe0w==\n", "7lJk2WjLdPE=\n"));
        f2982 = Pattern.compile(StringFog.decrypt("fgx4ZAh3bo1ccA58bwIYjQ==\n", "ICtQWzIrMqo=\n"));
        f2981 = Pattern.compile(StringFog.decrypt("K2u91pXOHaVba73Wlc4d\n", "dTCN+6yTNvk=\n"));
        f2980 = Pattern.compile(StringFog.decrypt("mTIvv8z9Eg==\n", "x2kfkvWgOXw=\n"));
        f2979 = Pattern.compile(StringFog.decrypt("M7CptaR+gxFJtJXDvxLUCkCx+LXnG/FlMMGUtr1Tzzgew/e5gheH\n", "bevImN4/rks=\n"));
        f2978 = new C0741();
    }

    /* JADX WARN: Can't fix incorrect switch cases order, some code will duplicate */
    /* JADX WARN: Failed to find 'out' block for switch in B:31:0x004d. Please report as an issue. */
    /* JADX WARN: Failed to find 'out' block for switch in B:32:0x0050. Please report as an issue. */
    /* JADX WARN: Failed to find 'out' block for switch in B:33:0x0053. Please report as an issue. */
    /* JADX WARN: Removed duplicated region for block: B:121:0x0253 A[SYNTHETIC] */
    /* JADX WARN: Removed duplicated region for block: B:62:0x0108  */
    /* JADX WARN: Removed duplicated region for block: B:67:0x011b  */
    /* JADX WARN: Removed duplicated region for block: B:76:0x0155  */
    /* JADX INFO: renamed from: ﾒ, reason: contains not printable characters */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct code enable 'Show inconsistent code' option in preferences
    */
    public static java.util.ArrayList m1434(java.lang.String r11, java.lang.String r12, java.lang.String r13) {
        /*
            Method dump skipped, instruction units count: 654
            To view this dump change 'Code comments level' option to 'DEBUG'
        */
        throw new UnsupportedOperationException("Method not decompiled: com.ironsource.adqualitysdk.sdk.i.AbstractC0727.m1434(java.lang.String, java.lang.String, java.lang.String):java.util.ArrayList");
    }

    /* JADX INFO: renamed from: ﾒ, reason: contains not printable characters */
    public static String m1433(Pattern pattern, String str, int i) {
        Matcher matcher;
        if (f2977) {
            Map map = (Map) f2978.get();
            matcher = (Matcher) map.get(pattern);
            if (matcher == null) {
                matcher = pattern.matcher("");
                map.put(pattern, matcher);
            }
            matcher.reset(str);
        } else {
            matcher = pattern.matcher(str);
        }
        matcher.region(i, str.length());
        if (matcher.find()) {
            return str.substring(matcher.start(), matcher.end());
        }
        return null;
    }
}
