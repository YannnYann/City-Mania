package io.bidmachine.analytics.internal.w;

import io.bidmachine.analytics.ReaderConfig;
import java.io.File;
import java.io.FileNotFoundException;
import kotlin.coroutines.Continuation;

/* JADX INFO: loaded from: classes4.dex */
public abstract class a extends io.bidmachine.analytics.internal.r.a {
    public abstract File a(ReaderConfig.Rule rule);

    @Override // io.bidmachine.analytics.internal.r.a
    public Object a(ReaderConfig.Rule rule, Continuation continuation) {
        return a(this, rule, continuation);
    }

    public static /* synthetic */ Object a(a aVar, ReaderConfig.Rule rule, Continuation continuation) throws FileNotFoundException {
        File fileA = aVar.a(rule);
        if (!fileA.exists()) {
            throw new FileNotFoundException();
        }
        StringBuilder sb = new StringBuilder();
        sb.append(fileA.lastModified());
        sb.append('_');
        sb.append(fileA.length());
        return sb.toString();
    }
}
