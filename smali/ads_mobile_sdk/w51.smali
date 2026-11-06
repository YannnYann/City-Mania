###### Class ads_mobile_sdk.w51 (ads_mobile_sdk.w51)
.class public final enum Lads_mobile_sdk/w51;
.super Ljava/lang/Enum;
.source "SourceFile"


# static fields
.field public static final enum b:Lads_mobile_sdk/w51;

.field public static final enum c:Lads_mobile_sdk/w51;

.field public static final enum d:Lads_mobile_sdk/w51;

.field public static final enum e:Lads_mobile_sdk/w51;

.field public static final synthetic f:[Lads_mobile_sdk/w51;


# instance fields
.field public final a:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .registers 7

    .line 1
    new-instance v0, Lads_mobile_sdk/w51;

    const-string v1, "UNKNOWN"

    const-string v2, "unknown"

    const/4 v3, 0x0

    invoke-direct {v0, v3, v1, v2}, Lads_mobile_sdk/w51;-><init>(ILjava/lang/String;Ljava/lang/String;)V

    sput-object v0, Lads_mobile_sdk/w51;->b:Lads_mobile_sdk/w51;

    .line 2
    new-instance v1, Lads_mobile_sdk/w51;

    const-string v2, "LEFT"

    const-string v3, "left"

    const/4 v4, 0x1

    invoke-direct {v1, v4, v2, v3}, Lads_mobile_sdk/w51;-><init>(ILjava/lang/String;Ljava/lang/String;)V

    sput-object v1, Lads_mobile_sdk/w51;->c:Lads_mobile_sdk/w51;

    .line 3
    new-instance v2, Lads_mobile_sdk/w51;

    const-string v3, "RIGHT"

    const-string v4, "right"

    const/4 v5, 0x2

    invoke-direct {v2, v5, v3, v4}, Lads_mobile_sdk/w51;-><init>(ILjava/lang/String;Ljava/lang/String;)V

    sput-object v2, Lads_mobile_sdk/w51;->d:Lads_mobile_sdk/w51;

    .line 4
    new-instance v3, Lads_mobile_sdk/w51;

    const-string v4, "DEVICE_FLAT"

    const-string v5, "device_flat"

    const/4 v6, 0x3

    invoke-direct {v3, v6, v4, v5}, Lads_mobile_sdk/w51;-><init>(ILjava/lang/String;Ljava/lang/String;)V

    sput-object v3, Lads_mobile_sdk/w51;->e:Lads_mobile_sdk/w51;

    .line 5
    filled-new-array {v0, v1, v2, v3}, [Lads_mobile_sdk/w51;

    move-result-object v0

    .line 6
    sput-object v0, Lads_mobile_sdk/w51;->f:[Lads_mobile_sdk/w51;

    invoke-static {v0}, Lkotlin/enums/EnumEntriesKt;->enumEntries([Ljava/lang/Enum;)Lkotlin/enums/EnumEntries;

    return-void
.end method

.method public constructor <init>(ILjava/lang/String;Ljava/lang/String;)V
    .registers 4

    .line 2
    invoke-direct {p0, p2, p1}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    iput-object p3, p0, Lads_mobile_sdk/w51;->a:Ljava/lang/String;

    return-void
.end method

.method public static values()[Lads_mobile_sdk/w51;
    .registers 1

    .line 1
    sget-object v0, Lads_mobile_sdk/w51;->f:[Lads_mobile_sdk/w51;

    invoke-virtual {v0}, [Ljava/lang/Object;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lads_mobile_sdk/w51;

    return-object v0
.end method
