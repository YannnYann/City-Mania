package gatewayprotocol.v1;

import com.google.protobuf.kotlin.ProtoDslMarker;
import gatewayprotocol.v1.InitializationRequestOuterClass;
import kotlin.jvm.internal.DefaultConstructorMarker;
import kotlin.jvm.internal.Intrinsics;

/* JADX INFO: compiled from: InstallReferrerKt.kt */
/* JADX INFO: loaded from: classes4.dex */
public final class InstallReferrerKt {
    public static final InstallReferrerKt INSTANCE = new InstallReferrerKt();

    private InstallReferrerKt() {
    }

    /* JADX INFO: compiled from: InstallReferrerKt.kt */
    @ProtoDslMarker
    public static final class Dsl {
        public static final Companion Companion = new Companion(null);
        private final InitializationRequestOuterClass.InstallReferrer.Builder _builder;

        public /* synthetic */ Dsl(InitializationRequestOuterClass.InstallReferrer.Builder builder, DefaultConstructorMarker defaultConstructorMarker) {
            this(builder);
        }

        private Dsl(InitializationRequestOuterClass.InstallReferrer.Builder builder) {
            this._builder = builder;
        }

        /* JADX INFO: compiled from: InstallReferrerKt.kt */
        public static final class Companion {
            public /* synthetic */ Companion(DefaultConstructorMarker defaultConstructorMarker) {
                this();
            }

            private Companion() {
            }

            public final /* synthetic */ Dsl _create(InitializationRequestOuterClass.InstallReferrer.Builder builder) {
                Intrinsics.checkNotNullParameter(builder, "builder");
                return new Dsl(builder, null);
            }
        }

        public final /* synthetic */ InitializationRequestOuterClass.InstallReferrer _build() {
            InitializationRequestOuterClass.InstallReferrer installReferrerBuild = this._builder.build();
            Intrinsics.checkNotNullExpressionValue(installReferrerBuild, "build(...)");
            return installReferrerBuild;
        }

        public final String getUrl() {
            String url = this._builder.getUrl();
            Intrinsics.checkNotNullExpressionValue(url, "getUrl(...)");
            return url;
        }

        public final void setUrl(String value) {
            Intrinsics.checkNotNullParameter(value, "value");
            this._builder.setUrl(value);
        }

        public final void clearUrl() {
            this._builder.clearUrl();
        }

        public final long getClickTime() {
            return this._builder.getClickTime();
        }

        public final void setClickTime(long j) {
            this._builder.setClickTime(j);
        }

        public final void clearClickTime() {
            this._builder.clearClickTime();
        }

        public final long getInstallTime() {
            return this._builder.getInstallTime();
        }

        public final void setInstallTime(long j) {
            this._builder.setInstallTime(j);
        }

        public final void clearInstallTime() {
            this._builder.clearInstallTime();
        }

        public final boolean getInstantExperienceLunch() {
            return this._builder.getInstantExperienceLunch();
        }

        public final void setInstantExperienceLunch(boolean z) {
            this._builder.setInstantExperienceLunch(z);
        }

        public final void clearInstantExperienceLunch() {
            this._builder.clearInstantExperienceLunch();
        }
    }
}
