package io.bidmachine.util;

import android.content.SharedPreferences;
import kotlin.Unit;
import kotlin.jvm.functions.Function1;
import kotlin.jvm.internal.Intrinsics;

/* JADX INFO: compiled from: SharedPreferenceUtils.kt */
/* JADX INFO: loaded from: classes5.dex */
public final class SharedPreferenceUtilsKt {
    public static /* synthetic */ String optStringOrNull$default(SharedPreferences sharedPreferences, String str, String str2, int i, Object obj) {
        if ((i & 2) != 0) {
            str2 = null;
        }
        return optStringOrNull(sharedPreferences, str, str2);
    }

    public static final String optStringOrNull(SharedPreferences sharedPreferences, String key, String str) {
        String string;
        Intrinsics.checkNotNullParameter(sharedPreferences, "<this>");
        Intrinsics.checkNotNullParameter(key, "key");
        try {
            if (sharedPreferences.contains(key) && (string = sharedPreferences.getString(key, str)) != null) {
                return string;
            }
            Unit unit = Unit.INSTANCE;
        } catch (Throwable unused) {
        }
        return str;
    }

    public static final int optInt(SharedPreferences sharedPreferences, String key, int i) {
        Intrinsics.checkNotNullParameter(sharedPreferences, "<this>");
        Intrinsics.checkNotNullParameter(key, "key");
        if (sharedPreferences.contains(key)) {
            return sharedPreferences.getInt(key, i);
        }
        Unit unit = Unit.INSTANCE;
        return i;
    }

    /* JADX WARN: Removed duplicated region for block: B:12:0x002f  */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct code enable 'Show inconsistent code' option in preferences
    */
    public static final java.lang.Integer optIntOrNull(android.content.SharedPreferences r1, java.lang.String r2, java.lang.Integer r3) {
        /*
            java.lang.String r0 = "<this>"
            kotlin.jvm.internal.Intrinsics.checkNotNullParameter(r1, r0)
            java.lang.String r0 = "key"
            kotlin.jvm.internal.Intrinsics.checkNotNullParameter(r2, r0)
            boolean r0 = r1.contains(r2)     // Catch: java.lang.Throwable -> L31
            if (r0 == 0) goto L2f
            java.util.Map r1 = r1.getAll()     // Catch: java.lang.Throwable -> L31
            java.lang.Object r1 = r1.get(r2)     // Catch: java.lang.Throwable -> L31
            boolean r2 = r1 instanceof java.lang.Integer     // Catch: java.lang.Throwable -> L31
            if (r2 == 0) goto L1f
            java.lang.Integer r1 = (java.lang.Integer) r1     // Catch: java.lang.Throwable -> L31
            goto L32
        L1f:
            boolean r2 = r1 instanceof java.lang.Long     // Catch: java.lang.Throwable -> L31
            if (r2 == 0) goto L2f
            java.lang.Number r1 = (java.lang.Number) r1     // Catch: java.lang.Throwable -> L31
            long r1 = r1.longValue()     // Catch: java.lang.Throwable -> L31
            int r1 = (int) r1     // Catch: java.lang.Throwable -> L31
            java.lang.Integer r1 = java.lang.Integer.valueOf(r1)     // Catch: java.lang.Throwable -> L31
            goto L32
        L2f:
            r1 = r3
            goto L32
        L31:
            r1 = 0
        L32:
            if (r1 != 0) goto L35
            goto L36
        L35:
            r3 = r1
        L36:
            return r3
        */
        throw new UnsupportedOperationException("Method not decompiled: io.bidmachine.util.SharedPreferenceUtilsKt.optIntOrNull(android.content.SharedPreferences, java.lang.String, java.lang.Integer):java.lang.Integer");
    }

    public static final long optLong(SharedPreferences sharedPreferences, String key, long j) {
        Intrinsics.checkNotNullParameter(sharedPreferences, "<this>");
        Intrinsics.checkNotNullParameter(key, "key");
        if (sharedPreferences.contains(key)) {
            return sharedPreferences.getLong(key, j);
        }
        Unit unit = Unit.INSTANCE;
        return j;
    }

    public static final void remove(SharedPreferences sharedPreferences, String key) {
        Intrinsics.checkNotNullParameter(sharedPreferences, "<this>");
        Intrinsics.checkNotNullParameter(key, "key");
        sharedPreferences.edit().remove(key).apply();
    }

    public static final void clear(SharedPreferences sharedPreferences) {
        Intrinsics.checkNotNullParameter(sharedPreferences, "<this>");
        for (String key : sharedPreferences.getAll().keySet()) {
            Intrinsics.checkNotNullExpressionValue(key, "key");
            remove(sharedPreferences, key);
        }
    }

    public static final void edit(SharedPreferences sharedPreferences, Function1<? super SharedPreferences.Editor, Unit> editAction) {
        Intrinsics.checkNotNullParameter(sharedPreferences, "<this>");
        Intrinsics.checkNotNullParameter(editAction, "editAction");
        try {
            SharedPreferences.Editor edit$lambda$9$lambda$8 = sharedPreferences.edit();
            Intrinsics.checkNotNullExpressionValue(edit$lambda$9$lambda$8, "edit$lambda$9$lambda$8");
            editAction.invoke(edit$lambda$9$lambda$8);
            edit$lambda$9$lambda$8.apply();
            Unit unit = Unit.INSTANCE;
        } catch (Throwable unused) {
        }
    }

    public static final void putIntOrRemove(SharedPreferences sharedPreferences, String key, Integer num) {
        Intrinsics.checkNotNullParameter(sharedPreferences, "<this>");
        Intrinsics.checkNotNullParameter(key, "key");
        if (num == null) {
            remove(sharedPreferences, key);
            return;
        }
        SharedPreferences.Editor putOrRemove$lambda$13 = sharedPreferences.edit();
        Intrinsics.checkNotNullExpressionValue(putOrRemove$lambda$13, "putOrRemove$lambda$13");
        putOrRemove$lambda$13.putInt(key, num.intValue());
        putOrRemove$lambda$13.apply();
    }

    public static final void putLongOrRemove(SharedPreferences sharedPreferences, String key, Long l) {
        Intrinsics.checkNotNullParameter(sharedPreferences, "<this>");
        Intrinsics.checkNotNullParameter(key, "key");
        if (l == null) {
            remove(sharedPreferences, key);
            return;
        }
        SharedPreferences.Editor putOrRemove$lambda$13 = sharedPreferences.edit();
        Intrinsics.checkNotNullExpressionValue(putOrRemove$lambda$13, "putOrRemove$lambda$13");
        putOrRemove$lambda$13.putLong(key, l.longValue());
        putOrRemove$lambda$13.apply();
    }

    public static final void putStringOrRemove(SharedPreferences sharedPreferences, String key, String str) {
        Intrinsics.checkNotNullParameter(sharedPreferences, "<this>");
        Intrinsics.checkNotNullParameter(key, "key");
        if (str == null) {
            remove(sharedPreferences, key);
            return;
        }
        SharedPreferences.Editor putOrRemove$lambda$13 = sharedPreferences.edit();
        Intrinsics.checkNotNullExpressionValue(putOrRemove$lambda$13, "putOrRemove$lambda$13");
        putOrRemove$lambda$13.putString(key, str);
        putOrRemove$lambda$13.apply();
    }

    public static final SharedPreferences.Editor putIntOrRemove(SharedPreferences.Editor editor, String key, Integer num) {
        Intrinsics.checkNotNullParameter(editor, "<this>");
        Intrinsics.checkNotNullParameter(key, "key");
        if (num != null) {
            editor.putInt(key, num.intValue());
            return editor;
        }
        editor.remove(key);
        return editor;
    }

    public static final SharedPreferences.Editor putStringOrRemove(SharedPreferences.Editor editor, String key, String str) {
        Intrinsics.checkNotNullParameter(editor, "<this>");
        Intrinsics.checkNotNullParameter(key, "key");
        if (str != null) {
            editor.putString(key, str);
            return editor;
        }
        editor.remove(key);
        return editor;
    }
}
