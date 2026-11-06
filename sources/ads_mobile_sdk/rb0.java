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
public final class rb0 implements Serializer {
    public static final rb0 a = new rb0();
    public static final qb0 b = qb0.w();

    @Override // androidx.datastore.core.Serializer
    public final Object getDefaultValue() {
        return b;
    }

    @Override // androidx.datastore.core.Serializer
    public final Object writeTo(Object obj, OutputStream outputStream, Continuation continuation) throws IOException {
        ((qb0) obj).writeTo(outputStream);
        return Unit.INSTANCE;
    }

    @Override // androidx.datastore.core.Serializer
    public final Object readFrom(InputStream inputStream, Continuation continuation) {
        try {
            qb0 qb0VarA = qb0.a(inputStream);
            Intrinsics.checkNotNull(qb0VarA);
            return qb0VarA;
        } catch (Exception e) {
            Splitter splitter = f01.a;
            f01.c("Stored CSRB data has been corrupted: " + e, null);
            qb0 qb0Var = b;
            Intrinsics.checkNotNull(qb0Var);
            return qb0Var;
        }
    }
}
