###### Class io.bidmachine.EngagedClickTrackingObjectImplKt (io.bidmachine.EngagedClickTrackingObjectImplKt)
.class public final Lio/bidmachine/EngagedClickTrackingObjectImplKt;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field private static final KEY_ACTION:Ljava/lang/String; = "action"

.field private static final KEY_AMBIENT_DIFF:Ljava/lang/String; = "ambient_diff"

.field private static final KEY_CREATIVE_PROFILE:Ljava/lang/String; = "creative_profile"

.field private static final KEY_DIFF_SCORE:Ljava/lang/String; = "diff_score"

.field private static final KEY_ENGAGED_CLICK_CONTEXT:Ljava/lang/String; = "engaged_click_context"

.field private static final KEY_INTERACTION_DURATION_MS:Ljava/lang/String; = "interaction_duration_ms"

.field private static final KEY_PROFILE_SOURCE:Ljava/lang/String; = "profile_source"


# direct methods
.method public static final synthetic access$toContextValue(Lio/bidmachine/rendering/model/engagedclick/EngagedClickReport;)Lcom/explorestack/protobuf/Value;
    .registers 1

    .line 1
    invoke-static {p0}, Lio/bidmachine/EngagedClickTrackingObjectImplKt;->toContextValue(Lio/bidmachine/rendering/model/engagedclick/EngagedClickReport;)Lcom/explorestack/protobuf/Value;

    move-result-object p0

    return-object p0
.end method

.method private static final toContextValue(Lio/bidmachine/rendering/model/engagedclick/EngagedClickReport;)Lcom/explorestack/protobuf/Value;
    .registers 5

    .line 1
    :try_start_0
    invoke-static {}, Lcom/explorestack/protobuf/Struct;->newBuilder()Lcom/explorestack/protobuf/Struct$Builder;

    move-result-object v0

    const-string v1, "newBuilder()"

    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    .line 2
    const-string v1, "action"

    invoke-virtual {p0}, Lio/bidmachine/rendering/model/engagedclick/EngagedClickReport;->getEngagedClickAction()Lio/bidmachine/rendering/model/engagedclick/EngagedClickAction;

    move-result-object v2

    invoke-virtual {v2}, Lio/bidmachine/rendering/model/engagedclick/EngagedClickAction;->getValue()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v1, v2}, Lio/bidmachine/utils/ProtoUtilsKt;->putField(Lcom/explorestack/protobuf/Struct$Builder;Ljava/lang/String;Ljava/lang/String;)Lcom/explorestack/protobuf/Struct$Builder;

    move-result-object v0

    .line 3
    const-string v1, "creative_profile"

    invoke-virtual {p0}, Lio/bidmachine/rendering/model/engagedclick/EngagedClickReport;->getProfile()Lio/bidmachine/rendering/model/engagedclick/CreativeProfile;

    move-result-object v2

    invoke-virtual {v2}, Lio/bidmachine/rendering/model/engagedclick/CreativeProfile;->getValue()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v1, v2}, Lio/bidmachine/utils/ProtoUtilsKt;->putField(Lcom/explorestack/protobuf/Struct$Builder;Ljava/lang/String;Ljava/lang/String;)Lcom/explorestack/protobuf/Struct$Builder;

    move-result-object v0

    .line 4
    const-string v1, "profile_source"

    invoke-virtual {p0}, Lio/bidmachine/rendering/model/engagedclick/EngagedClickReport;->getSource()Lio/bidmachine/rendering/model/engagedclick/ProfileSource;

    move-result-object v2

    invoke-virtual {v2}, Lio/bidmachine/rendering/model/engagedclick/ProfileSource;->getValue()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v1, v2}, Lio/bidmachine/utils/ProtoUtilsKt;->putField(Lcom/explorestack/protobuf/Struct$Builder;Ljava/lang/String;Ljava/lang/String;)Lcom/explorestack/protobuf/Struct$Builder;

    move-result-object v0

    .line 5
    const-string v1, "interaction_duration_ms"

    invoke-virtual {p0}, Lio/bidmachine/rendering/model/engagedclick/EngagedClickReport;->getInteractionDurationMs()J

    move-result-wide v2

    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v2

    invoke-static {v0, v1, v2}, Lio/bidmachine/utils/ProtoUtilsKt;->putField(Lcom/explorestack/protobuf/Struct$Builder;Ljava/lang/String;Ljava/lang/Number;)Lcom/explorestack/protobuf/Struct$Builder;

    move-result-object v0

    .line 7
    invoke-virtual {p0}, Lio/bidmachine/rendering/model/engagedclick/EngagedClickReport;->getDiffScore()Ljava/lang/Double;

    move-result-object v1

    if-eqz v1, :cond_54

    invoke-virtual {v1}, Ljava/lang/Number;->doubleValue()D

    move-result-wide v1

    .line 8
    const-string v3, "diff_score"

    invoke-static {v1, v2}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v1

    invoke-static {v0, v3, v1}, Lio/bidmachine/utils/ProtoUtilsKt;->putField(Lcom/explorestack/protobuf/Struct$Builder;Ljava/lang/String;Ljava/lang/Number;)Lcom/explorestack/protobuf/Struct$Builder;

    .line 10
    :cond_54
    invoke-virtual {p0}, Lio/bidmachine/rendering/model/engagedclick/EngagedClickReport;->getAmbientDiff()Ljava/lang/Double;

    move-result-object p0

    if-eqz p0, :cond_67

    invoke-virtual {p0}, Ljava/lang/Number;->doubleValue()D

    move-result-wide v1

    .line 11
    const-string p0, "ambient_diff"

    invoke-static {v1, v2}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v1

    invoke-static {v0, p0, v1}, Lio/bidmachine/utils/ProtoUtilsKt;->putField(Lcom/explorestack/protobuf/Struct$Builder;Ljava/lang/String;Ljava/lang/Number;)Lcom/explorestack/protobuf/Struct$Builder;

    .line 14
    :cond_67
    invoke-static {v0}, Lio/bidmachine/utils/ProtoUtilsKt;->toProtoValue(Lcom/explorestack/protobuf/Struct$Builder;)Lcom/explorestack/protobuf/Value;

    move-result-object p0
    :try_end_6b
    .catchall {:try_start_0 .. :try_end_6b} :catchall_6c

    return-object p0

    :catchall_6c
    const/4 p0, 0x0

    return-object p0
.end method
