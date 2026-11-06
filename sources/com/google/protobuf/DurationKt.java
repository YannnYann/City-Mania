package com.google.protobuf;

import com.google.protobuf.Duration;
import com.google.protobuf.kotlin.ProtoDslMarker;
import kotlin.jvm.internal.DefaultConstructorMarker;
import kotlin.jvm.internal.Intrinsics;

/* JADX INFO: compiled from: DurationKt.kt */
/* JADX INFO: loaded from: classes3.dex */
public final class DurationKt {
    public static final DurationKt INSTANCE = new DurationKt();

    /* JADX INFO: compiled from: DurationKt.kt */
    @ProtoDslMarker
    public static final class Dsl {
        public static final Companion Companion = new Companion(null);
        private final Duration.Builder _builder;

        public /* synthetic */ Dsl(Duration.Builder builder, DefaultConstructorMarker defaultConstructorMarker) {
            this(builder);
        }

        private Dsl(Duration.Builder builder) {
            this._builder = builder;
        }

        /* JADX INFO: compiled from: DurationKt.kt */
        public static final class Companion {
            public /* synthetic */ Companion(DefaultConstructorMarker defaultConstructorMarker) {
                this();
            }

            private Companion() {
            }

            public final /* synthetic */ Dsl _create(Duration.Builder builder) {
                Intrinsics.checkNotNullParameter(builder, "builder");
                return new Dsl(builder, null);
            }
        }

        public final /* synthetic */ Duration _build() {
            Duration durationBuild = this._builder.build();
            Intrinsics.checkNotNullExpressionValue(durationBuild, "_builder.build()");
            return durationBuild;
        }

        public final long getSeconds() {
            return this._builder.getSeconds();
        }

        public final void setSeconds(long j) {
            this._builder.setSeconds(j);
        }

        public final void clearSeconds() {
            this._builder.clearSeconds();
        }

        public final int getNanos() {
            return this._builder.getNanos();
        }

        public final void setNanos(int i) {
            this._builder.setNanos(i);
        }

        public final void clearNanos() {
            this._builder.clearNanos();
        }
    }

    private DurationKt() {
    }
}
