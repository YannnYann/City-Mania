package gatewayprotocol.v1;

import com.google.protobuf.kotlin.ProtoDslMarker;
import gatewayprotocol.v1.AdRequestOuterClass;
import kotlin.jvm.internal.DefaultConstructorMarker;
import kotlin.jvm.internal.Intrinsics;

/* JADX INFO: compiled from: BannerSizeKt.kt */
/* JADX INFO: loaded from: classes4.dex */
public final class BannerSizeKt {
    public static final BannerSizeKt INSTANCE = new BannerSizeKt();

    private BannerSizeKt() {
    }

    /* JADX INFO: compiled from: BannerSizeKt.kt */
    @ProtoDslMarker
    public static final class Dsl {
        public static final Companion Companion = new Companion(null);
        private final AdRequestOuterClass.BannerSize.Builder _builder;

        public /* synthetic */ Dsl(AdRequestOuterClass.BannerSize.Builder builder, DefaultConstructorMarker defaultConstructorMarker) {
            this(builder);
        }

        private Dsl(AdRequestOuterClass.BannerSize.Builder builder) {
            this._builder = builder;
        }

        /* JADX INFO: compiled from: BannerSizeKt.kt */
        public static final class Companion {
            public /* synthetic */ Companion(DefaultConstructorMarker defaultConstructorMarker) {
                this();
            }

            private Companion() {
            }

            public final /* synthetic */ Dsl _create(AdRequestOuterClass.BannerSize.Builder builder) {
                Intrinsics.checkNotNullParameter(builder, "builder");
                return new Dsl(builder, null);
            }
        }

        public final /* synthetic */ AdRequestOuterClass.BannerSize _build() {
            AdRequestOuterClass.BannerSize bannerSizeBuild = this._builder.build();
            Intrinsics.checkNotNullExpressionValue(bannerSizeBuild, "build(...)");
            return bannerSizeBuild;
        }

        public final int getWidth() {
            return this._builder.getWidth();
        }

        public final void setWidth(int i) {
            this._builder.setWidth(i);
        }

        public final void clearWidth() {
            this._builder.clearWidth();
        }

        public final int getHeight() {
            return this._builder.getHeight();
        }

        public final void setHeight(int i) {
            this._builder.setHeight(i);
        }

        public final void clearHeight() {
            this._builder.clearHeight();
        }
    }
}
