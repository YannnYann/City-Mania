package com.google.common.base;

import java.util.Locale;

/* JADX INFO: loaded from: classes3.dex */
public final class Platform {
    public static final PatternCompiler patternCompiler = loadPatternCompiler();

    public static String formatCompact4Digits(double value) {
        return String.format(Locale.ROOT, "%.4g", Double.valueOf(value));
    }

    public static boolean stringIsNullOrEmpty(String string) {
        return string == null || string.isEmpty();
    }

    public static String nullToEmpty(String string) {
        return string == null ? "" : string;
    }

    public static String emptyToNull(String string) {
        if (stringIsNullOrEmpty(string)) {
            return null;
        }
        return string;
    }

    public static PatternCompiler loadPatternCompiler() {
        return new JdkPatternCompiler();
    }

    public static final class JdkPatternCompiler implements PatternCompiler {
        public JdkPatternCompiler() {
        }
    }
}
