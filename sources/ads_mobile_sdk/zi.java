package ads_mobile_sdk;

import androidx.datastore.core.Serializer;
import java.io.IOException;
import java.io.InputStream;
import java.io.OutputStream;
import kotlin.Unit;
import kotlin.coroutines.Continuation;
import kotlin.jvm.internal.Intrinsics;

/* JADX INFO: loaded from: classes.dex */
public final class zi implements Serializer {
    public static final zi a = new zi();
    public static final ri b = ri.v();

    @Override // androidx.datastore.core.Serializer
    public final Object getDefaultValue() {
        return b;
    }

    @Override // androidx.datastore.core.Serializer
    public final Object writeTo(Object obj, OutputStream outputStream, Continuation continuation) throws IOException {
        ((ri) obj).writeTo(outputStream);
        return Unit.INSTANCE;
    }

    @Override // androidx.datastore.core.Serializer
    public final Object readFrom(InputStream inputStream, Continuation continuation) {
        try {
            ri riVarA = ri.a(inputStream);
            Intrinsics.checkNotNull(riVarA);
            return riVarA;
        } catch (Exception unused) {
            ri riVar = b;
            Intrinsics.checkNotNull(riVar);
            return riVar;
        }
    }
}
