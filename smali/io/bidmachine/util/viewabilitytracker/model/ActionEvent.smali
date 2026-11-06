###### Class io.bidmachine.util.viewabilitytracker.model.ActionEvent (io.bidmachine.util.viewabilitytracker.model.ActionEvent)
.class public final Lio/bidmachine/util/viewabilitytracker/model/ActionEvent;
.super Ljava/lang/Object;
.source "ActionEvent.kt"


# instance fields
.field public final actionCode:I

.field public final isBillable:Z


# direct methods
.method public constructor <init>(IZ)V
    .registers 3

    .line 3
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput p1, p0, Lio/bidmachine/util/viewabilitytracker/model/ActionEvent;->actionCode:I

    iput-boolean p2, p0, Lio/bidmachine/util/viewabilitytracker/model/ActionEvent;->isBillable:Z

    return-void
.end method


# virtual methods
.method public final getActionCode()I
    .registers 2

    .line 3
    iget v0, p0, Lio/bidmachine/util/viewabilitytracker/model/ActionEvent;->actionCode:I

    return v0
.end method

.method public final isBillable()Z
    .registers 2

    .line 3
    iget-boolean v0, p0, Lio/bidmachine/util/viewabilitytracker/model/ActionEvent;->isBillable:Z

    return v0
.end method

.method public toString()Ljava/lang/String;
    .registers 3

    .line 6
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "action code - "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lio/bidmachine/util/viewabilitytracker/model/ActionEvent;->actionCode:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, ", is billable - "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v1, p0, Lio/bidmachine/util/viewabilitytracker/model/ActionEvent;->isBillable:Z

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
