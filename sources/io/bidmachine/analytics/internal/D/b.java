package io.bidmachine.analytics.internal.D;

import com.explorestack.protobuf.BytesValue;
import io.bidmachine.analytics.internal.C.a;
import io.bidmachine.analytics.internal.I.g;
import io.bidmachine.analytics.internal.g.C4115b;
import io.bidmachine.analytics.internal.g.C4118e;
import java.util.List;

/* JADX INFO: loaded from: classes4.dex */
public final class b implements a.InterfaceC1110a {
    private final io.bidmachine.analytics.internal.s.b a;

    public b(io.bidmachine.analytics.internal.s.b bVar) {
        this.a = bVar;
    }

    @Override // io.bidmachine.analytics.internal.C.a.InterfaceC1110a
    public BytesValue a(C4118e.a aVar) throws C4115b {
        List listB = this.a.b();
        if (listB == null) {
            throw new C4115b("List is null");
        }
        if (listB.isEmpty()) {
            throw new C4115b("List is empty");
        }
        if (listB.size() >= this.a.a()) {
            return io.bidmachine.analytics.internal.I.d.b(g.a(listB).toString());
        }
        throw new C4115b("List size less then limit for send");
    }
}
