###### Class io.bidmachine.util.viewabilitytracker.model.ViewabilityTrackerParams (io.bidmachine.util.viewabilitytracker.model.ViewabilityTrackerParams)
.class public final Lio/bidmachine/util/viewabilitytracker/model/ViewabilityTrackerParams;
.super Ljava/lang/Object;
.source "ViewabilityTrackerParams.kt"


# instance fields
.field public final viewabilityRuleList:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lio/bidmachine/util/viewabilitytracker/model/ViewabilityRule;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Ljava/util/List;)V
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lio/bidmachine/util/viewabilitytracker/model/ViewabilityRule;",
            ">;)V"
        }
    .end annotation

    const-string v0, "viewabilityRuleList"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 3
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lio/bidmachine/util/viewabilitytracker/model/ViewabilityTrackerParams;->viewabilityRuleList:Ljava/util/List;

    return-void
.end method


# virtual methods
.method public final getViewabilityRuleList()Ljava/util/List;
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lio/bidmachine/util/viewabilitytracker/model/ViewabilityRule;",
            ">;"
        }
    .end annotation

    .line 3
    iget-object v0, p0, Lio/bidmachine/util/viewabilitytracker/model/ViewabilityTrackerParams;->viewabilityRuleList:Ljava/util/List;

    return-object v0
.end method
