###### Class ads_mobile_sdk.zv2 (ads_mobile_sdk.zv2)
.class public final enum Lads_mobile_sdk/zv2;
.super Ljava/lang/Enum;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lads_mobile_sdk/zv2;",
        ">;"
    }
.end annotation


# static fields
.field public static final enum a:Lads_mobile_sdk/zv2;

.field public static final enum b:Lads_mobile_sdk/zv2;

.field public static final enum c:Lads_mobile_sdk/zv2;

.field private static final synthetic d:[Lads_mobile_sdk/zv2;


# direct methods
.method static constructor <clinit>()V
    .registers 3

    .line 1
    new-instance v0, Lads_mobile_sdk/zv2;

    const-string v1, "PROTO2"

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2}, Lads_mobile_sdk/zv2;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lads_mobile_sdk/zv2;->a:Lads_mobile_sdk/zv2;

    .line 2
    new-instance v0, Lads_mobile_sdk/zv2;

    const-string v1, "PROTO3"

    const/4 v2, 0x1

    invoke-direct {v0, v1, v2}, Lads_mobile_sdk/zv2;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lads_mobile_sdk/zv2;->b:Lads_mobile_sdk/zv2;

    .line 3
    new-instance v0, Lads_mobile_sdk/zv2;

    const-string v1, "EDITIONS"

    const/4 v2, 0x2

    invoke-direct {v0, v1, v2}, Lads_mobile_sdk/zv2;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lads_mobile_sdk/zv2;->c:Lads_mobile_sdk/zv2;

    .line 4
    invoke-static {}, Lads_mobile_sdk/zv2;->d()[Lads_mobile_sdk/zv2;

    move-result-object v0

    sput-object v0, Lads_mobile_sdk/zv2;->d:[Lads_mobile_sdk/zv2;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;I)V
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    .line 13
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method private static synthetic d()[Lads_mobile_sdk/zv2;
    .registers 3

    .line 12
    sget-object v0, Lads_mobile_sdk/zv2;->a:Lads_mobile_sdk/zv2;

    sget-object v1, Lads_mobile_sdk/zv2;->b:Lads_mobile_sdk/zv2;

    sget-object v2, Lads_mobile_sdk/zv2;->c:Lads_mobile_sdk/zv2;

    filled-new-array {v0, v1, v2}, [Lads_mobile_sdk/zv2;

    move-result-object v0

    return-object v0
.end method

.method public static values()[Lads_mobile_sdk/zv2;
    .registers 1

    .line 1
    sget-object v0, Lads_mobile_sdk/zv2;->d:[Lads_mobile_sdk/zv2;

    invoke-virtual {v0}, [Lads_mobile_sdk/zv2;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lads_mobile_sdk/zv2;

    return-object v0
.end method
