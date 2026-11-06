package com.ironsource.adqualitysdk.sdk.i;

import android.content.SharedPreferences;
import android.os.Bundle;
import android.text.TextUtils;
import com.ironsource.adqualitysdk.sdk.StringFog;
import java.lang.ref.WeakReference;
import java.lang.reflect.Array;
import java.lang.reflect.Field;
import java.lang.reflect.Modifier;
import java.util.ArrayList;
import java.util.Arrays;
import java.util.Collection;
import java.util.HashMap;
import java.util.HashSet;
import java.util.Iterator;
import java.util.LinkedHashMap;
import java.util.List;
import java.util.Map;
import java.util.concurrent.atomic.AtomicReference;
import org.json.JSONArray;
import org.json.JSONObject;

/* JADX INFO: renamed from: com.ironsource.adqualitysdk.sdk.i.ʄ, reason: contains not printable characters */
/* JADX INFO: loaded from: classes3.dex */
public final class C0122 {

    /* JADX INFO: renamed from: ﾇ, reason: contains not printable characters */
    public final int f1062;

    /* JADX INFO: renamed from: ﾒ, reason: contains not printable characters */
    public final List f1063;

    /* JADX INFO: renamed from: ｋ, reason: contains not printable characters */
    public final HashSet f1061 = new HashSet();

    /* JADX INFO: renamed from: ﻛ, reason: contains not printable characters */
    public final HashSet f1060 = new HashSet();

    /* JADX INFO: renamed from: ﻐ, reason: contains not printable characters */
    public int f1059 = 0;

    public C0122(List list, int i) {
        this.f1063 = list;
        this.f1062 = i;
    }

    /* JADX INFO: renamed from: ﾇ, reason: contains not printable characters */
    public static boolean m1095(Object obj) {
        if (obj == null) {
            return true;
        }
        return obj instanceof String ? ((String) obj).isEmpty() : obj instanceof Number ? ((Number) obj).doubleValue() == 0.0d : obj instanceof Boolean ? !((Boolean) obj).booleanValue() : obj instanceof Collection ? ((Collection) obj).isEmpty() : obj instanceof Map ? ((Map) obj).isEmpty() : obj.getClass().isArray() && Array.getLength(obj) == 0;
    }

    /* JADX INFO: renamed from: ﾒ, reason: contains not printable characters */
    public final String m1098(Collection collection) {
        StringBuilder sb = new StringBuilder(StringFog.decrypt("kw==\n", "yKwkH3iJpmM=\n"));
        boolean z = true;
        for (Object obj : collection) {
            if (!m1095(obj)) {
                if (!z) {
                    sb.append(StringFog.decrypt("iQ==\n", "pQwSEPs1EMY=\n"));
                }
                sb.append(m1097(obj));
                z = false;
            }
        }
        sb.append(StringFog.decrypt("EA==\n", "TW0pSk0kmoQ=\n"));
        return sb.toString();
    }

    /* JADX INFO: renamed from: ﾒ, reason: contains not printable characters */
    public final String m1099(Map map) {
        StringBuilder sb = new StringBuilder(StringFog.decrypt("Tg==\n", "Nfh05UxZD2E=\n"));
        boolean z = true;
        for (Map.Entry entry : map.entrySet()) {
            if (!m1095(entry.getValue())) {
                if (!z) {
                    sb.append(StringFog.decrypt("CA==\n", "JDUvXeAJtNU=\n"));
                }
                sb.append(m1096(String.valueOf(entry.getKey())));
                sb.append(StringFog.decrypt("Ow==\n", "AbJBURV1wlM=\n"));
                sb.append(m1097(entry.getValue()));
                z = false;
            }
        }
        sb.append(StringFog.decrypt("7g==\n", "k5Zr/aunAY8=\n"));
        return sb.toString();
    }

    /* JADX INFO: renamed from: ﾒ, reason: contains not printable characters */
    public static String m1096(String str) {
        StringBuilder sb = new StringBuilder();
        sb.append(StringFog.decrypt("NQ==\n", "F+SUrs2uo8o=\n"));
        sb.append(str.replace(StringFog.decrypt("bQ==\n", "McLpQYjqo+w=\n"), StringFog.decrypt("3zg=\n", "g2T0awnFxT8=\n")).replace(StringFog.decrypt("dA==\n", "VueOuIPSVik=\n"), StringFog.decrypt("ym8=\n", "lk3geZrRQDU=\n")).replace("\n", StringFog.decrypt("+O8=\n", "pIEFfmX3Xqg=\n")).replace("\r", StringFog.decrypt("6qc=\n", "ttUHvUjt3yo=\n")).replace("\t", StringFog.decrypt("nrI=\n", "wsaS3IrLzUw=\n")));
        return AbstractC0829.m1456("6w==\n", "ybv7+aTixfY=\n", sb);
    }

    /* JADX INFO: renamed from: ﾒ, reason: contains not printable characters */
    public final String m1097(Object obj) {
        String strM1096;
        if (obj instanceof WeakReference) {
            obj = ((WeakReference) obj).get();
        } else if (obj instanceof AtomicReference) {
            obj = ((AtomicReference) obj).get();
        }
        if (obj == null) {
            return StringFog.decrypt("tAx9Xg==\n", "2nkRMltmACE=\n");
        }
        if (obj instanceof String) {
            String str = (String) obj;
            if (str.length() > 30) {
                if (this.f1060.contains(str)) {
                    return StringFog.decrypt("83InAS2T2A==\n", "0U5DdF2t+jI=\n");
                }
                this.f1060.add(str);
            }
            return m1096(str);
        }
        if (!(obj instanceof Number) && !(obj instanceof Boolean)) {
            if (obj instanceof Character) {
                return m1096(String.valueOf(obj));
            }
            int i = 0;
            if (obj instanceof JSONArray) {
                JSONArray jSONArray = (JSONArray) obj;
                ArrayList arrayList = new ArrayList();
                while (i < jSONArray.length()) {
                    Object objOpt = jSONArray.opt(i);
                    if (objOpt != null) {
                        arrayList.add(objOpt);
                    }
                    i++;
                }
                return m1098((Collection) arrayList);
            }
            String str2 = null;
            if (obj instanceof JSONObject) {
                JSONObject jSONObject = (JSONObject) obj;
                Map linkedHashMap = new LinkedHashMap();
                Iterator<String> itKeys = jSONObject.keys();
                while (itKeys.hasNext()) {
                    String next = itKeys.next();
                    linkedHashMap.put(next, jSONObject.optString(next, null));
                }
                return m1099(linkedHashMap);
            }
            if (obj instanceof Map) {
                return m1099((Map) obj);
            }
            if (obj instanceof Collection) {
                return m1098((Collection) obj);
            }
            if (obj.getClass().isArray()) {
                ArrayList arrayList2 = new ArrayList();
                while (i < Array.getLength(obj)) {
                    arrayList2.add(Array.get(obj, i));
                    i++;
                }
                return m1098((Collection) arrayList2);
            }
            if (obj instanceof Bundle) {
                Bundle bundle = (Bundle) obj;
                HashMap map = new HashMap();
                for (String str3 : bundle.keySet()) {
                    map.put(str3, bundle.get(str3));
                }
                StringBuilder sb = new StringBuilder();
                sb.append(StringFog.decrypt("1xquRuJ9tuqOAtNn+3Kh9cka3QfReKTtzRrL\n", "rDjxJY4cxZk=\n"));
                sb.append(m1099((Map) map));
                return AbstractC0829.m1456("SA==\n", "NRoSxb16OhI=\n", sb);
            }
            if (obj instanceof SharedPreferences) {
                StringBuilder sb2 = new StringBuilder();
                sb2.append(StringFog.decrypt("HZwekj3r+mdEhGOiOev7cQLuM5Q37/txCN0kgnOmq0sC3zWQc7A=\n", "Zr5B8VGKiRQ=\n"));
                sb2.append(m1099(((SharedPreferences) obj).getAll()));
                return AbstractC0829.m1456("LQ==\n", "UGF8lfoIp/c=\n", sb2);
            }
            if (AbstractC0991.m1586(obj.getClass(), this.f1063)) {
                if (this.f1059 <= this.f1062 && !this.f1061.contains(obj)) {
                    this.f1061.add(obj);
                    this.f1059++;
                    StringBuilder sb3 = new StringBuilder(StringFog.decrypt("uHVvjZzFH8LhbQ==\n", "w1cw7vCkbLE=\n"));
                    sb3.append(m1096(obj.getClass().getSimpleName()));
                    try {
                        String string = obj.toString();
                        if (!TextUtils.isEmpty(string)) {
                            String hexString = Integer.toHexString(obj.hashCode());
                            if (!string.equals(obj.getClass().getName() + StringFog.decrypt("+A==\n", "uDCl2tuKAF0=\n") + hexString)) {
                                if (!string.equals(obj.getClass().getSimpleName() + StringFog.decrypt("6Q==\n", "qWKj6TpFc7M=\n") + hexString)) {
                                    str2 = string;
                                }
                            }
                        }
                    } catch (Throwable unused) {
                    }
                    if (!TextUtils.isEmpty(str2)) {
                        sb3.append(StringFog.decrypt("h+rgzGdLDyPCptiaMg==\n", "q8i/uAgYe1E=\n"));
                        if (str2.length() > 30) {
                            if (this.f1060.contains(str2)) {
                                strM1096 = StringFog.decrypt("83InAS2T2A==\n", "0U5DdF2t+jI=\n");
                                sb3.append(strM1096);
                            } else {
                                this.f1060.add(str2);
                                strM1096 = m1096(str2);
                                sb3.append(strM1096);
                            }
                        } else {
                            strM1096 = m1096(str2);
                            sb3.append(strM1096);
                        }
                    }
                    try {
                        ArrayList arrayList3 = new ArrayList();
                        for (Class<?> superclass = obj.getClass(); superclass != null && AbstractC0991.m1586(superclass, this.f1063); superclass = superclass.getSuperclass()) {
                            arrayList3.addAll(Arrays.asList(superclass.getDeclaredFields()));
                        }
                        Field[] fieldArr = (Field[]) arrayList3.toArray(new Field[0]);
                        int length = fieldArr.length;
                        while (i < length) {
                            Field field = fieldArr[i];
                            if (Modifier.isStatic(field.getModifiers())) {
                                Class<?> type = field.getType();
                                if (!type.isPrimitive() && type != String.class) {
                                }
                                i++;
                            }
                            field.setAccessible(true);
                            Object obj2 = field.get(obj);
                            if (obj2 instanceof WeakReference) {
                                obj2 = ((WeakReference) obj2).get();
                            } else if (obj2 instanceof AtomicReference) {
                                obj2 = ((AtomicReference) obj2).get();
                            }
                            if (!m1095(obj2)) {
                                sb3.append(StringFog.decrypt("OeQ=\n", "FcbFYiOdBJA=\n"));
                                sb3.append(field.getName());
                                sb3.append(StringFog.decrypt("40M=\n", "wXmF0lqhmpc=\n"));
                                sb3.append(m1097(obj2));
                            }
                            i++;
                        }
                    } catch (Throwable unused2) {
                    }
                    this.f1059--;
                    sb3.append(StringFog.decrypt("aA==\n", "FUz5DeJCL4g=\n"));
                    return sb3.toString();
                }
                return m1096(obj.getClass().getSimpleName() + StringFog.decrypt("sA==\n", "8J6h+8Q7LGE=\n") + Integer.toHexString(obj.hashCode()));
            }
            return m1096(obj.getClass().getSimpleName() + StringFog.decrypt("hA==\n", "xEVdOyPtLMU=\n") + Integer.toHexString(obj.hashCode()));
        }
        return String.valueOf(obj);
    }
}
