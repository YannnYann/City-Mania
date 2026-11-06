package com.google.protobuf;

import com.google.protobuf.SourceContext;
import com.google.protobuf.kotlin.ProtoDslMarker;
import kotlin.jvm.internal.DefaultConstructorMarker;
import kotlin.jvm.internal.Intrinsics;

/* JADX INFO: compiled from: SourceContextKt.kt */
/* JADX INFO: loaded from: classes3.dex */
public final class SourceContextKt {
    public static final SourceContextKt INSTANCE = new SourceContextKt();

    /* JADX INFO: compiled from: SourceContextKt.kt */
    @ProtoDslMarker
    public static final class Dsl {
        public static final Companion Companion = new Companion(null);
        private final SourceContext.Builder _builder;

        public /* synthetic */ Dsl(SourceContext.Builder builder, DefaultConstructorMarker defaultConstructorMarker) {
            this(builder);
        }

        private Dsl(SourceContext.Builder builder) {
            this._builder = builder;
        }

        /* JADX INFO: compiled from: SourceContextKt.kt */
        public static final class Companion {
            public /* synthetic */ Companion(DefaultConstructorMarker defaultConstructorMarker) {
                this();
            }

            private Companion() {
            }

            public final /* synthetic */ Dsl _create(SourceContext.Builder builder) {
                Intrinsics.checkNotNullParameter(builder, "builder");
                return new Dsl(builder, null);
            }
        }

        public final /* synthetic */ SourceContext _build() {
            SourceContext sourceContextBuild = this._builder.build();
            Intrinsics.checkNotNullExpressionValue(sourceContextBuild, "_builder.build()");
            return sourceContextBuild;
        }

        public final String getFileName() {
            String fileName = this._builder.getFileName();
            Intrinsics.checkNotNullExpressionValue(fileName, "_builder.getFileName()");
            return fileName;
        }

        public final void setFileName(String value) {
            Intrinsics.checkNotNullParameter(value, "value");
            this._builder.setFileName(value);
        }

        public final void clearFileName() {
            this._builder.clearFileName();
        }
    }

    private SourceContextKt() {
    }
}
