###### Class ads_mobile_sdk.aj (ads_mobile_sdk.aj)
.class public final enum Lads_mobile_sdk/aj;
.super Ljava/lang/Enum;
.source "SourceFile"


# static fields
.field public static final enum a:Lads_mobile_sdk/aj;

.field public static final enum b:Lads_mobile_sdk/aj;

.field public static final enum c:Lads_mobile_sdk/aj;

.field public static final synthetic d:[Lads_mobile_sdk/aj;


# direct methods
.method static constructor <clinit>()V
    .registers 5

    .line 1
    new-instance v0, Lads_mobile_sdk/aj;

    const-string v1, "NO_ANR"

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2}, Lads_mobile_sdk/aj;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lads_mobile_sdk/aj;->a:Lads_mobile_sdk/aj;

    .line 2
    new-instance v1, Lads_mobile_sdk/aj;

    const-string v2, "EARLY_ANR"

    const/4 v3, 0x1

    invoke-direct {v1, v2, v3}, Lads_mobile_sdk/aj;-><init>(Ljava/lang/String;I)V

    sput-object v1, Lads_mobile_sdk/aj;->b:Lads_mobile_sdk/aj;

    .line 3
    new-instance v2, Lads_mobile_sdk/aj;

    const-string v3, "FULL_ANR"

    const/4 v4, 0x2

    invoke-direct {v2, v3, v4}, Lads_mobile_sdk/aj;-><init>(Ljava/lang/String;I)V

    sput-object v2, Lads_mobile_sdk/aj;->c:Lads_mobile_sdk/aj;

    .line 4
    filled-new-array {v0, v1, v2}, [Lads_mobile_sdk/aj;

    move-result-object v0

    .line 5
    sput-object v0, Lads_mobile_sdk/aj;->d:[Lads_mobile_sdk/aj;

    invoke-static {v0}, Lkotlin/enums/EnumEntriesKt;->enumEntries([Ljava/lang/Enum;)Lkotlin/enums/EnumEntries;

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;I)V
    .registers 3

    .line 59
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method public static values()[Lads_mobile_sdk/aj;
    .registers 1

    .line 1
    sget-object v0, Lads_mobile_sdk/aj;->d:[Lads_mobile_sdk/aj;

    invoke-virtual {v0}, [Ljava/lang/Object;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lads_mobile_sdk/aj;

    return-object v0
.end method
