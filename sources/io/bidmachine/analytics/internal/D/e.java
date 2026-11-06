package io.bidmachine.analytics.internal.D;

import com.explorestack.protobuf.ByteString;
import com.explorestack.protobuf.BytesValue;
import io.bidmachine.analytics.internal.C.a;
import io.bidmachine.analytics.internal.g.C4118e;
import io.bidmachine.analytics.internal.u.g;
import java.io.ByteArrayInputStream;
import java.io.FileNotFoundException;
import kotlin.text.Charsets;

/* JADX INFO: loaded from: classes4.dex */
public final class e implements a.InterfaceC1110a {
    private final g a;

    public e(g gVar) {
        this.a = gVar;
    }

    @Override // io.bidmachine.analytics.internal.C.a.InterfaceC1110a
    public BytesValue a(C4118e.a aVar) throws FileNotFoundException {
        io.bidmachine.analytics.internal.u.a aVarA = this.a.a();
        if (aVarA == null) {
            throw new FileNotFoundException("No data received yet");
        }
        if (aVarA.f()) {
            throw new FileNotFoundException("Empty data");
        }
        return BytesValue.newBuilder().setValue(ByteString.readFrom(new ByteArrayInputStream(aVarA.toString().getBytes(Charsets.UTF_8)))).build();
    }
}
