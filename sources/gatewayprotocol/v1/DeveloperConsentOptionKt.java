package gatewayprotocol.v1;

import com.google.protobuf.kotlin.ProtoDslMarker;
import gatewayprotocol.v1.DeveloperConsentOuterClass;
import kotlin.jvm.internal.DefaultConstructorMarker;
import kotlin.jvm.internal.Intrinsics;

/* JADX INFO: compiled from: DeveloperConsentOptionKt.kt */
/* JADX INFO: loaded from: classes4.dex */
public final class DeveloperConsentOptionKt {
    public static final DeveloperConsentOptionKt INSTANCE = new DeveloperConsentOptionKt();

    private DeveloperConsentOptionKt() {
    }

    /* JADX INFO: compiled from: DeveloperConsentOptionKt.kt */
    @ProtoDslMarker
    public static final class Dsl {
        public static final Companion Companion = new Companion(null);
        private final DeveloperConsentOuterClass.DeveloperConsentOption.Builder _builder;

        public /* synthetic */ Dsl(DeveloperConsentOuterClass.DeveloperConsentOption.Builder builder, DefaultConstructorMarker defaultConstructorMarker) {
            this(builder);
        }

        private Dsl(DeveloperConsentOuterClass.DeveloperConsentOption.Builder builder) {
            this._builder = builder;
        }

        /* JADX INFO: compiled from: DeveloperConsentOptionKt.kt */
        public static final class Companion {
            public /* synthetic */ Companion(DefaultConstructorMarker defaultConstructorMarker) {
                this();
            }

            private Companion() {
            }

            public final /* synthetic */ Dsl _create(DeveloperConsentOuterClass.DeveloperConsentOption.Builder builder) {
                Intrinsics.checkNotNullParameter(builder, "builder");
                return new Dsl(builder, null);
            }
        }

        public final /* synthetic */ DeveloperConsentOuterClass.DeveloperConsentOption _build() {
            DeveloperConsentOuterClass.DeveloperConsentOption developerConsentOptionBuild = this._builder.build();
            Intrinsics.checkNotNullExpressionValue(developerConsentOptionBuild, "build(...)");
            return developerConsentOptionBuild;
        }

        public final DeveloperConsentOuterClass.DeveloperConsentType getType() {
            DeveloperConsentOuterClass.DeveloperConsentType type = this._builder.getType();
            Intrinsics.checkNotNullExpressionValue(type, "getType(...)");
            return type;
        }

        public final void setType(DeveloperConsentOuterClass.DeveloperConsentType value) {
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

        public final String getCustomType() {
            String customType = this._builder.getCustomType();
            Intrinsics.checkNotNullExpressionValue(customType, "getCustomType(...)");
            return customType;
        }

        public final void setCustomType(String value) {
            Intrinsics.checkNotNullParameter(value, "value");
            this._builder.setCustomType(value);
        }

        public final void clearCustomType() {
            this._builder.clearCustomType();
        }

        public final boolean hasCustomType() {
            return this._builder.hasCustomType();
        }

        public final DeveloperConsentOuterClass.DeveloperConsentChoice getValue() {
            DeveloperConsentOuterClass.DeveloperConsentChoice value = this._builder.getValue();
            Intrinsics.checkNotNullExpressionValue(value, "getValue(...)");
            return value;
        }

        public final void setValue(DeveloperConsentOuterClass.DeveloperConsentChoice value) {
            Intrinsics.checkNotNullParameter(value, "value");
            this._builder.setValue(value);
        }

        public final int getValueValue() {
            return this._builder.getValueValue();
        }

        public final void setValueValue(int i) {
            this._builder.setValueValue(i);
        }

        public final void clearValue() {
            this._builder.clearValue();
        }
    }
}
