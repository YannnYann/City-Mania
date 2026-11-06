package gatewayprotocol.v1;

import com.google.protobuf.ByteString;
import com.google.protobuf.kotlin.ProtoDslMarker;
import gatewayprotocol.v1.RewardedOffersRequestOuterClass;
import kotlin.jvm.internal.DefaultConstructorMarker;
import kotlin.jvm.internal.Intrinsics;

/* JADX INFO: compiled from: RewardedOffersRequestKt.kt */
/* JADX INFO: loaded from: classes4.dex */
public final class RewardedOffersRequestKt {
    public static final RewardedOffersRequestKt INSTANCE = new RewardedOffersRequestKt();

    private RewardedOffersRequestKt() {
    }

    /* JADX INFO: compiled from: RewardedOffersRequestKt.kt */
    @ProtoDslMarker
    public static final class Dsl {
        public static final Companion Companion = new Companion(null);
        private final RewardedOffersRequestOuterClass.RewardedOffersRequest.Builder _builder;

        public /* synthetic */ Dsl(RewardedOffersRequestOuterClass.RewardedOffersRequest.Builder builder, DefaultConstructorMarker defaultConstructorMarker) {
            this(builder);
        }

        private Dsl(RewardedOffersRequestOuterClass.RewardedOffersRequest.Builder builder) {
            this._builder = builder;
        }

        /* JADX INFO: compiled from: RewardedOffersRequestKt.kt */
        public static final class Companion {
            public /* synthetic */ Companion(DefaultConstructorMarker defaultConstructorMarker) {
                this();
            }

            private Companion() {
            }

            public final /* synthetic */ Dsl _create(RewardedOffersRequestOuterClass.RewardedOffersRequest.Builder builder) {
                Intrinsics.checkNotNullParameter(builder, "builder");
                return new Dsl(builder, null);
            }
        }

        public final /* synthetic */ RewardedOffersRequestOuterClass.RewardedOffersRequest _build() {
            RewardedOffersRequestOuterClass.RewardedOffersRequest rewardedOffersRequestBuild = this._builder.build();
            Intrinsics.checkNotNullExpressionValue(rewardedOffersRequestBuild, "build(...)");
            return rewardedOffersRequestBuild;
        }

        public final RewardedOffersRequestOuterClass.RewardedOffersEntryPoint getEntryPoint() {
            RewardedOffersRequestOuterClass.RewardedOffersEntryPoint entryPoint = this._builder.getEntryPoint();
            Intrinsics.checkNotNullExpressionValue(entryPoint, "getEntryPoint(...)");
            return entryPoint;
        }

        public final void setEntryPoint(RewardedOffersRequestOuterClass.RewardedOffersEntryPoint value) {
            Intrinsics.checkNotNullParameter(value, "value");
            this._builder.setEntryPoint(value);
        }

        public final int getEntryPointValue() {
            return this._builder.getEntryPointValue();
        }

        public final void setEntryPointValue(int i) {
            this._builder.setEntryPointValue(i);
        }

        public final void clearEntryPoint() {
            this._builder.clearEntryPoint();
        }

        public final ByteString getCursor() {
            ByteString cursor = this._builder.getCursor();
            Intrinsics.checkNotNullExpressionValue(cursor, "getCursor(...)");
            return cursor;
        }

        public final void setCursor(ByteString value) {
            Intrinsics.checkNotNullParameter(value, "value");
            this._builder.setCursor(value);
        }

        public final void clearCursor() {
            this._builder.clearCursor();
        }
    }
}
