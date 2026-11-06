###### Class ads_mobile_sdk.f2 (ads_mobile_sdk.f2)
.class public final enum Lads_mobile_sdk/f2;
.super Ljava/lang/Enum;
.source "SourceFile"


# static fields
.field public static final synthetic a:[Lads_mobile_sdk/f2;


# direct methods
.method static constructor <clinit>()V
    .registers 6

    .line 1
    new-instance v0, Lads_mobile_sdk/f2;

    const-string v1, "LANDSCAPE"

    const-string v2, "landscape"

    const/4 v3, 0x0

    invoke-direct {v0, v3, v1, v2}, Lads_mobile_sdk/f2;-><init>(ILjava/lang/String;Ljava/lang/String;)V

    .line 2
    new-instance v1, Lads_mobile_sdk/f2;

    const-string v2, "PORTRAIT"

    const-string v3, "portrait"

    const/4 v4, 0x1

    invoke-direct {v1, v4, v2, v3}, Lads_mobile_sdk/f2;-><init>(ILjava/lang/String;Ljava/lang/String;)V

    .line 3
    new-instance v2, Lads_mobile_sdk/f2;

    const-string v3, "UNKNOWN"

    const-string v4, "unknown"

    const/4 v5, 0x2

    invoke-direct {v2, v5, v3, v4}, Lads_mobile_sdk/f2;-><init>(ILjava/lang/String;Ljava/lang/String;)V

    .line 4
    filled-new-array {v0, v1, v2}, [Lads_mobile_sdk/f2;

    move-result-object v0

    .line 5
    sput-object v0, Lads_mobile_sdk/f2;->a:[Lads_mobile_sdk/f2;

    invoke-static {v0}, Lkotlin/enums/EnumEntriesKt;->enumEntries([Ljava/lang/Enum;)Lkotlin/enums/EnumEntries;

    return-void
.end method

.method public constructor <init>(ILjava/lang/String;Ljava/lang/String;)V
    .registers 4

    .line 2
    invoke-direct {p0, p2, p1}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method public static values()[Lads_mobile_sdk/f2;
    .registers 1

    .line 1
    sget-object v0, Lads_mobile_sdk/f2;->a:[Lads_mobile_sdk/f2;

    invoke-virtual {v0}, [Ljava/lang/Object;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lads_mobile_sdk/f2;

    return-object v0
.end method
