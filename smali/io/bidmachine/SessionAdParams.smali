###### Class io.bidmachine.SessionAdParams (io.bidmachine.SessionAdParams)
.class public final Lio/bidmachine/SessionAdParams;
.super Lio/bidmachine/models/RequestParams;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lio/bidmachine/models/RequestParams<",
        "Lio/bidmachine/SessionAdParams;",
        ">;"
    }
.end annotation

.annotation runtime Ljava/lang/Deprecated;
.end annotation


# instance fields
.field private sessionDuration:Ljava/lang/Integer;


# direct methods
.method public constructor <init>()V
    .registers 1

    .line 1
    invoke-direct {p0}, Lio/bidmachine/models/RequestParams;-><init>()V

    return-void
.end method


# virtual methods
.method public clear()V
    .registers 2

    const/4 v0, 0x0

    .line 1
    iput-object v0, p0, Lio/bidmachine/SessionAdParams;->sessionDuration:Ljava/lang/Integer;

    return-void
.end method

.method public fillUserExtension(Lcom/explorestack/protobuf/Struct$Builder;)V
    .registers 5

    .line 1
    iget-object v0, p0, Lio/bidmachine/SessionAdParams;->sessionDuration:Ljava/lang/Integer;

    if-eqz v0, :cond_1c

    .line 3
    invoke-static {}, Lcom/explorestack/protobuf/Value;->newBuilder()Lcom/explorestack/protobuf/Value$Builder;

    move-result-object v0

    iget-object v1, p0, Lio/bidmachine/SessionAdParams;->sessionDuration:Ljava/lang/Integer;

    .line 4
    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v1

    int-to-double v1, v1

    invoke-virtual {v0, v1, v2}, Lcom/explorestack/protobuf/Value$Builder;->setNumberValue(D)Lcom/explorestack/protobuf/Value$Builder;

    move-result-object v0

    .line 5
    invoke-virtual {v0}, Lcom/explorestack/protobuf/Value$Builder;->build()Lcom/explorestack/protobuf/Value;

    move-result-object v0

    .line 6
    const-string v1, "sessionduration"

    invoke-virtual {p1, v1, v0}, Lcom/explorestack/protobuf/Struct$Builder;->putFields(Ljava/lang/String;Lcom/explorestack/protobuf/Value;)Lcom/explorestack/protobuf/Struct$Builder;

    :cond_1c
    return-void
.end method

.method public getSessionDuration()Ljava/lang/Integer;
    .registers 2

    .line 1
    iget-object v0, p0, Lio/bidmachine/SessionAdParams;->sessionDuration:Ljava/lang/Integer;

    return-object v0
.end method

.method public merge(Lio/bidmachine/SessionAdParams;)V
    .registers 3

    .line 2
    iget-object v0, p0, Lio/bidmachine/SessionAdParams;->sessionDuration:Ljava/lang/Integer;

    iget-object p1, p1, Lio/bidmachine/SessionAdParams;->sessionDuration:Ljava/lang/Integer;

    invoke-static {v0, p1}, Lio/bidmachine/core/Utils;->oneOf(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/Integer;

    iput-object p1, p0, Lio/bidmachine/SessionAdParams;->sessionDuration:Ljava/lang/Integer;

    return-void
.end method

.method public bridge synthetic merge(Lio/bidmachine/models/RequestParams;)V
    .registers 2

    .line 1
    check-cast p1, Lio/bidmachine/SessionAdParams;

    invoke-virtual {p0, p1}, Lio/bidmachine/SessionAdParams;->merge(Lio/bidmachine/SessionAdParams;)V

    return-void
.end method

.method public setClickRate(Ljava/lang/Float;)Lio/bidmachine/SessionAdParams;
    .registers 2
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 2
    const-string p1, "The method setClickRate is no longer supported and has no effect."

    invoke-static {p1}, Lio/bidmachine/core/Logger;->w(Ljava/lang/String;)V

    return-object p0
.end method

.method public bridge synthetic setClickRate(Ljava/lang/Float;)Ljava/lang/Object;
    .registers 2
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 1
    invoke-virtual {p0, p1}, Lio/bidmachine/SessionAdParams;->setClickRate(Ljava/lang/Float;)Lio/bidmachine/SessionAdParams;

    move-result-object p1

    return-object p1
.end method

.method public setCompletionRate(Ljava/lang/Float;)Lio/bidmachine/SessionAdParams;
    .registers 2
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 2
    const-string p1, "The method setCompletionRate is no longer supported and has no effect."

    invoke-static {p1}, Lio/bidmachine/core/Logger;->w(Ljava/lang/String;)V

    return-object p0
.end method

.method public bridge synthetic setCompletionRate(Ljava/lang/Float;)Ljava/lang/Object;
    .registers 2
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 1
    invoke-virtual {p0, p1}, Lio/bidmachine/SessionAdParams;->setCompletionRate(Ljava/lang/Float;)Lio/bidmachine/SessionAdParams;

    move-result-object p1

    return-object p1
.end method

.method public setImpressionCount(Ljava/lang/Integer;)Lio/bidmachine/SessionAdParams;
    .registers 2
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 2
    const-string p1, "The method setImpressionCount is no longer supported and has no effect."

    invoke-static {p1}, Lio/bidmachine/core/Logger;->w(Ljava/lang/String;)V

    return-object p0
.end method

.method public bridge synthetic setImpressionCount(Ljava/lang/Integer;)Ljava/lang/Object;
    .registers 2
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 1
    invoke-virtual {p0, p1}, Lio/bidmachine/SessionAdParams;->setImpressionCount(Ljava/lang/Integer;)Lio/bidmachine/SessionAdParams;

    move-result-object p1

    return-object p1
.end method

.method public setIsUserClickedOnLastAd(Ljava/lang/Boolean;)Lio/bidmachine/SessionAdParams;
    .registers 2
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 2
    const-string p1, "The method setIsUserClickedOnLastAd is no longer supported and has no effect."

    invoke-static {p1}, Lio/bidmachine/core/Logger;->w(Ljava/lang/String;)V

    return-object p0
.end method

.method public bridge synthetic setIsUserClickedOnLastAd(Ljava/lang/Boolean;)Ljava/lang/Object;
    .registers 2
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 1
    invoke-virtual {p0, p1}, Lio/bidmachine/SessionAdParams;->setIsUserClickedOnLastAd(Ljava/lang/Boolean;)Lio/bidmachine/SessionAdParams;

    move-result-object p1

    return-object p1
.end method

.method public setSessionDuration(Ljava/lang/Integer;)Lio/bidmachine/SessionAdParams;
    .registers 3

    if-eqz p1, :cond_f

    .line 2
    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    move-result v0

    if-ltz v0, :cond_9

    goto :goto_f

    .line 5
    :cond_9
    const-string p1, "session duration shouldn\'t be negative"

    invoke-static {p1}, Lio/bidmachine/core/Logger;->e(Ljava/lang/String;)V

    return-object p0

    .line 6
    :cond_f
    :goto_f
    iput-object p1, p0, Lio/bidmachine/SessionAdParams;->sessionDuration:Ljava/lang/Integer;

    return-object p0
.end method

.method public bridge synthetic setSessionDuration(Ljava/lang/Integer;)Ljava/lang/Object;
    .registers 2

    .line 1
    invoke-virtual {p0, p1}, Lio/bidmachine/SessionAdParams;->setSessionDuration(Ljava/lang/Integer;)Lio/bidmachine/SessionAdParams;

    move-result-object p1

    return-object p1
.end method
