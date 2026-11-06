package ads_mobile_sdk;

import androidx.datastore.core.Serializer;
import java.io.IOException;
import java.io.InputStream;
import java.io.OutputStream;
import kotlin.Unit;
import kotlin.coroutines.Continuation;
import kotlin.jvm.internal.Intrinsics;

/* JADX INFO: loaded from: classes.dex */
public final class ug1 implements Serializer {
    public static final ug1 a = new ug1();
    public static final og1 b = og1.w();

    @Override // androidx.datastore.core.Serializer
    public final Object getDefaultValue() {
        return b;
    }

    @Override // androidx.datastore.core.Serializer
    public final Object writeTo(Object obj, OutputStream outputStream, Continuation continuation) throws IOException {
        ((og1) obj).writeTo(outputStream);
        return Unit.INSTANCE;
    }

    @Override // androidx.datastore.core.Serializer
    public final Object readFrom(InputStream inputStream, Continuation continuation) {
        try {
            og1 og1VarA = og1.a(inputStream);
            Intrinsics.checkNotNull(og1VarA);
            return og1VarA;
        } catch (Exception unused) {
            f01.c("Stored data has been corrupted", null);
            og1 og1Var = b;
            Intrinsics.checkNotNull(og1Var);
            return og1Var;
        }
    }
}
