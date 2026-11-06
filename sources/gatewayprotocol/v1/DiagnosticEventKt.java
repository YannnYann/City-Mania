package gatewayprotocol.v1;

import com.google.protobuf.ByteString;
import com.google.protobuf.kotlin.DslList;
import com.google.protobuf.kotlin.DslMap;
import com.google.protobuf.kotlin.DslProxy;
import com.google.protobuf.kotlin.ProtoDslMarker;
import gatewayprotocol.v1.AdFormatOuterClass;
import gatewayprotocol.v1.DiagnosticEventRequestOuterClass;
import gatewayprotocol.v1.TimestampsOuterClass;
import java.util.List;
import java.util.Map;
import kotlin.jvm.internal.DefaultConstructorMarker;
import kotlin.jvm.internal.Intrinsics;

/* JADX INFO: compiled from: DiagnosticEventKt.kt */
/* JADX INFO: loaded from: classes4.dex */
public final class DiagnosticEventKt {
    public static final DiagnosticEventKt INSTANCE = new DiagnosticEventKt();

    private DiagnosticEventKt() {
    }

    /* JADX INFO: compiled from: DiagnosticEventKt.kt */
    @ProtoDslMarker
    public static final class Dsl {
        public static final Companion Companion = new Companion(null);
        private final DiagnosticEventRequestOuterClass.DiagnosticEvent.Builder _builder;

        public /* synthetic */ Dsl(DiagnosticEventRequestOuterClass.DiagnosticEvent.Builder builder, DefaultConstructorMarker defaultConstructorMarker) {
            this(builder);
        }

        private Dsl(DiagnosticEventRequestOuterClass.DiagnosticEvent.Builder builder) {
            this._builder = builder;
        }

        /* JADX INFO: compiled from: DiagnosticEventKt.kt */
        public static final class Companion {
            public /* synthetic */ Companion(DefaultConstructorMarker defaultConstructorMarker) {
                this();
            }

            private Companion() {
            }

            public final /* synthetic */ Dsl _create(DiagnosticEventRequestOuterClass.DiagnosticEvent.Builder builder) {
                Intrinsics.checkNotNullParameter(builder, "builder");
                return new Dsl(builder, null);
            }
        }

        public final /* synthetic */ DiagnosticEventRequestOuterClass.DiagnosticEvent _build() {
            DiagnosticEventRequestOuterClass.DiagnosticEvent diagnosticEventBuild = this._builder.build();
            Intrinsics.checkNotNullExpressionValue(diagnosticEventBuild, "build(...)");
            return diagnosticEventBuild;
        }

        public final DiagnosticEventRequestOuterClass.DiagnosticEventType getEventType() {
            DiagnosticEventRequestOuterClass.DiagnosticEventType eventType = this._builder.getEventType();
            Intrinsics.checkNotNullExpressionValue(eventType, "getEventType(...)");
            return eventType;
        }

        public final void setEventType(DiagnosticEventRequestOuterClass.DiagnosticEventType value) {
            Intrinsics.checkNotNullParameter(value, "value");
            this._builder.setEventType(value);
        }

        public final int getEventTypeValue() {
            return this._builder.getEventTypeValue();
        }

        public final void setEventTypeValue(int i) {
            this._builder.setEventTypeValue(i);
        }

        public final void clearEventType() {
            this._builder.clearEventType();
        }

        public final String getCustomEventType() {
            String customEventType = this._builder.getCustomEventType();
            Intrinsics.checkNotNullExpressionValue(customEventType, "getCustomEventType(...)");
            return customEventType;
        }

        public final void setCustomEventType(String value) {
            Intrinsics.checkNotNullParameter(value, "value");
            this._builder.setCustomEventType(value);
        }

        public final void clearCustomEventType() {
            this._builder.clearCustomEventType();
        }

        public final boolean hasCustomEventType() {
            return this._builder.hasCustomEventType();
        }

        public final TimestampsOuterClass.Timestamps getTimestamps() {
            TimestampsOuterClass.Timestamps timestamps = this._builder.getTimestamps();
            Intrinsics.checkNotNullExpressionValue(timestamps, "getTimestamps(...)");
            return timestamps;
        }

        public final void setTimestamps(TimestampsOuterClass.Timestamps value) {
            Intrinsics.checkNotNullParameter(value, "value");
            this._builder.setTimestamps(value);
        }

        public final void clearTimestamps() {
            this._builder.clearTimestamps();
        }

        public final boolean hasTimestamps() {
            return this._builder.hasTimestamps();
        }

        public final double getTimeValue() {
            return this._builder.getTimeValue();
        }

        public final void setTimeValue(double d) {
            this._builder.setTimeValue(d);
        }

        public final void clearTimeValue() {
            this._builder.clearTimeValue();
        }

        public final boolean hasTimeValue() {
            return this._builder.hasTimeValue();
        }

        /* JADX INFO: compiled from: DiagnosticEventKt.kt */
        public static final class StringTagsProxy extends DslProxy {
            private StringTagsProxy() {
            }
        }

        public final /* synthetic */ DslMap getStringTagsMap() {
            Map<String, String> stringTagsMap = this._builder.getStringTagsMap();
            Intrinsics.checkNotNullExpressionValue(stringTagsMap, "getStringTagsMap(...)");
            return new DslMap(stringTagsMap);
        }

        public final void putStringTags(DslMap<String, String, StringTagsProxy> dslMap, String key, String value) {
            Intrinsics.checkNotNullParameter(dslMap, "<this>");
            Intrinsics.checkNotNullParameter(key, "key");
            Intrinsics.checkNotNullParameter(value, "value");
            this._builder.putStringTags(key, value);
        }

        public final /* synthetic */ void setStringTags(DslMap<String, String, StringTagsProxy> dslMap, String key, String value) {
            Intrinsics.checkNotNullParameter(dslMap, "<this>");
            Intrinsics.checkNotNullParameter(key, "key");
            Intrinsics.checkNotNullParameter(value, "value");
            putStringTags(dslMap, key, value);
        }

        public final /* synthetic */ void removeStringTags(DslMap dslMap, String key) {
            Intrinsics.checkNotNullParameter(dslMap, "<this>");
            Intrinsics.checkNotNullParameter(key, "key");
            this._builder.removeStringTags(key);
        }

        public final /* synthetic */ void putAllStringTags(DslMap dslMap, Map map) {
            Intrinsics.checkNotNullParameter(dslMap, "<this>");
            Intrinsics.checkNotNullParameter(map, "map");
            this._builder.putAllStringTags(map);
        }

        public final /* synthetic */ void clearStringTags(DslMap dslMap) {
            Intrinsics.checkNotNullParameter(dslMap, "<this>");
            this._builder.clearStringTags();
        }

        /* JADX INFO: compiled from: DiagnosticEventKt.kt */
        public static final class IntTagsProxy extends DslProxy {
            private IntTagsProxy() {
            }
        }

        public final /* synthetic */ DslMap getIntTagsMap() {
            Map<String, Integer> intTagsMap = this._builder.getIntTagsMap();
            Intrinsics.checkNotNullExpressionValue(intTagsMap, "getIntTagsMap(...)");
            return new DslMap(intTagsMap);
        }

        public final void putIntTags(DslMap<String, Integer, IntTagsProxy> dslMap, String key, int i) {
            Intrinsics.checkNotNullParameter(dslMap, "<this>");
            Intrinsics.checkNotNullParameter(key, "key");
            this._builder.putIntTags(key, i);
        }

        public final /* synthetic */ void setIntTags(DslMap<String, Integer, IntTagsProxy> dslMap, String key, int i) {
            Intrinsics.checkNotNullParameter(dslMap, "<this>");
            Intrinsics.checkNotNullParameter(key, "key");
            putIntTags(dslMap, key, i);
        }

        public final /* synthetic */ void removeIntTags(DslMap dslMap, String key) {
            Intrinsics.checkNotNullParameter(dslMap, "<this>");
            Intrinsics.checkNotNullParameter(key, "key");
            this._builder.removeIntTags(key);
        }

        public final /* synthetic */ void putAllIntTags(DslMap dslMap, Map map) {
            Intrinsics.checkNotNullParameter(dslMap, "<this>");
            Intrinsics.checkNotNullParameter(map, "map");
            this._builder.putAllIntTags(map);
        }

        public final /* synthetic */ void clearIntTags(DslMap dslMap) {
            Intrinsics.checkNotNullParameter(dslMap, "<this>");
            this._builder.clearIntTags();
        }

        public final int getEventId() {
            return this._builder.getEventId();
        }

        public final void setEventId(int i) {
            this._builder.setEventId(i);
        }

        public final void clearEventId() {
            this._builder.clearEventId();
        }

        public final ByteString getImpressionOpportunityId() {
            ByteString impressionOpportunityId = this._builder.getImpressionOpportunityId();
            Intrinsics.checkNotNullExpressionValue(impressionOpportunityId, "getImpressionOpportunityId(...)");
            return impressionOpportunityId;
        }

        public final void setImpressionOpportunityId(ByteString value) {
            Intrinsics.checkNotNullParameter(value, "value");
            this._builder.setImpressionOpportunityId(value);
        }

        public final void clearImpressionOpportunityId() {
            this._builder.clearImpressionOpportunityId();
        }

        public final boolean hasImpressionOpportunityId() {
            return this._builder.hasImpressionOpportunityId();
        }

        public final String getPlacementId() {
            String placementId = this._builder.getPlacementId();
            Intrinsics.checkNotNullExpressionValue(placementId, "getPlacementId(...)");
            return placementId;
        }

        public final void setPlacementId(String value) {
            Intrinsics.checkNotNullParameter(value, "value");
            this._builder.setPlacementId(value);
        }

        public final void clearPlacementId() {
            this._builder.clearPlacementId();
        }

        public final boolean hasPlacementId() {
            return this._builder.hasPlacementId();
        }

        public final DiagnosticEventRequestOuterClass.DiagnosticAdType getAdType() {
            DiagnosticEventRequestOuterClass.DiagnosticAdType adType = this._builder.getAdType();
            Intrinsics.checkNotNullExpressionValue(adType, "getAdType(...)");
            return adType;
        }

        public final void setAdType(DiagnosticEventRequestOuterClass.DiagnosticAdType value) {
            Intrinsics.checkNotNullParameter(value, "value");
            this._builder.setAdType(value);
        }

        public final int getAdTypeValue() {
            return this._builder.getAdTypeValue();
        }

        public final void setAdTypeValue(int i) {
            this._builder.setAdTypeValue(i);
        }

        public final void clearAdType() {
            this._builder.clearAdType();
        }

        public final boolean hasAdType() {
            return this._builder.hasAdType();
        }

        public final boolean getIsHeaderBidding() {
            return this._builder.getIsHeaderBidding();
        }

        public final void setIsHeaderBidding(boolean z) {
            this._builder.setIsHeaderBidding(z);
        }

        public final void clearIsHeaderBidding() {
            this._builder.clearIsHeaderBidding();
        }

        public final boolean hasIsHeaderBidding() {
            return this._builder.hasIsHeaderBidding();
        }

        public final int getHeaderBiddingTokenNumber() {
            return this._builder.getHeaderBiddingTokenNumber();
        }

        public final void setHeaderBiddingTokenNumber(int i) {
            this._builder.setHeaderBiddingTokenNumber(i);
        }

        public final void clearHeaderBiddingTokenNumber() {
            this._builder.clearHeaderBiddingTokenNumber();
        }

        public final boolean hasHeaderBiddingTokenNumber() {
            return this._builder.hasHeaderBiddingTokenNumber();
        }

        public final AdFormatOuterClass.AdFormat getAdFormat() {
            AdFormatOuterClass.AdFormat adFormat = this._builder.getAdFormat();
            Intrinsics.checkNotNullExpressionValue(adFormat, "getAdFormat(...)");
            return adFormat;
        }

        public final void setAdFormat(AdFormatOuterClass.AdFormat value) {
            Intrinsics.checkNotNullParameter(value, "value");
            this._builder.setAdFormat(value);
        }

        public final int getAdFormatValue() {
            return this._builder.getAdFormatValue();
        }

        public final void setAdFormatValue(int i) {
            this._builder.setAdFormatValue(i);
        }

        public final void clearAdFormat() {
            this._builder.clearAdFormat();
        }

        public final boolean hasAdFormat() {
            return this._builder.hasAdFormat();
        }

        public final String getReason() {
            String reason = this._builder.getReason();
            Intrinsics.checkNotNullExpressionValue(reason, "getReason(...)");
            return reason;
        }

        public final void setReason(String value) {
            Intrinsics.checkNotNullParameter(value, "value");
            this._builder.setReason(value);
        }

        public final void clearReason() {
            this._builder.clearReason();
        }

        public final boolean hasReason() {
            return this._builder.hasReason();
        }

        public final String getReasonDebug() {
            String reasonDebug = this._builder.getReasonDebug();
            Intrinsics.checkNotNullExpressionValue(reasonDebug, "getReasonDebug(...)");
            return reasonDebug;
        }

        public final void setReasonDebug(String value) {
            Intrinsics.checkNotNullParameter(value, "value");
            this._builder.setReasonDebug(value);
        }

        public final void clearReasonDebug() {
            this._builder.clearReasonDebug();
        }

        public final boolean hasReasonDebug() {
            return this._builder.hasReasonDebug();
        }

        public final ByteString getErrorToken() {
            ByteString errorToken = this._builder.getErrorToken();
            Intrinsics.checkNotNullExpressionValue(errorToken, "getErrorToken(...)");
            return errorToken;
        }

        public final void setErrorToken(ByteString value) {
            Intrinsics.checkNotNullParameter(value, "value");
            this._builder.setErrorToken(value);
        }

        public final void clearErrorToken() {
            this._builder.clearErrorToken();
        }

        public final boolean hasErrorToken() {
            return this._builder.hasErrorToken();
        }

        /* JADX INFO: compiled from: DiagnosticEventKt.kt */
        public static final class TagsProxy extends DslProxy {
            private TagsProxy() {
            }
        }

        public final /* synthetic */ DslList getTags() {
            List<DiagnosticEventRequestOuterClass.DiagnosticTag> tagsList = this._builder.getTagsList();
            Intrinsics.checkNotNullExpressionValue(tagsList, "getTagsList(...)");
            return new DslList(tagsList);
        }

        public final /* synthetic */ void addTags(DslList dslList, DiagnosticEventRequestOuterClass.DiagnosticTag value) {
            Intrinsics.checkNotNullParameter(dslList, "<this>");
            Intrinsics.checkNotNullParameter(value, "value");
            this._builder.addTags(value);
        }

        public final /* synthetic */ void plusAssignTags(DslList<DiagnosticEventRequestOuterClass.DiagnosticTag, TagsProxy> dslList, DiagnosticEventRequestOuterClass.DiagnosticTag value) {
            Intrinsics.checkNotNullParameter(dslList, "<this>");
            Intrinsics.checkNotNullParameter(value, "value");
            addTags(dslList, value);
        }

        public final /* synthetic */ void addAllTags(DslList dslList, Iterable values) {
            Intrinsics.checkNotNullParameter(dslList, "<this>");
            Intrinsics.checkNotNullParameter(values, "values");
            this._builder.addAllTags(values);
        }

        public final /* synthetic */ void plusAssignAllTags(DslList<DiagnosticEventRequestOuterClass.DiagnosticTag, TagsProxy> dslList, Iterable<DiagnosticEventRequestOuterClass.DiagnosticTag> values) {
            Intrinsics.checkNotNullParameter(dslList, "<this>");
            Intrinsics.checkNotNullParameter(values, "values");
            addAllTags(dslList, values);
        }

        public final /* synthetic */ void setTags(DslList dslList, int i, DiagnosticEventRequestOuterClass.DiagnosticTag value) {
            Intrinsics.checkNotNullParameter(dslList, "<this>");
            Intrinsics.checkNotNullParameter(value, "value");
            this._builder.setTags(i, value);
        }

        public final /* synthetic */ void clearTags(DslList dslList) {
            Intrinsics.checkNotNullParameter(dslList, "<this>");
            this._builder.clearTags();
        }
    }
}
