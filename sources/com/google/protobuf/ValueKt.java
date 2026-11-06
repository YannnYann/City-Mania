package com.google.protobuf;

import com.google.protobuf.Value;
import com.google.protobuf.kotlin.ProtoDslMarker;
import kotlin.jvm.internal.DefaultConstructorMarker;
import kotlin.jvm.internal.Intrinsics;

/* JADX INFO: compiled from: ValueKt.kt */
/* JADX INFO: loaded from: classes3.dex */
public final class ValueKt {
    public static final ValueKt INSTANCE = new ValueKt();

    /* JADX INFO: compiled from: ValueKt.kt */
    @ProtoDslMarker
    public static final class Dsl {
        public static final Companion Companion = new Companion(null);
        private final Value.Builder _builder;

        public /* synthetic */ Dsl(Value.Builder builder, DefaultConstructorMarker defaultConstructorMarker) {
            this(builder);
        }

        private Dsl(Value.Builder builder) {
            this._builder = builder;
        }

        /* JADX INFO: compiled from: ValueKt.kt */
        public static final class Companion {
            public /* synthetic */ Companion(DefaultConstructorMarker defaultConstructorMarker) {
                this();
            }

            private Companion() {
            }

            public final /* synthetic */ Dsl _create(Value.Builder builder) {
                Intrinsics.checkNotNullParameter(builder, "builder");
                return new Dsl(builder, null);
            }
        }

        public final /* synthetic */ Value _build() {
            Value valueBuild = this._builder.build();
            Intrinsics.checkNotNullExpressionValue(valueBuild, "_builder.build()");
            return valueBuild;
        }

        public final NullValue getNullValue() {
            NullValue nullValue = this._builder.getNullValue();
            Intrinsics.checkNotNullExpressionValue(nullValue, "_builder.getNullValue()");
            return nullValue;
        }

        public final void setNullValue(NullValue value) {
            Intrinsics.checkNotNullParameter(value, "value");
            this._builder.setNullValue(value);
        }

        public final int getNullValueValue() {
            return this._builder.getNullValueValue();
        }

        public final void setNullValueValue(int i) {
            this._builder.setNullValueValue(i);
        }

        public final void clearNullValue() {
            this._builder.clearNullValue();
        }

        public final boolean hasNullValue() {
            return this._builder.hasNullValue();
        }

        public final double getNumberValue() {
            return this._builder.getNumberValue();
        }

        public final void setNumberValue(double d) {
            this._builder.setNumberValue(d);
        }

        public final void clearNumberValue() {
            this._builder.clearNumberValue();
        }

        public final boolean hasNumberValue() {
            return this._builder.hasNumberValue();
        }

        public final String getStringValue() {
            String stringValue = this._builder.getStringValue();
            Intrinsics.checkNotNullExpressionValue(stringValue, "_builder.getStringValue()");
            return stringValue;
        }

        public final void setStringValue(String value) {
            Intrinsics.checkNotNullParameter(value, "value");
            this._builder.setStringValue(value);
        }

        public final void clearStringValue() {
            this._builder.clearStringValue();
        }

        public final boolean hasStringValue() {
            return this._builder.hasStringValue();
        }

        public final boolean getBoolValue() {
            return this._builder.getBoolValue();
        }

        public final void setBoolValue(boolean z) {
            this._builder.setBoolValue(z);
        }

        public final void clearBoolValue() {
            this._builder.clearBoolValue();
        }

        public final boolean hasBoolValue() {
            return this._builder.hasBoolValue();
        }

        public final Struct getStructValue() {
            Struct structValue = this._builder.getStructValue();
            Intrinsics.checkNotNullExpressionValue(structValue, "_builder.getStructValue()");
            return structValue;
        }

        public final void setStructValue(Struct value) {
            Intrinsics.checkNotNullParameter(value, "value");
            this._builder.setStructValue(value);
        }

        public final void clearStructValue() {
            this._builder.clearStructValue();
        }

        public final boolean hasStructValue() {
            return this._builder.hasStructValue();
        }

        public final ListValue getListValue() {
            ListValue listValue = this._builder.getListValue();
            Intrinsics.checkNotNullExpressionValue(listValue, "_builder.getListValue()");
            return listValue;
        }

        public final void setListValue(ListValue value) {
            Intrinsics.checkNotNullParameter(value, "value");
            this._builder.setListValue(value);
        }

        public final void clearListValue() {
            this._builder.clearListValue();
        }

        public final boolean hasListValue() {
            return this._builder.hasListValue();
        }

        public final Value.KindCase getKindCase() {
            Value.KindCase kindCase = this._builder.getKindCase();
            Intrinsics.checkNotNullExpressionValue(kindCase, "_builder.getKindCase()");
            return kindCase;
        }

        public final void clearKind() {
            this._builder.clearKind();
        }
    }

    private ValueKt() {
    }
}
