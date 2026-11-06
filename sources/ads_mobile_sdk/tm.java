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
public final class tm implements Serializer {
    public static final tm a = new tm();
    public static final jm b = jm.E();

    @Override // androidx.datastore.core.Serializer
    public final Object getDefaultValue() {
        return b;
    }

    @Override // androidx.datastore.core.Serializer
    public final Object writeTo(Object obj, OutputStream outputStream, Continuation continuation) throws IOException {
        ((jm) obj).writeTo(outputStream);
        return Unit.INSTANCE;
    }

    @Override // androidx.datastore.core.Serializer
    public final Object readFrom(InputStream inputStream, Continuation continuation) {
        try {
            jm jmVarA = jm.a(inputStream);
            Intrinsics.checkNotNull(jmVarA);
            return jmVarA;
        } catch (Exception e) {
            Splitter splitter = f01.a;
            f01.c("Stored data has been corrupted: " + e, null);
            jm jmVar = b;
            Intrinsics.checkNotNull(jmVar);
            return jmVar;
        }
    }
}
