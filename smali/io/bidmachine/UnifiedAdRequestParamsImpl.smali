###### Class io.bidmachine.UnifiedAdRequestParamsImpl (io.bidmachine.UnifiedAdRequestParamsImpl)
.class public Lio/bidmachine/UnifiedAdRequestParamsImpl;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lio/bidmachine/unified/UnifiedAdRequestParams;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "<AdRequestParametersType:",
        "Lio/bidmachine/AdRequestParameters;",
        ">",
        "Ljava/lang/Object;",
        "Lio/bidmachine/unified/UnifiedAdRequestParams;"
    }
.end annotation


# instance fields
.field private final adRequestParameters:Lio/bidmachine/AdRequestParameters;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "TAdRequestParametersType;"
        }
    .end annotation
.end field

.field private final dataRestrictions:Lio/bidmachine/models/DataRestrictions;

.field private final targetingInfo:Lio/bidmachine/models/TargetingInfo;


# direct methods
.method public constructor <init>(Lio/bidmachine/AdRequestParameters;Lio/bidmachine/models/TargetingInfo;Lio/bidmachine/models/DataRestrictions;)V
    .registers 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TAdRequestParametersType;",
            "Lio/bidmachine/models/TargetingInfo;",
            "Lio/bidmachine/models/DataRestrictions;",
            ")V"
        }
    .end annotation

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    iput-object p1, p0, Lio/bidmachine/UnifiedAdRequestParamsImpl;->adRequestParameters:Lio/bidmachine/AdRequestParameters;

    .line 3
    iput-object p2, p0, Lio/bidmachine/UnifiedAdRequestParamsImpl;->targetingInfo:Lio/bidmachine/models/TargetingInfo;

    .line 4
    iput-object p3, p0, Lio/bidmachine/UnifiedAdRequestParamsImpl;->dataRestrictions:Lio/bidmachine/models/DataRestrictions;

    return-void
.end method


# virtual methods
.method public getAdRequestParameters()Lio/bidmachine/AdRequestParameters;
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()TAdRequestParametersType;"
        }
    .end annotation

    .line 1
    iget-object v0, p0, Lio/bidmachine/UnifiedAdRequestParamsImpl;->adRequestParameters:Lio/bidmachine/AdRequestParameters;

    return-object v0
.end method

.method public getDataRestrictions()Lio/bidmachine/models/DataRestrictions;
    .registers 2

    .line 1
    iget-object v0, p0, Lio/bidmachine/UnifiedAdRequestParamsImpl;->dataRestrictions:Lio/bidmachine/models/DataRestrictions;

    return-object v0
.end method

.method public getTargetingInfo()Lio/bidmachine/models/TargetingInfo;
    .registers 2

    .line 1
    iget-object v0, p0, Lio/bidmachine/UnifiedAdRequestParamsImpl;->targetingInfo:Lio/bidmachine/models/TargetingInfo;

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
