package gatewayprotocol.v1;

import com.google.protobuf.kotlin.ProtoDslMarker;
import gatewayprotocol.v1.HeaderBiddingTokenOuterClass;
import kotlin.jvm.internal.DefaultConstructorMarker;
import kotlin.jvm.internal.Intrinsics;

/* JADX INFO: compiled from: TokenCountersKt.kt */
/* JADX INFO: loaded from: classes4.dex */
public final class TokenCountersKt {
    public static final TokenCountersKt INSTANCE = new TokenCountersKt();

    private TokenCountersKt() {
    }

    /* JADX INFO: compiled from: TokenCountersKt.kt */
    @ProtoDslMarker
    public static final class Dsl {
        public static final Companion Companion = new Companion(null);
        private final HeaderBiddingTokenOuterClass.TokenCounters.Builder _builder;

        public /* synthetic */ Dsl(HeaderBiddingTokenOuterClass.TokenCounters.Builder builder, DefaultConstructorMarker defaultConstructorMarker) {
            this(builder);
        }

        private Dsl(HeaderBiddingTokenOuterClass.TokenCounters.Builder builder) {
            this._builder = builder;
        }

        /* JADX INFO: compiled from: TokenCountersKt.kt */
        public static final class Companion {
            public /* synthetic */ Companion(DefaultConstructorMarker defaultConstructorMarker) {
                this();
            }

            private Companion() {
            }

            public final /* synthetic */ Dsl _create(HeaderBiddingTokenOuterClass.TokenCounters.Builder builder) {
                Intrinsics.checkNotNullParameter(builder, "builder");
                return new Dsl(builder, null);
            }
        }

        public final /* synthetic */ HeaderBiddingTokenOuterClass.TokenCounters _build() {
            HeaderBiddingTokenOuterClass.TokenCounters tokenCountersBuild = this._builder.build();
            Intrinsics.checkNotNullExpressionValue(tokenCountersBuild, "build(...)");
            return tokenCountersBuild;
        }

        public final int getSeq() {
            return this._builder.getSeq();
        }

        public final void setSeq(int i) {
            this._builder.setSeq(i);
        }

        public final void clearSeq() {
            this._builder.clearSeq();
        }

        public final int getWins() {
            return this._builder.getWins();
        }

        public final void setWins(int i) {
            this._builder.setWins(i);
        }

        public final void clearWins() {
            this._builder.clearWins();
        }

        public final int getStarts() {
            return this._builder.getStarts();
        }

        public final void setStarts(int i) {
            this._builder.setStarts(i);
        }

        public final void clearStarts() {
            this._builder.clearStarts();
        }
    }
}
