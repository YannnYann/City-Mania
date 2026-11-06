package com.unity3d.coherence;

import android.content.ContentResolver;
import android.content.Context;
import android.content.SharedPreferences;
import java.lang.reflect.InvocationTargetException;
import java.util.ArrayList;
import java.util.Arrays;
import java.util.Collections;
import java.util.HashSet;
import java.util.List;
import java.util.Set;
import java.util.UUID;

/* JADX INFO: loaded from: classes4.dex */
final class Coherence {
    public static final Set<String> SETTINGS_GETTERS;
    public static final Set<String> SETTINGS_ROOTS;
    public final Object blobLock = new Object();
    public final Context context;
    public final SharedPreferences prefs;

    public Coherence(Context context, SharedPreferences sharedPreferences) {
        this.context = context;
        this.prefs = sharedPreferences;
    }

    public String kvGet(String str) {
        return this.prefs.getString(str, null);
    }

    public boolean kvSet(String str, String str2) {
        this.prefs.edit().putString(str, str2).apply();
        return true;
    }

    public String generateUuid() {
        return UUID.randomUUID().toString();
    }

    public String reflectString(String str) {
        Object objResolvePath = resolvePath(str);
        if (objResolvePath instanceof String) {
            return (String) objResolvePath;
        }
        return null;
    }

    public Long reflectInt(String str) {
        Object objResolvePath = resolvePath(str);
        if (objResolvePath instanceof Number) {
            return Long.valueOf(((Number) objResolvePath).longValue());
        }
        return null;
    }

    public Boolean reflectBool(String str) {
        Object objResolvePath = resolvePath(str);
        if (objResolvePath instanceof Boolean) {
            return (Boolean) objResolvePath;
        }
        return null;
    }

    static {
        HashSet hashSet = new HashSet();
        hashSet.add("android.provider.Settings$Global");
        hashSet.add("android.provider.Settings$Secure");
        hashSet.add("android.provider.Settings$System");
        SETTINGS_ROOTS = Collections.unmodifiableSet(hashSet);
        HashSet hashSet2 = new HashSet();
        hashSet2.addAll(Arrays.asList("getInt", "getString", "getFloat", "getLong"));
        SETTINGS_GETTERS = Collections.unmodifiableSet(hashSet2);
    }

    /* JADX WARN: Code restructure failed: missing block: B:21:0x004c, code lost:
    
        if (r1 == null) goto L22;
     */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct code enable 'Show inconsistent code' option in preferences
    */
    public java.lang.Object resolvePath(java.lang.String r8) {
        /*
            r7 = this;
            r0 = 0
            if (r8 == 0) goto L90
            boolean r1 = r8.isEmpty()
            if (r1 == 0) goto Lb
            goto L90
        Lb:
            java.util.List r8 = tokenize(r8)
            boolean r1 = r8.isEmpty()
            if (r1 != 0) goto L90
            int r1 = r8.size()
            r2 = 32
            if (r1 <= r2) goto L1f
            goto L90
        L1f:
            r1 = 0
            java.lang.Object r2 = r8.get(r1)
            java.lang.String r2 = (java.lang.String) r2
            java.lang.String r3 = "context"
            boolean r3 = r3.equals(r2)
            r4 = 1
            if (r3 == 0) goto L32
            android.content.Context r1 = r7.context
            goto L79
        L32:
            java.lang.String r3 = "stickyIntent("
            boolean r3 = r2.startsWith(r3)
            if (r3 == 0) goto L4f
            java.lang.String r1 = extractStringArg(r2)
            if (r1 != 0) goto L41
            return r0
        L41:
            android.content.Context r2 = r7.context     // Catch: java.lang.Throwable -> L4e
            android.content.IntentFilter r3 = new android.content.IntentFilter     // Catch: java.lang.Throwable -> L4e
            r3.<init>(r1)     // Catch: java.lang.Throwable -> L4e
            android.content.Intent r1 = r2.registerReceiver(r0, r3)     // Catch: java.lang.Throwable -> L4e
            if (r1 != 0) goto L79
        L4e:
            return r0
        L4f:
            int r2 = r8.size()
        L53:
            r3 = -1
            if (r2 < r4) goto L74
            int r5 = r2 + (-1)
            java.lang.Object r5 = r8.get(r5)
            java.lang.String r5 = (java.lang.String) r5
            r6 = 40
            int r5 = r5.indexOf(r6)
            if (r5 == r3) goto L67
            goto L71
        L67:
            java.lang.String r3 = join(r8, r1, r2)
            java.lang.Class r1 = java.lang.Class.forName(r3)     // Catch: java.lang.ClassNotFoundException -> L71
            r4 = r2
            goto L76
        L71:
            int r2 = r2 + (-1)
            goto L53
        L74:
            r1 = r0
            r4 = r3
        L76:
            if (r1 != 0) goto L79
            return r0
        L79:
            int r2 = r8.size()
            if (r4 >= r2) goto L8f
            if (r1 != 0) goto L82
            return r0
        L82:
            java.lang.Object r2 = r8.get(r4)
            java.lang.String r2 = (java.lang.String) r2
            java.lang.Object r1 = r7.dispatchSegment(r1, r2)
            int r4 = r4 + 1
            goto L79
        L8f:
            return r1
        L90:
            return r0
        */
        throw new UnsupportedOperationException("Method not decompiled: com.unity3d.coherence.Coherence.resolvePath(java.lang.String):java.lang.Object");
    }

    public final Object dispatchSegment(Object obj, String str) {
        int iIndexOf = str.indexOf(40);
        if (iIndexOf == -1) {
            return resolveFieldOrZeroArgMethod(obj, str);
        }
        String strSubstring = str.substring(0, iIndexOf);
        String strExtractStringArg = extractStringArg(str);
        if (strExtractStringArg == null) {
            return null;
        }
        return resolveMethodWithStringArg(obj, strSubstring, strExtractStringArg);
    }

    public static Object resolveFieldOrZeroArgMethod(Object obj, String str) {
        boolean z = obj instanceof Class;
        Class<?> cls = z ? (Class) obj : obj.getClass();
        if (z) {
            obj = null;
        }
        try {
            return cls.getField(str).get(obj);
        } catch (IllegalAccessException unused) {
            return null;
        } catch (NoSuchFieldException unused2) {
            try {
                return cls.getMethod(str, new Class[0]).invoke(obj, new Object[0]);
            } catch (IllegalAccessException | NoSuchMethodException | InvocationTargetException unused3) {
                return null;
            }
        }
    }

    public final Object resolveMethodWithStringArg(Object obj, String str, String str2) {
        boolean z = obj instanceof Class;
        Class<?> cls = z ? (Class) obj : obj.getClass();
        if (z) {
            obj = null;
        }
        if (obj == null && SETTINGS_ROOTS.contains(cls.getName()) && SETTINGS_GETTERS.contains(str)) {
            try {
                return cls.getMethod(str, ContentResolver.class, String.class).invoke(null, this.context.getContentResolver(), str2);
            } catch (IllegalAccessException | NoSuchMethodException | InvocationTargetException unused) {
                return null;
            }
        }
        try {
            return cls.getMethod(str, String.class).invoke(obj, str2);
        } catch (IllegalAccessException | NoSuchMethodException | InvocationTargetException unused2) {
            return null;
        }
    }

    public static List<String> tokenize(String str) {
        return splitOnTopLevel('.', str, false);
    }

    public static List<String> splitOnTopLevel(char c, String str, boolean z) {
        ArrayList arrayList = new ArrayList();
        StringBuilder sb = new StringBuilder();
        boolean z2 = false;
        boolean z3 = false;
        int i = 0;
        for (int i2 = 0; i2 < str.length(); i2++) {
            char cCharAt = str.charAt(i2);
            if (z2) {
                sb.append(cCharAt);
                z2 = false;
            } else if (z3) {
                if (cCharAt == '\\') {
                    z2 = true;
                } else if (cCharAt == '\"') {
                    z3 = false;
                }
                sb.append(cCharAt);
            } else if (cCharAt == '\"') {
                sb.append(cCharAt);
                z3 = true;
            } else if (cCharAt == '(') {
                i++;
                sb.append(cCharAt);
            } else if (cCharAt == ')') {
                if (i > 0) {
                    i--;
                }
                sb.append(cCharAt);
            } else if (cCharAt == c && i == 0) {
                if (z || sb.length() > 0) {
                    arrayList.add(sb.toString());
                }
                sb.setLength(0);
            } else {
                sb.append(cCharAt);
            }
        }
        if (!z && sb.length() <= 0) {
            return arrayList;
        }
        arrayList.add(sb.toString());
        return arrayList;
    }

    public static String extractStringArg(String str) {
        int i;
        char cCharAt;
        int iIndexOf = str.indexOf(40);
        int iLastIndexOf = str.lastIndexOf(41);
        if (iIndexOf != -1 && iLastIndexOf != -1 && iLastIndexOf >= iIndexOf) {
            String strTrim = str.substring(iIndexOf + 1, iLastIndexOf).trim();
            if (strTrim.length() >= 2 && strTrim.startsWith("\"") && strTrim.endsWith("\"")) {
                String strSubstring = strTrim.substring(1, strTrim.length() - 1);
                StringBuilder sb = new StringBuilder(strSubstring.length());
                int i2 = 0;
                while (i2 < strSubstring.length()) {
                    char cCharAt2 = strSubstring.charAt(i2);
                    if (cCharAt2 == '\\' && (i = i2 + 1) < strSubstring.length() && ((cCharAt = strSubstring.charAt(i)) == '\"' || cCharAt == '\\')) {
                        sb.append(cCharAt);
                        i2 = i;
                    } else {
                        sb.append(cCharAt2);
                    }
                    i2++;
                }
                return sb.toString();
            }
        }
        return null;
    }

    public static String join(List<String> list, int i, int i2) {
        StringBuilder sb = new StringBuilder();
        for (int i3 = i; i3 < i2; i3++) {
            if (i3 > i) {
                sb.append('.');
            }
            sb.append(list.get(i3));
        }
        return sb.toString();
    }
}
