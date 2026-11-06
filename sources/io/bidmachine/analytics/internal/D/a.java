package io.bidmachine.analytics.internal.D;

import com.explorestack.protobuf.ByteString;
import com.explorestack.protobuf.BytesValue;
import io.bidmachine.analytics.internal.C.a;
import io.bidmachine.analytics.internal.I.g;
import io.bidmachine.analytics.internal.g.C4118e;
import java.io.FileInputStream;
import kotlin.io.CloseableKt;

/* JADX INFO: loaded from: classes4.dex */
public final class a implements a.InterfaceC1110a {
    @Override // io.bidmachine.analytics.internal.C.a.InterfaceC1110a
    public BytesValue a(C4118e.a aVar) {
        if (!(aVar instanceof C4118e.a.C1122a)) {
            throw new IllegalStateException("Check failed.");
        }
        BytesValue.Builder builderNewBuilder = BytesValue.newBuilder();
        FileInputStream fileInputStream = new FileInputStream(g.b(((C4118e.a.C1122a) aVar).a()));
        try {
            ByteString from = ByteString.readFrom(fileInputStream);
            CloseableKt.closeFinally(fileInputStream, null);
            return builderNewBuilder.setValue(from).build();
        } finally {
        }
    }
}
