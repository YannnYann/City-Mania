package io.bidmachine.analytics.internal.D;

import com.explorestack.protobuf.BytesValue;
import io.bidmachine.analytics.internal.C.a;
import io.bidmachine.analytics.internal.g.C4118e;
import io.bidmachine.analytics.internal.t.a;
import io.bidmachine.protobuf.sdk.OSLog;
import java.io.BufferedReader;
import java.io.FileNotFoundException;
import java.io.InputStream;
import java.io.InputStreamReader;
import java.util.ArrayList;
import java.util.Iterator;
import kotlin.Unit;
import kotlin.io.CloseableKt;
import kotlin.io.TextStreamsKt;
import kotlin.text.Charsets;

/* JADX INFO: loaded from: classes4.dex */
public final class d implements a.InterfaceC1110a {
    private final io.bidmachine.analytics.internal.t.e a;
    private final io.bidmachine.analytics.internal.t.a b = new io.bidmachine.analytics.internal.t.a();

    public d(io.bidmachine.analytics.internal.t.e eVar) {
        this.a = eVar;
    }

    @Override // io.bidmachine.analytics.internal.C.a.InterfaceC1110a
    public BytesValue a(C4118e.a aVar) throws FileNotFoundException {
        if (!(aVar instanceof C4118e.a.C1122a)) {
            throw new IllegalStateException("Check failed.");
        }
        ArrayList arrayList = new ArrayList();
        InputStream inputStreamA = this.a.a(((C4118e.a.C1122a) aVar).a());
        if (inputStreamA != null) {
            BufferedReader bufferedReader = new BufferedReader(new InputStreamReader(inputStreamA, Charsets.UTF_8), 8192);
            try {
                Iterator<String> it = TextStreamsKt.lineSequence(bufferedReader).iterator();
                while (it.hasNext()) {
                    a.b bVarA = this.b.a(it.next());
                    if (bVarA != null) {
                        arrayList.add(OSLog.Record.newBuilder().setTimestamp(io.bidmachine.analytics.internal.I.d.a(bVarA.d())).setTag(bVarA.c()).setLevel(bVarA.a()).setMessage(bVarA.b()).setSource("").build());
                    }
                }
                Unit unit = Unit.INSTANCE;
                CloseableKt.closeFinally(bufferedReader, null);
            } finally {
            }
        }
        if (arrayList.isEmpty()) {
            throw new FileNotFoundException("No records found");
        }
        return BytesValue.newBuilder().setValue(OSLog.newBuilder().addAllRecords(arrayList).build().toByteString()).build();
    }
}
