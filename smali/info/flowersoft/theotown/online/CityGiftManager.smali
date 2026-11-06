###### Class info.flowersoft.theotown.online.CityGiftManager (info.flowersoft.theotown.online.CityGiftManager)
.class public Linfo/flowersoft/theotown/online/CityGiftManager;
.super Ljava/lang/Object;
.source "CityGiftManager.java"


# instance fields
.field public cityId:I

.field public gifts:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Linfo/flowersoft/theotown/online/VirtualGift;",
            ">;"
        }
    .end annotation
.end field

.field public hasUnclaimedGifts:Z

.field public lastIssueTime:J

.field public lastResultTime:J

.field public ownerId:I

.field public store:Linfo/flowersoft/theotown/online/OnlineRegionStore;

.field public uploader:Linfo/flowersoft/theotown/online/RegionUploader;

.field public valid:Z


# direct methods
.method public constructor <init>(Linfo/flowersoft/theotown/online/OnlineRegionStore;Linfo/flowersoft/theotown/online/RegionUploader;II)V
    .registers 5

    .line 30
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 31
    iput-object p1, p0, Linfo/flowersoft/theotown/online/CityGiftManager;->store:Linfo/flowersoft/theotown/online/OnlineRegionStore;

    .line 32
    iput-object p2, p0, Linfo/flowersoft/theotown/online/CityGiftManager;->uploader:Linfo/flowersoft/theotown/online/RegionUploader;

    .line 33
    iput p3, p0, Linfo/flowersoft/theotown/online/CityGiftManager;->cityId:I

    .line 34
    iput p4, p0, Linfo/flowersoft/theotown/online/CityGiftManager;->ownerId:I

    const/4 p1, 0x1

    .line 36
    invoke-virtual {p0, p1}, Linfo/flowersoft/theotown/online/CityGiftManager;->fetch(Z)V

    return-void
.end method

.method public static synthetic access$002(Linfo/flowersoft/theotown/online/CityGiftManager;Z)Z
    .registers 2

    .line 16
    iput-boolean p1, p0, Linfo/flowersoft/theotown/online/CityGiftManager;->hasUnclaimedGifts:Z

    return p1
.end method

.method public static synthetic access$102(Linfo/flowersoft/theotown/online/CityGiftManager;Ljava/util/List;)Ljava/util/List;
    .registers 2

    .line 16
    iput-object p1, p0, Linfo/flowersoft/theotown/online/CityGiftManager;->gifts:Ljava/util/List;

    return-object p1
.end method

.method public static synthetic access$202(Linfo/flowersoft/theotown/online/CityGiftManager;J)J
    .registers 3

    .line 16
    iput-wide p1, p0, Linfo/flowersoft/theotown/online/CityGiftManager;->lastResultTime:J

    return-wide p1
.end method


# virtual methods
.method public createGift(Linfo/flowersoft/theotown/online/GiftType;DLjava/lang/String;ZLjava/lang/Runnable;Lio/blueflower/stapel2d/util/Setter;)V
    .registers 16
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Linfo/flowersoft/theotown/online/GiftType;",
            "D",
            "Ljava/lang/String;",
            "Z",
            "Ljava/lang/Runnable;",
            "Lio/blueflower/stapel2d/util/Setter<",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    .line 140
    invoke-virtual {p1}, Linfo/flowersoft/theotown/online/GiftType;->getId()Ljava/lang/String;

    move-result-object p1

    filled-new-array {p1}, [Ljava/lang/String;

    move-result-object v1

    move-object v0, p0

    move-wide v2, p2

    move-object v4, p4

    move v5, p5

    move-object v6, p6

    move-object v7, p7

    .line 141
    invoke-virtual/range {v0 .. v7}, Linfo/flowersoft/theotown/online/CityGiftManager;->createGift([Ljava/lang/String;DLjava/lang/String;ZLjava/lang/Runnable;Lio/blueflower/stapel2d/util/Setter;)V

    return-void
.end method

.method public final createGift([Ljava/lang/String;DLjava/lang/String;ZLjava/lang/Runnable;Lio/blueflower/stapel2d/util/Setter;)V
    .registers 18
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "([",
            "Ljava/lang/String;",
            "D",
            "Ljava/lang/String;",
            "Z",
            "Ljava/lang/Runnable;",
            "Lio/blueflower/stapel2d/util/Setter<",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    move-object/from16 v0, p7

    .line 145
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const/4 v2, 0x0

    .line 146
    :goto_8
    array-length v3, p1

    if-ge v2, v3, :cond_1d

    .line 147
    aget-object v3, p1, v2

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 148
    array-length v3, p1

    add-int/lit8 v3, v3, -0x1

    if-ge v2, v3, :cond_1a

    const/16 v3, 0x3a

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    :cond_1a
    add-int/lit8 v2, v2, 0x1

    goto :goto_8

    .line 151
    :cond_1d
    invoke-static {}, Linfo/flowersoft/theotown/backend/Backend;->getInstance()Linfo/flowersoft/theotown/backend/Backend;

    move-result-object p1

    invoke-virtual {p1}, Linfo/flowersoft/theotown/backend/Backend;->getUser()Linfo/flowersoft/theotown/backend/User;

    move-result-object p1

    .line 152
    invoke-virtual {p1}, Linfo/flowersoft/theotown/backend/User;->isValid()Z

    move-result v2

    if-eqz v2, :cond_47

    invoke-virtual {p1}, Linfo/flowersoft/theotown/backend/User;->isForumConnected()Z

    move-result p1

    if-eqz p1, :cond_47

    .line 153
    iget-object v2, p0, Linfo/flowersoft/theotown/online/CityGiftManager;->uploader:Linfo/flowersoft/theotown/online/RegionUploader;

    iget v3, p0, Linfo/flowersoft/theotown/online/CityGiftManager;->cityId:I

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    new-instance v9, Linfo/flowersoft/theotown/online/CityGiftManager$5;

    move-object/from16 p1, p6

    invoke-direct {v9, p0, p1, v0}, Linfo/flowersoft/theotown/online/CityGiftManager$5;-><init>(Linfo/flowersoft/theotown/online/CityGiftManager;Ljava/lang/Runnable;Lio/blueflower/stapel2d/util/Setter;)V

    move-wide v5, p2

    move-object v7, p4

    move v8, p5

    invoke-virtual/range {v2 .. v9}, Linfo/flowersoft/theotown/online/RegionUploader;->makeGift(ILjava/lang/String;DLjava/lang/String;ZLinfo/flowersoft/theotown/backend/Service$Handler;)V

    return-void

    .line 165
    :cond_47
    const-string p1, "Invalid user"

    invoke-interface {v0, p1}, Lio/blueflower/stapel2d/util/Setter;->set(Ljava/lang/Object;)V

    return-void
.end method

.method public deleteGift(Linfo/flowersoft/theotown/online/VirtualGift;Linfo/flowersoft/theotown/backend/Service$Handler;)V
    .registers 4

    .line 185
    iget-object v0, p0, Linfo/flowersoft/theotown/online/CityGiftManager;->uploader:Linfo/flowersoft/theotown/online/RegionUploader;

    invoke-virtual {p1}, Linfo/flowersoft/theotown/online/VirtualGift;->getId()I

    move-result p1

    invoke-virtual {v0, p1, p2}, Linfo/flowersoft/theotown/online/RegionUploader;->deleteGift(ILinfo/flowersoft/theotown/backend/Service$Handler;)V

    return-void
.end method

.method public fetch(Z)V
    .registers 6

    if-nez p1, :cond_10

    .line 52
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    iget-wide v2, p0, Linfo/flowersoft/theotown/online/CityGiftManager;->lastIssueTime:J

    sub-long/2addr v0, v2

    const-wide/16 v2, 0x2710

    cmp-long v0, v0, v2

    if-gez v0, :cond_10

    return-void

    :cond_10
    const/4 v0, 0x0

    if-nez p1, :cond_1a

    .line 54
    iget-boolean p1, p0, Linfo/flowersoft/theotown/online/CityGiftManager;->valid:Z

    if-nez p1, :cond_18

    goto :goto_1a

    :cond_18
    move p1, v0

    goto :goto_1b

    :cond_1a
    :goto_1a
    const/4 p1, 0x1

    :goto_1b
    if-eqz p1, :cond_1f

    .line 55
    iput-boolean v0, p0, Linfo/flowersoft/theotown/online/CityGiftManager;->valid:Z

    .line 57
    :cond_1f
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    iput-wide v0, p0, Linfo/flowersoft/theotown/online/CityGiftManager;->lastIssueTime:J

    .line 59
    iget-object v0, p0, Linfo/flowersoft/theotown/online/CityGiftManager;->store:Linfo/flowersoft/theotown/online/OnlineRegionStore;

    iget v1, p0, Linfo/flowersoft/theotown/online/CityGiftManager;->cityId:I

    new-instance v2, Linfo/flowersoft/theotown/online/CityGiftManager$1;

    invoke-direct {v2, p0, p1}, Linfo/flowersoft/theotown/online/CityGiftManager$1;-><init>(Linfo/flowersoft/theotown/online/CityGiftManager;Z)V

    invoke-virtual {v0, v1, v2}, Linfo/flowersoft/theotown/online/OnlineRegionStore;->fetchCityGifts(ILinfo/flowersoft/theotown/backend/Service$Handler;)V

    return-void
.end method

.method public getGifts()Ljava/util/List;
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Linfo/flowersoft/theotown/online/VirtualGift;",
            ">;"
        }
    .end annotation

    .line 40
    iget-object v0, p0, Linfo/flowersoft/theotown/online/CityGiftManager;->gifts:Ljava/util/List;

    return-object v0
.end method

.method public hasUnclaimedGiftsUser()Z
    .registers 2

    .line 198
    iget-boolean v0, p0, Linfo/flowersoft/theotown/online/CityGiftManager;->hasUnclaimedGifts:Z

    if-eqz v0, :cond_c

    invoke-virtual {p0}, Linfo/flowersoft/theotown/online/CityGiftManager;->isReceiver()Z

    move-result v0

    if-eqz v0, :cond_c

    const/4 v0, 0x1

    return v0

    :cond_c
    const/4 v0, 0x0

    return v0
.end method

.method public isReceiver()Z
    .registers 5

    .line 189
    invoke-static {}, Linfo/flowersoft/theotown/backend/Backend;->getInstance()Linfo/flowersoft/theotown/backend/Backend;

    move-result-object v0

    invoke-virtual {v0}, Linfo/flowersoft/theotown/backend/Backend;->getUser()Linfo/flowersoft/theotown/backend/User;

    move-result-object v0

    .line 190
    invoke-virtual {v0}, Linfo/flowersoft/theotown/backend/User;->isValid()Z

    move-result v1

    if-eqz v1, :cond_21

    invoke-virtual {v0}, Linfo/flowersoft/theotown/backend/User;->isForumConnected()Z

    move-result v1

    if-eqz v1, :cond_21

    invoke-virtual {v0}, Linfo/flowersoft/theotown/backend/User;->getId()J

    move-result-wide v0

    iget v2, p0, Linfo/flowersoft/theotown/online/CityGiftManager;->ownerId:I

    int-to-long v2, v2

    cmp-long v0, v0, v2

    if-nez v0, :cond_21

    const/4 v0, 0x1

    return v0

    :cond_21
    const/4 v0, 0x0

    return v0
.end method

.method public markGiftsAsSeen()V
    .registers 9

    .line 92
    iget-object v0, p0, Linfo/flowersoft/theotown/online/CityGiftManager;->gifts:Ljava/util/List;

    if-eqz v0, :cond_46

    const/4 v1, 0x0

    move v2, v1

    .line 96
    :goto_6
    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v3

    if-ge v1, v3, :cond_40

    .line 97
    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Linfo/flowersoft/theotown/online/VirtualGift;

    .line 98
    invoke-virtual {v3}, Linfo/flowersoft/theotown/online/VirtualGift;->getReceiveTime()J

    move-result-wide v4

    const-wide/16 v6, 0x0

    cmp-long v4, v4, v6

    if-nez v4, :cond_3d

    invoke-virtual {v3}, Linfo/flowersoft/theotown/online/VirtualGift;->getType()Linfo/flowersoft/theotown/online/GiftType;

    move-result-object v4

    invoke-virtual {v4}, Linfo/flowersoft/theotown/online/GiftType;->isConsumable()Z

    move-result v4

    if-nez v4, :cond_3d

    invoke-virtual {v3}, Linfo/flowersoft/theotown/online/VirtualGift;->getType()Linfo/flowersoft/theotown/online/GiftType;

    move-result-object v4

    sget-object v5, Linfo/flowersoft/theotown/online/GiftType;->UNKNOWN:Linfo/flowersoft/theotown/online/GiftType;

    if-eq v4, v5, :cond_3d

    add-int/lit8 v2, v2, 0x1

    .line 100
    new-instance v4, Linfo/flowersoft/theotown/online/CityGiftManager$2;

    invoke-direct {v4, p0, v3}, Linfo/flowersoft/theotown/online/CityGiftManager$2;-><init>(Linfo/flowersoft/theotown/online/CityGiftManager;Linfo/flowersoft/theotown/online/VirtualGift;)V

    new-instance v5, Linfo/flowersoft/theotown/online/CityGiftManager$3;

    invoke-direct {v5, p0}, Linfo/flowersoft/theotown/online/CityGiftManager$3;-><init>(Linfo/flowersoft/theotown/online/CityGiftManager;)V

    invoke-virtual {p0, v3, v4, v5}, Linfo/flowersoft/theotown/online/CityGiftManager;->redeem(Linfo/flowersoft/theotown/online/VirtualGift;Ljava/lang/Runnable;Lio/blueflower/stapel2d/util/Setter;)V

    :cond_3d
    add-int/lit8 v1, v1, 0x1

    goto :goto_6

    :cond_40
    if-lez v2, :cond_46

    const/4 v0, 0x1

    .line 114
    invoke-virtual {p0, v0}, Linfo/flowersoft/theotown/online/CityGiftManager;->fetch(Z)V

    :cond_46
    return-void
.end method

.method public redeem(Linfo/flowersoft/theotown/online/VirtualGift;Ljava/lang/Runnable;Lio/blueflower/stapel2d/util/Setter;)V
    .registers 9
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Linfo/flowersoft/theotown/online/VirtualGift;",
            "Ljava/lang/Runnable;",
            "Lio/blueflower/stapel2d/util/Setter<",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    .line 120
    invoke-static {}, Linfo/flowersoft/theotown/backend/Backend;->getInstance()Linfo/flowersoft/theotown/backend/Backend;

    move-result-object v0

    invoke-virtual {v0}, Linfo/flowersoft/theotown/backend/Backend;->getUser()Linfo/flowersoft/theotown/backend/User;

    move-result-object v0

    if-eqz p1, :cond_3a

    .line 121
    iget v1, p0, Linfo/flowersoft/theotown/online/CityGiftManager;->ownerId:I

    int-to-long v1, v1

    invoke-virtual {v0}, Linfo/flowersoft/theotown/backend/User;->getId()J

    move-result-wide v3

    cmp-long v1, v1, v3

    if-nez v1, :cond_3a

    .line 122
    invoke-virtual {v0}, Linfo/flowersoft/theotown/backend/User;->isValid()Z

    move-result v1

    if-eqz v1, :cond_3a

    invoke-virtual {v0}, Linfo/flowersoft/theotown/backend/User;->isForumConnected()Z

    move-result v0

    if-eqz v0, :cond_3a

    invoke-virtual {p1}, Linfo/flowersoft/theotown/online/VirtualGift;->getReceiveTime()J

    move-result-wide v0

    const-wide/16 v2, 0x0

    cmp-long v0, v0, v2

    if-nez v0, :cond_3a

    .line 123
    iget-object v0, p0, Linfo/flowersoft/theotown/online/CityGiftManager;->uploader:Linfo/flowersoft/theotown/online/RegionUploader;

    invoke-virtual {p1}, Linfo/flowersoft/theotown/online/VirtualGift;->getId()I

    move-result p1

    new-instance v1, Linfo/flowersoft/theotown/online/CityGiftManager$4;

    invoke-direct {v1, p0, p2, p3}, Linfo/flowersoft/theotown/online/CityGiftManager$4;-><init>(Linfo/flowersoft/theotown/online/CityGiftManager;Ljava/lang/Runnable;Lio/blueflower/stapel2d/util/Setter;)V

    invoke-virtual {v0, p1, v1}, Linfo/flowersoft/theotown/online/RegionUploader;->useGift(ILinfo/flowersoft/theotown/backend/Service$Handler;)V

    return-void

    .line 135
    :cond_3a
    const-string p1, "Invalid gift"

    invoke-interface {p3, p1}, Lio/blueflower/stapel2d/util/Setter;->set(Ljava/lang/Object;)V

    return-void
.end method

.method public reportGift(Linfo/flowersoft/theotown/online/VirtualGift;Ljava/lang/String;Linfo/flowersoft/theotown/backend/Service$Handler;)V
    .registers 7

    .line 170
    iget-object v0, p0, Linfo/flowersoft/theotown/online/CityGiftManager;->store:Linfo/flowersoft/theotown/online/OnlineRegionStore;

    invoke-virtual {p1}, Linfo/flowersoft/theotown/online/VirtualGift;->getId()I

    move-result v1

    new-instance v2, Linfo/flowersoft/theotown/online/CityGiftManager$6;

    invoke-direct {v2, p0, p1, p3}, Linfo/flowersoft/theotown/online/CityGiftManager$6;-><init>(Linfo/flowersoft/theotown/online/CityGiftManager;Linfo/flowersoft/theotown/online/VirtualGift;Linfo/flowersoft/theotown/backend/Service$Handler;)V

    invoke-virtual {v0, v1, p2, v2}, Linfo/flowersoft/theotown/online/OnlineRegionStore;->reportGift(ILjava/lang/String;Linfo/flowersoft/theotown/backend/Service$Handler;)V

    return-void
.end method

###### Class info.flowersoft.theotown.online.CityGiftManager.AnonymousClass1 (info.flowersoft.theotown.online.CityGiftManager$1)
.class public Linfo/flowersoft/theotown/online/CityGiftManager$1;
.super Ljava/lang/Object;
.source "CityGiftManager.java"

# interfaces
.implements Linfo/flowersoft/theotown/backend/Service$Handler;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Linfo/flowersoft/theotown/online/CityGiftManager;->fetch(Z)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field public final synthetic this$0:Linfo/flowersoft/theotown/online/CityGiftManager;

.field public final synthetic val$markAsInvalidUntilDone:Z


# direct methods
.method public constructor <init>(Linfo/flowersoft/theotown/online/CityGiftManager;Z)V
    .registers 3
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x8010,
            0x1010
        }
        names = {
            null,
            null
        }
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    .line 59
    iput-object p1, p0, Linfo/flowersoft/theotown/online/CityGiftManager$1;->this$0:Linfo/flowersoft/theotown/online/CityGiftManager;

    iput-boolean p2, p0, Linfo/flowersoft/theotown/online/CityGiftManager$1;->val$markAsInvalidUntilDone:Z

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onFailure(Linfo/flowersoft/theotown/util/json/JSONObject;)V
    .registers 6

    .line 86
    sget-object v0, Linfo/flowersoft/theotown/crossplatform/TheoTown;->runtimeFeatures:Linfo/flowersoft/theotown/crossplatform/RuntimeFeatures;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Failed to look for gifts"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, "status"

    invoke-virtual {p1, v2}, Linfo/flowersoft/theotown/util/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    const-string v3, "hint"

    invoke-virtual {p1, v3, v2}, Linfo/flowersoft/theotown/util/json/JSONObject;->optString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-interface {v0, p1}, Linfo/flowersoft/theotown/crossplatform/RuntimeFeatures;->showToast(Ljava/lang/String;)V

    return-void
.end method

.method public onSuccess(Linfo/flowersoft/theotown/util/json/JSONObject;)V
    .registers 12

    .line 62
    const-string v0, "gifts"

    invoke-virtual {p1, v0}, Linfo/flowersoft/theotown/util/json/JSONObject;->optJSONArray(Ljava/lang/String;)Linfo/flowersoft/theotown/util/json/JSONArray;

    move-result-object p1

    if-eqz p1, :cond_7b

    .line 64
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    const/4 v1, 0x0

    move v2, v1

    move v3, v2

    .line 66
    :goto_10
    invoke-virtual {p1}, Linfo/flowersoft/theotown/util/json/JSONArray;->length()I

    move-result v4

    const/4 v5, 0x1

    if-ge v2, v4, :cond_60

    .line 68
    :try_start_17
    new-instance v4, Linfo/flowersoft/theotown/online/VirtualGift;

    invoke-virtual {p1, v2}, Linfo/flowersoft/theotown/util/json/JSONArray;->getJSONObject(I)Linfo/flowersoft/theotown/util/json/JSONObject;

    move-result-object v6

    invoke-direct {v4, v6}, Linfo/flowersoft/theotown/online/VirtualGift;-><init>(Linfo/flowersoft/theotown/util/json/JSONObject;)V

    .line 69
    invoke-static {}, Linfo/flowersoft/theotown/mechanics/GameHandler;->getInstance()Linfo/flowersoft/theotown/mechanics/GameHandler;

    move-result-object v6

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "report:gift:"

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Linfo/flowersoft/theotown/online/VirtualGift;->getId()I

    move-result v8

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Linfo/flowersoft/theotown/mechanics/GameHandler;->isEventRedeemed(Ljava/lang/String;)Z

    move-result v6

    if-nez v6, :cond_5d

    .line 70
    invoke-virtual {v4}, Linfo/flowersoft/theotown/online/VirtualGift;->getType()Linfo/flowersoft/theotown/online/GiftType;

    move-result-object v6

    sget-object v7, Linfo/flowersoft/theotown/online/GiftType;->UNKNOWN:Linfo/flowersoft/theotown/online/GiftType;

    if-eq v6, v7, :cond_54

    invoke-virtual {v4}, Linfo/flowersoft/theotown/online/VirtualGift;->getReceiveTime()J

    move-result-wide v6

    const-wide/16 v8, 0x0

    cmp-long v6, v6, v8

    if-nez v6, :cond_54

    goto :goto_55

    :catch_52
    move-exception v4

    goto :goto_5a

    :cond_54
    move v5, v1

    :goto_55
    or-int/2addr v3, v5

    .line 71
    invoke-interface {v0, v4}, Ljava/util/List;->add(Ljava/lang/Object;)Z
    :try_end_59
    .catch Linfo/flowersoft/theotown/util/json/JSONException; {:try_start_17 .. :try_end_59} :catch_52

    goto :goto_5d

    .line 74
    :goto_5a
    invoke-virtual {v4}, Ljava/lang/Throwable;->printStackTrace()V

    :cond_5d
    :goto_5d
    add-int/lit8 v2, v2, 0x1

    goto :goto_10

    .line 77
    :cond_60
    iget-object p1, p0, Linfo/flowersoft/theotown/online/CityGiftManager$1;->this$0:Linfo/flowersoft/theotown/online/CityGiftManager;

    invoke-static {p1, v3}, Linfo/flowersoft/theotown/online/CityGiftManager;->access$002(Linfo/flowersoft/theotown/online/CityGiftManager;Z)Z

    .line 78
    iget-object p1, p0, Linfo/flowersoft/theotown/online/CityGiftManager$1;->this$0:Linfo/flowersoft/theotown/online/CityGiftManager;

    invoke-static {p1, v0}, Linfo/flowersoft/theotown/online/CityGiftManager;->access$102(Linfo/flowersoft/theotown/online/CityGiftManager;Ljava/util/List;)Ljava/util/List;

    .line 79
    iget-object p1, p0, Linfo/flowersoft/theotown/online/CityGiftManager$1;->this$0:Linfo/flowersoft/theotown/online/CityGiftManager;

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    invoke-static {p1, v0, v1}, Linfo/flowersoft/theotown/online/CityGiftManager;->access$202(Linfo/flowersoft/theotown/online/CityGiftManager;J)J

    .line 80
    iget-boolean p1, p0, Linfo/flowersoft/theotown/online/CityGiftManager$1;->val$markAsInvalidUntilDone:Z

    if-eqz p1, :cond_7b

    iget-object p1, p0, Linfo/flowersoft/theotown/online/CityGiftManager$1;->this$0:Linfo/flowersoft/theotown/online/CityGiftManager;

    iput-boolean v5, p1, Linfo/flowersoft/theotown/online/CityGiftManager;->valid:Z

    :cond_7b
    return-void
.end method

###### Class info.flowersoft.theotown.online.CityGiftManager.AnonymousClass2 (info.flowersoft.theotown.online.CityGiftManager$2)
.class public Linfo/flowersoft/theotown/online/CityGiftManager$2;
.super Ljava/lang/Object;
.source "CityGiftManager.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Linfo/flowersoft/theotown/online/CityGiftManager;->markGiftsAsSeen()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field public final synthetic this$0:Linfo/flowersoft/theotown/online/CityGiftManager;

.field public final synthetic val$gift:Linfo/flowersoft/theotown/online/VirtualGift;


# direct methods
.method public constructor <init>(Linfo/flowersoft/theotown/online/CityGiftManager;Linfo/flowersoft/theotown/online/VirtualGift;)V
    .registers 3
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x8010,
            0x1010
        }
        names = {
            null,
            null
        }
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    .line 100
    iput-object p1, p0, Linfo/flowersoft/theotown/online/CityGiftManager$2;->this$0:Linfo/flowersoft/theotown/online/CityGiftManager;

    iput-object p2, p0, Linfo/flowersoft/theotown/online/CityGiftManager$2;->val$gift:Linfo/flowersoft/theotown/online/VirtualGift;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .registers 6

    .line 103
    iget-object v0, p0, Linfo/flowersoft/theotown/online/CityGiftManager$2;->val$gift:Linfo/flowersoft/theotown/online/VirtualGift;

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v1

    const-wide/16 v3, 0x3e8

    div-long/2addr v1, v3

    invoke-virtual {v0, v1, v2}, Linfo/flowersoft/theotown/online/VirtualGift;->setReceiveTime(J)V

    return-void
.end method

###### Class info.flowersoft.theotown.online.CityGiftManager.AnonymousClass3 (info.flowersoft.theotown.online.CityGiftManager$3)
.class public Linfo/flowersoft/theotown/online/CityGiftManager$3;
.super Ljava/lang/Object;
.source "CityGiftManager.java"

# interfaces
.implements Lio/blueflower/stapel2d/util/Setter;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Linfo/flowersoft/theotown/online/CityGiftManager;->markGiftsAsSeen()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lio/blueflower/stapel2d/util/Setter<",
        "Ljava/lang/String;",
        ">;"
    }
.end annotation


# instance fields
.field public final synthetic this$0:Linfo/flowersoft/theotown/online/CityGiftManager;


# direct methods
.method public constructor <init>(Linfo/flowersoft/theotown/online/CityGiftManager;)V
    .registers 2
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x8010
        }
        names = {
            null
        }
    .end annotation

    .line 105
    iput-object p1, p0, Linfo/flowersoft/theotown/online/CityGiftManager$3;->this$0:Linfo/flowersoft/theotown/online/CityGiftManager;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public bridge synthetic set(Ljava/lang/Object;)V
    .registers 2
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x1000
        }
        names = {
            null
        }
    .end annotation

    .line 105
    check-cast p1, Ljava/lang/String;

    invoke-virtual {p0, p1}, Linfo/flowersoft/theotown/online/CityGiftManager$3;->set(Ljava/lang/String;)V

    return-void
.end method

.method public set(Ljava/lang/String;)V
    .registers 2

    .line 0
    return-void
.end method

###### Class info.flowersoft.theotown.online.CityGiftManager.AnonymousClass4 (info.flowersoft.theotown.online.CityGiftManager$4)
.class public Linfo/flowersoft/theotown/online/CityGiftManager$4;
.super Ljava/lang/Object;
.source "CityGiftManager.java"

# interfaces
.implements Linfo/flowersoft/theotown/backend/Service$Handler;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Linfo/flowersoft/theotown/online/CityGiftManager;->redeem(Linfo/flowersoft/theotown/online/VirtualGift;Ljava/lang/Runnable;Lio/blueflower/stapel2d/util/Setter;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field public final synthetic this$0:Linfo/flowersoft/theotown/online/CityGiftManager;

.field public final synthetic val$onError:Lio/blueflower/stapel2d/util/Setter;

.field public final synthetic val$onSuccess:Ljava/lang/Runnable;


# direct methods
.method public constructor <init>(Linfo/flowersoft/theotown/online/CityGiftManager;Ljava/lang/Runnable;Lio/blueflower/stapel2d/util/Setter;)V
    .registers 4
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x8010,
            0x1010,
            0x1010
        }
        names = {
            null,
            null,
            null
        }
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    .line 123
    iput-object p1, p0, Linfo/flowersoft/theotown/online/CityGiftManager$4;->this$0:Linfo/flowersoft/theotown/online/CityGiftManager;

    iput-object p2, p0, Linfo/flowersoft/theotown/online/CityGiftManager$4;->val$onSuccess:Ljava/lang/Runnable;

    iput-object p3, p0, Linfo/flowersoft/theotown/online/CityGiftManager$4;->val$onError:Lio/blueflower/stapel2d/util/Setter;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onFailure(Linfo/flowersoft/theotown/util/json/JSONObject;)V
    .registers 5

    .line 131
    iget-object v0, p0, Linfo/flowersoft/theotown/online/CityGiftManager$4;->val$onError:Lio/blueflower/stapel2d/util/Setter;

    invoke-virtual {p1}, Linfo/flowersoft/theotown/util/json/JSONObject;->toString()Ljava/lang/String;

    move-result-object v1

    const-string v2, "status"

    invoke-virtual {p1, v2, v1}, Linfo/flowersoft/theotown/util/json/JSONObject;->optString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    const-string v2, "hint"

    invoke-virtual {p1, v2, v1}, Linfo/flowersoft/theotown/util/json/JSONObject;->optString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    invoke-interface {v0, p1}, Lio/blueflower/stapel2d/util/Setter;->set(Ljava/lang/Object;)V

    return-void
.end method

.method public onSuccess(Linfo/flowersoft/theotown/util/json/JSONObject;)V
    .registers 2

    .line 126
    iget-object p1, p0, Linfo/flowersoft/theotown/online/CityGiftManager$4;->val$onSuccess:Ljava/lang/Runnable;

    invoke-interface {p1}, Ljava/lang/Runnable;->run()V

    return-void
.end method

###### Class info.flowersoft.theotown.online.CityGiftManager.AnonymousClass5 (info.flowersoft.theotown.online.CityGiftManager$5)
.class public Linfo/flowersoft/theotown/online/CityGiftManager$5;
.super Ljava/lang/Object;
.source "CityGiftManager.java"

# interfaces
.implements Linfo/flowersoft/theotown/backend/Service$Handler;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Linfo/flowersoft/theotown/online/CityGiftManager;->createGift([Ljava/lang/String;DLjava/lang/String;ZLjava/lang/Runnable;Lio/blueflower/stapel2d/util/Setter;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field public final synthetic this$0:Linfo/flowersoft/theotown/online/CityGiftManager;

.field public final synthetic val$onError:Lio/blueflower/stapel2d/util/Setter;

.field public final synthetic val$onSuccess:Ljava/lang/Runnable;


# direct methods
.method public constructor <init>(Linfo/flowersoft/theotown/online/CityGiftManager;Ljava/lang/Runnable;Lio/blueflower/stapel2d/util/Setter;)V
    .registers 4
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x8010,
            0x1010,
            0x1010
        }
        names = {
            null,
            null,
            null
        }
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    .line 153
    iput-object p1, p0, Linfo/flowersoft/theotown/online/CityGiftManager$5;->this$0:Linfo/flowersoft/theotown/online/CityGiftManager;

    iput-object p2, p0, Linfo/flowersoft/theotown/online/CityGiftManager$5;->val$onSuccess:Ljava/lang/Runnable;

    iput-object p3, p0, Linfo/flowersoft/theotown/online/CityGiftManager$5;->val$onError:Lio/blueflower/stapel2d/util/Setter;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onFailure(Linfo/flowersoft/theotown/util/json/JSONObject;)V
    .registers 5

    .line 161
    iget-object v0, p0, Linfo/flowersoft/theotown/online/CityGiftManager$5;->val$onError:Lio/blueflower/stapel2d/util/Setter;

    invoke-virtual {p1}, Linfo/flowersoft/theotown/util/json/JSONObject;->toString()Ljava/lang/String;

    move-result-object v1

    const-string v2, "status"

    invoke-virtual {p1, v2, v1}, Linfo/flowersoft/theotown/util/json/JSONObject;->optString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    const-string v2, "hint"

    invoke-virtual {p1, v2, v1}, Linfo/flowersoft/theotown/util/json/JSONObject;->optString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    invoke-interface {v0, p1}, Lio/blueflower/stapel2d/util/Setter;->set(Ljava/lang/Object;)V

    return-void
.end method

.method public onSuccess(Linfo/flowersoft/theotown/util/json/JSONObject;)V
    .registers 2

    .line 156
    iget-object p1, p0, Linfo/flowersoft/theotown/online/CityGiftManager$5;->val$onSuccess:Ljava/lang/Runnable;

    invoke-interface {p1}, Ljava/lang/Runnable;->run()V

    return-void
.end method

###### Class info.flowersoft.theotown.online.CityGiftManager.AnonymousClass6 (info.flowersoft.theotown.online.CityGiftManager$6)
.class public Linfo/flowersoft/theotown/online/CityGiftManager$6;
.super Ljava/lang/Object;
.source "CityGiftManager.java"

# interfaces
.implements Linfo/flowersoft/theotown/backend/Service$Handler;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Linfo/flowersoft/theotown/online/CityGiftManager;->reportGift(Linfo/flowersoft/theotown/online/VirtualGift;Ljava/lang/String;Linfo/flowersoft/theotown/backend/Service$Handler;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field public final synthetic this$0:Linfo/flowersoft/theotown/online/CityGiftManager;

.field public final synthetic val$gift:Linfo/flowersoft/theotown/online/VirtualGift;

.field public final synthetic val$handler:Linfo/flowersoft/theotown/backend/Service$Handler;


# direct methods
.method public constructor <init>(Linfo/flowersoft/theotown/online/CityGiftManager;Linfo/flowersoft/theotown/online/VirtualGift;Linfo/flowersoft/theotown/backend/Service$Handler;)V
    .registers 4
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x8010,
            0x1010,
            0x1010
        }
        names = {
            null,
            null,
            null
        }
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    .line 170
    iput-object p1, p0, Linfo/flowersoft/theotown/online/CityGiftManager$6;->this$0:Linfo/flowersoft/theotown/online/CityGiftManager;

    iput-object p2, p0, Linfo/flowersoft/theotown/online/CityGiftManager$6;->val$gift:Linfo/flowersoft/theotown/online/VirtualGift;

    iput-object p3, p0, Linfo/flowersoft/theotown/online/CityGiftManager$6;->val$handler:Linfo/flowersoft/theotown/backend/Service$Handler;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onFailure(Linfo/flowersoft/theotown/util/json/JSONObject;)V
    .registers 3

    .line 179
    iget-object v0, p0, Linfo/flowersoft/theotown/online/CityGiftManager$6;->val$handler:Linfo/flowersoft/theotown/backend/Service$Handler;

    invoke-interface {v0, p1}, Linfo/flowersoft/theotown/backend/Service$Handler;->onFailure(Linfo/flowersoft/theotown/util/json/JSONObject;)V

    return-void
.end method

.method public onSuccess(Linfo/flowersoft/theotown/util/json/JSONObject;)V
    .registers 5

    .line 173
    invoke-static {}, Linfo/flowersoft/theotown/mechanics/GameHandler;->getInstance()Linfo/flowersoft/theotown/mechanics/GameHandler;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "report:gift:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Linfo/flowersoft/theotown/online/CityGiftManager$6;->val$gift:Linfo/flowersoft/theotown/online/VirtualGift;

    invoke-virtual {v2}, Linfo/flowersoft/theotown/online/VirtualGift;->getId()I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Linfo/flowersoft/theotown/mechanics/GameHandler;->redeemEvent(Ljava/lang/String;)V

    .line 174
    iget-object v0, p0, Linfo/flowersoft/theotown/online/CityGiftManager$6;->val$handler:Linfo/flowersoft/theotown/backend/Service$Handler;

    invoke-interface {v0, p1}, Linfo/flowersoft/theotown/backend/Service$Handler;->onSuccess(Linfo/flowersoft/theotown/util/json/JSONObject;)V

    return-void
.end method
