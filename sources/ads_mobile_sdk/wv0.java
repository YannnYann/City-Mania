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
public final class wv0 implements Serializer {
    public static final wv0 a = new wv0();
    public static final vv0 b = vv0.x();

    @Override // androidx.datastore.core.Serializer
    public final Object getDefaultValue() {
        return b;
    }

    @Override // androidx.datastore.core.Serializer
    public final Object writeTo(Object obj, OutputStream outputStream, Continuation continuation) throws IOException {
        ((vv0) obj).writeTo(outputStream);
        return Unit.INSTANCE;
    }

    @Override // androidx.datastore.core.Serializer
    public final Object readFrom(InputStream inputStream, Continuation continuation) {
        try {
            vv0 vv0VarA = vv0.a(inputStream);
            Intrinsics.checkNotNull(vv0VarA);
            return vv0VarA;
        } catch (Exception e) {
            Splitter splitter = f01.a;
            f01.c("Stored data has been corrupted: " + e, null);
            vv0 vv0Var = b;
            Intrinsics.checkNotNull(vv0Var);
            return vv0Var;
        }
    }
}
