package io.bidmachine.analytics.internal.y;

import android.content.Context;
import io.bidmachine.analytics.ReaderConfig;
import io.bidmachine.analytics.internal.I.g;
import java.io.File;
import kotlin.jvm.functions.Function0;
import kotlin.jvm.internal.DefaultConstructorMarker;

/* JADX INFO: loaded from: classes4.dex */
public final class a extends io.bidmachine.analytics.internal.w.a {
    public static final C1157a i = new C1157a(null);
    private final Function0 g;
    private final String h = "aints";

    /* JADX INFO: renamed from: io.bidmachine.analytics.internal.y.a$a, reason: collision with other inner class name */
    public static final class C1157a {
        public /* synthetic */ C1157a(DefaultConstructorMarker defaultConstructorMarker) {
            this();
        }

        private C1157a() {
        }
    }

    public a(Function0 function0) {
        this.g = function0;
    }

    @Override // io.bidmachine.analytics.internal.h.AbstractC4124d
    public String a() {
        return this.h;
    }

    @Override // io.bidmachine.analytics.internal.h.AbstractC4124d
    public void d(Context context) {
    }

    @Override // io.bidmachine.analytics.internal.w.a
    public File a(ReaderConfig.Rule rule) {
        if (rule instanceof ReaderConfig.Rule.GeneralRule) {
            return new File((File) this.g.invoke(), g.b(((ReaderConfig.Rule.GeneralRule) rule).getPath()));
        }
        throw new IllegalStateException("Check failed.");
    }
}
