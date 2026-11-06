package gatewayprotocol.v1;

import com.google.protobuf.kotlin.ProtoDslMarker;
import gatewayprotocol.v1.SessionCountersOuterClass;
import kotlin.jvm.internal.DefaultConstructorMarker;
import kotlin.jvm.internal.Intrinsics;

/* JADX INFO: compiled from: SessionCountersKt.kt */
/* JADX INFO: loaded from: classes4.dex */
public final class SessionCountersKt {
    public static final SessionCountersKt INSTANCE = new SessionCountersKt();

    private SessionCountersKt() {
    }

    /* JADX INFO: compiled from: SessionCountersKt.kt */
    @ProtoDslMarker
    public static final class Dsl {
        public static final Companion Companion = new Companion(null);
        private final SessionCountersOuterClass.SessionCounters.Builder _builder;

        public /* synthetic */ Dsl(SessionCountersOuterClass.SessionCounters.Builder builder, DefaultConstructorMarker defaultConstructorMarker) {
            this(builder);
        }

        private Dsl(SessionCountersOuterClass.SessionCounters.Builder builder) {
            this._builder = builder;
        }

        /* JADX INFO: compiled from: SessionCountersKt.kt */
        public static final class Companion {
            public /* synthetic */ Companion(DefaultConstructorMarker defaultConstructorMarker) {
                this();
            }

            private Companion() {
            }

            public final /* synthetic */ Dsl _create(SessionCountersOuterClass.SessionCounters.Builder builder) {
                Intrinsics.checkNotNullParameter(builder, "builder");
                return new Dsl(builder, null);
            }
        }

        public final /* synthetic */ SessionCountersOuterClass.SessionCounters _build() {
            SessionCountersOuterClass.SessionCounters sessionCountersBuild = this._builder.build();
            Intrinsics.checkNotNullExpressionValue(sessionCountersBuild, "build(...)");
            return sessionCountersBuild;
        }

        public final int getLoadRequests() {
            return this._builder.getLoadRequests();
        }

        public final void setLoadRequests(int i) {
            this._builder.setLoadRequests(i);
        }

        public final void clearLoadRequests() {
            this._builder.clearLoadRequests();
        }

        public final int getLoadRequestsAdm() {
            return this._builder.getLoadRequestsAdm();
        }

        public final void setLoadRequestsAdm(int i) {
            this._builder.setLoadRequestsAdm(i);
        }

        public final void clearLoadRequestsAdm() {
            this._builder.clearLoadRequestsAdm();
        }

        public final int getBannerLoadRequests() {
            return this._builder.getBannerLoadRequests();
        }

        public final void setBannerLoadRequests(int i) {
            this._builder.setBannerLoadRequests(i);
        }

        public final void clearBannerLoadRequests() {
            this._builder.clearBannerLoadRequests();
        }

        public final int getBannerRequestsAdm() {
            return this._builder.getBannerRequestsAdm();
        }

        public final void setBannerRequestsAdm(int i) {
            this._builder.setBannerRequestsAdm(i);
        }

        public final void clearBannerRequestsAdm() {
            this._builder.clearBannerRequestsAdm();
        }

        public final int getBannerImpressions() {
            return this._builder.getBannerImpressions();
        }

        public final void setBannerImpressions(int i) {
            this._builder.setBannerImpressions(i);
        }

        public final void clearBannerImpressions() {
            this._builder.clearBannerImpressions();
        }

        public final int getGlobalAdsFocusTime() {
            return this._builder.getGlobalAdsFocusTime();
        }

        public final void setGlobalAdsFocusTime(int i) {
            this._builder.setGlobalAdsFocusTime(i);
        }

        public final void clearGlobalAdsFocusTime() {
            this._builder.clearGlobalAdsFocusTime();
        }

        public final int getGlobalAdsFocusChangeCount() {
            return this._builder.getGlobalAdsFocusChangeCount();
        }

        public final void setGlobalAdsFocusChangeCount(int i) {
            this._builder.setGlobalAdsFocusChangeCount(i);
        }

        public final void clearGlobalAdsFocusChangeCount() {
            this._builder.clearGlobalAdsFocusChangeCount();
        }

        public final int getFocusChangeCount() {
            return this._builder.getFocusChangeCount();
        }

        public final void setFocusChangeCount(int i) {
            this._builder.setFocusChangeCount(i);
        }

        public final void clearFocusChangeCount() {
            this._builder.clearFocusChangeCount();
        }

        public final int getInitializationLatency() {
            return this._builder.getInitializationLatency();
        }

        public final void setInitializationLatency(int i) {
            this._builder.setInitializationLatency(i);
        }

        public final void clearInitializationLatency() {
            this._builder.clearInitializationLatency();
        }

        public final int getLastLoadLatency() {
            return this._builder.getLastLoadLatency();
        }

        public final void setLastLoadLatency(int i) {
            this._builder.setLastLoadLatency(i);
        }

        public final void clearLastLoadLatency() {
            this._builder.clearLastLoadLatency();
        }

        public final int getAllErrorsCount() {
            return this._builder.getAllErrorsCount();
        }

        public final void setAllErrorsCount(int i) {
            this._builder.setAllErrorsCount(i);
        }

        public final void clearAllErrorsCount() {
            this._builder.clearAllErrorsCount();
        }

        public final int getCacheTimeoutErrorsCount() {
            return this._builder.getCacheTimeoutErrorsCount();
        }

        public final void setCacheTimeoutErrorsCount(int i) {
            this._builder.setCacheTimeoutErrorsCount(i);
        }

        public final void clearCacheTimeoutErrorsCount() {
            this._builder.clearCacheTimeoutErrorsCount();
        }

        public final int getSuccessCount() {
            return this._builder.getSuccessCount();
        }

        public final void setSuccessCount(int i) {
            this._builder.setSuccessCount(i);
        }

        public final void clearSuccessCount() {
            this._builder.clearSuccessCount();
        }
    }
}
