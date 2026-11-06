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
public final class ee3 implements Serializer {
    public static final ee3 a = new ee3();
    public static final od3 b = od3.v();

    @Override // androidx.datastore.core.Serializer
    public final Object getDefaultValue() {
        return b;
    }

    @Override // androidx.datastore.core.Serializer
    public final Object writeTo(Object obj, OutputStream outputStream, Continuation continuation) throws IOException {
        ((od3) obj).writeTo(outputStream);
        return Unit.INSTANCE;
    }

    @Override // androidx.datastore.core.Serializer
    public final Object readFrom(InputStream inputStream, Continuation continuation) {
        try {
            od3 od3VarA = od3.a(inputStream);
            Intrinsics.checkNotNull(od3VarA);
            return od3VarA;
        } catch (Exception e) {
            Splitter splitter = f01.a;
            f01.c("Stored shared settings data has been corrupted: " + e, null);
            od3 od3Var = b;
            Intrinsics.checkNotNull(od3Var);
            return od3Var;
        }
    }
}
