package io.bidmachine.analytics;

import java.util.List;

/* JADX INFO: loaded from: classes4.dex */
public final class ReaderConfig {
    private final String a;
    private final String b;
    private final long c;
    private final boolean d;
    private final List e;

    public interface Rule {

        public static final class GeneralRule implements Rule {
            private final String a;
            private final String b;

            public GeneralRule(String str, String str2) {
                this.a = str;
                this.b = str2;
            }

            public final String getPath() {
                return this.b;
            }

            public final String getTag() {
                return this.a;
            }
        }

        public static final class PurRule implements Rule {
            private final String a;
            private final String b;
            private final String c;
            private final boolean d;

            public PurRule(String str, String str2, String str3, boolean z) {
                this.a = str;
                this.b = str2;
                this.c = str3;
                this.d = z;
            }

            public final String getPath() {
                return this.b;
            }

            public final String getQuery() {
                return this.c;
            }

            public final boolean getShouldReport() {
                return this.d;
            }

            public final String getTag() {
                return this.a;
            }
        }
    }

    public ReaderConfig(String str, String str2, long j, boolean z, List<? extends Rule> list) {
        this.a = str;
        this.b = str2;
        this.c = j;
        this.d = z;
        this.e = list;
    }

    public final long getInterval() {
        return this.c;
    }

    public final String getName() {
        return this.a;
    }

    public final List<Rule> getRules() {
        return this.e;
    }

    public final boolean getUniqueOnly() {
        return this.d;
    }

    public final String getUrl() {
        return this.b;
    }
}
