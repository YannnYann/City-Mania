package com.google.protobuf;

import com.google.protobuf.Any;
import com.google.protobuf.kotlin.ProtoDslMarker;
import kotlin.jvm.internal.DefaultConstructorMarker;
import kotlin.jvm.internal.Intrinsics;

/* JADX INFO: compiled from: AnyKt.kt */
/* JADX INFO: loaded from: classes3.dex */
public final class AnyKt {
    public static final AnyKt INSTANCE = new AnyKt();

    /* JADX INFO: compiled from: AnyKt.kt */
    @ProtoDslMarker
    public static final class Dsl {
        public static final Companion Companion = new Companion(null);
        private final Any.Builder _builder;

        public /* synthetic */ Dsl(Any.Builder builder, DefaultConstructorMarker defaultConstructorMarker) {
            this(builder);
        }

        private Dsl(Any.Builder builder) {
            this._builder = builder;
        }

        /* JADX INFO: compiled from: AnyKt.kt */
        public static final class Companion {
            public /* synthetic */ Companion(DefaultConstructorMarker defaultConstructorMarker) {
                this();
            }

            private Companion() {
            }

            public final /* synthetic */ Dsl _create(Any.Builder builder) {
                Intrinsics.checkNotNullParameter(builder, "builder");
                return new Dsl(builder, null);
            }
        }

        public final /* synthetic */ Any _build() {
            Any anyBuild = this._builder.build();
            Intrinsics.checkNotNullExpressionValue(anyBuild, "_builder.build()");
            return anyBuild;
        }

        public final String getTypeUrl() {
            String typeUrl = this._builder.getTypeUrl();
            Intrinsics.checkNotNullExpressionValue(typeUrl, "_builder.getTypeUrl()");
            return typeUrl;
        }

        public final void setTypeUrl(String value) {
            Intrinsics.checkNotNullParameter(value, "value");
            this._builder.setTypeUrl(value);
        }

        public final void clearTypeUrl() {
            this._builder.clearTypeUrl();
        }

        public final ByteString getValue() {
            ByteString value = this._builder.getValue();
            Intrinsics.checkNotNullExpressionValue(value, "_builder.getValue()");
            return value;
        }

        public final void setValue(ByteString value) {
            Intrinsics.checkNotNullParameter(value, "value");
            this._builder.setValue(value);
        }

        public final void clearValue() {
            this._builder.clearValue();
        }
    }

    private AnyKt() {
    }
}
