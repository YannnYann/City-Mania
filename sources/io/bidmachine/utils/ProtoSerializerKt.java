package io.bidmachine.utils;

import java.nio.ByteBuffer;
import java.nio.ByteOrder;
import java.nio.charset.Charset;
import java.nio.charset.StandardCharsets;
import java.util.Iterator;
import java.util.Map;
import kotlin.collections.ArraysKt___ArraysKt;
import kotlin.jvm.internal.Intrinsics;
import org.json.JSONArray;
import org.json.JSONException;
import org.json.JSONObject;

/* JADX INFO: loaded from: classes5.dex */
public final class ProtoSerializerKt {
    public static final ByteBuffer createBigEndianBuffer(int i) {
        ByteBuffer byteBufferOrder = ByteBuffer.allocate(i).order(ByteOrder.BIG_ENDIAN);
        Intrinsics.checkNotNullExpressionValue(byteBufferOrder, "allocate(size).order(ByteOrder.BIG_ENDIAN)");
        return byteBufferOrder;
    }

    public static final byte[] protoSerialize(String str) {
        Intrinsics.checkNotNullParameter(str, "<this>");
        Charset UTF_8 = StandardCharsets.UTF_8;
        Intrinsics.checkNotNullExpressionValue(UTF_8, "UTF_8");
        byte[] bytes = str.getBytes(UTF_8);
        Intrinsics.checkNotNullExpressionValue(bytes, "this as java.lang.String).getBytes(charset)");
        return bytes;
    }

    public static final Object toJsonValue(Object obj) throws JSONException {
        if (obj == null) {
            Object NULL = JSONObject.NULL;
            Intrinsics.checkNotNullExpressionValue(NULL, "NULL");
            return NULL;
        }
        if (!(obj instanceof JSONObject ? true : obj instanceof JSONArray)) {
            if (obj instanceof Map) {
                JSONObject jSONObject = new JSONObject();
                for (Map.Entry entry : ((Map) obj).entrySet()) {
                    Object key = entry.getKey();
                    Object value = entry.getValue();
                    if (key instanceof String) {
                        jSONObject.put((String) key, toJsonValue(value));
                    }
                }
                return jSONObject;
            }
            if (obj instanceof Iterable) {
                JSONArray jSONArray = new JSONArray();
                Iterator it = ((Iterable) obj).iterator();
                while (it.hasNext()) {
                    jSONArray.put(toJsonValue(it.next()));
                }
                return jSONArray;
            }
            if (obj instanceof Object[]) {
                return toJsonValue(ArraysKt___ArraysKt.asIterable((Object[]) obj));
            }
            if (obj instanceof Enum) {
                return ((Enum) obj).name();
            }
            if (!(obj instanceof Boolean ? true : obj instanceof Number ? true : obj instanceof String)) {
                Object objWrap = JSONObject.wrap(obj);
                if (objWrap == null) {
                    objWrap = JSONObject.NULL;
                }
                Intrinsics.checkNotNullExpressionValue(objWrap, "JSONObject.wrap(this) ?: JSONObject.NULL");
                return objWrap;
            }
        }
        return obj;
    }

    public static final byte[] protoSerialize(Iterable<?> iterable) {
        Intrinsics.checkNotNullParameter(iterable, "<this>");
        String string = toJsonValue(iterable).toString();
        Charset UTF_8 = StandardCharsets.UTF_8;
        Intrinsics.checkNotNullExpressionValue(UTF_8, "UTF_8");
        byte[] bytes = string.getBytes(UTF_8);
        Intrinsics.checkNotNullExpressionValue(bytes, "this as java.lang.String).getBytes(charset)");
        return bytes;
    }

    public static final byte[] protoSerialize(float f) {
        byte[] bArrArray = createBigEndianBuffer(4).putFloat(f).array();
        Intrinsics.checkNotNullExpressionValue(bArrArray, "createBigEndianBuffer(Fl…S).putFloat(this).array()");
        return bArrArray;
    }

    public static final byte[] protoSerialize(int i) {
        byte[] bArrArray = createBigEndianBuffer(4).putInt(i).array();
        Intrinsics.checkNotNullExpressionValue(bArrArray, "createBigEndianBuffer(In…TES).putInt(this).array()");
        return bArrArray;
    }

    public static final byte[] protoSerialize(long j) {
        byte[] bArrArray = createBigEndianBuffer(8).putLong(j).array();
        Intrinsics.checkNotNullExpressionValue(bArrArray, "createBigEndianBuffer(Lo…ES).putLong(this).array()");
        return bArrArray;
    }

    public static final byte[] protoSerialize(boolean z) {
        return protoSerialize(z ? 1 : 0);
    }
}
