package kotlinx.serialization.json.internal;

import com.vungle.ads.internal.protos.Sdk;
import kotlin.Result;
import kotlin.ResultKt;
import kotlin.Unit;
import kotlin.collections.ArrayDeque;
import kotlin.jvm.internal.Intrinsics;
import kotlin.text.StringsKt__StringNumberConversionsKt;

/* JADX INFO: compiled from: CharArrayPool.kt */
/* JADX INFO: loaded from: classes5.dex */
public final class CharArrayPool {
    public static final int MAX_CHARS_IN_POOL;
    public static int charsTotal;
    public static final CharArrayPool INSTANCE = new CharArrayPool();
    public static final ArrayDeque<char[]> arrays = new ArrayDeque<>();

    static {
        Object objM2760constructorimpl;
        try {
            Result.Companion companion = Result.Companion;
            String property = System.getProperty("kotlinx.serialization.json.pool.size");
            Intrinsics.checkNotNullExpressionValue(property, "getProperty(\"kotlinx.ser…lization.json.pool.size\")");
            objM2760constructorimpl = Result.m2760constructorimpl(StringsKt__StringNumberConversionsKt.toIntOrNull(property));
        } catch (Throwable th) {
            Result.Companion companion2 = Result.Companion;
            objM2760constructorimpl = Result.m2760constructorimpl(ResultKt.createFailure(th));
        }
        if (Result.m2765isFailureimpl(objM2760constructorimpl)) {
            objM2760constructorimpl = null;
        }
        Integer num = (Integer) objM2760constructorimpl;
        MAX_CHARS_IN_POOL = num != null ? num.intValue() : 1048576;
    }

    public final char[] take() {
        char[] cArrRemoveLastOrNull;
        synchronized (this) {
            cArrRemoveLastOrNull = arrays.removeLastOrNull();
            if (cArrRemoveLastOrNull != null) {
                charsTotal -= cArrRemoveLastOrNull.length;
            } else {
                cArrRemoveLastOrNull = null;
            }
        }
        return cArrRemoveLastOrNull == null ? new char[Sdk.SDKError.Reason.INVALID_TPAT_KEY_VALUE] : cArrRemoveLastOrNull;
    }

    public final void release(char[] array) {
        Intrinsics.checkNotNullParameter(array, "array");
        synchronized (this) {
            try {
                int i = charsTotal;
                if (array.length + i < MAX_CHARS_IN_POOL) {
                    charsTotal = i + array.length;
                    arrays.addLast(array);
                }
                Unit unit = Unit.INSTANCE;
            } catch (Throwable th) {
                throw th;
            }
        }
    }
}
