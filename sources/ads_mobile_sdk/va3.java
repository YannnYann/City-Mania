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
public final class va3 implements Serializer {
    public static final va3 a = new va3();
    public static final ua3 b = ua3.w();

    @Override // androidx.datastore.core.Serializer
    public final Object getDefaultValue() {
        return b;
    }

    @Override // androidx.datastore.core.Serializer
    public final Object writeTo(Object obj, OutputStream outputStream, Continuation continuation) throws IOException {
        ((ua3) obj).writeTo(outputStream);
        return Unit.INSTANCE;
    }

    @Override // androidx.datastore.core.Serializer
    public final Object readFrom(InputStream inputStream, Continuation continuation) {
        try {
            ua3 ua3VarA = ua3.a(inputStream);
            Intrinsics.checkNotNull(ua3VarA);
            return ua3VarA;
        } catch (Exception e) {
            Splitter splitter = f01.a;
            f01.c("Stored data has been corrupted: " + e, null);
            ua3 ua3Var = b;
            Intrinsics.checkNotNull(ua3Var);
            return ua3Var;
        }
    }
}
