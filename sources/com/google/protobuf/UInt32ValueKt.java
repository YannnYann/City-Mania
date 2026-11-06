package com.google.protobuf;

import com.google.protobuf.UInt32Value;
import com.google.protobuf.kotlin.ProtoDslMarker;
import kotlin.jvm.internal.DefaultConstructorMarker;
import kotlin.jvm.internal.Intrinsics;

/* JADX INFO: compiled from: UInt32ValueKt.kt */
/* JADX INFO: loaded from: classes3.dex */
public final class UInt32ValueKt {
    public static final UInt32ValueKt INSTANCE = new UInt32ValueKt();

    /* JADX INFO: compiled from: UInt32ValueKt.kt */
    @ProtoDslMarker
    public static final class Dsl {
        public static final Companion Companion = new Companion(null);
        private final UInt32Value.Builder _builder;

        public /* synthetic */ Dsl(UInt32Value.Builder builder, DefaultConstructorMarker defaultConstructorMarker) {
            this(builder);
        }

        private Dsl(UInt32Value.Builder builder) {
            this._builder = builder;
        }

        /* JADX INFO: compiled from: UInt32ValueKt.kt */
        public static final class Companion {
            public /* synthetic */ Companion(DefaultConstructorMarker defaultConstructorMarker) {
                this();
            }

            private Companion() {
            }

            public final /* synthetic */ Dsl _create(UInt32Value.Builder builder) {
                Intrinsics.checkNotNullParameter(builder, "builder");
                return new Dsl(builder, null);
            }
        }

        public final /* synthetic */ UInt32Value _build() {
            UInt32Value uInt32ValueBuild = this._builder.build();
            Intrinsics.checkNotNullExpressionValue(uInt32ValueBuild, "_builder.build()");
            return uInt32ValueBuild;
        }

        public final int getValue() {
            return this._builder.getValue();
        }

        public final void setValue(int i) {
            this._builder.setValue(i);
        }

        public final void clearValue() {
            this._builder.clearValue();
        }
    }

    private UInt32ValueKt() {
    }
}
