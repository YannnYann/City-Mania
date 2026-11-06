###### Class io.bidmachine.TargetingParams (io.bidmachine.TargetingParams)
.class public final Lio/bidmachine/TargetingParams;
.super Lio/bidmachine/models/RequestParams;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lio/bidmachine/TargetingParams$Data;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lio/bidmachine/models/RequestParams<",
        "Lio/bidmachine/TargetingParams;",
        ">;"
    }
.end annotation


# instance fields
.field private blockedParams:Lio/bidmachine/BlockedParams;

.field private data:Lio/bidmachine/TargetingParams$Data;


# direct methods
.method public constructor <init>()V
    .registers 18

    .line 1
    invoke-direct/range {p0 .. p0}, Lio/bidmachine/models/RequestParams;-><init>()V

    .line 2
    new-instance v0, Lio/bidmachine/TargetingParams$Data;

    const/16 v15, 0x3fff

    const/16 v16, 0x0

    const/4 v1, 0x0

    const/4 v2, 0x0

    const/4 v3, 0x0

    const/4 v4, 0x0

    const/4 v5, 0x0

    const/4 v6, 0x0

    const/4 v7, 0x0

    const/4 v8, 0x0

    const/4 v9, 0x0

    const/4 v10, 0x0

    const/4 v11, 0x0

    const/4 v12, 0x0

    const/4 v13, 0x0

    const/4 v14, 0x0

    invoke-direct/range {v0 .. v16}, Lio/bidmachine/TargetingParams$Data;-><init>(Ljava/lang/String;Lio/bidmachine/utils/Gender;Ljava/lang/Integer;Ljava/util/List;Landroid/location/Location;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/util/List;Ljava/lang/String;Ljava/lang/Boolean;Ljava/util/List;ILkotlin/jvm/internal/DefaultConstructorMarker;)V

    move-object v1, v0

    move-object/from16 v0, p0

    iput-object v1, v0, Lio/bidmachine/TargetingParams;->data:Lio/bidmachine/TargetingParams$Data;

    return-void
.end method

.method public constructor <init>(Lio/bidmachine/TargetingParams$Data;Lio/bidmachine/BlockedParams;)V
    .registers 4

    const-string v0, "data"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 5
    invoke-direct {p0}, Lio/bidmachine/TargetingParams;-><init>()V

    .line 6
    iput-object p1, p0, Lio/bidmachine/TargetingParams;->data:Lio/bidmachine/TargetingParams$Data;

    .line 7
    iput-object p2, p0, Lio/bidmachine/TargetingParams;->blockedParams:Lio/bidmachine/BlockedParams;

    return-void
.end method

.method public synthetic constructor <init>(Lio/bidmachine/TargetingParams$Data;Lio/bidmachine/BlockedParams;ILkotlin/jvm/internal/DefaultConstructorMarker;)V
    .registers 23

    and-int/lit8 v0, p3, 0x1

    if-eqz v0, :cond_1c

    .line 3
    new-instance v1, Lio/bidmachine/TargetingParams$Data;

    const/16 v16, 0x3fff

    const/16 v17, 0x0

    const/4 v2, 0x0

    const/4 v3, 0x0

    const/4 v4, 0x0

    const/4 v5, 0x0

    const/4 v6, 0x0

    const/4 v7, 0x0

    const/4 v8, 0x0

    const/4 v9, 0x0

    const/4 v10, 0x0

    const/4 v11, 0x0

    const/4 v12, 0x0

    const/4 v13, 0x0

    const/4 v14, 0x0

    const/4 v15, 0x0

    invoke-direct/range {v1 .. v17}, Lio/bidmachine/TargetingParams$Data;-><init>(Ljava/lang/String;Lio/bidmachine/utils/Gender;Ljava/lang/Integer;Ljava/util/List;Landroid/location/Location;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/util/List;Ljava/lang/String;Ljava/lang/Boolean;Ljava/util/List;ILkotlin/jvm/internal/DefaultConstructorMarker;)V

    goto :goto_1e

    :cond_1c
    move-object/from16 v1, p1

    :goto_1e
    and-int/lit8 v0, p3, 0x2

    if-eqz v0, :cond_26

    const/4 v0, 0x0

    :goto_23
    move-object/from16 v2, p0

    goto :goto_29

    :cond_26
    move-object/from16 v0, p2

    goto :goto_23

    .line 4
    :goto_29
    invoke-direct {v2, v1, v0}, Lio/bidmachine/TargetingParams;-><init>(Lio/bidmachine/TargetingParams$Data;Lio/bidmachine/BlockedParams;)V

    return-void
.end method

.method private final prepareBlockParams()Lio/bidmachine/BlockedParams;
    .registers 2

    .line 1
    iget-object v0, p0, Lio/bidmachine/TargetingParams;->blockedParams:Lio/bidmachine/BlockedParams;

    if-nez v0, :cond_b

    new-instance v0, Lio/bidmachine/BlockedParams;

    invoke-direct {v0}, Lio/bidmachine/BlockedParams;-><init>()V

    iput-object v0, p0, Lio/bidmachine/TargetingParams;->blockedParams:Lio/bidmachine/BlockedParams;

    :cond_b
    return-object v0
.end method


# virtual methods
.method public addBlockedAdvertiserDomain(Ljava/lang/String;)Lio/bidmachine/TargetingParams;
    .registers 3

    const-string v0, "domain"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 2
    invoke-direct {p0}, Lio/bidmachine/TargetingParams;->prepareBlockParams()Lio/bidmachine/BlockedParams;

    move-result-object v0

    invoke-virtual {v0, p1}, Lio/bidmachine/BlockedParams;->addBlockedAdvertiserDomain(Ljava/lang/String;)Lio/bidmachine/BlockedParams;

    return-object p0
.end method

.method public bridge synthetic addBlockedAdvertiserDomain(Ljava/lang/String;)Ljava/lang/Object;
    .registers 2

    .line 1
    invoke-virtual {p0, p1}, Lio/bidmachine/TargetingParams;->addBlockedAdvertiserDomain(Ljava/lang/String;)Lio/bidmachine/TargetingParams;

    move-result-object p1

    return-object p1
.end method

.method public addBlockedAdvertiserIABCategory(Ljava/lang/String;)Lio/bidmachine/TargetingParams;
    .registers 3

    const-string v0, "category"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 2
    invoke-direct {p0}, Lio/bidmachine/TargetingParams;->prepareBlockParams()Lio/bidmachine/BlockedParams;

    move-result-object v0

    invoke-virtual {v0, p1}, Lio/bidmachine/BlockedParams;->addBlockedAdvertiserIABCategory(Ljava/lang/String;)Lio/bidmachine/BlockedParams;

    return-object p0
.end method

.method public bridge synthetic addBlockedAdvertiserIABCategory(Ljava/lang/String;)Ljava/lang/Object;
    .registers 2

    .line 1
    invoke-virtual {p0, p1}, Lio/bidmachine/TargetingParams;->addBlockedAdvertiserIABCategory(Ljava/lang/String;)Lio/bidmachine/TargetingParams;

    move-result-object p1

    return-object p1
.end method

.method public addBlockedApplication(Ljava/lang/String;)Lio/bidmachine/TargetingParams;
    .registers 3

    const-string v0, "bundleOrPackage"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 2
    invoke-direct {p0}, Lio/bidmachine/TargetingParams;->prepareBlockParams()Lio/bidmachine/BlockedParams;

    move-result-object v0

    invoke-virtual {v0, p1}, Lio/bidmachine/BlockedParams;->addBlockedApplication(Ljava/lang/String;)Lio/bidmachine/BlockedParams;

    return-object p0
.end method

.method public bridge synthetic addBlockedApplication(Ljava/lang/String;)Ljava/lang/Object;
    .registers 2

    .line 1
    invoke-virtual {p0, p1}, Lio/bidmachine/TargetingParams;->addBlockedApplication(Ljava/lang/String;)Lio/bidmachine/TargetingParams;

    move-result-object p1

    return-object p1
.end method

.method public final getBirthdayYear()Ljava/lang/Integer;
    .registers 2

    .line 1
    iget-object v0, p0, Lio/bidmachine/TargetingParams;->data:Lio/bidmachine/TargetingParams$Data;

    invoke-virtual {v0}, Lio/bidmachine/TargetingParams$Data;->getBirthdayYear()Ljava/lang/Integer;

    move-result-object v0

    return-object v0
.end method

.method public final synthetic getBlockedParams$bidmachine_android_sdk_ba_3_8_0()Lio/bidmachine/BlockedParams;
    .registers 2

    .line 1
    iget-object v0, p0, Lio/bidmachine/TargetingParams;->blockedParams:Lio/bidmachine/BlockedParams;

    return-object v0
.end method

.method public final getCity()Ljava/lang/String;
    .registers 2

    .line 1
    iget-object v0, p0, Lio/bidmachine/TargetingParams;->data:Lio/bidmachine/TargetingParams$Data;

    invoke-virtual {v0}, Lio/bidmachine/TargetingParams$Data;->getCity()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public final getCountry()Ljava/lang/String;
    .registers 2

    .line 1
    iget-object v0, p0, Lio/bidmachine/TargetingParams;->data:Lio/bidmachine/TargetingParams$Data;

    invoke-virtual {v0}, Lio/bidmachine/TargetingParams$Data;->getCountry()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public final synthetic getData$bidmachine_android_sdk_ba_3_8_0()Lio/bidmachine/TargetingParams$Data;
    .registers 2

    .line 1
    iget-object v0, p0, Lio/bidmachine/TargetingParams;->data:Lio/bidmachine/TargetingParams$Data;

    return-object v0
.end method

.method public final getDeviceLocation()Landroid/location/Location;
    .registers 2

    .line 1
    iget-object v0, p0, Lio/bidmachine/TargetingParams;->data:Lio/bidmachine/TargetingParams$Data;

    invoke-virtual {v0}, Lio/bidmachine/TargetingParams$Data;->getDeviceLocation()Landroid/location/Location;

    move-result-object v0

    return-object v0
.end method

.method public final getExternalUserIdList()Ljava/util/List;
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lio/bidmachine/ExternalUserId;",
            ">;"
        }
    .end annotation

    .line 1
    iget-object v0, p0, Lio/bidmachine/TargetingParams;->data:Lio/bidmachine/TargetingParams$Data;

    invoke-virtual {v0}, Lio/bidmachine/TargetingParams$Data;->getExternalUserIdList()Ljava/util/List;

    move-result-object v0

    return-object v0
.end method

.method public final getFramework()Ljava/lang/String;
    .registers 2

    .line 1
    iget-object v0, p0, Lio/bidmachine/TargetingParams;->data:Lio/bidmachine/TargetingParams$Data;

    invoke-virtual {v0}, Lio/bidmachine/TargetingParams$Data;->getFramework()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public final getGender()Lio/bidmachine/utils/Gender;
    .registers 2

    .line 1
    iget-object v0, p0, Lio/bidmachine/TargetingParams;->data:Lio/bidmachine/TargetingParams$Data;

    invoke-virtual {v0}, Lio/bidmachine/TargetingParams$Data;->getGender()Lio/bidmachine/utils/Gender;

    move-result-object v0

    return-object v0
.end method

.method public final getKeywords()Ljava/util/List;
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
    iget-object v0, p0, Lio/bidmachine/TargetingParams;->data:Lio/bidmachine/TargetingParams$Data;

    invoke-virtual {v0}, Lio/bidmachine/TargetingParams$Data;->getKeywords()Ljava/util/List;

    move-result-object v0

    return-object v0
.end method

.method public final getPaid()Ljava/lang/Boolean;
    .registers 2

    .line 1
    iget-object v0, p0, Lio/bidmachine/TargetingParams;->data:Lio/bidmachine/TargetingParams$Data;

    invoke-virtual {v0}, Lio/bidmachine/TargetingParams$Data;->isPaid()Ljava/lang/Boolean;

    move-result-object v0

    return-object v0
.end method

.method public final getStoreCategory()Ljava/lang/String;
    .registers 2

    .line 1
    iget-object v0, p0, Lio/bidmachine/TargetingParams;->data:Lio/bidmachine/TargetingParams$Data;

    invoke-virtual {v0}, Lio/bidmachine/TargetingParams$Data;->getStoreCategory()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public final getStoreSubCategories()[Ljava/lang/String;
    .registers 3

    .line 1
    iget-object v0, p0, Lio/bidmachine/TargetingParams;->data:Lio/bidmachine/TargetingParams$Data;

    invoke-virtual {v0}, Lio/bidmachine/TargetingParams$Data;->getStoreSubCategories()Ljava/util/List;

    move-result-object v0

    if-eqz v0, :cond_12

    const/4 v1, 0x0

    .line 33
    new-array v1, v1, [Ljava/lang/String;

    invoke-interface {v0, v1}, Ljava/util/Collection;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Ljava/lang/String;

    return-object v0

    :cond_12
    const/4 v0, 0x0

    return-object v0
.end method

.method public final getStoreUrl()Ljava/lang/String;
    .registers 2

    .line 1
    iget-object v0, p0, Lio/bidmachine/TargetingParams;->data:Lio/bidmachine/TargetingParams$Data;

    invoke-virtual {v0}, Lio/bidmachine/TargetingParams$Data;->getStoreUrl()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public final getUserId()Ljava/lang/String;
    .registers 2

    .line 1
    iget-object v0, p0, Lio/bidmachine/TargetingParams;->data:Lio/bidmachine/TargetingParams$Data;

    invoke-virtual {v0}, Lio/bidmachine/TargetingParams$Data;->getUserId()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public final getZip()Ljava/lang/String;
    .registers 2

    .line 1
    iget-object v0, p0, Lio/bidmachine/TargetingParams;->data:Lio/bidmachine/TargetingParams$Data;

    invoke-virtual {v0}, Lio/bidmachine/TargetingParams$Data;->getZip()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public merge(Lio/bidmachine/TargetingParams;)V
    .registers 20

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    const-string v2, "instance"

    invoke-static {v1, v2}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 2
    iget-object v3, v0, Lio/bidmachine/TargetingParams;->data:Lio/bidmachine/TargetingParams$Data;

    .line 4
    invoke-virtual {v3}, Lio/bidmachine/TargetingParams$Data;->getUserId()Ljava/lang/String;

    move-result-object v2

    if-nez v2, :cond_17

    iget-object v2, v1, Lio/bidmachine/TargetingParams;->data:Lio/bidmachine/TargetingParams$Data;

    invoke-virtual {v2}, Lio/bidmachine/TargetingParams$Data;->getUserId()Ljava/lang/String;

    move-result-object v2

    :cond_17
    move-object v4, v2

    .line 5
    invoke-virtual {v3}, Lio/bidmachine/TargetingParams$Data;->getGender()Lio/bidmachine/utils/Gender;

    move-result-object v2

    if-nez v2, :cond_24

    iget-object v2, v1, Lio/bidmachine/TargetingParams;->data:Lio/bidmachine/TargetingParams$Data;

    invoke-virtual {v2}, Lio/bidmachine/TargetingParams$Data;->getGender()Lio/bidmachine/utils/Gender;

    move-result-object v2

    :cond_24
    move-object v5, v2

    .line 6
    invoke-virtual {v3}, Lio/bidmachine/TargetingParams$Data;->getBirthdayYear()Ljava/lang/Integer;

    move-result-object v2

    if-nez v2, :cond_31

    iget-object v2, v1, Lio/bidmachine/TargetingParams;->data:Lio/bidmachine/TargetingParams$Data;

    invoke-virtual {v2}, Lio/bidmachine/TargetingParams$Data;->getBirthdayYear()Ljava/lang/Integer;

    move-result-object v2

    :cond_31
    move-object v6, v2

    .line 7
    invoke-virtual {v3}, Lio/bidmachine/TargetingParams$Data;->getKeywords()Ljava/util/List;

    move-result-object v2

    if-nez v2, :cond_3e

    iget-object v2, v1, Lio/bidmachine/TargetingParams;->data:Lio/bidmachine/TargetingParams$Data;

    invoke-virtual {v2}, Lio/bidmachine/TargetingParams$Data;->getKeywords()Ljava/util/List;

    move-result-object v2

    :cond_3e
    move-object v7, v2

    .line 8
    invoke-virtual {v3}, Lio/bidmachine/TargetingParams$Data;->getDeviceLocation()Landroid/location/Location;

    move-result-object v2

    if-nez v2, :cond_4b

    iget-object v2, v1, Lio/bidmachine/TargetingParams;->data:Lio/bidmachine/TargetingParams$Data;

    invoke-virtual {v2}, Lio/bidmachine/TargetingParams$Data;->getDeviceLocation()Landroid/location/Location;

    move-result-object v2

    :cond_4b
    move-object v8, v2

    .line 9
    invoke-virtual {v3}, Lio/bidmachine/TargetingParams$Data;->getCountry()Ljava/lang/String;

    move-result-object v2

    if-nez v2, :cond_58

    iget-object v2, v1, Lio/bidmachine/TargetingParams;->data:Lio/bidmachine/TargetingParams$Data;

    invoke-virtual {v2}, Lio/bidmachine/TargetingParams$Data;->getCountry()Ljava/lang/String;

    move-result-object v2

    :cond_58
    move-object v9, v2

    .line 10
    invoke-virtual {v3}, Lio/bidmachine/TargetingParams$Data;->getCity()Ljava/lang/String;

    move-result-object v2

    if-nez v2, :cond_65

    iget-object v2, v1, Lio/bidmachine/TargetingParams;->data:Lio/bidmachine/TargetingParams$Data;

    invoke-virtual {v2}, Lio/bidmachine/TargetingParams$Data;->getCity()Ljava/lang/String;

    move-result-object v2

    :cond_65
    move-object v10, v2

    .line 11
    invoke-virtual {v3}, Lio/bidmachine/TargetingParams$Data;->getZip()Ljava/lang/String;

    move-result-object v2

    if-nez v2, :cond_72

    iget-object v2, v1, Lio/bidmachine/TargetingParams;->data:Lio/bidmachine/TargetingParams$Data;

    invoke-virtual {v2}, Lio/bidmachine/TargetingParams$Data;->getZip()Ljava/lang/String;

    move-result-object v2

    :cond_72
    move-object v11, v2

    .line 12
    invoke-virtual {v3}, Lio/bidmachine/TargetingParams$Data;->getStoreUrl()Ljava/lang/String;

    move-result-object v2

    if-nez v2, :cond_7f

    iget-object v2, v1, Lio/bidmachine/TargetingParams;->data:Lio/bidmachine/TargetingParams$Data;

    invoke-virtual {v2}, Lio/bidmachine/TargetingParams$Data;->getStoreUrl()Ljava/lang/String;

    move-result-object v2

    :cond_7f
    move-object v12, v2

    .line 13
    invoke-virtual {v3}, Lio/bidmachine/TargetingParams$Data;->getStoreCategory()Ljava/lang/String;

    move-result-object v2

    if-nez v2, :cond_8c

    iget-object v2, v1, Lio/bidmachine/TargetingParams;->data:Lio/bidmachine/TargetingParams$Data;

    invoke-virtual {v2}, Lio/bidmachine/TargetingParams$Data;->getStoreCategory()Ljava/lang/String;

    move-result-object v2

    :cond_8c
    move-object v13, v2

    .line 14
    invoke-virtual {v3}, Lio/bidmachine/TargetingParams$Data;->getStoreSubCategories()Ljava/util/List;

    move-result-object v2

    if-nez v2, :cond_99

    iget-object v2, v1, Lio/bidmachine/TargetingParams;->data:Lio/bidmachine/TargetingParams$Data;

    invoke-virtual {v2}, Lio/bidmachine/TargetingParams$Data;->getStoreSubCategories()Ljava/util/List;

    move-result-object v2

    :cond_99
    move-object v14, v2

    .line 15
    invoke-virtual {v3}, Lio/bidmachine/TargetingParams$Data;->getFramework()Ljava/lang/String;

    move-result-object v2

    if-nez v2, :cond_a6

    iget-object v2, v1, Lio/bidmachine/TargetingParams;->data:Lio/bidmachine/TargetingParams$Data;

    invoke-virtual {v2}, Lio/bidmachine/TargetingParams$Data;->getFramework()Ljava/lang/String;

    move-result-object v2

    :cond_a6
    move-object v15, v2

    .line 16
    invoke-virtual {v3}, Lio/bidmachine/TargetingParams$Data;->isPaid()Ljava/lang/Boolean;

    move-result-object v2

    if-nez v2, :cond_b3

    iget-object v2, v1, Lio/bidmachine/TargetingParams;->data:Lio/bidmachine/TargetingParams$Data;

    invoke-virtual {v2}, Lio/bidmachine/TargetingParams$Data;->isPaid()Ljava/lang/Boolean;

    move-result-object v2

    :cond_b3
    move-object/from16 v16, v2

    .line 17
    invoke-virtual {v3}, Lio/bidmachine/TargetingParams$Data;->getExternalUserIdList()Ljava/util/List;

    move-result-object v2

    if-nez v2, :cond_c1

    iget-object v2, v1, Lio/bidmachine/TargetingParams;->data:Lio/bidmachine/TargetingParams$Data;

    invoke-virtual {v2}, Lio/bidmachine/TargetingParams$Data;->getExternalUserIdList()Ljava/util/List;

    move-result-object v2

    :cond_c1
    move-object/from16 v17, v2

    .line 18
    invoke-virtual/range {v3 .. v17}, Lio/bidmachine/TargetingParams$Data;->copy(Ljava/lang/String;Lio/bidmachine/utils/Gender;Ljava/lang/Integer;Ljava/util/List;Landroid/location/Location;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/util/List;Ljava/lang/String;Ljava/lang/Boolean;Ljava/util/List;)Lio/bidmachine/TargetingParams$Data;

    move-result-object v2

    iput-object v2, v0, Lio/bidmachine/TargetingParams;->data:Lio/bidmachine/TargetingParams$Data;

    .line 35
    iget-object v1, v1, Lio/bidmachine/TargetingParams;->blockedParams:Lio/bidmachine/BlockedParams;

    if-eqz v1, :cond_df

    .line 36
    iget-object v2, v0, Lio/bidmachine/TargetingParams;->blockedParams:Lio/bidmachine/BlockedParams;

    if-nez v2, :cond_d8

    .line 37
    new-instance v2, Lio/bidmachine/BlockedParams;

    invoke-direct {v2}, Lio/bidmachine/BlockedParams;-><init>()V

    iput-object v2, v0, Lio/bidmachine/TargetingParams;->blockedParams:Lio/bidmachine/BlockedParams;

    .line 39
    :cond_d8
    iget-object v2, v0, Lio/bidmachine/TargetingParams;->blockedParams:Lio/bidmachine/BlockedParams;

    if-eqz v2, :cond_df

    invoke-virtual {v2, v1}, Lio/bidmachine/BlockedParams;->merge(Lio/bidmachine/BlockedParams;)V

    :cond_df
    return-void
.end method

.method public bridge synthetic merge(Lio/bidmachine/models/RequestParams;)V
    .registers 2

    .line 1
    check-cast p1, Lio/bidmachine/TargetingParams;

    invoke-virtual {p0, p1}, Lio/bidmachine/TargetingParams;->merge(Lio/bidmachine/TargetingParams;)V

    return-void
.end method

.method public setBirthdayYear(Ljava/lang/Integer;)Lio/bidmachine/TargetingParams;
    .registers 21

    move-object/from16 v0, p0

    if-eqz p1, :cond_15

    .line 2
    invoke-virtual/range {p1 .. p1}, Ljava/lang/Integer;->intValue()I

    move-result v1

    invoke-static {v1}, Lio/bidmachine/core/Utils;->isYearValid(I)Z

    move-result v1

    if-eqz v1, :cond_f

    goto :goto_15

    .line 5
    :cond_f
    const-string v1, "Birthday Year should be 4-digit integer, more or equal 1900 and less or equal than current year"

    invoke-static {v1}, Lio/bidmachine/core/Logger;->e(Ljava/lang/String;)V

    return-object v0

    .line 6
    :cond_15
    :goto_15
    iget-object v2, v0, Lio/bidmachine/TargetingParams;->data:Lio/bidmachine/TargetingParams$Data;

    const/16 v17, 0x3ffb

    const/16 v18, 0x0

    const/4 v3, 0x0

    const/4 v4, 0x0

    const/4 v6, 0x0

    const/4 v7, 0x0

    const/4 v8, 0x0

    const/4 v9, 0x0

    const/4 v10, 0x0

    const/4 v11, 0x0

    const/4 v12, 0x0

    const/4 v13, 0x0

    const/4 v14, 0x0

    const/4 v15, 0x0

    const/16 v16, 0x0

    move-object/from16 v5, p1

    invoke-static/range {v2 .. v18}, Lio/bidmachine/TargetingParams$Data;->copy$default(Lio/bidmachine/TargetingParams$Data;Ljava/lang/String;Lio/bidmachine/utils/Gender;Ljava/lang/Integer;Ljava/util/List;Landroid/location/Location;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/util/List;Ljava/lang/String;Ljava/lang/Boolean;Ljava/util/List;ILjava/lang/Object;)Lio/bidmachine/TargetingParams$Data;

    move-result-object v1

    iput-object v1, v0, Lio/bidmachine/TargetingParams;->data:Lio/bidmachine/TargetingParams$Data;

    return-object v0
.end method

.method public bridge synthetic setBirthdayYear(Ljava/lang/Integer;)Ljava/lang/Object;
    .registers 2

    .line 1
    invoke-virtual {p0, p1}, Lio/bidmachine/TargetingParams;->setBirthdayYear(Ljava/lang/Integer;)Lio/bidmachine/TargetingParams;

    move-result-object p1

    return-object p1
.end method

.method public setCity(Ljava/lang/String;)Lio/bidmachine/TargetingParams;
    .registers 20

    move-object/from16 v0, p0

    .line 2
    iget-object v1, v0, Lio/bidmachine/TargetingParams;->data:Lio/bidmachine/TargetingParams$Data;

    const/16 v16, 0x3fbf

    const/16 v17, 0x0

    const/4 v2, 0x0

    const/4 v3, 0x0

    const/4 v4, 0x0

    const/4 v5, 0x0

    const/4 v6, 0x0

    const/4 v7, 0x0

    const/4 v9, 0x0

    const/4 v10, 0x0

    const/4 v11, 0x0

    const/4 v12, 0x0

    const/4 v13, 0x0

    const/4 v14, 0x0

    const/4 v15, 0x0

    move-object/from16 v8, p1

    invoke-static/range {v1 .. v17}, Lio/bidmachine/TargetingParams$Data;->copy$default(Lio/bidmachine/TargetingParams$Data;Ljava/lang/String;Lio/bidmachine/utils/Gender;Ljava/lang/Integer;Ljava/util/List;Landroid/location/Location;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/util/List;Ljava/lang/String;Ljava/lang/Boolean;Ljava/util/List;ILjava/lang/Object;)Lio/bidmachine/TargetingParams$Data;

    move-result-object v1

    iput-object v1, v0, Lio/bidmachine/TargetingParams;->data:Lio/bidmachine/TargetingParams$Data;

    return-object v0
.end method

.method public bridge synthetic setCity(Ljava/lang/String;)Ljava/lang/Object;
    .registers 2

    .line 1
    invoke-virtual {p0, p1}, Lio/bidmachine/TargetingParams;->setCity(Ljava/lang/String;)Lio/bidmachine/TargetingParams;

    move-result-object p1

    return-object p1
.end method

.method public setCountry(Ljava/lang/String;)Lio/bidmachine/TargetingParams;
    .registers 20

    move-object/from16 v0, p0

    .line 2
    iget-object v1, v0, Lio/bidmachine/TargetingParams;->data:Lio/bidmachine/TargetingParams$Data;

    const/16 v16, 0x3fdf

    const/16 v17, 0x0

    const/4 v2, 0x0

    const/4 v3, 0x0

    const/4 v4, 0x0

    const/4 v5, 0x0

    const/4 v6, 0x0

    const/4 v8, 0x0

    const/4 v9, 0x0

    const/4 v10, 0x0

    const/4 v11, 0x0

    const/4 v12, 0x0

    const/4 v13, 0x0

    const/4 v14, 0x0

    const/4 v15, 0x0

    move-object/from16 v7, p1

    invoke-static/range {v1 .. v17}, Lio/bidmachine/TargetingParams$Data;->copy$default(Lio/bidmachine/TargetingParams$Data;Ljava/lang/String;Lio/bidmachine/utils/Gender;Ljava/lang/Integer;Ljava/util/List;Landroid/location/Location;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/util/List;Ljava/lang/String;Ljava/lang/Boolean;Ljava/util/List;ILjava/lang/Object;)Lio/bidmachine/TargetingParams$Data;

    move-result-object v1

    iput-object v1, v0, Lio/bidmachine/TargetingParams;->data:Lio/bidmachine/TargetingParams$Data;

    return-object v0
.end method

.method public bridge synthetic setCountry(Ljava/lang/String;)Ljava/lang/Object;
    .registers 2

    .line 1
    invoke-virtual {p0, p1}, Lio/bidmachine/TargetingParams;->setCountry(Ljava/lang/String;)Lio/bidmachine/TargetingParams;

    move-result-object p1

    return-object p1
.end method

.method public setDeviceLocation(Landroid/location/Location;)Lio/bidmachine/TargetingParams;
    .registers 20

    move-object/from16 v0, p0

    .line 2
    iget-object v1, v0, Lio/bidmachine/TargetingParams;->data:Lio/bidmachine/TargetingParams$Data;

    const/16 v16, 0x3fef

    const/16 v17, 0x0

    const/4 v2, 0x0

    const/4 v3, 0x0

    const/4 v4, 0x0

    const/4 v5, 0x0

    const/4 v7, 0x0

    const/4 v8, 0x0

    const/4 v9, 0x0

    const/4 v10, 0x0

    const/4 v11, 0x0

    const/4 v12, 0x0

    const/4 v13, 0x0

    const/4 v14, 0x0

    const/4 v15, 0x0

    move-object/from16 v6, p1

    invoke-static/range {v1 .. v17}, Lio/bidmachine/TargetingParams$Data;->copy$default(Lio/bidmachine/TargetingParams$Data;Ljava/lang/String;Lio/bidmachine/utils/Gender;Ljava/lang/Integer;Ljava/util/List;Landroid/location/Location;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/util/List;Ljava/lang/String;Ljava/lang/Boolean;Ljava/util/List;ILjava/lang/Object;)Lio/bidmachine/TargetingParams$Data;

    move-result-object v1

    iput-object v1, v0, Lio/bidmachine/TargetingParams;->data:Lio/bidmachine/TargetingParams$Data;

    return-object v0
.end method

.method public bridge synthetic setDeviceLocation(Landroid/location/Location;)Ljava/lang/Object;
    .registers 2

    .line 1
    invoke-virtual {p0, p1}, Lio/bidmachine/TargetingParams;->setDeviceLocation(Landroid/location/Location;)Lio/bidmachine/TargetingParams;

    move-result-object p1

    return-object p1
.end method

.method public setExternalUserIds(Ljava/util/List;)Lio/bidmachine/TargetingParams;
    .registers 20
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "+",
            "Lio/bidmachine/ExternalUserId;",
            ">;)",
            "Lio/bidmachine/TargetingParams;"
        }
    .end annotation

    move-object/from16 v0, p0

    .line 2
    iget-object v1, v0, Lio/bidmachine/TargetingParams;->data:Lio/bidmachine/TargetingParams$Data;

    if-eqz p1, :cond_c

    invoke-static/range {p1 .. p1}, Lkotlin/collections/CollectionsKt___CollectionsKt;->toList(Ljava/lang/Iterable;)Ljava/util/List;

    move-result-object v2

    :goto_a
    move-object v15, v2

    goto :goto_e

    :cond_c
    const/4 v2, 0x0

    goto :goto_a

    :goto_e
    const/16 v16, 0x1fff

    const/16 v17, 0x0

    const/4 v2, 0x0

    const/4 v3, 0x0

    const/4 v4, 0x0

    const/4 v5, 0x0

    const/4 v6, 0x0

    const/4 v7, 0x0

    const/4 v8, 0x0

    const/4 v9, 0x0

    const/4 v10, 0x0

    const/4 v11, 0x0

    const/4 v12, 0x0

    const/4 v13, 0x0

    const/4 v14, 0x0

    invoke-static/range {v1 .. v17}, Lio/bidmachine/TargetingParams$Data;->copy$default(Lio/bidmachine/TargetingParams$Data;Ljava/lang/String;Lio/bidmachine/utils/Gender;Ljava/lang/Integer;Ljava/util/List;Landroid/location/Location;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/util/List;Ljava/lang/String;Ljava/lang/Boolean;Ljava/util/List;ILjava/lang/Object;)Lio/bidmachine/TargetingParams$Data;

    move-result-object v1

    iput-object v1, v0, Lio/bidmachine/TargetingParams;->data:Lio/bidmachine/TargetingParams$Data;

    return-object v0
.end method

.method public bridge synthetic setExternalUserIds(Ljava/util/List;)Ljava/lang/Object;
    .registers 2

    .line 1
    invoke-virtual {p0, p1}, Lio/bidmachine/TargetingParams;->setExternalUserIds(Ljava/util/List;)Lio/bidmachine/TargetingParams;

    move-result-object p1

    return-object p1
.end method

.method public setFramework(Ljava/lang/String;)Lio/bidmachine/TargetingParams;
    .registers 20

    move-object/from16 v0, p0

    .line 2
    iget-object v1, v0, Lio/bidmachine/TargetingParams;->data:Lio/bidmachine/TargetingParams$Data;

    const/16 v16, 0x37ff

    const/16 v17, 0x0

    const/4 v2, 0x0

    const/4 v3, 0x0

    const/4 v4, 0x0

    const/4 v5, 0x0

    const/4 v6, 0x0

    const/4 v7, 0x0

    const/4 v8, 0x0

    const/4 v9, 0x0

    const/4 v10, 0x0

    const/4 v11, 0x0

    const/4 v12, 0x0

    const/4 v14, 0x0

    const/4 v15, 0x0

    move-object/from16 v13, p1

    invoke-static/range {v1 .. v17}, Lio/bidmachine/TargetingParams$Data;->copy$default(Lio/bidmachine/TargetingParams$Data;Ljava/lang/String;Lio/bidmachine/utils/Gender;Ljava/lang/Integer;Ljava/util/List;Landroid/location/Location;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/util/List;Ljava/lang/String;Ljava/lang/Boolean;Ljava/util/List;ILjava/lang/Object;)Lio/bidmachine/TargetingParams$Data;

    move-result-object v1

    iput-object v1, v0, Lio/bidmachine/TargetingParams;->data:Lio/bidmachine/TargetingParams$Data;

    return-object v0
.end method

.method public bridge synthetic setFramework(Ljava/lang/String;)Ljava/lang/Object;
    .registers 2

    .line 1
    invoke-virtual {p0, p1}, Lio/bidmachine/TargetingParams;->setFramework(Ljava/lang/String;)Lio/bidmachine/TargetingParams;

    move-result-object p1

    return-object p1
.end method

.method public setGender(Lio/bidmachine/utils/Gender;)Lio/bidmachine/TargetingParams;
    .registers 20

    move-object/from16 v0, p0

    .line 2
    iget-object v1, v0, Lio/bidmachine/TargetingParams;->data:Lio/bidmachine/TargetingParams$Data;

    const/16 v16, 0x3ffd

    const/16 v17, 0x0

    const/4 v2, 0x0

    const/4 v4, 0x0

    const/4 v5, 0x0

    const/4 v6, 0x0

    const/4 v7, 0x0

    const/4 v8, 0x0

    const/4 v9, 0x0

    const/4 v10, 0x0

    const/4 v11, 0x0

    const/4 v12, 0x0

    const/4 v13, 0x0

    const/4 v14, 0x0

    const/4 v15, 0x0

    move-object/from16 v3, p1

    invoke-static/range {v1 .. v17}, Lio/bidmachine/TargetingParams$Data;->copy$default(Lio/bidmachine/TargetingParams$Data;Ljava/lang/String;Lio/bidmachine/utils/Gender;Ljava/lang/Integer;Ljava/util/List;Landroid/location/Location;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/util/List;Ljava/lang/String;Ljava/lang/Boolean;Ljava/util/List;ILjava/lang/Object;)Lio/bidmachine/TargetingParams$Data;

    move-result-object v1

    iput-object v1, v0, Lio/bidmachine/TargetingParams;->data:Lio/bidmachine/TargetingParams$Data;

    return-object v0
.end method

.method public bridge synthetic setGender(Lio/bidmachine/utils/Gender;)Ljava/lang/Object;
    .registers 2

    .line 1
    invoke-virtual {p0, p1}, Lio/bidmachine/TargetingParams;->setGender(Lio/bidmachine/utils/Gender;)Lio/bidmachine/TargetingParams;

    move-result-object p1

    return-object p1
.end method

.method public varargs setKeywords([Ljava/lang/String;)Lio/bidmachine/TargetingParams;
    .registers 21

    move-object/from16 v0, p0

    const-string v1, "keywords"

    move-object/from16 v2, p1

    invoke-static {v2, v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 2
    iget-object v2, v0, Lio/bidmachine/TargetingParams;->data:Lio/bidmachine/TargetingParams$Data;

    invoke-static/range {p1 .. p1}, Lkotlin/collections/ArraysKt___ArraysKt;->filterNotNull([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v6

    const/16 v17, 0x3ff7

    const/16 v18, 0x0

    const/4 v3, 0x0

    const/4 v4, 0x0

    const/4 v5, 0x0

    const/4 v7, 0x0

    const/4 v8, 0x0

    const/4 v9, 0x0

    const/4 v10, 0x0

    const/4 v11, 0x0

    const/4 v12, 0x0

    const/4 v13, 0x0

    const/4 v14, 0x0

    const/4 v15, 0x0

    const/16 v16, 0x0

    invoke-static/range {v2 .. v18}, Lio/bidmachine/TargetingParams$Data;->copy$default(Lio/bidmachine/TargetingParams$Data;Ljava/lang/String;Lio/bidmachine/utils/Gender;Ljava/lang/Integer;Ljava/util/List;Landroid/location/Location;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/util/List;Ljava/lang/String;Ljava/lang/Boolean;Ljava/util/List;ILjava/lang/Object;)Lio/bidmachine/TargetingParams$Data;

    move-result-object v1

    iput-object v1, v0, Lio/bidmachine/TargetingParams;->data:Lio/bidmachine/TargetingParams$Data;

    return-object v0
.end method

.method public bridge synthetic setKeywords([Ljava/lang/String;)Ljava/lang/Object;
    .registers 2

    .line 1
    invoke-virtual {p0, p1}, Lio/bidmachine/TargetingParams;->setKeywords([Ljava/lang/String;)Lio/bidmachine/TargetingParams;

    move-result-object p1

    return-object p1
.end method

.method public setPaid(Ljava/lang/Boolean;)Lio/bidmachine/TargetingParams;
    .registers 20

    move-object/from16 v0, p0

    .line 2
    iget-object v1, v0, Lio/bidmachine/TargetingParams;->data:Lio/bidmachine/TargetingParams$Data;

    const/16 v16, 0x2fff

    const/16 v17, 0x0

    const/4 v2, 0x0

    const/4 v3, 0x0

    const/4 v4, 0x0

    const/4 v5, 0x0

    const/4 v6, 0x0

    const/4 v7, 0x0

    const/4 v8, 0x0

    const/4 v9, 0x0

    const/4 v10, 0x0

    const/4 v11, 0x0

    const/4 v12, 0x0

    const/4 v13, 0x0

    const/4 v15, 0x0

    move-object/from16 v14, p1

    invoke-static/range {v1 .. v17}, Lio/bidmachine/TargetingParams$Data;->copy$default(Lio/bidmachine/TargetingParams$Data;Ljava/lang/String;Lio/bidmachine/utils/Gender;Ljava/lang/Integer;Ljava/util/List;Landroid/location/Location;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/util/List;Ljava/lang/String;Ljava/lang/Boolean;Ljava/util/List;ILjava/lang/Object;)Lio/bidmachine/TargetingParams$Data;

    move-result-object v1

    iput-object v1, v0, Lio/bidmachine/TargetingParams;->data:Lio/bidmachine/TargetingParams$Data;

    return-object v0
.end method

.method public bridge synthetic setPaid(Ljava/lang/Boolean;)Ljava/lang/Object;
    .registers 2

    .line 1
    invoke-virtual {p0, p1}, Lio/bidmachine/TargetingParams;->setPaid(Ljava/lang/Boolean;)Lio/bidmachine/TargetingParams;

    move-result-object p1

    return-object p1
.end method

.method public setStoreCategory(Ljava/lang/String;)Lio/bidmachine/TargetingParams;
    .registers 20

    move-object/from16 v0, p0

    .line 2
    iget-object v1, v0, Lio/bidmachine/TargetingParams;->data:Lio/bidmachine/TargetingParams$Data;

    const/16 v16, 0x3dff

    const/16 v17, 0x0

    const/4 v2, 0x0

    const/4 v3, 0x0

    const/4 v4, 0x0

    const/4 v5, 0x0

    const/4 v6, 0x0

    const/4 v7, 0x0

    const/4 v8, 0x0

    const/4 v9, 0x0

    const/4 v10, 0x0

    const/4 v12, 0x0

    const/4 v13, 0x0

    const/4 v14, 0x0

    const/4 v15, 0x0

    move-object/from16 v11, p1

    invoke-static/range {v1 .. v17}, Lio/bidmachine/TargetingParams$Data;->copy$default(Lio/bidmachine/TargetingParams$Data;Ljava/lang/String;Lio/bidmachine/utils/Gender;Ljava/lang/Integer;Ljava/util/List;Landroid/location/Location;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/util/List;Ljava/lang/String;Ljava/lang/Boolean;Ljava/util/List;ILjava/lang/Object;)Lio/bidmachine/TargetingParams$Data;

    move-result-object v1

    iput-object v1, v0, Lio/bidmachine/TargetingParams;->data:Lio/bidmachine/TargetingParams$Data;

    return-object v0
.end method

.method public bridge synthetic setStoreCategory(Ljava/lang/String;)Ljava/lang/Object;
    .registers 2

    .line 1
    invoke-virtual {p0, p1}, Lio/bidmachine/TargetingParams;->setStoreCategory(Ljava/lang/String;)Lio/bidmachine/TargetingParams;

    move-result-object p1

    return-object p1
.end method

.method public varargs setStoreSubCategories([Ljava/lang/String;)Lio/bidmachine/TargetingParams;
    .registers 21

    move-object/from16 v0, p0

    const-string v1, "storeSubCategories"

    move-object/from16 v2, p1

    invoke-static {v2, v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 2
    iget-object v2, v0, Lio/bidmachine/TargetingParams;->data:Lio/bidmachine/TargetingParams$Data;

    invoke-static/range {p1 .. p1}, Lkotlin/collections/ArraysKt___ArraysKt;->filterNotNull([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v13

    const/16 v17, 0x3bff

    const/16 v18, 0x0

    const/4 v3, 0x0

    const/4 v4, 0x0

    const/4 v5, 0x0

    const/4 v6, 0x0

    const/4 v7, 0x0

    const/4 v8, 0x0

    const/4 v9, 0x0

    const/4 v10, 0x0

    const/4 v11, 0x0

    const/4 v12, 0x0

    const/4 v14, 0x0

    const/4 v15, 0x0

    const/16 v16, 0x0

    invoke-static/range {v2 .. v18}, Lio/bidmachine/TargetingParams$Data;->copy$default(Lio/bidmachine/TargetingParams$Data;Ljava/lang/String;Lio/bidmachine/utils/Gender;Ljava/lang/Integer;Ljava/util/List;Landroid/location/Location;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/util/List;Ljava/lang/String;Ljava/lang/Boolean;Ljava/util/List;ILjava/lang/Object;)Lio/bidmachine/TargetingParams$Data;

    move-result-object v1

    iput-object v1, v0, Lio/bidmachine/TargetingParams;->data:Lio/bidmachine/TargetingParams$Data;

    return-object v0
.end method

.method public bridge synthetic setStoreSubCategories([Ljava/lang/String;)Ljava/lang/Object;
    .registers 2

    .line 1
    invoke-virtual {p0, p1}, Lio/bidmachine/TargetingParams;->setStoreSubCategories([Ljava/lang/String;)Lio/bidmachine/TargetingParams;

    move-result-object p1

    return-object p1
.end method

.method public setStoreUrl(Ljava/lang/String;)Lio/bidmachine/TargetingParams;
    .registers 20

    move-object/from16 v0, p0

    .line 2
    iget-object v1, v0, Lio/bidmachine/TargetingParams;->data:Lio/bidmachine/TargetingParams$Data;

    const/16 v16, 0x3eff

    const/16 v17, 0x0

    const/4 v2, 0x0

    const/4 v3, 0x0

    const/4 v4, 0x0

    const/4 v5, 0x0

    const/4 v6, 0x0

    const/4 v7, 0x0

    const/4 v8, 0x0

    const/4 v9, 0x0

    const/4 v11, 0x0

    const/4 v12, 0x0

    const/4 v13, 0x0

    const/4 v14, 0x0

    const/4 v15, 0x0

    move-object/from16 v10, p1

    invoke-static/range {v1 .. v17}, Lio/bidmachine/TargetingParams$Data;->copy$default(Lio/bidmachine/TargetingParams$Data;Ljava/lang/String;Lio/bidmachine/utils/Gender;Ljava/lang/Integer;Ljava/util/List;Landroid/location/Location;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/util/List;Ljava/lang/String;Ljava/lang/Boolean;Ljava/util/List;ILjava/lang/Object;)Lio/bidmachine/TargetingParams$Data;

    move-result-object v1

    iput-object v1, v0, Lio/bidmachine/TargetingParams;->data:Lio/bidmachine/TargetingParams$Data;

    return-object v0
.end method

.method public bridge synthetic setStoreUrl(Ljava/lang/String;)Ljava/lang/Object;
    .registers 2

    .line 1
    invoke-virtual {p0, p1}, Lio/bidmachine/TargetingParams;->setStoreUrl(Ljava/lang/String;)Lio/bidmachine/TargetingParams;

    move-result-object p1

    return-object p1
.end method

.method public setUserId(Ljava/lang/String;)Lio/bidmachine/TargetingParams;
    .registers 20

    move-object/from16 v0, p0

    .line 2
    iget-object v1, v0, Lio/bidmachine/TargetingParams;->data:Lio/bidmachine/TargetingParams$Data;

    const/16 v16, 0x3ffe

    const/16 v17, 0x0

    const/4 v3, 0x0

    const/4 v4, 0x0

    const/4 v5, 0x0

    const/4 v6, 0x0

    const/4 v7, 0x0

    const/4 v8, 0x0

    const/4 v9, 0x0

    const/4 v10, 0x0

    const/4 v11, 0x0

    const/4 v12, 0x0

    const/4 v13, 0x0

    const/4 v14, 0x0

    const/4 v15, 0x0

    move-object/from16 v2, p1

    invoke-static/range {v1 .. v17}, Lio/bidmachine/TargetingParams$Data;->copy$default(Lio/bidmachine/TargetingParams$Data;Ljava/lang/String;Lio/bidmachine/utils/Gender;Ljava/lang/Integer;Ljava/util/List;Landroid/location/Location;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/util/List;Ljava/lang/String;Ljava/lang/Boolean;Ljava/util/List;ILjava/lang/Object;)Lio/bidmachine/TargetingParams$Data;

    move-result-object v1

    iput-object v1, v0, Lio/bidmachine/TargetingParams;->data:Lio/bidmachine/TargetingParams$Data;

    return-object v0
.end method

.method public bridge synthetic setUserId(Ljava/lang/String;)Ljava/lang/Object;
    .registers 2

    .line 1
    invoke-virtual {p0, p1}, Lio/bidmachine/TargetingParams;->setUserId(Ljava/lang/String;)Lio/bidmachine/TargetingParams;

    move-result-object p1

    return-object p1
.end method

.method public setZip(Ljava/lang/String;)Lio/bidmachine/TargetingParams;
    .registers 20

    move-object/from16 v0, p0

    .line 2
    iget-object v1, v0, Lio/bidmachine/TargetingParams;->data:Lio/bidmachine/TargetingParams$Data;

    const/16 v16, 0x3f7f

    const/16 v17, 0x0

    const/4 v2, 0x0

    const/4 v3, 0x0

    const/4 v4, 0x0

    const/4 v5, 0x0

    const/4 v6, 0x0

    const/4 v7, 0x0

    const/4 v8, 0x0

    const/4 v10, 0x0

    const/4 v11, 0x0

    const/4 v12, 0x0

    const/4 v13, 0x0

    const/4 v14, 0x0

    const/4 v15, 0x0

    move-object/from16 v9, p1

    invoke-static/range {v1 .. v17}, Lio/bidmachine/TargetingParams$Data;->copy$default(Lio/bidmachine/TargetingParams$Data;Ljava/lang/String;Lio/bidmachine/utils/Gender;Ljava/lang/Integer;Ljava/util/List;Landroid/location/Location;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/util/List;Ljava/lang/String;Ljava/lang/Boolean;Ljava/util/List;ILjava/lang/Object;)Lio/bidmachine/TargetingParams$Data;

    move-result-object v1

    iput-object v1, v0, Lio/bidmachine/TargetingParams;->data:Lio/bidmachine/TargetingParams$Data;

    return-object v0
.end method

.method public bridge synthetic setZip(Ljava/lang/String;)Ljava/lang/Object;
    .registers 2

    .line 1
    invoke-virtual {p0, p1}, Lio/bidmachine/TargetingParams;->setZip(Ljava/lang/String;)Lio/bidmachine/TargetingParams;

    move-result-object p1

    return-object p1
.end method

###### Class io.bidmachine.TargetingParams.Data (io.bidmachine.TargetingParams$Data)
.class public final Lio/bidmachine/TargetingParams$Data;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lio/bidmachine/TargetingParams;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "Data"
.end annotation


# instance fields
.field private final birthdayYear:Ljava/lang/Integer;

.field private final city:Ljava/lang/String;

.field private final country:Ljava/lang/String;

.field private final deviceLocation:Landroid/location/Location;

.field private final externalUserIdList:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lio/bidmachine/ExternalUserId;",
            ">;"
        }
    .end annotation
.end field

.field private final framework:Ljava/lang/String;

.field private final gender:Lio/bidmachine/utils/Gender;

.field private final isPaid:Ljava/lang/Boolean;

.field private final keywords:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private final storeCategory:Ljava/lang/String;

.field private final storeSubCategories:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private final storeUrl:Ljava/lang/String;

.field private final userId:Ljava/lang/String;

.field private final zip:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .registers 18

    const/16 v15, 0x3fff

    const/16 v16, 0x0

    const/4 v1, 0x0

    const/4 v2, 0x0

    const/4 v3, 0x0

    const/4 v4, 0x0

    const/4 v5, 0x0

    const/4 v6, 0x0

    const/4 v7, 0x0

    const/4 v8, 0x0

    const/4 v9, 0x0

    const/4 v10, 0x0

    const/4 v11, 0x0

    const/4 v12, 0x0

    const/4 v13, 0x0

    const/4 v14, 0x0

    move-object/from16 v0, p0

    .line 1
    invoke-direct/range {v0 .. v16}, Lio/bidmachine/TargetingParams$Data;-><init>(Ljava/lang/String;Lio/bidmachine/utils/Gender;Ljava/lang/Integer;Ljava/util/List;Landroid/location/Location;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/util/List;Ljava/lang/String;Ljava/lang/Boolean;Ljava/util/List;ILkotlin/jvm/internal/DefaultConstructorMarker;)V

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;Lio/bidmachine/utils/Gender;Ljava/lang/Integer;Ljava/util/List;Landroid/location/Location;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/util/List;Ljava/lang/String;Ljava/lang/Boolean;Ljava/util/List;)V
    .registers 15
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Lio/bidmachine/utils/Gender;",
            "Ljava/lang/Integer;",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;",
            "Landroid/location/Location;",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;",
            "Ljava/lang/String;",
            "Ljava/lang/Boolean;",
            "Ljava/util/List<",
            "+",
            "Lio/bidmachine/ExternalUserId;",
            ">;)V"
        }
    .end annotation

    .line 2
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 3
    iput-object p1, p0, Lio/bidmachine/TargetingParams$Data;->userId:Ljava/lang/String;

    .line 4
    iput-object p2, p0, Lio/bidmachine/TargetingParams$Data;->gender:Lio/bidmachine/utils/Gender;

    .line 5
    iput-object p3, p0, Lio/bidmachine/TargetingParams$Data;->birthdayYear:Ljava/lang/Integer;

    .line 6
    iput-object p4, p0, Lio/bidmachine/TargetingParams$Data;->keywords:Ljava/util/List;

    .line 7
    iput-object p5, p0, Lio/bidmachine/TargetingParams$Data;->deviceLocation:Landroid/location/Location;

    .line 8
    iput-object p6, p0, Lio/bidmachine/TargetingParams$Data;->country:Ljava/lang/String;

    .line 9
    iput-object p7, p0, Lio/bidmachine/TargetingParams$Data;->city:Ljava/lang/String;

    .line 10
    iput-object p8, p0, Lio/bidmachine/TargetingParams$Data;->zip:Ljava/lang/String;

    .line 11
    iput-object p9, p0, Lio/bidmachine/TargetingParams$Data;->storeUrl:Ljava/lang/String;

    .line 12
    iput-object p10, p0, Lio/bidmachine/TargetingParams$Data;->storeCategory:Ljava/lang/String;

    .line 13
    iput-object p11, p0, Lio/bidmachine/TargetingParams$Data;->storeSubCategories:Ljava/util/List;

    .line 14
    iput-object p12, p0, Lio/bidmachine/TargetingParams$Data;->framework:Ljava/lang/String;

    .line 15
    iput-object p13, p0, Lio/bidmachine/TargetingParams$Data;->isPaid:Ljava/lang/Boolean;

    .line 16
    iput-object p14, p0, Lio/bidmachine/TargetingParams$Data;->externalUserIdList:Ljava/util/List;

    return-void
.end method

.method public synthetic constructor <init>(Ljava/lang/String;Lio/bidmachine/utils/Gender;Ljava/lang/Integer;Ljava/util/List;Landroid/location/Location;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/util/List;Ljava/lang/String;Ljava/lang/Boolean;Ljava/util/List;ILkotlin/jvm/internal/DefaultConstructorMarker;)V
    .registers 32

    move/from16 v0, p15

    and-int/lit8 v1, v0, 0x1

    const/4 v2, 0x0

    if-eqz v1, :cond_9

    move-object v1, v2

    goto :goto_b

    :cond_9
    move-object/from16 v1, p1

    :goto_b
    and-int/lit8 v3, v0, 0x2

    if-eqz v3, :cond_11

    move-object v3, v2

    goto :goto_13

    :cond_11
    move-object/from16 v3, p2

    :goto_13
    and-int/lit8 v4, v0, 0x4

    if-eqz v4, :cond_19

    move-object v4, v2

    goto :goto_1b

    :cond_19
    move-object/from16 v4, p3

    :goto_1b
    and-int/lit8 v5, v0, 0x8

    if-eqz v5, :cond_21

    move-object v5, v2

    goto :goto_23

    :cond_21
    move-object/from16 v5, p4

    :goto_23
    and-int/lit8 v6, v0, 0x10

    if-eqz v6, :cond_29

    move-object v6, v2

    goto :goto_2b

    :cond_29
    move-object/from16 v6, p5

    :goto_2b
    and-int/lit8 v7, v0, 0x20

    if-eqz v7, :cond_31

    move-object v7, v2

    goto :goto_33

    :cond_31
    move-object/from16 v7, p6

    :goto_33
    and-int/lit8 v8, v0, 0x40

    if-eqz v8, :cond_39

    move-object v8, v2

    goto :goto_3b

    :cond_39
    move-object/from16 v8, p7

    :goto_3b
    and-int/lit16 v9, v0, 0x80

    if-eqz v9, :cond_41

    move-object v9, v2

    goto :goto_43

    :cond_41
    move-object/from16 v9, p8

    :goto_43
    and-int/lit16 v10, v0, 0x100

    if-eqz v10, :cond_49

    move-object v10, v2

    goto :goto_4b

    :cond_49
    move-object/from16 v10, p9

    :goto_4b
    and-int/lit16 v11, v0, 0x200

    if-eqz v11, :cond_51

    move-object v11, v2

    goto :goto_53

    :cond_51
    move-object/from16 v11, p10

    :goto_53
    and-int/lit16 v12, v0, 0x400

    if-eqz v12, :cond_59

    move-object v12, v2

    goto :goto_5b

    :cond_59
    move-object/from16 v12, p11

    :goto_5b
    and-int/lit16 v13, v0, 0x800

    if-eqz v13, :cond_61

    move-object v13, v2

    goto :goto_63

    :cond_61
    move-object/from16 v13, p12

    :goto_63
    and-int/lit16 v14, v0, 0x1000

    if-eqz v14, :cond_69

    move-object v14, v2

    goto :goto_6b

    :cond_69
    move-object/from16 v14, p13

    :goto_6b
    and-int/lit16 v0, v0, 0x2000

    if-eqz v0, :cond_8e

    move-object/from16 p15, v2

    :goto_71
    move-object/from16 p1, p0

    move-object/from16 p2, v1

    move-object/from16 p3, v3

    move-object/from16 p4, v4

    move-object/from16 p5, v5

    move-object/from16 p6, v6

    move-object/from16 p7, v7

    move-object/from16 p8, v8

    move-object/from16 p9, v9

    move-object/from16 p10, v10

    move-object/from16 p11, v11

    move-object/from16 p12, v12

    move-object/from16 p13, v13

    move-object/from16 p14, v14

    goto :goto_91

    :cond_8e
    move-object/from16 p15, p14

    goto :goto_71

    .line 17
    :goto_91
    invoke-direct/range {p1 .. p15}, Lio/bidmachine/TargetingParams$Data;-><init>(Ljava/lang/String;Lio/bidmachine/utils/Gender;Ljava/lang/Integer;Ljava/util/List;Landroid/location/Location;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/util/List;Ljava/lang/String;Ljava/lang/Boolean;Ljava/util/List;)V

    return-void
.end method

.method public static synthetic copy$default(Lio/bidmachine/TargetingParams$Data;Ljava/lang/String;Lio/bidmachine/utils/Gender;Ljava/lang/Integer;Ljava/util/List;Landroid/location/Location;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/util/List;Ljava/lang/String;Ljava/lang/Boolean;Ljava/util/List;ILjava/lang/Object;)Lio/bidmachine/TargetingParams$Data;
    .registers 31

    .line 0
    move/from16 v0, p15

    and-int/lit8 v1, v0, 0x1

    if-eqz v1, :cond_9

    iget-object v1, p0, Lio/bidmachine/TargetingParams$Data;->userId:Ljava/lang/String;

    goto :goto_a

    :cond_9
    move-object v1, p1

    :goto_a
    and-int/lit8 v2, v0, 0x2

    if-eqz v2, :cond_11

    iget-object v2, p0, Lio/bidmachine/TargetingParams$Data;->gender:Lio/bidmachine/utils/Gender;

    goto :goto_13

    :cond_11
    move-object/from16 v2, p2

    :goto_13
    and-int/lit8 v3, v0, 0x4

    if-eqz v3, :cond_1a

    iget-object v3, p0, Lio/bidmachine/TargetingParams$Data;->birthdayYear:Ljava/lang/Integer;

    goto :goto_1c

    :cond_1a
    move-object/from16 v3, p3

    :goto_1c
    and-int/lit8 v4, v0, 0x8

    if-eqz v4, :cond_23

    iget-object v4, p0, Lio/bidmachine/TargetingParams$Data;->keywords:Ljava/util/List;

    goto :goto_25

    :cond_23
    move-object/from16 v4, p4

    :goto_25
    and-int/lit8 v5, v0, 0x10

    if-eqz v5, :cond_2c

    iget-object v5, p0, Lio/bidmachine/TargetingParams$Data;->deviceLocation:Landroid/location/Location;

    goto :goto_2e

    :cond_2c
    move-object/from16 v5, p5

    :goto_2e
    and-int/lit8 v6, v0, 0x20

    if-eqz v6, :cond_35

    iget-object v6, p0, Lio/bidmachine/TargetingParams$Data;->country:Ljava/lang/String;

    goto :goto_37

    :cond_35
    move-object/from16 v6, p6

    :goto_37
    and-int/lit8 v7, v0, 0x40

    if-eqz v7, :cond_3e

    iget-object v7, p0, Lio/bidmachine/TargetingParams$Data;->city:Ljava/lang/String;

    goto :goto_40

    :cond_3e
    move-object/from16 v7, p7

    :goto_40
    and-int/lit16 v8, v0, 0x80

    if-eqz v8, :cond_47

    iget-object v8, p0, Lio/bidmachine/TargetingParams$Data;->zip:Ljava/lang/String;

    goto :goto_49

    :cond_47
    move-object/from16 v8, p8

    :goto_49
    and-int/lit16 v9, v0, 0x100

    if-eqz v9, :cond_50

    iget-object v9, p0, Lio/bidmachine/TargetingParams$Data;->storeUrl:Ljava/lang/String;

    goto :goto_52

    :cond_50
    move-object/from16 v9, p9

    :goto_52
    and-int/lit16 v10, v0, 0x200

    if-eqz v10, :cond_59

    iget-object v10, p0, Lio/bidmachine/TargetingParams$Data;->storeCategory:Ljava/lang/String;

    goto :goto_5b

    :cond_59
    move-object/from16 v10, p10

    :goto_5b
    and-int/lit16 v11, v0, 0x400

    if-eqz v11, :cond_62

    iget-object v11, p0, Lio/bidmachine/TargetingParams$Data;->storeSubCategories:Ljava/util/List;

    goto :goto_64

    :cond_62
    move-object/from16 v11, p11

    :goto_64
    and-int/lit16 v12, v0, 0x800

    if-eqz v12, :cond_6b

    iget-object v12, p0, Lio/bidmachine/TargetingParams$Data;->framework:Ljava/lang/String;

    goto :goto_6d

    :cond_6b
    move-object/from16 v12, p12

    :goto_6d
    and-int/lit16 v13, v0, 0x1000

    if-eqz v13, :cond_74

    iget-object v13, p0, Lio/bidmachine/TargetingParams$Data;->isPaid:Ljava/lang/Boolean;

    goto :goto_76

    :cond_74
    move-object/from16 v13, p13

    :goto_76
    and-int/lit16 v0, v0, 0x2000

    if-eqz v0, :cond_9a

    iget-object v0, p0, Lio/bidmachine/TargetingParams$Data;->externalUserIdList:Ljava/util/List;

    move-object/from16 p15, v0

    :goto_7e
    move-object p1, p0

    move-object/from16 p2, v1

    move-object/from16 p3, v2

    move-object/from16 p4, v3

    move-object/from16 p5, v4

    move-object/from16 p6, v5

    move-object/from16 p7, v6

    move-object/from16 p8, v7

    move-object/from16 p9, v8

    move-object/from16 p10, v9

    move-object/from16 p11, v10

    move-object/from16 p12, v11

    move-object/from16 p13, v12

    move-object/from16 p14, v13

    goto :goto_9d

    :cond_9a
    move-object/from16 p15, p14

    goto :goto_7e

    :goto_9d
    invoke-virtual/range {p1 .. p15}, Lio/bidmachine/TargetingParams$Data;->copy(Ljava/lang/String;Lio/bidmachine/utils/Gender;Ljava/lang/Integer;Ljava/util/List;Landroid/location/Location;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/util/List;Ljava/lang/String;Ljava/lang/Boolean;Ljava/util/List;)Lio/bidmachine/TargetingParams$Data;

    move-result-object p0

    return-object p0
.end method


# virtual methods
.method public final component1()Ljava/lang/String;
    .registers 2

    .line 0
    iget-object v0, p0, Lio/bidmachine/TargetingParams$Data;->userId:Ljava/lang/String;

    return-object v0
.end method

.method public final component10()Ljava/lang/String;
    .registers 2

    .line 0
    iget-object v0, p0, Lio/bidmachine/TargetingParams$Data;->storeCategory:Ljava/lang/String;

    return-object v0
.end method

.method public final component11()Ljava/util/List;
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .line 0
    iget-object v0, p0, Lio/bidmachine/TargetingParams$Data;->storeSubCategories:Ljava/util/List;

    return-object v0
.end method

.method public final component12()Ljava/lang/String;
    .registers 2

    .line 0
    iget-object v0, p0, Lio/bidmachine/TargetingParams$Data;->framework:Ljava/lang/String;

    return-object v0
.end method

.method public final component13()Ljava/lang/Boolean;
    .registers 2

    .line 0
    iget-object v0, p0, Lio/bidmachine/TargetingParams$Data;->isPaid:Ljava/lang/Boolean;

    return-object v0
.end method

.method public final component14()Ljava/util/List;
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lio/bidmachine/ExternalUserId;",
            ">;"
        }
    .end annotation

    .line 0
    iget-object v0, p0, Lio/bidmachine/TargetingParams$Data;->externalUserIdList:Ljava/util/List;

    return-object v0
.end method

.method public final component2()Lio/bidmachine/utils/Gender;
    .registers 2

    .line 0
    iget-object v0, p0, Lio/bidmachine/TargetingParams$Data;->gender:Lio/bidmachine/utils/Gender;

    return-object v0
.end method

.method public final component3()Ljava/lang/Integer;
    .registers 2

    .line 0
    iget-object v0, p0, Lio/bidmachine/TargetingParams$Data;->birthdayYear:Ljava/lang/Integer;

    return-object v0
.end method

.method public final component4()Ljava/util/List;
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .line 0
    iget-object v0, p0, Lio/bidmachine/TargetingParams$Data;->keywords:Ljava/util/List;

    return-object v0
.end method

.method public final component5()Landroid/location/Location;
    .registers 2

    .line 0
    iget-object v0, p0, Lio/bidmachine/TargetingParams$Data;->deviceLocation:Landroid/location/Location;

    return-object v0
.end method

.method public final component6()Ljava/lang/String;
    .registers 2

    .line 0
    iget-object v0, p0, Lio/bidmachine/TargetingParams$Data;->country:Ljava/lang/String;

    return-object v0
.end method

.method public final component7()Ljava/lang/String;
    .registers 2

    .line 0
    iget-object v0, p0, Lio/bidmachine/TargetingParams$Data;->city:Ljava/lang/String;

    return-object v0
.end method

.method public final component8()Ljava/lang/String;
    .registers 2

    .line 0
    iget-object v0, p0, Lio/bidmachine/TargetingParams$Data;->zip:Ljava/lang/String;

    return-object v0
.end method

.method public final component9()Ljava/lang/String;
    .registers 2

    .line 0
    iget-object v0, p0, Lio/bidmachine/TargetingParams$Data;->storeUrl:Ljava/lang/String;

    return-object v0
.end method

.method public final copy(Ljava/lang/String;Lio/bidmachine/utils/Gender;Ljava/lang/Integer;Ljava/util/List;Landroid/location/Location;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/util/List;Ljava/lang/String;Ljava/lang/Boolean;Ljava/util/List;)Lio/bidmachine/TargetingParams$Data;
    .registers 30
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Lio/bidmachine/utils/Gender;",
            "Ljava/lang/Integer;",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;",
            "Landroid/location/Location;",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;",
            "Ljava/lang/String;",
            "Ljava/lang/Boolean;",
            "Ljava/util/List<",
            "+",
            "Lio/bidmachine/ExternalUserId;",
            ">;)",
            "Lio/bidmachine/TargetingParams$Data;"
        }
    .end annotation

    .line 0
    new-instance v0, Lio/bidmachine/TargetingParams$Data;

    move-object/from16 v1, p1

    move-object/from16 v2, p2

    move-object/from16 v3, p3

    move-object/from16 v4, p4

    move-object/from16 v5, p5

    move-object/from16 v6, p6

    move-object/from16 v7, p7

    move-object/from16 v8, p8

    move-object/from16 v9, p9

    move-object/from16 v10, p10

    move-object/from16 v11, p11

    move-object/from16 v12, p12

    move-object/from16 v13, p13

    move-object/from16 v14, p14

    invoke-direct/range {v0 .. v14}, Lio/bidmachine/TargetingParams$Data;-><init>(Ljava/lang/String;Lio/bidmachine/utils/Gender;Ljava/lang/Integer;Ljava/util/List;Landroid/location/Location;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/util/List;Ljava/lang/String;Ljava/lang/Boolean;Ljava/util/List;)V

    return-object v0
.end method

.method public equals(Ljava/lang/Object;)Z
    .registers 6

    .line 0
    const/4 v0, 0x1

    if-ne p0, p1, :cond_4

    return v0

    :cond_4
    instance-of v1, p1, Lio/bidmachine/TargetingParams$Data;

    const/4 v2, 0x0

    if-nez v1, :cond_a

    return v2

    :cond_a
    check-cast p1, Lio/bidmachine/TargetingParams$Data;

    iget-object v1, p0, Lio/bidmachine/TargetingParams$Data;->userId:Ljava/lang/String;

    iget-object v3, p1, Lio/bidmachine/TargetingParams$Data;->userId:Ljava/lang/String;

    invoke-static {v1, v3}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_17

    return v2

    :cond_17
    iget-object v1, p0, Lio/bidmachine/TargetingParams$Data;->gender:Lio/bidmachine/utils/Gender;

    iget-object v3, p1, Lio/bidmachine/TargetingParams$Data;->gender:Lio/bidmachine/utils/Gender;

    if-eq v1, v3, :cond_1e

    return v2

    :cond_1e
    iget-object v1, p0, Lio/bidmachine/TargetingParams$Data;->birthdayYear:Ljava/lang/Integer;

    iget-object v3, p1, Lio/bidmachine/TargetingParams$Data;->birthdayYear:Ljava/lang/Integer;

    invoke-static {v1, v3}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_29

    return v2

    :cond_29
    iget-object v1, p0, Lio/bidmachine/TargetingParams$Data;->keywords:Ljava/util/List;

    iget-object v3, p1, Lio/bidmachine/TargetingParams$Data;->keywords:Ljava/util/List;

    invoke-static {v1, v3}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_34

    return v2

    :cond_34
    iget-object v1, p0, Lio/bidmachine/TargetingParams$Data;->deviceLocation:Landroid/location/Location;

    iget-object v3, p1, Lio/bidmachine/TargetingParams$Data;->deviceLocation:Landroid/location/Location;

    invoke-static {v1, v3}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_3f

    return v2

    :cond_3f
    iget-object v1, p0, Lio/bidmachine/TargetingParams$Data;->country:Ljava/lang/String;

    iget-object v3, p1, Lio/bidmachine/TargetingParams$Data;->country:Ljava/lang/String;

    invoke-static {v1, v3}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_4a

    return v2

    :cond_4a
    iget-object v1, p0, Lio/bidmachine/TargetingParams$Data;->city:Ljava/lang/String;

    iget-object v3, p1, Lio/bidmachine/TargetingParams$Data;->city:Ljava/lang/String;

    invoke-static {v1, v3}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_55

    return v2

    :cond_55
    iget-object v1, p0, Lio/bidmachine/TargetingParams$Data;->zip:Ljava/lang/String;

    iget-object v3, p1, Lio/bidmachine/TargetingParams$Data;->zip:Ljava/lang/String;

    invoke-static {v1, v3}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_60

    return v2

    :cond_60
    iget-object v1, p0, Lio/bidmachine/TargetingParams$Data;->storeUrl:Ljava/lang/String;

    iget-object v3, p1, Lio/bidmachine/TargetingParams$Data;->storeUrl:Ljava/lang/String;

    invoke-static {v1, v3}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_6b

    return v2

    :cond_6b
    iget-object v1, p0, Lio/bidmachine/TargetingParams$Data;->storeCategory:Ljava/lang/String;

    iget-object v3, p1, Lio/bidmachine/TargetingParams$Data;->storeCategory:Ljava/lang/String;

    invoke-static {v1, v3}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_76

    return v2

    :cond_76
    iget-object v1, p0, Lio/bidmachine/TargetingParams$Data;->storeSubCategories:Ljava/util/List;

    iget-object v3, p1, Lio/bidmachine/TargetingParams$Data;->storeSubCategories:Ljava/util/List;

    invoke-static {v1, v3}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_81

    return v2

    :cond_81
    iget-object v1, p0, Lio/bidmachine/TargetingParams$Data;->framework:Ljava/lang/String;

    iget-object v3, p1, Lio/bidmachine/TargetingParams$Data;->framework:Ljava/lang/String;

    invoke-static {v1, v3}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_8c

    return v2

    :cond_8c
    iget-object v1, p0, Lio/bidmachine/TargetingParams$Data;->isPaid:Ljava/lang/Boolean;

    iget-object v3, p1, Lio/bidmachine/TargetingParams$Data;->isPaid:Ljava/lang/Boolean;

    invoke-static {v1, v3}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_97

    return v2

    :cond_97
    iget-object v1, p0, Lio/bidmachine/TargetingParams$Data;->externalUserIdList:Ljava/util/List;

    iget-object p1, p1, Lio/bidmachine/TargetingParams$Data;->externalUserIdList:Ljava/util/List;

    invoke-static {v1, p1}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result p1

    if-nez p1, :cond_a2

    return v2

    :cond_a2
    return v0
.end method

.method public final getBirthdayYear()Ljava/lang/Integer;
    .registers 2

    .line 1
    iget-object v0, p0, Lio/bidmachine/TargetingParams$Data;->birthdayYear:Ljava/lang/Integer;

    return-object v0
.end method

.method public final getCity()Ljava/lang/String;
    .registers 2

    .line 1
    iget-object v0, p0, Lio/bidmachine/TargetingParams$Data;->city:Ljava/lang/String;

    return-object v0
.end method

.method public final getCountry()Ljava/lang/String;
    .registers 2

    .line 1
    iget-object v0, p0, Lio/bidmachine/TargetingParams$Data;->country:Ljava/lang/String;

    return-object v0
.end method

.method public final getDeviceLocation()Landroid/location/Location;
    .registers 2

    .line 1
    iget-object v0, p0, Lio/bidmachine/TargetingParams$Data;->deviceLocation:Landroid/location/Location;

    return-object v0
.end method

.method public final getExternalUserIdList()Ljava/util/List;
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lio/bidmachine/ExternalUserId;",
            ">;"
        }
    .end annotation

    .line 1
    iget-object v0, p0, Lio/bidmachine/TargetingParams$Data;->externalUserIdList:Ljava/util/List;

    return-object v0
.end method

.method public final getFramework()Ljava/lang/String;
    .registers 2

    .line 1
    iget-object v0, p0, Lio/bidmachine/TargetingParams$Data;->framework:Ljava/lang/String;

    return-object v0
.end method

.method public final getGender()Lio/bidmachine/utils/Gender;
    .registers 2

    .line 1
    iget-object v0, p0, Lio/bidmachine/TargetingParams$Data;->gender:Lio/bidmachine/utils/Gender;

    return-object v0
.end method

.method public final getKeywords()Ljava/util/List;
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
    iget-object v0, p0, Lio/bidmachine/TargetingParams$Data;->keywords:Ljava/util/List;

    return-object v0
.end method

.method public final getStoreCategory()Ljava/lang/String;
    .registers 2

    .line 1
    iget-object v0, p0, Lio/bidmachine/TargetingParams$Data;->storeCategory:Ljava/lang/String;

    return-object v0
.end method

.method public final getStoreSubCategories()Ljava/util/List;
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
    iget-object v0, p0, Lio/bidmachine/TargetingParams$Data;->storeSubCategories:Ljava/util/List;

    return-object v0
.end method

.method public final getStoreUrl()Ljava/lang/String;
    .registers 2

    .line 1
    iget-object v0, p0, Lio/bidmachine/TargetingParams$Data;->storeUrl:Ljava/lang/String;

    return-object v0
.end method

.method public final getUserId()Ljava/lang/String;
    .registers 2

    .line 1
    iget-object v0, p0, Lio/bidmachine/TargetingParams$Data;->userId:Ljava/lang/String;

    return-object v0
.end method

.method public final getZip()Ljava/lang/String;
    .registers 2

    .line 1
    iget-object v0, p0, Lio/bidmachine/TargetingParams$Data;->zip:Ljava/lang/String;

    return-object v0
.end method

.method public hashCode()I
    .registers 4

    .line 0
    iget-object v0, p0, Lio/bidmachine/TargetingParams$Data;->userId:Ljava/lang/String;

    const/4 v1, 0x0

    if-nez v0, :cond_7

    move v0, v1

    goto :goto_b

    :cond_7
    invoke-virtual {v0}, Ljava/lang/String;->hashCode()I

    move-result v0

    :goto_b
    mul-int/lit8 v0, v0, 0x1f

    iget-object v2, p0, Lio/bidmachine/TargetingParams$Data;->gender:Lio/bidmachine/utils/Gender;

    if-nez v2, :cond_13

    move v2, v1

    goto :goto_17

    :cond_13
    invoke-virtual {v2}, Ljava/lang/Object;->hashCode()I

    move-result v2

    :goto_17
    add-int/2addr v0, v2

    mul-int/lit8 v0, v0, 0x1f

    iget-object v2, p0, Lio/bidmachine/TargetingParams$Data;->birthdayYear:Ljava/lang/Integer;

    if-nez v2, :cond_20

    move v2, v1

    goto :goto_24

    :cond_20
    invoke-virtual {v2}, Ljava/lang/Object;->hashCode()I

    move-result v2

    :goto_24
    add-int/2addr v0, v2

    mul-int/lit8 v0, v0, 0x1f

    iget-object v2, p0, Lio/bidmachine/TargetingParams$Data;->keywords:Ljava/util/List;

    if-nez v2, :cond_2d

    move v2, v1

    goto :goto_31

    :cond_2d
    invoke-virtual {v2}, Ljava/lang/Object;->hashCode()I

    move-result v2

    :goto_31
    add-int/2addr v0, v2

    mul-int/lit8 v0, v0, 0x1f

    iget-object v2, p0, Lio/bidmachine/TargetingParams$Data;->deviceLocation:Landroid/location/Location;

    if-nez v2, :cond_3a

    move v2, v1

    goto :goto_3e

    :cond_3a
    invoke-virtual {v2}, Landroid/location/Location;->hashCode()I

    move-result v2

    :goto_3e
    add-int/2addr v0, v2

    mul-int/lit8 v0, v0, 0x1f

    iget-object v2, p0, Lio/bidmachine/TargetingParams$Data;->country:Ljava/lang/String;

    if-nez v2, :cond_47

    move v2, v1

    goto :goto_4b

    :cond_47
    invoke-virtual {v2}, Ljava/lang/String;->hashCode()I

    move-result v2

    :goto_4b
    add-int/2addr v0, v2

    mul-int/lit8 v0, v0, 0x1f

    iget-object v2, p0, Lio/bidmachine/TargetingParams$Data;->city:Ljava/lang/String;

    if-nez v2, :cond_54

    move v2, v1

    goto :goto_58

    :cond_54
    invoke-virtual {v2}, Ljava/lang/String;->hashCode()I

    move-result v2

    :goto_58
    add-int/2addr v0, v2

    mul-int/lit8 v0, v0, 0x1f

    iget-object v2, p0, Lio/bidmachine/TargetingParams$Data;->zip:Ljava/lang/String;

    if-nez v2, :cond_61

    move v2, v1

    goto :goto_65

    :cond_61
    invoke-virtual {v2}, Ljava/lang/String;->hashCode()I

    move-result v2

    :goto_65
    add-int/2addr v0, v2

    mul-int/lit8 v0, v0, 0x1f

    iget-object v2, p0, Lio/bidmachine/TargetingParams$Data;->storeUrl:Ljava/lang/String;

    if-nez v2, :cond_6e

    move v2, v1

    goto :goto_72

    :cond_6e
    invoke-virtual {v2}, Ljava/lang/String;->hashCode()I

    move-result v2

    :goto_72
    add-int/2addr v0, v2

    mul-int/lit8 v0, v0, 0x1f

    iget-object v2, p0, Lio/bidmachine/TargetingParams$Data;->storeCategory:Ljava/lang/String;

    if-nez v2, :cond_7b

    move v2, v1

    goto :goto_7f

    :cond_7b
    invoke-virtual {v2}, Ljava/lang/String;->hashCode()I

    move-result v2

    :goto_7f
    add-int/2addr v0, v2

    mul-int/lit8 v0, v0, 0x1f

    iget-object v2, p0, Lio/bidmachine/TargetingParams$Data;->storeSubCategories:Ljava/util/List;

    if-nez v2, :cond_88

    move v2, v1

    goto :goto_8c

    :cond_88
    invoke-virtual {v2}, Ljava/lang/Object;->hashCode()I

    move-result v2

    :goto_8c
    add-int/2addr v0, v2

    mul-int/lit8 v0, v0, 0x1f

    iget-object v2, p0, Lio/bidmachine/TargetingParams$Data;->framework:Ljava/lang/String;

    if-nez v2, :cond_95

    move v2, v1

    goto :goto_99

    :cond_95
    invoke-virtual {v2}, Ljava/lang/String;->hashCode()I

    move-result v2

    :goto_99
    add-int/2addr v0, v2

    mul-int/lit8 v0, v0, 0x1f

    iget-object v2, p0, Lio/bidmachine/TargetingParams$Data;->isPaid:Ljava/lang/Boolean;

    if-nez v2, :cond_a2

    move v2, v1

    goto :goto_a6

    :cond_a2
    invoke-virtual {v2}, Ljava/lang/Object;->hashCode()I

    move-result v2

    :goto_a6
    add-int/2addr v0, v2

    mul-int/lit8 v0, v0, 0x1f

    iget-object v2, p0, Lio/bidmachine/TargetingParams$Data;->externalUserIdList:Ljava/util/List;

    if-nez v2, :cond_ae

    goto :goto_b2

    :cond_ae
    invoke-virtual {v2}, Ljava/lang/Object;->hashCode()I

    move-result v1

    :goto_b2
    add-int/2addr v0, v1

    return v0
.end method

.method public final isPaid()Ljava/lang/Boolean;
    .registers 2

    .line 1
    iget-object v0, p0, Lio/bidmachine/TargetingParams$Data;->isPaid:Ljava/lang/Boolean;

    return-object v0
.end method

.method public toString()Ljava/lang/String;
    .registers 3

    .line 0
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Data(userId="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lio/bidmachine/TargetingParams$Data;->userId:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, ", gender="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lio/bidmachine/TargetingParams$Data;->gender:Lio/bidmachine/utils/Gender;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, ", birthdayYear="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lio/bidmachine/TargetingParams$Data;->birthdayYear:Ljava/lang/Integer;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, ", keywords="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lio/bidmachine/TargetingParams$Data;->keywords:Ljava/util/List;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, ", deviceLocation="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lio/bidmachine/TargetingParams$Data;->deviceLocation:Landroid/location/Location;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, ", country="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lio/bidmachine/TargetingParams$Data;->country:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, ", city="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lio/bidmachine/TargetingParams$Data;->city:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, ", zip="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lio/bidmachine/TargetingParams$Data;->zip:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, ", storeUrl="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lio/bidmachine/TargetingParams$Data;->storeUrl:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, ", storeCategory="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lio/bidmachine/TargetingParams$Data;->storeCategory:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, ", storeSubCategories="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lio/bidmachine/TargetingParams$Data;->storeSubCategories:Ljava/util/List;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, ", framework="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lio/bidmachine/TargetingParams$Data;->framework:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, ", isPaid="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lio/bidmachine/TargetingParams$Data;->isPaid:Ljava/lang/Boolean;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, ", externalUserIdList="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lio/bidmachine/TargetingParams$Data;->externalUserIdList:Ljava/util/List;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const/16 v1, 0x29

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
