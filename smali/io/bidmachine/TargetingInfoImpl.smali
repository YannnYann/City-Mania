###### Class io.bidmachine.TargetingInfoImpl (io.bidmachine.TargetingInfoImpl)
.class public final Lio/bidmachine/TargetingInfoImpl;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lio/bidmachine/models/TargetingInfo;


# instance fields
.field private final targetingParams:Lio/bidmachine/TargetingParams;


# direct methods
.method public constructor <init>(Lio/bidmachine/TargetingParams;)V
    .registers 3

    const-string v0, "targetingParams"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    iput-object p1, p0, Lio/bidmachine/TargetingInfoImpl;->targetingParams:Lio/bidmachine/TargetingParams;

    return-void
.end method


# virtual methods
.method public getCity()Ljava/lang/String;
    .registers 2

    .line 1
    iget-object v0, p0, Lio/bidmachine/TargetingInfoImpl;->targetingParams:Lio/bidmachine/TargetingParams;

    invoke-virtual {v0}, Lio/bidmachine/TargetingParams;->getCity()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getCountry()Ljava/lang/String;
    .registers 2

    .line 1
    iget-object v0, p0, Lio/bidmachine/TargetingInfoImpl;->targetingParams:Lio/bidmachine/TargetingParams;

    invoke-virtual {v0}, Lio/bidmachine/TargetingParams;->getCountry()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getDeviceLocation()Landroid/location/Location;
    .registers 2

    .line 1
    iget-object v0, p0, Lio/bidmachine/TargetingInfoImpl;->targetingParams:Lio/bidmachine/TargetingParams;

    invoke-virtual {v0}, Lio/bidmachine/TargetingParams;->getDeviceLocation()Landroid/location/Location;

    move-result-object v0

    return-object v0
.end method

.method public getGender()Lio/bidmachine/utils/Gender;
    .registers 2

    .line 1
    iget-object v0, p0, Lio/bidmachine/TargetingInfoImpl;->targetingParams:Lio/bidmachine/TargetingParams;

    invoke-virtual {v0}, Lio/bidmachine/TargetingParams;->getGender()Lio/bidmachine/utils/Gender;

    move-result-object v0

    return-object v0
.end method

.method public getKeywords()Ljava/util/List;
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .line 1
    iget-object v0, p0, Lio/bidmachine/TargetingInfoImpl;->targetingParams:Lio/bidmachine/TargetingParams;

    invoke-virtual {v0}, Lio/bidmachine/TargetingParams;->getKeywords()Ljava/util/List;

    move-result-object v0

    return-object v0
.end method

.method public getStoreUrl()Ljava/lang/String;
    .registers 2

    .line 1
    iget-object v0, p0, Lio/bidmachine/TargetingInfoImpl;->targetingParams:Lio/bidmachine/TargetingParams;

    invoke-virtual {v0}, Lio/bidmachine/TargetingParams;->getStoreUrl()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getUserAge()Ljava/lang/Integer;
    .registers 4

    .line 1
    invoke-virtual {p0}, Lio/bidmachine/TargetingInfoImpl;->getUserBirthdayYear()Ljava/lang/Integer;

    move-result-object v0

    if-eqz v0, :cond_19

    invoke-virtual {v0}, Ljava/lang/Number;->intValue()I

    move-result v0

    invoke-static {}, Ljava/util/Calendar;->getInstance()Ljava/util/Calendar;

    move-result-object v1

    const/4 v2, 0x1

    invoke-virtual {v1, v2}, Ljava/util/Calendar;->get(I)I

    move-result v1

    sub-int/2addr v1, v0

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    return-object v0

    :cond_19
    const/4 v0, 0x0

    return-object v0
.end method

.method public getUserBirthdayYear()Ljava/lang/Integer;
    .registers 2

    .line 1
    iget-object v0, p0, Lio/bidmachine/TargetingInfoImpl;->targetingParams:Lio/bidmachine/TargetingParams;

    invoke-virtual {v0}, Lio/bidmachine/TargetingParams;->getBirthdayYear()Ljava/lang/Integer;

    move-result-object v0

    return-object v0
.end method

.method public getUserId()Ljava/lang/String;
    .registers 2

    .line 1
    iget-object v0, p0, Lio/bidmachine/TargetingInfoImpl;->targetingParams:Lio/bidmachine/TargetingParams;

    invoke-virtual {v0}, Lio/bidmachine/TargetingParams;->getUserId()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getZip()Ljava/lang/String;
    .registers 2

    .line 1
    iget-object v0, p0, Lio/bidmachine/TargetingInfoImpl;->targetingParams:Lio/bidmachine/TargetingParams;

    invoke-virtual {v0}, Lio/bidmachine/TargetingParams;->getZip()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public isPaid()Ljava/lang/Boolean;
    .registers 2

    .line 1
    iget-object v0, p0, Lio/bidmachine/TargetingInfoImpl;->targetingParams:Lio/bidmachine/TargetingParams;

    invoke-virtual {v0}, Lio/bidmachine/TargetingParams;->getPaid()Ljava/lang/Boolean;

    move-result-object v0

    return-object v0
.end method
