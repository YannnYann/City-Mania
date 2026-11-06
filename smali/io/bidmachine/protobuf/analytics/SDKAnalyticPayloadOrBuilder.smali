###### Class io.bidmachine.protobuf.analytics.SDKAnalyticPayloadOrBuilder (io.bidmachine.protobuf.analytics.SDKAnalyticPayloadOrBuilder)
.class public interface abstract Lio/bidmachine/protobuf/analytics/SDKAnalyticPayloadOrBuilder;
.super Ljava/lang/Object;
.source "SDKAnalyticPayloadOrBuilder.java"

# interfaces
.implements Lcom/explorestack/protobuf/MessageOrBuilder;


# virtual methods
.method public abstract synthetic getDefaultInstanceForType()Lcom/explorestack/protobuf/MessageLite;
.end method

.method public abstract getMetrics(I)Lio/bidmachine/protobuf/analytics/SDKAnalyticPayload$Metric;
.end method

.method public abstract getMetricsCount()I
.end method

.method public abstract getMetricsList()Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lio/bidmachine/protobuf/analytics/SDKAnalyticPayload$Metric;",
            ">;"
        }
    .end annotation
.end method

.method public abstract getMetricsOrBuilder(I)Lio/bidmachine/protobuf/analytics/SDKAnalyticPayload$MetricOrBuilder;
.end method

.method public abstract getMetricsOrBuilderList()Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "+",
            "Lio/bidmachine/protobuf/analytics/SDKAnalyticPayload$MetricOrBuilder;",
            ">;"
        }
    .end annotation
.end method

.method public abstract synthetic isInitialized()Z
.end method
