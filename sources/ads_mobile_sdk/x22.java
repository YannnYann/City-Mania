package ads_mobile_sdk;

import androidx.datastore.core.Serializer;
import com.google.common.base.Splitter;
import java.io.IOException;
import java.io.InputStream;
import java.io.OutputStream;
import kotlin.Unit;
import kotlin.coroutines.Continuation;
import kotlin.jvm.internal.Intrinsics;

/* JADX INFO: loaded from: classes.dex */
public final class x22 implements Serializer {
    public static final x22 a = new x22();
    public static final k22 b = k22.x();

    @Override // androidx.datastore.core.Serializer
    public final Object getDefaultValue() {
        return b;
    }

    @Override // androidx.datastore.core.Serializer
    public final Object writeTo(Object obj, OutputStream outputStream, Continuation continuation) throws IOException {
        ((k22) obj).writeTo(outputStream);
        return Unit.INSTANCE;
    }

    @Override // androidx.datastore.core.Serializer
    public final Object readFrom(InputStream inputStream, Continuation continuation) {
        try {
            k22 k22VarA = k22.a(inputStream);
            Intrinsics.checkNotNull(k22VarA);
            return k22VarA;
        } catch (Exception e) {
            Splitter splitter = f01.a;
            f01.c("Stored data has been corrupted: " + e, null);
            k22 k22Var = b;
            Intrinsics.checkNotNull(k22Var);
            return k22Var;
        }
    }
}
