package com.google.protobuf;

import com.google.protobuf.Empty;
import com.google.protobuf.kotlin.ProtoDslMarker;
import kotlin.jvm.internal.DefaultConstructorMarker;
import kotlin.jvm.internal.Intrinsics;

/* JADX INFO: compiled from: EmptyKt.kt */
/* JADX INFO: loaded from: classes3.dex */
public final class EmptyKt {
    public static final EmptyKt INSTANCE = new EmptyKt();

    /* JADX INFO: compiled from: EmptyKt.kt */
    @ProtoDslMarker
    public static final class Dsl {
        public static final Companion Companion = new Companion(null);
        private final Empty.Builder _builder;

        public /* synthetic */ Dsl(Empty.Builder builder, DefaultConstructorMarker defaultConstructorMarker) {
            this(builder);
        }

        private Dsl(Empty.Builder builder) {
            this._builder = builder;
        }

        /* JADX INFO: compiled from: EmptyKt.kt */
        public static final class Companion {
            public /* synthetic */ Companion(DefaultConstructorMarker defaultConstructorMarker) {
                this();
            }

            private Companion() {
            }

            public final /* synthetic */ Dsl _create(Empty.Builder builder) {
                Intrinsics.checkNotNullParameter(builder, "builder");
                return new Dsl(builder, null);
            }
        }

        public final /* synthetic */ Empty _build() {
            Empty emptyBuild = this._builder.build();
            Intrinsics.checkNotNullExpressionValue(emptyBuild, "_builder.build()");
            return emptyBuild;
        }
    }

    private EmptyKt() {
    }
}
