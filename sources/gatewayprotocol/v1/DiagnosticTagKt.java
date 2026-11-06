package gatewayprotocol.v1;

import com.google.protobuf.kotlin.DslList;
import com.google.protobuf.kotlin.DslProxy;
import com.google.protobuf.kotlin.ProtoDslMarker;
import gatewayprotocol.v1.DiagnosticEventRequestOuterClass;
import java.util.List;
import kotlin.jvm.internal.DefaultConstructorMarker;
import kotlin.jvm.internal.Intrinsics;

/* JADX INFO: compiled from: DiagnosticTagKt.kt */
/* JADX INFO: loaded from: classes4.dex */
public final class DiagnosticTagKt {
    public static final DiagnosticTagKt INSTANCE = new DiagnosticTagKt();

    private DiagnosticTagKt() {
    }

    /* JADX INFO: compiled from: DiagnosticTagKt.kt */
    @ProtoDslMarker
    public static final class Dsl {
        public static final Companion Companion = new Companion(null);
        private final DiagnosticEventRequestOuterClass.DiagnosticTag.Builder _builder;

        public /* synthetic */ Dsl(DiagnosticEventRequestOuterClass.DiagnosticTag.Builder builder, DefaultConstructorMarker defaultConstructorMarker) {
            this(builder);
        }

        public static /* synthetic */ void getTagType$annotations() {
        }

        private Dsl(DiagnosticEventRequestOuterClass.DiagnosticTag.Builder builder) {
            this._builder = builder;
        }

        /* JADX INFO: compiled from: DiagnosticTagKt.kt */
        public static final class Companion {
            public /* synthetic */ Companion(DefaultConstructorMarker defaultConstructorMarker) {
                this();
            }

            private Companion() {
            }

            public final /* synthetic */ Dsl _create(DiagnosticEventRequestOuterClass.DiagnosticTag.Builder builder) {
                Intrinsics.checkNotNullParameter(builder, "builder");
                return new Dsl(builder, null);
            }
        }

        public final /* synthetic */ DiagnosticEventRequestOuterClass.DiagnosticTag _build() {
            DiagnosticEventRequestOuterClass.DiagnosticTag diagnosticTagBuild = this._builder.build();
            Intrinsics.checkNotNullExpressionValue(diagnosticTagBuild, "build(...)");
            return diagnosticTagBuild;
        }

        /* JADX INFO: compiled from: DiagnosticTagKt.kt */
        public static final class TagTypeProxy extends DslProxy {
            private TagTypeProxy() {
            }
        }

        public final /* synthetic */ DslList getTagType() {
            List<DiagnosticEventRequestOuterClass.DiagnosticTagType> tagTypeList = this._builder.getTagTypeList();
            Intrinsics.checkNotNullExpressionValue(tagTypeList, "getTagTypeList(...)");
            return new DslList(tagTypeList);
        }

        public final /* synthetic */ void addTagType(DslList dslList, DiagnosticEventRequestOuterClass.DiagnosticTagType value) {
            Intrinsics.checkNotNullParameter(dslList, "<this>");
            Intrinsics.checkNotNullParameter(value, "value");
            this._builder.addTagType(value);
        }

        public final /* synthetic */ void plusAssignTagType(DslList<DiagnosticEventRequestOuterClass.DiagnosticTagType, TagTypeProxy> dslList, DiagnosticEventRequestOuterClass.DiagnosticTagType value) {
            Intrinsics.checkNotNullParameter(dslList, "<this>");
            Intrinsics.checkNotNullParameter(value, "value");
            addTagType(dslList, value);
        }

        public final /* synthetic */ void addAllTagType(DslList dslList, Iterable values) {
            Intrinsics.checkNotNullParameter(dslList, "<this>");
            Intrinsics.checkNotNullParameter(values, "values");
            this._builder.addAllTagType(values);
        }

        public final /* synthetic */ void plusAssignAllTagType(DslList<DiagnosticEventRequestOuterClass.DiagnosticTagType, TagTypeProxy> dslList, Iterable<? extends DiagnosticEventRequestOuterClass.DiagnosticTagType> values) {
            Intrinsics.checkNotNullParameter(dslList, "<this>");
            Intrinsics.checkNotNullParameter(values, "values");
            addAllTagType(dslList, values);
        }

        public final /* synthetic */ void setTagType(DslList dslList, int i, DiagnosticEventRequestOuterClass.DiagnosticTagType value) {
            Intrinsics.checkNotNullParameter(dslList, "<this>");
            Intrinsics.checkNotNullParameter(value, "value");
            this._builder.setTagType(i, value);
        }

        public final /* synthetic */ void clearTagType(DslList dslList) {
            Intrinsics.checkNotNullParameter(dslList, "<this>");
            this._builder.clearTagType();
        }

        public final String getCustomTagType() {
            String customTagType = this._builder.getCustomTagType();
            Intrinsics.checkNotNullExpressionValue(customTagType, "getCustomTagType(...)");
            return customTagType;
        }

        public final void setCustomTagType(String value) {
            Intrinsics.checkNotNullParameter(value, "value");
            this._builder.setCustomTagType(value);
        }

        public final void clearCustomTagType() {
            this._builder.clearCustomTagType();
        }

        public final boolean hasCustomTagType() {
            return this._builder.hasCustomTagType();
        }

        public final String getStringValue() {
            String stringValue = this._builder.getStringValue();
            Intrinsics.checkNotNullExpressionValue(stringValue, "getStringValue(...)");
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

        public final int getIntValue() {
            return this._builder.getIntValue();
        }

        public final void setIntValue(int i) {
            this._builder.setIntValue(i);
        }

        public final void clearIntValue() {
            this._builder.clearIntValue();
        }

        public final boolean hasIntValue() {
            return this._builder.hasIntValue();
        }

        public final DiagnosticEventRequestOuterClass.DiagnosticTagType getType() {
            DiagnosticEventRequestOuterClass.DiagnosticTagType type = this._builder.getType();
            Intrinsics.checkNotNullExpressionValue(type, "getType(...)");
            return type;
        }

        public final void setType(DiagnosticEventRequestOuterClass.DiagnosticTagType value) {
            Intrinsics.checkNotNullParameter(value, "value");
            this._builder.setType(value);
        }

        public final int getTypeValue() {
            return this._builder.getTypeValue();
        }

        public final void setTypeValue(int i) {
            this._builder.setTypeValue(i);
        }

        public final void clearType() {
            this._builder.clearType();
        }

        public final DiagnosticEventRequestOuterClass.DiagnosticTag.ValueCase getValueCase() {
            DiagnosticEventRequestOuterClass.DiagnosticTag.ValueCase valueCase = this._builder.getValueCase();
            Intrinsics.checkNotNullExpressionValue(valueCase, "getValueCase(...)");
            return valueCase;
        }

        public final void clearValue() {
            this._builder.clearValue();
        }
    }
}
