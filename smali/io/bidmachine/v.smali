###### Class io.bidmachine.v (io.bidmachine.v)
.class public Lio/bidmachine/v;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lio/bidmachine/InitializationParams;


# instance fields
.field public final a:Lio/bidmachine/models/TargetingInfo;

.field public final b:Lio/bidmachine/models/DataRestrictions;


# direct methods
.method public constructor <init>(Lio/bidmachine/TargetingParams;Lio/bidmachine/models/DataRestrictions;)V
    .registers 4

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    new-instance v0, Lio/bidmachine/TargetingInfoImpl;

    invoke-direct {v0, p1}, Lio/bidmachine/TargetingInfoImpl;-><init>(Lio/bidmachine/TargetingParams;)V

    iput-object v0, p0, Lio/bidmachine/v;->a:Lio/bidmachine/models/TargetingInfo;

    .line 3
    iput-object p2, p0, Lio/bidmachine/v;->b:Lio/bidmachine/models/DataRestrictions;

    return-void
.end method


# virtual methods
.method public getDataRestrictions()Lio/bidmachine/models/DataRestrictions;
    .registers 2

    .line 1
    iget-object v0, p0, Lio/bidmachine/v;->b:Lio/bidmachine/models/DataRestrictions;

    return-object v0
.end method

.method public getTargetingInfo()Lio/bidmachine/models/TargetingInfo;
    .registers 2

    .line 1
    iget-object v0, p0, Lio/bidmachine/v;->a:Lio/bidmachine/models/TargetingInfo;

    return-object v0
.end method

.method public isTestMode()Z
    .registers 2

    .line 1
    invoke-static {}, Lio/bidmachine/k;->b()Lio/bidmachine/k;

    move-result-object v0

    invoke-virtual {v0}, Lio/bidmachine/k;->u()Z

    move-result v0

    return v0
.end method
