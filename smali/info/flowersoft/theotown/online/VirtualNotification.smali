###### Class info.flowersoft.theotown.online.VirtualNotification (info.flowersoft.theotown.online.VirtualNotification)
.class public Linfo/flowersoft/theotown/online/VirtualNotification;
.super Ljava/lang/Object;
.source "VirtualNotification.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Linfo/flowersoft/theotown/online/VirtualNotification$Action;
    }
.end annotation


# instance fields
.field public action:Linfo/flowersoft/theotown/online/VirtualNotification$Action;

.field public cityId:I

.field public id:I

.field public regionId:I

.field public seen_time:J

.field public text:Ljava/lang/String;

.field public time:J


# direct methods
.method public constructor <init>(Linfo/flowersoft/theotown/util/json/JSONObject;)V
    .registers 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Linfo/flowersoft/theotown/util/json/JSONException;
        }
    .end annotation

    .line 19
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 20
    const-string v0, "id"

    invoke-virtual {p1, v0}, Linfo/flowersoft/theotown/util/json/JSONObject;->getInt(Ljava/lang/String;)I

    move-result v0

    iput v0, p0, Linfo/flowersoft/theotown/online/VirtualNotification;->id:I

    .line 21
    const-string v0, "text"

    invoke-virtual {p1, v0}, Linfo/flowersoft/theotown/util/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Linfo/flowersoft/theotown/online/VirtualNotification;->text:Ljava/lang/String;

    .line 22
    const-string v0, "time"

    invoke-virtual {p1, v0}, Linfo/flowersoft/theotown/util/json/JSONObject;->getLong(Ljava/lang/String;)J

    move-result-wide v0

    iput-wide v0, p0, Linfo/flowersoft/theotown/online/VirtualNotification;->time:J

    .line 23
    const-string v0, "seen_time"

    invoke-virtual {p1, v0}, Linfo/flowersoft/theotown/util/json/JSONObject;->getLong(Ljava/lang/String;)J

    move-result-wide v0

    iput-wide v0, p0, Linfo/flowersoft/theotown/online/VirtualNotification;->seen_time:J

    .line 24
    const-string v0, "city_id"

    invoke-virtual {p1, v0}, Linfo/flowersoft/theotown/util/json/JSONObject;->optInt(Ljava/lang/String;)I

    move-result v0

    iput v0, p0, Linfo/flowersoft/theotown/online/VirtualNotification;->cityId:I

    .line 25
    const-string v0, "region_id"

    invoke-virtual {p1, v0}, Linfo/flowersoft/theotown/util/json/JSONObject;->optInt(Ljava/lang/String;)I

    move-result v0

    iput v0, p0, Linfo/flowersoft/theotown/online/VirtualNotification;->regionId:I

    .line 26
    const-string v0, "action"

    invoke-virtual {p1, v0}, Linfo/flowersoft/theotown/util/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Linfo/flowersoft/theotown/online/VirtualNotification$Action;->resolve(Ljava/lang/String;)Linfo/flowersoft/theotown/online/VirtualNotification$Action;

    move-result-object p1

    iput-object p1, p0, Linfo/flowersoft/theotown/online/VirtualNotification;->action:Linfo/flowersoft/theotown/online/VirtualNotification$Action;

    return-void
.end method


# virtual methods
.method public getAction()Linfo/flowersoft/theotown/online/VirtualNotification$Action;
    .registers 2

    .line 58
    iget-object v0, p0, Linfo/flowersoft/theotown/online/VirtualNotification;->action:Linfo/flowersoft/theotown/online/VirtualNotification$Action;

    return-object v0
.end method

.method public getCityId()I
    .registers 2

    .line 54
    iget v0, p0, Linfo/flowersoft/theotown/online/VirtualNotification;->cityId:I

    return v0
.end method

.method public getId()I
    .registers 2

    .line 30
    iget v0, p0, Linfo/flowersoft/theotown/online/VirtualNotification;->id:I

    return v0
.end method

.method public getRegionId()I
    .registers 2

    .line 50
    iget v0, p0, Linfo/flowersoft/theotown/online/VirtualNotification;->regionId:I

    return v0
.end method

.method public getSeenTime()J
    .registers 3

    .line 42
    iget-wide v0, p0, Linfo/flowersoft/theotown/online/VirtualNotification;->seen_time:J

    return-wide v0
.end method

.method public getText()Ljava/lang/String;
    .registers 2

    .line 34
    iget-object v0, p0, Linfo/flowersoft/theotown/online/VirtualNotification;->text:Ljava/lang/String;

    return-object v0
.end method

.method public getTime()J
    .registers 3

    .line 38
    iget-wide v0, p0, Linfo/flowersoft/theotown/online/VirtualNotification;->time:J

    return-wide v0
.end method

.method public setSeenTime(J)V
    .registers 3

    .line 46
    iput-wide p1, p0, Linfo/flowersoft/theotown/online/VirtualNotification;->seen_time:J

    return-void
.end method

###### Class info.flowersoft.theotown.online.VirtualNotification.Action (info.flowersoft.theotown.online.VirtualNotification$Action)
.class public final enum Linfo/flowersoft/theotown/online/VirtualNotification$Action;
.super Ljava/lang/Enum;
.source "VirtualNotification.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Linfo/flowersoft/theotown/online/VirtualNotification;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4019
    name = "Action"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Linfo/flowersoft/theotown/online/VirtualNotification$Action;",
        ">;"
    }
.end annotation


# static fields
.field public static final synthetic $VALUES:[Linfo/flowersoft/theotown/online/VirtualNotification$Action;

.field public static final enum CITY_COMMENT:Linfo/flowersoft/theotown/online/VirtualNotification$Action;

.field public static final enum CITY_PRESENT:Linfo/flowersoft/theotown/online/VirtualNotification$Action;

.field public static final enum DELETE_REGION:Linfo/flowersoft/theotown/online/VirtualNotification$Action;

.field public static final enum GIFT_CITY:Linfo/flowersoft/theotown/online/VirtualNotification$Action;

.field public static final enum GIFT_REGION:Linfo/flowersoft/theotown/online/VirtualNotification$Action;

.field public static final enum RESET_CITY:Linfo/flowersoft/theotown/online/VirtualNotification$Action;

.field public static final enum STEAL_CITY:Linfo/flowersoft/theotown/online/VirtualNotification$Action;

.field public static final enum STEAL_REGION:Linfo/flowersoft/theotown/online/VirtualNotification$Action;

.field public static actionsByTag:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Linfo/flowersoft/theotown/online/VirtualNotification$Action;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field public tag:Ljava/lang/String;


# direct methods
.method public static synthetic $values()[Linfo/flowersoft/theotown/online/VirtualNotification$Action;
    .registers 8

    .line 61
    sget-object v0, Linfo/flowersoft/theotown/online/VirtualNotification$Action;->RESET_CITY:Linfo/flowersoft/theotown/online/VirtualNotification$Action;

    sget-object v1, Linfo/flowersoft/theotown/online/VirtualNotification$Action;->STEAL_CITY:Linfo/flowersoft/theotown/online/VirtualNotification$Action;

    sget-object v2, Linfo/flowersoft/theotown/online/VirtualNotification$Action;->GIFT_CITY:Linfo/flowersoft/theotown/online/VirtualNotification$Action;

    sget-object v3, Linfo/flowersoft/theotown/online/VirtualNotification$Action;->STEAL_REGION:Linfo/flowersoft/theotown/online/VirtualNotification$Action;

    sget-object v4, Linfo/flowersoft/theotown/online/VirtualNotification$Action;->GIFT_REGION:Linfo/flowersoft/theotown/online/VirtualNotification$Action;

    sget-object v5, Linfo/flowersoft/theotown/online/VirtualNotification$Action;->DELETE_REGION:Linfo/flowersoft/theotown/online/VirtualNotification$Action;

    sget-object v6, Linfo/flowersoft/theotown/online/VirtualNotification$Action;->CITY_COMMENT:Linfo/flowersoft/theotown/online/VirtualNotification$Action;

    sget-object v7, Linfo/flowersoft/theotown/online/VirtualNotification$Action;->CITY_PRESENT:Linfo/flowersoft/theotown/online/VirtualNotification$Action;

    filled-new-array/range {v0 .. v7}, [Linfo/flowersoft/theotown/online/VirtualNotification$Action;

    move-result-object v0

    return-object v0
.end method

.method static constructor <clinit>()V
    .registers 4

    .line 62
    new-instance v0, Linfo/flowersoft/theotown/online/VirtualNotification$Action;

    const/4 v1, 0x0

    const-string v2, "reset city"

    const-string v3, "RESET_CITY"

    invoke-direct {v0, v3, v1, v2}, Linfo/flowersoft/theotown/online/VirtualNotification$Action;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v0, Linfo/flowersoft/theotown/online/VirtualNotification$Action;->RESET_CITY:Linfo/flowersoft/theotown/online/VirtualNotification$Action;

    .line 63
    new-instance v0, Linfo/flowersoft/theotown/online/VirtualNotification$Action;

    const/4 v1, 0x1

    const-string v2, "steal city"

    const-string v3, "STEAL_CITY"

    invoke-direct {v0, v3, v1, v2}, Linfo/flowersoft/theotown/online/VirtualNotification$Action;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v0, Linfo/flowersoft/theotown/online/VirtualNotification$Action;->STEAL_CITY:Linfo/flowersoft/theotown/online/VirtualNotification$Action;

    .line 64
    new-instance v0, Linfo/flowersoft/theotown/online/VirtualNotification$Action;

    const/4 v1, 0x2

    const-string v2, "gift city"

    const-string v3, "GIFT_CITY"

    invoke-direct {v0, v3, v1, v2}, Linfo/flowersoft/theotown/online/VirtualNotification$Action;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v0, Linfo/flowersoft/theotown/online/VirtualNotification$Action;->GIFT_CITY:Linfo/flowersoft/theotown/online/VirtualNotification$Action;

    .line 65
    new-instance v0, Linfo/flowersoft/theotown/online/VirtualNotification$Action;

    const/4 v1, 0x3

    const-string v2, "steal region"

    const-string v3, "STEAL_REGION"

    invoke-direct {v0, v3, v1, v2}, Linfo/flowersoft/theotown/online/VirtualNotification$Action;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v0, Linfo/flowersoft/theotown/online/VirtualNotification$Action;->STEAL_REGION:Linfo/flowersoft/theotown/online/VirtualNotification$Action;

    .line 66
    new-instance v0, Linfo/flowersoft/theotown/online/VirtualNotification$Action;

    const/4 v1, 0x4

    const-string v2, "gift region"

    const-string v3, "GIFT_REGION"

    invoke-direct {v0, v3, v1, v2}, Linfo/flowersoft/theotown/online/VirtualNotification$Action;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v0, Linfo/flowersoft/theotown/online/VirtualNotification$Action;->GIFT_REGION:Linfo/flowersoft/theotown/online/VirtualNotification$Action;

    .line 67
    new-instance v0, Linfo/flowersoft/theotown/online/VirtualNotification$Action;

    const/4 v1, 0x5

    const-string v2, "delete region"

    const-string v3, "DELETE_REGION"

    invoke-direct {v0, v3, v1, v2}, Linfo/flowersoft/theotown/online/VirtualNotification$Action;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v0, Linfo/flowersoft/theotown/online/VirtualNotification$Action;->DELETE_REGION:Linfo/flowersoft/theotown/online/VirtualNotification$Action;

    .line 68
    new-instance v0, Linfo/flowersoft/theotown/online/VirtualNotification$Action;

    const/4 v1, 0x6

    const-string v2, "city comment"

    const-string v3, "CITY_COMMENT"

    invoke-direct {v0, v3, v1, v2}, Linfo/flowersoft/theotown/online/VirtualNotification$Action;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v0, Linfo/flowersoft/theotown/online/VirtualNotification$Action;->CITY_COMMENT:Linfo/flowersoft/theotown/online/VirtualNotification$Action;

    .line 69
    new-instance v0, Linfo/flowersoft/theotown/online/VirtualNotification$Action;

    const/4 v1, 0x7

    const-string v2, "city gift"

    const-string v3, "CITY_PRESENT"

    invoke-direct {v0, v3, v1, v2}, Linfo/flowersoft/theotown/online/VirtualNotification$Action;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v0, Linfo/flowersoft/theotown/online/VirtualNotification$Action;->CITY_PRESENT:Linfo/flowersoft/theotown/online/VirtualNotification$Action;

    .line 61
    invoke-static {}, Linfo/flowersoft/theotown/online/VirtualNotification$Action;->$values()[Linfo/flowersoft/theotown/online/VirtualNotification$Action;

    move-result-object v0

    sput-object v0, Linfo/flowersoft/theotown/online/VirtualNotification$Action;->$VALUES:[Linfo/flowersoft/theotown/online/VirtualNotification$Action;

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;ILjava/lang/String;)V
    .registers 4
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x1000,
            0x1000,
            0x0
        }
        names = {
            null,
            null,
            null
        }
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            ")V"
        }
    .end annotation

    .line 72
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    .line 73
    iput-object p3, p0, Linfo/flowersoft/theotown/online/VirtualNotification$Action;->tag:Ljava/lang/String;

    return-void
.end method

.method public static resolve(Ljava/lang/String;)Linfo/flowersoft/theotown/online/VirtualNotification$Action;
    .registers 7

    .line 78
    sget-object v0, Linfo/flowersoft/theotown/online/VirtualNotification$Action;->actionsByTag:Ljava/util/Map;

    if-nez v0, :cond_1d

    .line 79
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    .line 80
    invoke-static {}, Linfo/flowersoft/theotown/online/VirtualNotification$Action;->values()[Linfo/flowersoft/theotown/online/VirtualNotification$Action;

    move-result-object v1

    array-length v2, v1

    const/4 v3, 0x0

    :goto_f
    if-ge v3, v2, :cond_1b

    aget-object v4, v1, v3

    iget-object v5, v4, Linfo/flowersoft/theotown/online/VirtualNotification$Action;->tag:Ljava/lang/String;

    invoke-interface {v0, v5, v4}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    add-int/lit8 v3, v3, 0x1

    goto :goto_f

    .line 81
    :cond_1b
    sput-object v0, Linfo/flowersoft/theotown/online/VirtualNotification$Action;->actionsByTag:Ljava/util/Map;

    .line 83
    :cond_1d
    sget-object v0, Linfo/flowersoft/theotown/online/VirtualNotification$Action;->actionsByTag:Ljava/util/Map;

    invoke-interface {v0, p0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Linfo/flowersoft/theotown/online/VirtualNotification$Action;

    return-object p0
.end method

.method public static valueOf(Ljava/lang/String;)Linfo/flowersoft/theotown/online/VirtualNotification$Action;
    .registers 2
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x8000
        }
        names = {
            null
        }
    .end annotation

    .line 61
    const-class v0, Linfo/flowersoft/theotown/online/VirtualNotification$Action;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Linfo/flowersoft/theotown/online/VirtualNotification$Action;

    return-object p0
.end method

.method public static values()[Linfo/flowersoft/theotown/online/VirtualNotification$Action;
    .registers 1

    .line 61
    sget-object v0, Linfo/flowersoft/theotown/online/VirtualNotification$Action;->$VALUES:[Linfo/flowersoft/theotown/online/VirtualNotification$Action;

    invoke-virtual {v0}, [Linfo/flowersoft/theotown/online/VirtualNotification$Action;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Linfo/flowersoft/theotown/online/VirtualNotification$Action;

    return-object v0
.end method
