###### Class io.bidmachine.util.viewabilitytracker.model.ViewabilityMeasurement (io.bidmachine.util.viewabilitytracker.model.ViewabilityMeasurement)
.class public final Lio/bidmachine/util/viewabilitytracker/model/ViewabilityMeasurement;
.super Ljava/lang/Object;
.source "ViewabilityMeasurement.kt"


# instance fields
.field public final count:I

.field public final failureTimeoutMs:Ljava/lang/Long;

.field public final intervalMs:J


# direct methods
.method public constructor <init>(IJLjava/lang/Long;)V
    .registers 5

    .line 3
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput p1, p0, Lio/bidmachine/util/viewabilitytracker/model/ViewabilityMeasurement;->count:I

    iput-wide p2, p0, Lio/bidmachine/util/viewabilitytracker/model/ViewabilityMeasurement;->intervalMs:J

    iput-object p4, p0, Lio/bidmachine/util/viewabilitytracker/model/ViewabilityMeasurement;->failureTimeoutMs:Ljava/lang/Long;

    return-void
.end method


# virtual methods
.method public final getCount()I
    .registers 2

    .line 3
    iget v0, p0, Lio/bidmachine/util/viewabilitytracker/model/ViewabilityMeasurement;->count:I

    return v0
.end method

.method public final getFailureTimeoutMs()Ljava/lang/Long;
    .registers 2

    .line 3
    iget-object v0, p0, Lio/bidmachine/util/viewabilitytracker/model/ViewabilityMeasurement;->failureTimeoutMs:Ljava/lang/Long;

    return-object v0
.end method

.method public final getIntervalMs()J
    .registers 3

    .line 3
    iget-wide v0, p0, Lio/bidmachine/util/viewabilitytracker/model/ViewabilityMeasurement;->intervalMs:J

    return-wide v0
.end method
