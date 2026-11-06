###### Class com.unity3d.services.core.network.model.RequestType (com.unity3d.services.core.network.model.RequestType)
.class public final enum Lcom/unity3d/services/core/network/model/RequestType;
.super Ljava/lang/Enum;
.source "RequestType.kt"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lcom/unity3d/services/core/network/model/RequestType;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $ENTRIES:Lkotlin/enums/EnumEntries;

.field private static final synthetic $VALUES:[Lcom/unity3d/services/core/network/model/RequestType;

.field public static final enum GET:Lcom/unity3d/services/core/network/model/RequestType;

.field public static final enum HEAD:Lcom/unity3d/services/core/network/model/RequestType;

.field public static final enum POST:Lcom/unity3d/services/core/network/model/RequestType;


# direct methods
.method private static final synthetic $values()[Lcom/unity3d/services/core/network/model/RequestType;
    .registers 3

    .line 0
    sget-object v0, Lcom/unity3d/services/core/network/model/RequestType;->POST:Lcom/unity3d/services/core/network/model/RequestType;

    sget-object v1, Lcom/unity3d/services/core/network/model/RequestType;->GET:Lcom/unity3d/services/core/network/model/RequestType;

    sget-object v2, Lcom/unity3d/services/core/network/model/RequestType;->HEAD:Lcom/unity3d/services/core/network/model/RequestType;

    filled-new-array {v0, v1, v2}, [Lcom/unity3d/services/core/network/model/RequestType;

    move-result-object v0

    return-object v0
.end method

.method static constructor <clinit>()V
    .registers 3

    .line 7
    new-instance v0, Lcom/unity3d/services/core/network/model/RequestType;

    const-string v1, "POST"

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2}, Lcom/unity3d/services/core/network/model/RequestType;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/unity3d/services/core/network/model/RequestType;->POST:Lcom/unity3d/services/core/network/model/RequestType;

    .line 8
    new-instance v0, Lcom/unity3d/services/core/network/model/RequestType;

    const-string v1, "GET"

    const/4 v2, 0x1

    invoke-direct {v0, v1, v2}, Lcom/unity3d/services/core/network/model/RequestType;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/unity3d/services/core/network/model/RequestType;->GET:Lcom/unity3d/services/core/network/model/RequestType;

    .line 9
    new-instance v0, Lcom/unity3d/services/core/network/model/RequestType;

    const-string v1, "HEAD"

    const/4 v2, 0x2

    invoke-direct {v0, v1, v2}, Lcom/unity3d/services/core/network/model/RequestType;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/unity3d/services/core/network/model/RequestType;->HEAD:Lcom/unity3d/services/core/network/model/RequestType;

    invoke-static {}, Lcom/unity3d/services/core/network/model/RequestType;->$values()[Lcom/unity3d/services/core/network/model/RequestType;

    move-result-object v0

    sput-object v0, Lcom/unity3d/services/core/network/model/RequestType;->$VALUES:[Lcom/unity3d/services/core/network/model/RequestType;

    invoke-static {v0}, Lkotlin/enums/EnumEntriesKt;->enumEntries([Ljava/lang/Enum;)Lkotlin/enums/EnumEntries;

    move-result-object v0

    sput-object v0, Lcom/unity3d/services/core/network/model/RequestType;->$ENTRIES:Lkotlin/enums/EnumEntries;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;I)V
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    .line 6
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method public static getEntries()Lkotlin/enums/EnumEntries;
    .registers 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lkotlin/enums/EnumEntries<",
            "Lcom/unity3d/services/core/network/model/RequestType;",
            ">;"
        }
    .end annotation

    .line 0
    sget-object v0, Lcom/unity3d/services/core/network/model/RequestType;->$ENTRIES:Lkotlin/enums/EnumEntries;

    return-object v0
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/unity3d/services/core/network/model/RequestType;
    .registers 2

    const-class v0, Lcom/unity3d/services/core/network/model/RequestType;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    .line 10
    check-cast p0, Lcom/unity3d/services/core/network/model/RequestType;

    return-object p0
.end method

.method public static values()[Lcom/unity3d/services/core/network/model/RequestType;
    .registers 1

    sget-object v0, Lcom/unity3d/services/core/network/model/RequestType;->$VALUES:[Lcom/unity3d/services/core/network/model/RequestType;

    invoke-virtual {v0}, Ljava/lang/Object;->clone()Ljava/lang/Object;

    move-result-object v0

    .line 10
    check-cast v0, [Lcom/unity3d/services/core/network/model/RequestType;

    return-object v0
.end method
