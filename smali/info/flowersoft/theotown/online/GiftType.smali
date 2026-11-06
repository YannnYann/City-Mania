###### Class info.flowersoft.theotown.online.GiftType (info.flowersoft.theotown.online.GiftType)
.class public final enum Linfo/flowersoft/theotown/online/GiftType;
.super Ljava/lang/Enum;
.source "GiftType.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Linfo/flowersoft/theotown/online/GiftType;",
        ">;"
    }
.end annotation


# static fields
.field public static final synthetic $VALUES:[Linfo/flowersoft/theotown/online/GiftType;

.field public static final enum CASH:Linfo/flowersoft/theotown/online/GiftType;

.field public static final enum DIAMOND:Linfo/flowersoft/theotown/online/GiftType;

.field public static final enum EMPTY:Linfo/flowersoft/theotown/online/GiftType;

.field public static final enum TEXT:Linfo/flowersoft/theotown/online/GiftType;

.field public static final enum UNKNOWN:Linfo/flowersoft/theotown/online/GiftType;

.field public static idMap:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Linfo/flowersoft/theotown/online/GiftType;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field public final consumable:Z

.field public final id:Ljava/lang/String;


# direct methods
.method public static synthetic $values()[Linfo/flowersoft/theotown/online/GiftType;
    .registers 5

    .line 6
    sget-object v0, Linfo/flowersoft/theotown/online/GiftType;->EMPTY:Linfo/flowersoft/theotown/online/GiftType;

    sget-object v1, Linfo/flowersoft/theotown/online/GiftType;->CASH:Linfo/flowersoft/theotown/online/GiftType;

    sget-object v2, Linfo/flowersoft/theotown/online/GiftType;->DIAMOND:Linfo/flowersoft/theotown/online/GiftType;

    sget-object v3, Linfo/flowersoft/theotown/online/GiftType;->TEXT:Linfo/flowersoft/theotown/online/GiftType;

    sget-object v4, Linfo/flowersoft/theotown/online/GiftType;->UNKNOWN:Linfo/flowersoft/theotown/online/GiftType;

    filled-new-array {v0, v1, v2, v3, v4}, [Linfo/flowersoft/theotown/online/GiftType;

    move-result-object v0

    return-object v0
.end method

.method static constructor <clinit>()V
    .registers 6

    .line 7
    new-instance v0, Linfo/flowersoft/theotown/online/GiftType;

    const-string v1, "empty"

    const-string v2, "EMPTY"

    const/4 v3, 0x0

    invoke-direct {v0, v2, v3, v1, v3}, Linfo/flowersoft/theotown/online/GiftType;-><init>(Ljava/lang/String;ILjava/lang/String;Z)V

    sput-object v0, Linfo/flowersoft/theotown/online/GiftType;->EMPTY:Linfo/flowersoft/theotown/online/GiftType;

    .line 8
    new-instance v0, Linfo/flowersoft/theotown/online/GiftType;

    const-string v1, "cash"

    const-string v2, "CASH"

    const/4 v4, 0x1

    invoke-direct {v0, v2, v4, v1, v4}, Linfo/flowersoft/theotown/online/GiftType;-><init>(Ljava/lang/String;ILjava/lang/String;Z)V

    sput-object v0, Linfo/flowersoft/theotown/online/GiftType;->CASH:Linfo/flowersoft/theotown/online/GiftType;

    .line 9
    new-instance v0, Linfo/flowersoft/theotown/online/GiftType;

    const/4 v1, 0x2

    const-string v2, "diamond"

    const-string v5, "DIAMOND"

    invoke-direct {v0, v5, v1, v2, v4}, Linfo/flowersoft/theotown/online/GiftType;-><init>(Ljava/lang/String;ILjava/lang/String;Z)V

    sput-object v0, Linfo/flowersoft/theotown/online/GiftType;->DIAMOND:Linfo/flowersoft/theotown/online/GiftType;

    .line 10
    new-instance v0, Linfo/flowersoft/theotown/online/GiftType;

    const/4 v1, 0x3

    const-string v2, "text"

    const-string v4, "TEXT"

    invoke-direct {v0, v4, v1, v2, v3}, Linfo/flowersoft/theotown/online/GiftType;-><init>(Ljava/lang/String;ILjava/lang/String;Z)V

    sput-object v0, Linfo/flowersoft/theotown/online/GiftType;->TEXT:Linfo/flowersoft/theotown/online/GiftType;

    .line 11
    new-instance v0, Linfo/flowersoft/theotown/online/GiftType;

    const/4 v1, 0x4

    const-string v2, ""

    const-string v4, "UNKNOWN"

    invoke-direct {v0, v4, v1, v2, v3}, Linfo/flowersoft/theotown/online/GiftType;-><init>(Ljava/lang/String;ILjava/lang/String;Z)V

    sput-object v0, Linfo/flowersoft/theotown/online/GiftType;->UNKNOWN:Linfo/flowersoft/theotown/online/GiftType;

    .line 6
    invoke-static {}, Linfo/flowersoft/theotown/online/GiftType;->$values()[Linfo/flowersoft/theotown/online/GiftType;

    move-result-object v0

    sput-object v0, Linfo/flowersoft/theotown/online/GiftType;->$VALUES:[Linfo/flowersoft/theotown/online/GiftType;

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;ILjava/lang/String;Z)V
    .registers 5
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x1000,
            0x1000,
            0x0,
            0x0
        }
        names = {
            null,
            null,
            null,
            null
        }
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Z)V"
        }
    .end annotation

    .line 16
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    .line 17
    iput-object p3, p0, Linfo/flowersoft/theotown/online/GiftType;->id:Ljava/lang/String;

    .line 18
    iput-boolean p4, p0, Linfo/flowersoft/theotown/online/GiftType;->consumable:Z

    return-void
.end method

.method public static getGiftType(Ljava/lang/String;)Linfo/flowersoft/theotown/online/GiftType;
    .registers 8

    .line 31
    sget-object v0, Linfo/flowersoft/theotown/online/GiftType;->idMap:Ljava/util/Map;

    if-nez v0, :cond_2c

    .line 32
    const-class v0, Linfo/flowersoft/theotown/online/GiftType;

    monitor-enter v0

    .line 33
    :try_start_7
    sget-object v1, Linfo/flowersoft/theotown/online/GiftType;->idMap:Ljava/util/Map;

    if-nez v1, :cond_28

    .line 34
    new-instance v1, Ljava/util/HashMap;

    invoke-direct {v1}, Ljava/util/HashMap;-><init>()V

    .line 35
    invoke-static {}, Linfo/flowersoft/theotown/online/GiftType;->values()[Linfo/flowersoft/theotown/online/GiftType;

    move-result-object v2

    array-length v3, v2

    const/4 v4, 0x0

    :goto_16
    if-ge v4, v3, :cond_26

    aget-object v5, v2, v4

    .line 36
    invoke-virtual {v5}, Linfo/flowersoft/theotown/online/GiftType;->getId()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v1, v6, v5}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    add-int/lit8 v4, v4, 0x1

    goto :goto_16

    :catchall_24
    move-exception p0

    goto :goto_2a

    .line 38
    :cond_26
    sput-object v1, Linfo/flowersoft/theotown/online/GiftType;->idMap:Ljava/util/Map;

    .line 40
    :cond_28
    monitor-exit v0

    goto :goto_2c

    :goto_2a
    monitor-exit v0
    :try_end_2b
    .catchall {:try_start_7 .. :try_end_2b} :catchall_24

    throw p0

    .line 42
    :cond_2c
    :goto_2c
    sget-object v0, Linfo/flowersoft/theotown/online/GiftType;->idMap:Ljava/util/Map;

    invoke-interface {v0, p0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Linfo/flowersoft/theotown/online/GiftType;

    if-eqz p0, :cond_37

    return-object p0

    .line 43
    :cond_37
    sget-object p0, Linfo/flowersoft/theotown/online/GiftType;->UNKNOWN:Linfo/flowersoft/theotown/online/GiftType;

    return-object p0
.end method

.method public static valueOf(Ljava/lang/String;)Linfo/flowersoft/theotown/online/GiftType;
    .registers 2
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x8000
        }
        names = {
            null
        }
    .end annotation

    .line 6
    const-class v0, Linfo/flowersoft/theotown/online/GiftType;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Linfo/flowersoft/theotown/online/GiftType;

    return-object p0
.end method

.method public static values()[Linfo/flowersoft/theotown/online/GiftType;
    .registers 1

    .line 6
    sget-object v0, Linfo/flowersoft/theotown/online/GiftType;->$VALUES:[Linfo/flowersoft/theotown/online/GiftType;

    invoke-virtual {v0}, [Linfo/flowersoft/theotown/online/GiftType;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Linfo/flowersoft/theotown/online/GiftType;

    return-object v0
.end method


# virtual methods
.method public getId()Ljava/lang/String;
    .registers 2

    .line 22
    iget-object v0, p0, Linfo/flowersoft/theotown/online/GiftType;->id:Ljava/lang/String;

    return-object v0
.end method

.method public isConsumable()Z
    .registers 2

    .line 26
    iget-boolean v0, p0, Linfo/flowersoft/theotown/online/GiftType;->consumable:Z

    return v0
.end method
