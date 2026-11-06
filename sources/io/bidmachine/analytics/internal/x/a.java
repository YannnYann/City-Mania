package io.bidmachine.analytics.internal.x;

import android.content.Context;
import io.bidmachine.analytics.ReaderConfig;
import io.bidmachine.analytics.internal.I.g;
import java.io.File;
import kotlin.jvm.internal.DefaultConstructorMarker;

/* JADX INFO: loaded from: classes4.dex */
public final class a extends io.bidmachine.analytics.internal.w.a {
    public static final C1156a h = new C1156a(null);
    private final String g = "aexs";

    /* JADX INFO: renamed from: io.bidmachine.analytics.internal.x.a$a, reason: collision with other inner class name */
    public static final class C1156a {
        public /* synthetic */ C1156a(DefaultConstructorMarker defaultConstructorMarker) {
            this();
        }

        private C1156a() {
        }
    }

    @Override // io.bidmachine.analytics.internal.h.AbstractC4124d
    public String a() {
        return this.g;
    }

    @Override // io.bidmachine.analytics.internal.h.AbstractC4124d
    public void d(Context context) {
    }

    @Override // io.bidmachine.analytics.internal.w.a
    public File a(ReaderConfig.Rule rule) {
        if (rule instanceof ReaderConfig.Rule.GeneralRule) {
            return new File(g.b(((ReaderConfig.Rule.GeneralRule) rule).getPath()));
        }
        throw new IllegalStateException("Check failed.");
    }
}
