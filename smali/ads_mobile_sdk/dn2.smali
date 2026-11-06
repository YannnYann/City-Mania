###### Class ads_mobile_sdk.dn2 (ads_mobile_sdk.dn2)
.class public final enum Lads_mobile_sdk/dn2;
.super Ljava/lang/Enum;
.source "SourceFile"


# static fields
.field public static final enum b:Lads_mobile_sdk/dn2;

.field public static final enum c:Lads_mobile_sdk/dn2;

.field public static final enum d:Lads_mobile_sdk/dn2;

.field public static final synthetic e:[Lads_mobile_sdk/dn2;


# instance fields
.field public final a:I


# direct methods
.method static constructor <clinit>()V
    .registers 5

    .line 1
    new-instance v0, Lads_mobile_sdk/dn2;

    const-string v1, "UNKNOWN"

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2, v2}, Lads_mobile_sdk/dn2;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lads_mobile_sdk/dn2;->b:Lads_mobile_sdk/dn2;

    .line 2
    new-instance v1, Lads_mobile_sdk/dn2;

    const-string v2, "PORTRAIT"

    const/4 v3, 0x1

    invoke-direct {v1, v2, v3, v3}, Lads_mobile_sdk/dn2;-><init>(Ljava/lang/String;II)V

    sput-object v1, Lads_mobile_sdk/dn2;->c:Lads_mobile_sdk/dn2;

    .line 3
    new-instance v2, Lads_mobile_sdk/dn2;

    const-string v3, "LANDSCAPE"

    const/4 v4, 0x2

    invoke-direct {v2, v3, v4, v4}, Lads_mobile_sdk/dn2;-><init>(Ljava/lang/String;II)V

    sput-object v2, Lads_mobile_sdk/dn2;->d:Lads_mobile_sdk/dn2;

    .line 4
    filled-new-array {v0, v1, v2}, [Lads_mobile_sdk/dn2;

    move-result-object v0

    .line 5
    sput-object v0, Lads_mobile_sdk/dn2;->e:[Lads_mobile_sdk/dn2;

    invoke-static {v0}, Lkotlin/enums/EnumEntriesKt;->enumEntries([Ljava/lang/Enum;)Lkotlin/enums/EnumEntries;

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;II)V
    .registers 4

    .line 43
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    iput p3, p0, Lads_mobile_sdk/dn2;->a:I

    return-void
.end method

.method public static values()[Lads_mobile_sdk/dn2;
    .registers 1

    .line 1
    sget-object v0, Lads_mobile_sdk/dn2;->e:[Lads_mobile_sdk/dn2;

    invoke-virtual {v0}, [Ljava/lang/Object;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lads_mobile_sdk/dn2;

    return-object v0
.end method
