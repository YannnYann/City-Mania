package io.bidmachine.analytics.internal.I;

import android.content.Context;
import android.os.Bundle;
import android.util.Base64;
import com.ironsource.C3522b4;
import j$.util.DesugarTimeZone;
import java.io.Closeable;
import java.io.Flushable;
import java.text.SimpleDateFormat;
import java.util.ArrayList;
import java.util.Date;
import java.util.Iterator;
import java.util.LinkedHashMap;
import java.util.List;
import java.util.Locale;
import java.util.Map;
import kotlin.Lazy;
import kotlin.LazyKt__LazyJVMKt;
import kotlin.Result;
import kotlin.ResultKt;
import kotlin.Unit;
import kotlin.collections.IntIterator;
import kotlin.jvm.functions.Function0;
import kotlin.jvm.internal.Intrinsics;
import kotlin.jvm.internal.Lambda;
import kotlin.ranges.IntRange;
import kotlin.ranges.RangesKt___RangesKt;
import kotlin.sequences.SequencesKt__SequencesKt;
import kotlin.text.Charsets;
import kotlin.text.StringsKt__StringsKt;
import kotlin.text.StringsKt___StringsKt;
import org.json.JSONArray;
import org.json.JSONObject;

/* JADX INFO: loaded from: classes4.dex */
public abstract class g {
    private static final Lazy a = LazyKt__LazyJVMKt.lazy(a.a);

    public static final class a extends Lambda implements Function0 {
        public static final a a = new a();

        public a() {
            super(0);
        }

        @Override // kotlin.jvm.functions.Function0
        /* JADX INFO: renamed from: a, reason: merged with bridge method [inline-methods] */
        public final SimpleDateFormat invoke() {
            SimpleDateFormat simpleDateFormat = new SimpleDateFormat("yyyy-MM-dd HH:mm:ss", Locale.ROOT);
            simpleDateFormat.setTimeZone(DesugarTimeZone.getTimeZone("UTC"));
            return simpleDateFormat;
        }
    }

    private static final SimpleDateFormat a() {
        return (SimpleDateFormat) a.getValue();
    }

    public static final byte[] b(byte[] bArr, String str) {
        return a(bArr, str.getBytes(Charsets.UTF_8));
    }

    public static final String c(String str) {
        return Base64.encodeToString(str.getBytes(Charsets.UTF_8), 2);
    }

    public static final String d(String str) {
        return e(c(str));
    }

    public static final String e(String str) {
        if (str.length() == 0) {
            return str;
        }
        int iIndexOf$default = StringsKt__StringsKt.indexOf$default((CharSequence) str, C3522b4.j.b, 0, false, 6, (Object) null);
        if (iIndexOf$default == -1) {
            return StringsKt___StringsKt.reversed(str).toString();
        }
        return StringsKt___StringsKt.reversed(str.substring(0, iIndexOf$default)).toString() + str.substring(iIndexOf$default);
    }

    public static final Object a(Closeable closeable) {
        try {
            Result.Companion companion = Result.Companion;
            closeable.close();
            return Result.m2760constructorimpl(Unit.INSTANCE);
        } catch (Throwable th) {
            Result.Companion companion2 = Result.Companion;
            return Result.m2760constructorimpl(ResultKt.createFailure(th));
        }
    }

    public static final String b(String str) {
        return a(e(str));
    }

    public static final Object a(Flushable flushable) {
        try {
            Result.Companion companion = Result.Companion;
            flushable.flush();
            return Result.m2760constructorimpl(Unit.INSTANCE);
        } catch (Throwable th) {
            Result.Companion companion2 = Result.Companion;
            return Result.m2760constructorimpl(ResultKt.createFailure(th));
        }
    }

    public static final JSONArray a(List list) {
        JSONArray jSONArray = new JSONArray();
        for (Object obj : list) {
            if (obj instanceof List) {
                jSONArray.put(a((List) obj));
            } else if (obj instanceof Map) {
                jSONArray.put(a((Map) obj));
            } else {
                jSONArray.put(obj);
            }
        }
        return jSONArray;
    }

    public static final JSONObject a(Map map) {
        JSONObject jSONObject = new JSONObject();
        for (Map.Entry entry : map.entrySet()) {
            Object key = entry.getKey();
            Object value = entry.getValue();
            try {
                Result.Companion companion = Result.Companion;
                String strValueOf = String.valueOf(key);
                if (strValueOf.length() != 0 && value != null) {
                    if (value instanceof List) {
                        value = a((List) value);
                    } else if (value instanceof Map) {
                        value = a((Map) value);
                    }
                    jSONObject.put(strValueOf, value);
                }
                Result.m2760constructorimpl(Unit.INSTANCE);
            } catch (Throwable th) {
                Result.Companion companion2 = Result.Companion;
                Result.m2760constructorimpl(ResultKt.createFailure(th));
            }
        }
        return jSONObject;
    }

    public static final Map a(JSONObject jSONObject) {
        LinkedHashMap linkedHashMap = new LinkedHashMap();
        for (String str : SequencesKt__SequencesKt.asSequence(jSONObject.keys())) {
            Object objA = a(jSONObject.get(str));
            if (objA != null) {
                linkedHashMap.put(str, objA);
            }
        }
        return linkedHashMap;
    }

    public static final List a(JSONArray jSONArray) {
        IntRange intRangeUntil = RangesKt___RangesKt.until(0, jSONArray.length());
        ArrayList arrayList = new ArrayList();
        Iterator<Integer> it = intRangeUntil.iterator();
        while (it.hasNext()) {
            Object objA = a(jSONArray.get(((IntIterator) it).nextInt()));
            if (objA != null) {
                arrayList.add(objA);
            }
        }
        return arrayList;
    }

    private static final Object a(Object obj) {
        if (Intrinsics.areEqual(obj, JSONObject.NULL)) {
            return null;
        }
        return obj instanceof JSONObject ? a((JSONObject) obj) : obj instanceof JSONArray ? a((JSONArray) obj) : obj;
    }

    public static final Map a(Bundle bundle) {
        LinkedHashMap linkedHashMap = new LinkedHashMap();
        for (String str : bundle.keySet()) {
            Object string = bundle.get(str);
            if (!(string instanceof Boolean)) {
                if (string instanceof Byte) {
                    string = Integer.valueOf(((Number) string).byteValue());
                } else if (!(string instanceof Character) && !(string instanceof Double) && !(string instanceof Float) && !(string instanceof Integer) && !(string instanceof Long)) {
                    if (string instanceof Short) {
                        string = Integer.valueOf(((Number) string).shortValue());
                    } else if (!(string instanceof String)) {
                        if (string instanceof Bundle) {
                            string = a((Bundle) string);
                        } else {
                            string = (!(string instanceof CharSequence) && string == null) ? null : string.toString();
                        }
                    }
                }
            }
            if (string != null) {
                linkedHashMap.put(str, string);
            }
        }
        return linkedHashMap;
    }

    public static final boolean a(Context context) {
        return (context.getApplicationInfo().flags & 2) != 0;
    }

    public static final byte[] a(byte[] bArr, String str) {
        return a(bArr, str.getBytes(Charsets.UTF_8));
    }

    private static final byte[] a(byte[] bArr, byte[] bArr2) {
        byte[] bArr3 = new byte[bArr.length];
        int length = bArr.length;
        for (int i = 0; i < length; i++) {
            bArr3[i] = (byte) (bArr[i] ^ bArr2[i % bArr2.length]);
        }
        return bArr3;
    }

    public static final String a(String str) {
        return new String(Base64.decode(str, 2), Charsets.UTF_8);
    }

    public static final String a(Throwable th) {
        String message = th.getMessage();
        if (message != null) {
            String str = th.getClass().getName() + ": " + message;
            if (str != null) {
                return str;
            }
        }
        return th.getClass().getName();
    }

    public static final String a(Date date) {
        return a().format(date);
    }
}
