package gatewayprotocol.v1;

import com.google.protobuf.ByteString;
import com.google.protobuf.kotlin.ProtoDslMarker;
import gatewayprotocol.v1.AllowedPiiOuterClass;
import gatewayprotocol.v1.MutableDataOuterClass;
import gatewayprotocol.v1.SessionCountersOuterClass;
import kotlin.jvm.internal.DefaultConstructorMarker;
import kotlin.jvm.internal.Intrinsics;

/* JADX INFO: compiled from: MutableDataKt.kt */
/* JADX INFO: loaded from: classes4.dex */
public final class MutableDataKt {
    public static final MutableDataKt INSTANCE = new MutableDataKt();

    private MutableDataKt() {
    }

    /* JADX INFO: compiled from: MutableDataKt.kt */
    @ProtoDslMarker
    public static final class Dsl {
        public static final Companion Companion = new Companion(null);
        private final MutableDataOuterClass.MutableData.Builder _builder;

        public /* synthetic */ Dsl(MutableDataOuterClass.MutableData.Builder builder, DefaultConstructorMarker defaultConstructorMarker) {
            this(builder);
        }

        private Dsl(MutableDataOuterClass.MutableData.Builder builder) {
            this._builder = builder;
        }

        /* JADX INFO: compiled from: MutableDataKt.kt */
        public static final class Companion {
            public /* synthetic */ Companion(DefaultConstructorMarker defaultConstructorMarker) {
                this();
            }

            private Companion() {
            }

            public final /* synthetic */ Dsl _create(MutableDataOuterClass.MutableData.Builder builder) {
                Intrinsics.checkNotNullParameter(builder, "builder");
                return new Dsl(builder, null);
            }
        }

        public final /* synthetic */ MutableDataOuterClass.MutableData _build() {
            MutableDataOuterClass.MutableData mutableDataBuild = this._builder.build();
            Intrinsics.checkNotNullExpressionValue(mutableDataBuild, "build(...)");
            return mutableDataBuild;
        }

        public final ByteString getCurrentState() {
            ByteString currentState = this._builder.getCurrentState();
            Intrinsics.checkNotNullExpressionValue(currentState, "getCurrentState(...)");
            return currentState;
        }

        public final void setCurrentState(ByteString value) {
            Intrinsics.checkNotNullParameter(value, "value");
            this._builder.setCurrentState(value);
        }

        public final void clearCurrentState() {
            this._builder.clearCurrentState();
        }

        public final boolean hasCurrentState() {
            return this._builder.hasCurrentState();
        }

        public final ByteString getSessionToken() {
            ByteString sessionToken = this._builder.getSessionToken();
            Intrinsics.checkNotNullExpressionValue(sessionToken, "getSessionToken(...)");
            return sessionToken;
        }

        public final void setSessionToken(ByteString value) {
            Intrinsics.checkNotNullParameter(value, "value");
            this._builder.setSessionToken(value);
        }

        public final void clearSessionToken() {
            this._builder.clearSessionToken();
        }

        public final boolean hasSessionToken() {
            return this._builder.hasSessionToken();
        }

        public final ByteString getPrivacy() {
            ByteString privacy = this._builder.getPrivacy();
            Intrinsics.checkNotNullExpressionValue(privacy, "getPrivacy(...)");
            return privacy;
        }

        public final void setPrivacy(ByteString value) {
            Intrinsics.checkNotNullParameter(value, "value");
            this._builder.setPrivacy(value);
        }

        public final void clearPrivacy() {
            this._builder.clearPrivacy();
        }

        public final boolean hasPrivacy() {
            return this._builder.hasPrivacy();
        }

        public final SessionCountersOuterClass.SessionCounters getSessionCounters() {
            SessionCountersOuterClass.SessionCounters sessionCounters = this._builder.getSessionCounters();
            Intrinsics.checkNotNullExpressionValue(sessionCounters, "getSessionCounters(...)");
            return sessionCounters;
        }

        public final void setSessionCounters(SessionCountersOuterClass.SessionCounters value) {
            Intrinsics.checkNotNullParameter(value, "value");
            this._builder.setSessionCounters(value);
        }

        public final void clearSessionCounters() {
            this._builder.clearSessionCounters();
        }

        public final boolean hasSessionCounters() {
            return this._builder.hasSessionCounters();
        }

        public final SessionCountersOuterClass.SessionCounters getSessionCountersOrNull(Dsl dsl) {
            Intrinsics.checkNotNullParameter(dsl, "<this>");
            return MutableDataKtKt.getSessionCountersOrNull(dsl._builder);
        }

        public final AllowedPiiOuterClass.AllowedPii getAllowedPii() {
            AllowedPiiOuterClass.AllowedPii allowedPii = this._builder.getAllowedPii();
            Intrinsics.checkNotNullExpressionValue(allowedPii, "getAllowedPii(...)");
            return allowedPii;
        }

        public final void setAllowedPii(AllowedPiiOuterClass.AllowedPii value) {
            Intrinsics.checkNotNullParameter(value, "value");
            this._builder.setAllowedPii(value);
        }

        public final void clearAllowedPii() {
            this._builder.clearAllowedPii();
        }

        public final boolean hasAllowedPii() {
            return this._builder.hasAllowedPii();
        }

        public final AllowedPiiOuterClass.AllowedPii getAllowedPiiOrNull(Dsl dsl) {
            Intrinsics.checkNotNullParameter(dsl, "<this>");
            return MutableDataKtKt.getAllowedPiiOrNull(dsl._builder);
        }

        public final ByteString getCache() {
            ByteString cache = this._builder.getCache();
            Intrinsics.checkNotNullExpressionValue(cache, "getCache(...)");
            return cache;
        }

        public final void setCache(ByteString value) {
            Intrinsics.checkNotNullParameter(value, "value");
            this._builder.setCache(value);
        }

        public final void clearCache() {
            this._builder.clearCache();
        }

        public final boolean hasCache() {
            return this._builder.hasCache();
        }

        public final ByteString getPrivacyFsm() {
            ByteString privacyFsm = this._builder.getPrivacyFsm();
            Intrinsics.checkNotNullExpressionValue(privacyFsm, "getPrivacyFsm(...)");
            return privacyFsm;
        }

        public final void setPrivacyFsm(ByteString value) {
            Intrinsics.checkNotNullParameter(value, "value");
            this._builder.setPrivacyFsm(value);
        }

        public final void clearPrivacyFsm() {
            this._builder.clearPrivacyFsm();
        }

        public final boolean hasPrivacyFsm() {
            return this._builder.hasPrivacyFsm();
        }
    }
}
