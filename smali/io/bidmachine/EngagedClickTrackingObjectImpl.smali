###### Class io.bidmachine.EngagedClickTrackingObjectImpl (io.bidmachine.EngagedClickTrackingObjectImpl)
.class public final Lio/bidmachine/EngagedClickTrackingObjectImpl;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lio/bidmachine/rendering/model/engagedclick/EngagedClickTrackingObject;


# instance fields
.field private final unifiedAdCallback:Lio/bidmachine/unified/UnifiedAdCallback;


# direct methods
.method public constructor <init>(Lio/bidmachine/unified/UnifiedAdCallback;)V
    .registers 3

    const-string v0, "unifiedAdCallback"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    iput-object p1, p0, Lio/bidmachine/EngagedClickTrackingObjectImpl;->unifiedAdCallback:Lio/bidmachine/unified/UnifiedAdCallback;

    return-void
.end method


# virtual methods
.method public reportEngagedClick(Lio/bidmachine/rendering/model/engagedclick/EngagedClickReport;)V
    .registers 4

    const-string v0, "engagedClickReport"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1
    invoke-static {p1}, Lio/bidmachine/EngagedClickTrackingObjectImplKt;->access$toContextValue(Lio/bidmachine/rendering/model/engagedclick/EngagedClickReport;)Lcom/explorestack/protobuf/Value;

    move-result-object p1

    if-nez p1, :cond_c

    return-void

    .line 2
    :cond_c
    iget-object v0, p0, Lio/bidmachine/EngagedClickTrackingObjectImpl;->unifiedAdCallback:Lio/bidmachine/unified/UnifiedAdCallback;

    const-string v1, "engaged_click_context"

    invoke-static {v1, p1}, Lkotlin/TuplesKt;->to(Ljava/lang/Object;Ljava/lang/Object;)Lkotlin/Pair;

    move-result-object p1

    invoke-static {p1}, Lkotlin/collections/MapsKt__MapsJVMKt;->mapOf(Lkotlin/Pair;)Ljava/util/Map;

    move-result-object p1

    invoke-interface {v0, p1}, Lio/bidmachine/unified/UnifiedAdCallback;->onEngagedClick(Ljava/util/Map;)V

    return-void
.end method
