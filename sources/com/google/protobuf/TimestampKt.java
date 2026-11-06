package com.google.protobuf;

import com.google.protobuf.Timestamp;
import com.google.protobuf.kotlin.ProtoDslMarker;
import kotlin.jvm.internal.DefaultConstructorMarker;
import kotlin.jvm.internal.Intrinsics;

/* JADX INFO: compiled from: TimestampKt.kt */
/* JADX INFO: loaded from: classes3.dex */
public final class TimestampKt {
    public static final TimestampKt INSTANCE = new TimestampKt();

    /* JADX INFO: compiled from: TimestampKt.kt */
    @ProtoDslMarker
    public static final class Dsl {
        public static final Companion Companion = new Companion(null);
        private final Timestamp.Builder _builder;

        public /* synthetic */ Dsl(Timestamp.Builder builder, DefaultConstructorMarker defaultConstructorMarker) {
            this(builder);
        }

        private Dsl(Timestamp.Builder builder) {
            this._builder = builder;
        }

        /* JADX INFO: compiled from: TimestampKt.kt */
        public static final class Companion {
            public /* synthetic */ Companion(DefaultConstructorMarker defaultConstructorMarker) {
                this();
            }

            private Companion() {
            }

            public final /* synthetic */ Dsl _create(Timestamp.Builder builder) {
                Intrinsics.checkNotNullParameter(builder, "builder");
                return new Dsl(builder, null);
            }
        }

        public final /* synthetic */ Timestamp _build() {
            Timestamp timestampBuild = this._builder.build();
            Intrinsics.checkNotNullExpressionValue(timestampBuild, "_builder.build()");
            return timestampBuild;
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

    private TimestampKt() {
    }
}
