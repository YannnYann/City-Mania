###### Class io.bidmachine.util.viewabilitytracker.model.ViewabilityRule (io.bidmachine.util.viewabilitytracker.model.ViewabilityRule)
.class public final Lio/bidmachine/util/viewabilitytracker/model/ViewabilityRule;
.super Ljava/lang/Object;
.source "ViewabilityRule.kt"


# instance fields
.field public final actionEvent:Lio/bidmachine/util/viewabilitytracker/model/ActionEvent;

.field public final metrics:Ljava/util/Collection;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Collection<",
            "Lio/bidmachine/util/viewabilitytracker/metric/Metric;",
            ">;"
        }
    .end annotation
.end field

.field public final viewabilityMeasurement:Lio/bidmachine/util/viewabilitytracker/model/ViewabilityMeasurement;


# direct methods
.method public constructor <init>(Lio/bidmachine/util/viewabilitytracker/model/ActionEvent;Lio/bidmachine/util/viewabilitytracker/model/ViewabilityMeasurement;Ljava/util/Collection;)V
    .registers 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lio/bidmachine/util/viewabilitytracker/model/ActionEvent;",
            "Lio/bidmachine/util/viewabilitytracker/model/ViewabilityMeasurement;",
            "Ljava/util/Collection<",
            "+",
            "Lio/bidmachine/util/viewabilitytracker/metric/Metric;",
            ">;)V"
        }
    .end annotation

    const-string v0, "actionEvent"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "viewabilityMeasurement"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "metrics"

    invoke-static {p3, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 5
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 6
    iput-object p1, p0, Lio/bidmachine/util/viewabilitytracker/model/ViewabilityRule;->actionEvent:Lio/bidmachine/util/viewabilitytracker/model/ActionEvent;

    .line 7
    iput-object p2, p0, Lio/bidmachine/util/viewabilitytracker/model/ViewabilityRule;->viewabilityMeasurement:Lio/bidmachine/util/viewabilitytracker/model/ViewabilityMeasurement;

    .line 8
    iput-object p3, p0, Lio/bidmachine/util/viewabilitytracker/model/ViewabilityRule;->metrics:Ljava/util/Collection;

    return-void
.end method


# virtual methods
.method public final getActionEvent()Lio/bidmachine/util/viewabilitytracker/model/ActionEvent;
    .registers 2

    .line 6
    iget-object v0, p0, Lio/bidmachine/util/viewabilitytracker/model/ViewabilityRule;->actionEvent:Lio/bidmachine/util/viewabilitytracker/model/ActionEvent;

    return-object v0
.end method

.method public final getMetrics()Ljava/util/Collection;
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Collection<",
            "Lio/bidmachine/util/viewabilitytracker/metric/Metric;",
            ">;"
        }
    .end annotation

    .line 8
    iget-object v0, p0, Lio/bidmachine/util/viewabilitytracker/model/ViewabilityRule;->metrics:Ljava/util/Collection;

    return-object v0
.end method

.method public final getViewabilityMeasurement()Lio/bidmachine/util/viewabilitytracker/model/ViewabilityMeasurement;
    .registers 2

    .line 7
    iget-object v0, p0, Lio/bidmachine/util/viewabilitytracker/model/ViewabilityRule;->viewabilityMeasurement:Lio/bidmachine/util/viewabilitytracker/model/ViewabilityMeasurement;

    return-object v0
.end method
