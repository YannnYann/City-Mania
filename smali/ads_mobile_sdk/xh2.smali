###### Class ads_mobile_sdk.xh2 (ads_mobile_sdk.xh2)
.class public final enum Lads_mobile_sdk/xh2;
.super Ljava/lang/Enum;
.source "SourceFile"


# static fields
.field public static final enum b:Lads_mobile_sdk/xh2;

.field public static final enum c:Lads_mobile_sdk/xh2;

.field public static final enum d:Lads_mobile_sdk/xh2;

.field public static final synthetic e:[Lads_mobile_sdk/xh2;


# instance fields
.field public final a:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .registers 6

    .line 1
    new-instance v0, Lads_mobile_sdk/xh2;

    const-string v1, "NATIVE"

    const-string v2, "native"

    const/4 v3, 0x0

    invoke-direct {v0, v3, v1, v2}, Lads_mobile_sdk/xh2;-><init>(ILjava/lang/String;Ljava/lang/String;)V

    sput-object v0, Lads_mobile_sdk/xh2;->b:Lads_mobile_sdk/xh2;

    .line 6
    new-instance v1, Lads_mobile_sdk/xh2;

    const-string v2, "JAVASCRIPT"

    const-string v3, "javascript"

    const/4 v4, 0x1

    invoke-direct {v1, v4, v2, v3}, Lads_mobile_sdk/xh2;-><init>(ILjava/lang/String;Ljava/lang/String;)V

    sput-object v1, Lads_mobile_sdk/xh2;->c:Lads_mobile_sdk/xh2;

    .line 8
    new-instance v2, Lads_mobile_sdk/xh2;

    const-string v3, "NONE"

    const-string v4, "none"

    const/4 v5, 0x2

    invoke-direct {v2, v5, v3, v4}, Lads_mobile_sdk/xh2;-><init>(ILjava/lang/String;Ljava/lang/String;)V

    sput-object v2, Lads_mobile_sdk/xh2;->d:Lads_mobile_sdk/xh2;

    .line 9
    filled-new-array {v0, v1, v2}, [Lads_mobile_sdk/xh2;

    move-result-object v0

    .line 10
    sput-object v0, Lads_mobile_sdk/xh2;->e:[Lads_mobile_sdk/xh2;

    return-void
.end method

.method public constructor <init>(ILjava/lang/String;Ljava/lang/String;)V
    .registers 4

    .line 2
    invoke-direct {p0, p2, p1}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    .line 3
    iput-object p3, p0, Lads_mobile_sdk/xh2;->a:Ljava/lang/String;

    return-void
.end method

.method public static values()[Lads_mobile_sdk/xh2;
    .registers 1

    .line 1
    sget-object v0, Lads_mobile_sdk/xh2;->e:[Lads_mobile_sdk/xh2;

    invoke-virtual {v0}, [Lads_mobile_sdk/xh2;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lads_mobile_sdk/xh2;

    return-object v0
.end method


# virtual methods
.method public final toString()Ljava/lang/String;
    .registers 2

    .line 31
    iget-object v0, p0, Lads_mobile_sdk/xh2;->a:Ljava/lang/String;

    return-object v0
.end method
