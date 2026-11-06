###### Class ads_mobile_sdk.ky (ads_mobile_sdk.ky)
.class public final enum Lads_mobile_sdk/ky;
.super Ljava/lang/Enum;
.source "SourceFile"


# static fields
.field public static final enum a:Lads_mobile_sdk/ky;

.field public static final enum b:Lads_mobile_sdk/ky;

.field public static final enum c:Lads_mobile_sdk/ky;

.field public static final synthetic d:[Lads_mobile_sdk/ky;


# direct methods
.method static constructor <clinit>()V
    .registers 7

    .line 1
    new-instance v0, Lads_mobile_sdk/ky;

    const-string v1, "BACK_BUTTON"

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2}, Lads_mobile_sdk/ky;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lads_mobile_sdk/ky;->a:Lads_mobile_sdk/ky;

    .line 3
    new-instance v1, Lads_mobile_sdk/ky;

    const-string v2, "CLOSE_BUTTON"

    const/4 v3, 0x1

    invoke-direct {v1, v2, v3}, Lads_mobile_sdk/ky;-><init>(Ljava/lang/String;I)V

    sput-object v1, Lads_mobile_sdk/ky;->b:Lads_mobile_sdk/ky;

    .line 5
    new-instance v2, Lads_mobile_sdk/ky;

    const-string v3, "CUSTOM"

    const/4 v4, 0x2

    invoke-direct {v2, v3, v4}, Lads_mobile_sdk/ky;-><init>(Ljava/lang/String;I)V

    sput-object v2, Lads_mobile_sdk/ky;->c:Lads_mobile_sdk/ky;

    .line 7
    new-instance v3, Lads_mobile_sdk/ky;

    const-string v4, "OTHER"

    const/4 v5, 0x3

    invoke-direct {v3, v4, v5}, Lads_mobile_sdk/ky;-><init>(Ljava/lang/String;I)V

    .line 9
    new-instance v4, Lads_mobile_sdk/ky;

    const-string v5, "SWIPE_AWAY"

    const/4 v6, 0x4

    invoke-direct {v4, v5, v6}, Lads_mobile_sdk/ky;-><init>(Ljava/lang/String;I)V

    .line 10
    filled-new-array {v0, v1, v2, v3, v4}, [Lads_mobile_sdk/ky;

    move-result-object v0

    .line 11
    sput-object v0, Lads_mobile_sdk/ky;->d:[Lads_mobile_sdk/ky;

    invoke-static {v0}, Lkotlin/enums/EnumEntriesKt;->enumEntries([Ljava/lang/Enum;)Lkotlin/enums/EnumEntries;

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;I)V
    .registers 3

    .line 24
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method public static values()[Lads_mobile_sdk/ky;
    .registers 1

    .line 1
    sget-object v0, Lads_mobile_sdk/ky;->d:[Lads_mobile_sdk/ky;

    invoke-virtual {v0}, [Ljava/lang/Object;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lads_mobile_sdk/ky;

    return-object v0
.end method
