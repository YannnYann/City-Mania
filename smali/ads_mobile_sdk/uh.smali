###### Class ads_mobile_sdk.uh (ads_mobile_sdk.uh)
.class public final Lads_mobile_sdk/uh;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lads_mobile_sdk/yh1$b;


# static fields
.field public static final a:Lads_mobile_sdk/uh;


# direct methods
.method static constructor <clinit>()V
    .registers 1

    .line 1
    new-instance v0, Lads_mobile_sdk/uh;

    invoke-direct {v0}, Lads_mobile_sdk/uh;-><init>()V

    sput-object v0, Lads_mobile_sdk/uh;->a:Lads_mobile_sdk/uh;

    return-void
.end method

.method public constructor <init>()V
    .registers 1

    .line 255
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final a(I)Z
    .registers 4

    const/4 v0, 0x1

    if-eqz p1, :cond_1c

    if-eq p1, v0, :cond_19

    const/4 v1, 0x2

    if-eq p1, v1, :cond_16

    const/4 v1, 0x3

    if-eq p1, v1, :cond_13

    const/4 v1, 0x4

    if-eq p1, v1, :cond_10

    const/4 p1, 0x0

    goto :goto_1e

    .line 2
    :cond_10
    sget-object p1, Lads_mobile_sdk/vh;->f:Lads_mobile_sdk/vh;

    goto :goto_1e

    .line 3
    :cond_13
    sget-object p1, Lads_mobile_sdk/vh;->e:Lads_mobile_sdk/vh;

    goto :goto_1e

    .line 4
    :cond_16
    sget-object p1, Lads_mobile_sdk/vh;->d:Lads_mobile_sdk/vh;

    goto :goto_1e

    .line 5
    :cond_19
    sget-object p1, Lads_mobile_sdk/vh;->c:Lads_mobile_sdk/vh;

    goto :goto_1e

    .line 6
    :cond_1c
    sget-object p1, Lads_mobile_sdk/vh;->b:Lads_mobile_sdk/vh;

    :goto_1e
    if-eqz p1, :cond_21

    return v0

    :cond_21
    const/4 p1, 0x0

    return p1
.end method
