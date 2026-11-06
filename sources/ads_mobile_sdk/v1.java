package ads_mobile_sdk;

import androidx.datastore.core.Serializer;
import com.google.common.base.Splitter;
import java.io.IOException;
import java.io.InputStream;
import java.io.OutputStream;
import java.util.WeakHashMap;
import java.util.concurrent.CancellationException;
import kotlin.Unit;
import kotlin.collections.CollectionsKt__CollectionsKt;
import kotlin.coroutines.Continuation;
import kotlin.io.CloseableKt;
import kotlin.jvm.internal.Intrinsics;
import kotlinx.coroutines.TimeoutCancellationException;

/* JADX INFO: loaded from: classes.dex */
public final class v1 implements Serializer {
    public static final v1 a = new v1();
    public static final o1 b = o1.x();

    @Override // androidx.datastore.core.Serializer
    public final Object getDefaultValue() {
        return b;
    }

    @Override // androidx.datastore.core.Serializer
    public final Object writeTo(Object obj, OutputStream outputStream, Continuation continuation) throws IOException {
        ((o1) obj).writeTo(outputStream);
        return Unit.INSTANCE;
    }

    @Override // androidx.datastore.core.Serializer
    public final Object readFrom(InputStream inputStream, Continuation continuation) {
        o1 o1VarA;
        s11 s11Var = s11.CUI_NAME_PERSISTENT_CACHE_METADATA_READ;
        WeakHashMap weakHashMap = hs3.a;
        rr3 rr3VarA = hs3.a(s11Var, CollectionsKt__CollectionsKt.emptyList(), true);
        try {
            try {
                o1VarA = o1.a(inputStream);
            } catch (Exception e) {
                xs3.a("Stored data has been corrupted: " + e, null, 6);
                Splitter splitter = f01.a;
                f01.c("Stored data has been corrupted: " + e, null);
                o1VarA = b;
            }
            CloseableKt.closeFinally(rr3VarA, null);
            Intrinsics.checkNotNull(o1VarA);
            return o1VarA;
        } catch (Throwable th) {
            try {
                rr3VarA.b(th);
                if (!(th instanceof v24)) {
                    if (!(th instanceof TimeoutCancellationException) && !(th instanceof CancellationException)) {
                        rr3VarA.a(th);
                    }
                    if (!(th instanceof TimeoutCancellationException)) {
                        if (!(th instanceof CancellationException)) {
                            if (th instanceof w01) {
                                throw th;
                            }
                            throw new b01(th);
                        }
                        throw new wz0(th);
                    }
                    throw new i21(th);
                }
                throw th;
            } finally {
            }
        }
    }
}
