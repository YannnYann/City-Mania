###### Class info.flowersoft.theotown.store.StoreMode (info.flowersoft.theotown.store.StoreMode)
.class public final enum Linfo/flowersoft/theotown/store/StoreMode;
.super Ljava/lang/Enum;
.source "StoreMode.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Linfo/flowersoft/theotown/store/StoreMode;",
        ">;"
    }
.end annotation


# static fields
.field public static final synthetic $VALUES:[Linfo/flowersoft/theotown/store/StoreMode;

.field public static final enum ACTIVE:Linfo/flowersoft/theotown/store/StoreMode;

.field public static final enum BEST_RATED:Linfo/flowersoft/theotown/store/StoreMode;

.field public static final enum CATEGORY:Linfo/flowersoft/theotown/store/StoreMode;

.field public static final enum CERTIFIED_CREATORS:Linfo/flowersoft/theotown/store/StoreMode;

.field public static final enum COMMENTED:Linfo/flowersoft/theotown/store/StoreMode;

.field public static final enum ERROR:Linfo/flowersoft/theotown/store/StoreMode;

.field public static final enum EXPLORE:Linfo/flowersoft/theotown/store/StoreMode;

.field public static final enum FEATURED:Linfo/flowersoft/theotown/store/StoreMode;

.field public static final enum INACTIVE:Linfo/flowersoft/theotown/store/StoreMode;

.field public static final enum INSTALLED:Linfo/flowersoft/theotown/store/StoreMode;

.field public static final enum LOCAL:Linfo/flowersoft/theotown/store/StoreMode;

.field public static final enum MISSING:Linfo/flowersoft/theotown/store/StoreMode;

.field public static final enum NEW:Linfo/flowersoft/theotown/store/StoreMode;

.field public static final enum PREV_INSTALLED:Linfo/flowersoft/theotown/store/StoreMode;

.field public static final enum SEARCH:Linfo/flowersoft/theotown/store/StoreMode;

.field public static final enum USER:Linfo/flowersoft/theotown/store/StoreMode;


# instance fields
.field public final tag:Ljava/lang/String;


# direct methods
.method public static synthetic $values()[Linfo/flowersoft/theotown/store/StoreMode;
    .registers 17

    .line 3
    sget-object v1, Linfo/flowersoft/theotown/store/StoreMode;->EXPLORE:Linfo/flowersoft/theotown/store/StoreMode;

    sget-object v2, Linfo/flowersoft/theotown/store/StoreMode;->INSTALLED:Linfo/flowersoft/theotown/store/StoreMode;

    sget-object v3, Linfo/flowersoft/theotown/store/StoreMode;->ACTIVE:Linfo/flowersoft/theotown/store/StoreMode;

    sget-object v4, Linfo/flowersoft/theotown/store/StoreMode;->INACTIVE:Linfo/flowersoft/theotown/store/StoreMode;

    sget-object v5, Linfo/flowersoft/theotown/store/StoreMode;->ERROR:Linfo/flowersoft/theotown/store/StoreMode;

    sget-object v6, Linfo/flowersoft/theotown/store/StoreMode;->FEATURED:Linfo/flowersoft/theotown/store/StoreMode;

    sget-object v7, Linfo/flowersoft/theotown/store/StoreMode;->BEST_RATED:Linfo/flowersoft/theotown/store/StoreMode;

    sget-object v8, Linfo/flowersoft/theotown/store/StoreMode;->CERTIFIED_CREATORS:Linfo/flowersoft/theotown/store/StoreMode;

    sget-object v9, Linfo/flowersoft/theotown/store/StoreMode;->CATEGORY:Linfo/flowersoft/theotown/store/StoreMode;

    sget-object v10, Linfo/flowersoft/theotown/store/StoreMode;->USER:Linfo/flowersoft/theotown/store/StoreMode;

    sget-object v11, Linfo/flowersoft/theotown/store/StoreMode;->SEARCH:Linfo/flowersoft/theotown/store/StoreMode;

    sget-object v12, Linfo/flowersoft/theotown/store/StoreMode;->NEW:Linfo/flowersoft/theotown/store/StoreMode;

    sget-object v13, Linfo/flowersoft/theotown/store/StoreMode;->PREV_INSTALLED:Linfo/flowersoft/theotown/store/StoreMode;

    sget-object v14, Linfo/flowersoft/theotown/store/StoreMode;->MISSING:Linfo/flowersoft/theotown/store/StoreMode;

    sget-object v15, Linfo/flowersoft/theotown/store/StoreMode;->COMMENTED:Linfo/flowersoft/theotown/store/StoreMode;

    sget-object v16, Linfo/flowersoft/theotown/store/StoreMode;->LOCAL:Linfo/flowersoft/theotown/store/StoreMode;

    filled-new-array/range {v1 .. v16}, [Linfo/flowersoft/theotown/store/StoreMode;

    move-result-object v0

    return-object v0
.end method

.method static constructor <clinit>()V
    .registers 5

    .line 4
    new-instance v0, Linfo/flowersoft/theotown/store/StoreMode;

    const/4 v1, 0x0

    const-string v2, "explore"

    const-string v3, "EXPLORE"

    invoke-direct {v0, v3, v1, v2}, Linfo/flowersoft/theotown/store/StoreMode;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v0, Linfo/flowersoft/theotown/store/StoreMode;->EXPLORE:Linfo/flowersoft/theotown/store/StoreMode;

    .line 5
    new-instance v0, Linfo/flowersoft/theotown/store/StoreMode;

    const-string v1, "INSTALLED"

    const/4 v2, 0x1

    const-string v3, "installed"

    invoke-direct {v0, v1, v2, v3}, Linfo/flowersoft/theotown/store/StoreMode;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v0, Linfo/flowersoft/theotown/store/StoreMode;->INSTALLED:Linfo/flowersoft/theotown/store/StoreMode;

    .line 6
    new-instance v0, Linfo/flowersoft/theotown/store/StoreMode;

    const-string v1, "ACTIVE"

    const/4 v2, 0x2

    invoke-direct {v0, v1, v2, v3}, Linfo/flowersoft/theotown/store/StoreMode;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v0, Linfo/flowersoft/theotown/store/StoreMode;->ACTIVE:Linfo/flowersoft/theotown/store/StoreMode;

    .line 7
    new-instance v0, Linfo/flowersoft/theotown/store/StoreMode;

    const-string v1, "INACTIVE"

    const/4 v2, 0x3

    invoke-direct {v0, v1, v2, v3}, Linfo/flowersoft/theotown/store/StoreMode;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v0, Linfo/flowersoft/theotown/store/StoreMode;->INACTIVE:Linfo/flowersoft/theotown/store/StoreMode;

    .line 8
    new-instance v0, Linfo/flowersoft/theotown/store/StoreMode;

    const-string v1, "ERROR"

    const/4 v2, 0x4

    invoke-direct {v0, v1, v2, v3}, Linfo/flowersoft/theotown/store/StoreMode;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v0, Linfo/flowersoft/theotown/store/StoreMode;->ERROR:Linfo/flowersoft/theotown/store/StoreMode;

    .line 9
    new-instance v0, Linfo/flowersoft/theotown/store/StoreMode;

    const/4 v1, 0x5

    const-string v2, "featured"

    const-string v4, "FEATURED"

    invoke-direct {v0, v4, v1, v2}, Linfo/flowersoft/theotown/store/StoreMode;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v0, Linfo/flowersoft/theotown/store/StoreMode;->FEATURED:Linfo/flowersoft/theotown/store/StoreMode;

    .line 10
    new-instance v0, Linfo/flowersoft/theotown/store/StoreMode;

    const/4 v1, 0x6

    const-string v2, "bestrated"

    const-string v4, "BEST_RATED"

    invoke-direct {v0, v4, v1, v2}, Linfo/flowersoft/theotown/store/StoreMode;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v0, Linfo/flowersoft/theotown/store/StoreMode;->BEST_RATED:Linfo/flowersoft/theotown/store/StoreMode;

    .line 11
    new-instance v0, Linfo/flowersoft/theotown/store/StoreMode;

    const/4 v1, 0x7

    const-string v2, "certifiedcreators"

    const-string v4, "CERTIFIED_CREATORS"

    invoke-direct {v0, v4, v1, v2}, Linfo/flowersoft/theotown/store/StoreMode;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v0, Linfo/flowersoft/theotown/store/StoreMode;->CERTIFIED_CREATORS:Linfo/flowersoft/theotown/store/StoreMode;

    .line 12
    new-instance v0, Linfo/flowersoft/theotown/store/StoreMode;

    const/16 v1, 0x8

    const-string v2, "category"

    const-string v4, "CATEGORY"

    invoke-direct {v0, v4, v1, v2}, Linfo/flowersoft/theotown/store/StoreMode;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v0, Linfo/flowersoft/theotown/store/StoreMode;->CATEGORY:Linfo/flowersoft/theotown/store/StoreMode;

    .line 13
    new-instance v0, Linfo/flowersoft/theotown/store/StoreMode;

    const/16 v1, 0x9

    const-string v2, "user"

    const-string v4, "USER"

    invoke-direct {v0, v4, v1, v2}, Linfo/flowersoft/theotown/store/StoreMode;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v0, Linfo/flowersoft/theotown/store/StoreMode;->USER:Linfo/flowersoft/theotown/store/StoreMode;

    .line 14
    new-instance v0, Linfo/flowersoft/theotown/store/StoreMode;

    const/16 v1, 0xa

    const-string v2, "search"

    const-string v4, "SEARCH"

    invoke-direct {v0, v4, v1, v2}, Linfo/flowersoft/theotown/store/StoreMode;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v0, Linfo/flowersoft/theotown/store/StoreMode;->SEARCH:Linfo/flowersoft/theotown/store/StoreMode;

    .line 15
    new-instance v0, Linfo/flowersoft/theotown/store/StoreMode;

    const/16 v1, 0xb

    const-string v2, "new"

    const-string v4, "NEW"

    invoke-direct {v0, v4, v1, v2}, Linfo/flowersoft/theotown/store/StoreMode;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v0, Linfo/flowersoft/theotown/store/StoreMode;->NEW:Linfo/flowersoft/theotown/store/StoreMode;

    .line 16
    new-instance v0, Linfo/flowersoft/theotown/store/StoreMode;

    const-string v1, "PREV_INSTALLED"

    const/16 v2, 0xc

    invoke-direct {v0, v1, v2, v3}, Linfo/flowersoft/theotown/store/StoreMode;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v0, Linfo/flowersoft/theotown/store/StoreMode;->PREV_INSTALLED:Linfo/flowersoft/theotown/store/StoreMode;

    .line 17
    new-instance v0, Linfo/flowersoft/theotown/store/StoreMode;

    const-string v1, "MISSING"

    const/16 v2, 0xd

    invoke-direct {v0, v1, v2, v3}, Linfo/flowersoft/theotown/store/StoreMode;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v0, Linfo/flowersoft/theotown/store/StoreMode;->MISSING:Linfo/flowersoft/theotown/store/StoreMode;

    .line 18
    new-instance v0, Linfo/flowersoft/theotown/store/StoreMode;

    const/16 v1, 0xe

    const-string v2, "commented"

    const-string v3, "COMMENTED"

    invoke-direct {v0, v3, v1, v2}, Linfo/flowersoft/theotown/store/StoreMode;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v0, Linfo/flowersoft/theotown/store/StoreMode;->COMMENTED:Linfo/flowersoft/theotown/store/StoreMode;

    .line 19
    new-instance v0, Linfo/flowersoft/theotown/store/StoreMode;

    const/16 v1, 0xf

    const/4 v2, 0x0

    const-string v3, "LOCAL"

    invoke-direct {v0, v3, v1, v2}, Linfo/flowersoft/theotown/store/StoreMode;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v0, Linfo/flowersoft/theotown/store/StoreMode;->LOCAL:Linfo/flowersoft/theotown/store/StoreMode;

    .line 3
    invoke-static {}, Linfo/flowersoft/theotown/store/StoreMode;->$values()[Linfo/flowersoft/theotown/store/StoreMode;

    move-result-object v0

    sput-object v0, Linfo/flowersoft/theotown/store/StoreMode;->$VALUES:[Linfo/flowersoft/theotown/store/StoreMode;

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

    .line 23
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    .line 24
    iput-object p3, p0, Linfo/flowersoft/theotown/store/StoreMode;->tag:Ljava/lang/String;

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Linfo/flowersoft/theotown/store/StoreMode;
    .registers 2
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x8000
        }
        names = {
            null
        }
    .end annotation

    .line 3
    const-class v0, Linfo/flowersoft/theotown/store/StoreMode;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Linfo/flowersoft/theotown/store/StoreMode;

    return-object p0
.end method

.method public static values()[Linfo/flowersoft/theotown/store/StoreMode;
    .registers 1

    .line 3
    sget-object v0, Linfo/flowersoft/theotown/store/StoreMode;->$VALUES:[Linfo/flowersoft/theotown/store/StoreMode;

    invoke-virtual {v0}, [Linfo/flowersoft/theotown/store/StoreMode;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Linfo/flowersoft/theotown/store/StoreMode;

    return-object v0
.end method


# virtual methods
.method public getTag()Ljava/lang/String;
    .registers 2

    .line 28
    iget-object v0, p0, Linfo/flowersoft/theotown/store/StoreMode;->tag:Ljava/lang/String;

    return-object v0
.end method
