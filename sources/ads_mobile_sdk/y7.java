package ads_mobile_sdk;

import androidx.datastore.core.Serializer;
import java.io.IOException;
import java.io.InputStream;
import java.io.OutputStream;
import kotlin.Unit;
import kotlin.coroutines.Continuation;
import kotlin.jvm.internal.Intrinsics;

/* JADX INFO: loaded from: classes.dex */
public final class y7 implements Serializer {
    public static final y7 a = new y7();
    public static final u7 b = u7.v();

    @Override // androidx.datastore.core.Serializer
    public final Object getDefaultValue() {
        return b;
    }

    @Override // androidx.datastore.core.Serializer
    public final Object writeTo(Object obj, OutputStream outputStream, Continuation continuation) throws IOException {
        ((u7) obj).writeTo(outputStream);
        return Unit.INSTANCE;
    }

    @Override // androidx.datastore.core.Serializer
    public final Object readFrom(InputStream inputStream, Continuation continuation) {
        try {
            u7 u7VarA = u7.a(inputStream);
            Intrinsics.checkNotNull(u7VarA);
            return u7VarA;
        } catch (Exception unused) {
            u7 u7Var = b;
            Intrinsics.checkNotNull(u7Var);
            return u7Var;
        }
    }
}
