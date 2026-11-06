package com.google.protobuf;

import com.google.protobuf.Field;
import com.google.protobuf.kotlin.DslList;
import com.google.protobuf.kotlin.DslProxy;
import com.google.protobuf.kotlin.ProtoDslMarker;
import java.util.List;
import kotlin.jvm.internal.DefaultConstructorMarker;
import kotlin.jvm.internal.Intrinsics;

/* JADX INFO: compiled from: FieldKt.kt */
/* JADX INFO: loaded from: classes3.dex */
public final class FieldKt {
    public static final FieldKt INSTANCE = new FieldKt();

    /* JADX INFO: compiled from: FieldKt.kt */
    @ProtoDslMarker
    public static final class Dsl {
        public static final Companion Companion = new Companion(null);
        private final Field.Builder _builder;

        public /* synthetic */ Dsl(Field.Builder builder, DefaultConstructorMarker defaultConstructorMarker) {
            this(builder);
        }

        private Dsl(Field.Builder builder) {
            this._builder = builder;
        }

        /* JADX INFO: compiled from: FieldKt.kt */
        public static final class Companion {
            public /* synthetic */ Companion(DefaultConstructorMarker defaultConstructorMarker) {
                this();
            }

            private Companion() {
            }

            public final /* synthetic */ Dsl _create(Field.Builder builder) {
                Intrinsics.checkNotNullParameter(builder, "builder");
                return new Dsl(builder, null);
            }
        }

        public final /* synthetic */ Field _build() {
            Field fieldBuild = this._builder.build();
            Intrinsics.checkNotNullExpressionValue(fieldBuild, "_builder.build()");
            return fieldBuild;
        }

        public final Field.Kind getKind() {
            Field.Kind kind = this._builder.getKind();
            Intrinsics.checkNotNullExpressionValue(kind, "_builder.getKind()");
            return kind;
        }

        public final void setKind(Field.Kind value) {
            Intrinsics.checkNotNullParameter(value, "value");
            this._builder.setKind(value);
        }

        public final int getKindValue() {
            return this._builder.getKindValue();
        }

        public final void setKindValue(int i) {
            this._builder.setKindValue(i);
        }

        public final void clearKind() {
            this._builder.clearKind();
        }

        public final Field.Cardinality getCardinality() {
            Field.Cardinality cardinality = this._builder.getCardinality();
            Intrinsics.checkNotNullExpressionValue(cardinality, "_builder.getCardinality()");
            return cardinality;
        }

        public final void setCardinality(Field.Cardinality value) {
            Intrinsics.checkNotNullParameter(value, "value");
            this._builder.setCardinality(value);
        }

        public final int getCardinalityValue() {
            return this._builder.getCardinalityValue();
        }

        public final void setCardinalityValue(int i) {
            this._builder.setCardinalityValue(i);
        }

        public final void clearCardinality() {
            this._builder.clearCardinality();
        }

        public final int getNumber() {
            return this._builder.getNumber();
        }

        public final void setNumber(int i) {
            this._builder.setNumber(i);
        }

        public final void clearNumber() {
            this._builder.clearNumber();
        }

        public final String getName() {
            String name = this._builder.getName();
            Intrinsics.checkNotNullExpressionValue(name, "_builder.getName()");
            return name;
        }

        public final void setName(String value) {
            Intrinsics.checkNotNullParameter(value, "value");
            this._builder.setName(value);
        }

        public final void clearName() {
            this._builder.clearName();
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

        public final int getOneofIndex() {
            return this._builder.getOneofIndex();
        }

        public final void setOneofIndex(int i) {
            this._builder.setOneofIndex(i);
        }

        public final void clearOneofIndex() {
            this._builder.clearOneofIndex();
        }

        public final boolean getPacked() {
            return this._builder.getPacked();
        }

        public final void setPacked(boolean z) {
            this._builder.setPacked(z);
        }

        public final void clearPacked() {
            this._builder.clearPacked();
        }

        /* JADX INFO: compiled from: FieldKt.kt */
        public static final class OptionsProxy extends DslProxy {
            private OptionsProxy() {
            }
        }

        public final /* synthetic */ DslList getOptions() {
            List<Option> optionsList = this._builder.getOptionsList();
            Intrinsics.checkNotNullExpressionValue(optionsList, "_builder.getOptionsList()");
            return new DslList(optionsList);
        }

        public final /* synthetic */ void addOptions(DslList dslList, Option value) {
            Intrinsics.checkNotNullParameter(dslList, "<this>");
            Intrinsics.checkNotNullParameter(value, "value");
            this._builder.addOptions(value);
        }

        public final /* synthetic */ void plusAssignOptions(DslList<Option, OptionsProxy> dslList, Option value) {
            Intrinsics.checkNotNullParameter(dslList, "<this>");
            Intrinsics.checkNotNullParameter(value, "value");
            addOptions(dslList, value);
        }

        public final /* synthetic */ void addAllOptions(DslList dslList, Iterable values) {
            Intrinsics.checkNotNullParameter(dslList, "<this>");
            Intrinsics.checkNotNullParameter(values, "values");
            this._builder.addAllOptions(values);
        }

        public final /* synthetic */ void plusAssignAllOptions(DslList<Option, OptionsProxy> dslList, Iterable<Option> values) {
            Intrinsics.checkNotNullParameter(dslList, "<this>");
            Intrinsics.checkNotNullParameter(values, "values");
            addAllOptions(dslList, values);
        }

        public final /* synthetic */ void setOptions(DslList dslList, int i, Option value) {
            Intrinsics.checkNotNullParameter(dslList, "<this>");
            Intrinsics.checkNotNullParameter(value, "value");
            this._builder.setOptions(i, value);
        }

        public final /* synthetic */ void clearOptions(DslList dslList) {
            Intrinsics.checkNotNullParameter(dslList, "<this>");
            this._builder.clearOptions();
        }

        public final String getJsonName() {
            String jsonName = this._builder.getJsonName();
            Intrinsics.checkNotNullExpressionValue(jsonName, "_builder.getJsonName()");
            return jsonName;
        }

        public final void setJsonName(String value) {
            Intrinsics.checkNotNullParameter(value, "value");
            this._builder.setJsonName(value);
        }

        public final void clearJsonName() {
            this._builder.clearJsonName();
        }

        public final String getDefaultValue() {
            String defaultValue = this._builder.getDefaultValue();
            Intrinsics.checkNotNullExpressionValue(defaultValue, "_builder.getDefaultValue()");
            return defaultValue;
        }

        public final void setDefaultValue(String value) {
            Intrinsics.checkNotNullParameter(value, "value");
            this._builder.setDefaultValue(value);
        }

        public final void clearDefaultValue() {
            this._builder.clearDefaultValue();
        }
    }

    private FieldKt() {
    }
}
