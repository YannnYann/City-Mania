package gatewayprotocol.v1;

import com.google.protobuf.ByteString;
import com.google.protobuf.kotlin.ProtoDslMarker;
import gatewayprotocol.v1.ModuleOuterClass;
import kotlin.jvm.internal.DefaultConstructorMarker;
import kotlin.jvm.internal.Intrinsics;

/* JADX INFO: compiled from: ModuleKt.kt */
/* JADX INFO: loaded from: classes4.dex */
public final class ModuleKt {
    public static final ModuleKt INSTANCE = new ModuleKt();

    private ModuleKt() {
    }

    /* JADX INFO: compiled from: ModuleKt.kt */
    @ProtoDslMarker
    public static final class Dsl {
        public static final Companion Companion = new Companion(null);
        private final ModuleOuterClass.Module.Builder _builder;

        public /* synthetic */ Dsl(ModuleOuterClass.Module.Builder builder, DefaultConstructorMarker defaultConstructorMarker) {
            this(builder);
        }

        private Dsl(ModuleOuterClass.Module.Builder builder) {
            this._builder = builder;
        }

        /* JADX INFO: compiled from: ModuleKt.kt */
        public static final class Companion {
            public /* synthetic */ Companion(DefaultConstructorMarker defaultConstructorMarker) {
                this();
            }

            private Companion() {
            }

            public final /* synthetic */ Dsl _create(ModuleOuterClass.Module.Builder builder) {
                Intrinsics.checkNotNullParameter(builder, "builder");
                return new Dsl(builder, null);
            }
        }

        public final /* synthetic */ ModuleOuterClass.Module _build() {
            ModuleOuterClass.Module moduleBuild = this._builder.build();
            Intrinsics.checkNotNullExpressionValue(moduleBuild, "build(...)");
            return moduleBuild;
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

        public final ByteString getConfig() {
            ByteString config = this._builder.getConfig();
            Intrinsics.checkNotNullExpressionValue(config, "getConfig(...)");
            return config;
        }

        public final void setConfig(ByteString value) {
            Intrinsics.checkNotNullParameter(value, "value");
            this._builder.setConfig(value);
        }

        public final void clearConfig() {
            this._builder.clearConfig();
        }
    }
}
