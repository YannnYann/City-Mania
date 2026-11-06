package gatewayprotocol.v1;

import com.google.protobuf.ByteString;
import com.google.protobuf.kotlin.ProtoDslMarker;
import gatewayprotocol.v1.ModuleInitParamsOuterClass;
import kotlin.jvm.internal.DefaultConstructorMarker;
import kotlin.jvm.internal.Intrinsics;

/* JADX INFO: compiled from: ModuleInitParamsKt.kt */
/* JADX INFO: loaded from: classes4.dex */
public final class ModuleInitParamsKt {
    public static final ModuleInitParamsKt INSTANCE = new ModuleInitParamsKt();

    private ModuleInitParamsKt() {
    }

    /* JADX INFO: compiled from: ModuleInitParamsKt.kt */
    @ProtoDslMarker
    public static final class Dsl {
        public static final Companion Companion = new Companion(null);
        private final ModuleInitParamsOuterClass.ModuleInitParams.Builder _builder;

        public /* synthetic */ Dsl(ModuleInitParamsOuterClass.ModuleInitParams.Builder builder, DefaultConstructorMarker defaultConstructorMarker) {
            this(builder);
        }

        private Dsl(ModuleInitParamsOuterClass.ModuleInitParams.Builder builder) {
            this._builder = builder;
        }

        /* JADX INFO: compiled from: ModuleInitParamsKt.kt */
        public static final class Companion {
            public /* synthetic */ Companion(DefaultConstructorMarker defaultConstructorMarker) {
                this();
            }

            private Companion() {
            }

            public final /* synthetic */ Dsl _create(ModuleInitParamsOuterClass.ModuleInitParams.Builder builder) {
                Intrinsics.checkNotNullParameter(builder, "builder");
                return new Dsl(builder, null);
            }
        }

        public final /* synthetic */ ModuleInitParamsOuterClass.ModuleInitParams _build() {
            ModuleInitParamsOuterClass.ModuleInitParams moduleInitParamsBuild = this._builder.build();
            Intrinsics.checkNotNullExpressionValue(moduleInitParamsBuild, "build(...)");
            return moduleInitParamsBuild;
        }

        public final String getName() {
            String name = this._builder.getName();
            Intrinsics.checkNotNullExpressionValue(name, "getName(...)");
            return name;
        }

        public final void setName(String value) {
            Intrinsics.checkNotNullParameter(value, "value");
            this._builder.setName(value);
        }

        public final void clearName() {
            this._builder.clearName();
        }

        public final ByteString getParams() {
            ByteString params = this._builder.getParams();
            Intrinsics.checkNotNullExpressionValue(params, "getParams(...)");
            return params;
        }

        public final void setParams(ByteString value) {
            Intrinsics.checkNotNullParameter(value, "value");
            this._builder.setParams(value);
        }

        public final void clearParams() {
            this._builder.clearParams();
        }

        public final String getClassName() {
            String className = this._builder.getClassName();
            Intrinsics.checkNotNullExpressionValue(className, "getClassName(...)");
            return className;
        }

        public final void setClassName(String value) {
            Intrinsics.checkNotNullParameter(value, "value");
            this._builder.setClassName(value);
        }

        public final void clearClassName() {
            this._builder.clearClassName();
        }
    }
}
