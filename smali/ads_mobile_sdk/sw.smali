###### Class ads_mobile_sdk.sw (ads_mobile_sdk.sw)
.class public final Lads_mobile_sdk/sw;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lads_mobile_sdk/yh1$b;


# static fields
.field public static final a:Lads_mobile_sdk/sw;


# direct methods
.method static constructor <clinit>()V
    .registers 1

    .line 1
    new-instance v0, Lads_mobile_sdk/sw;

    invoke-direct {v0}, Lads_mobile_sdk/sw;-><init>()V

    sput-object v0, Lads_mobile_sdk/sw;->a:Lads_mobile_sdk/sw;

    return-void
.end method

.method public constructor <init>()V
    .registers 1

    .line 131
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final a(I)Z
    .registers 4

    const/4 v0, 0x1

    if-eq p1, v0, :cond_17

    const/4 v1, 0x2

    if-eq p1, v1, :cond_14

    const/4 v1, 0x3

    if-eq p1, v1, :cond_11

    const/4 v1, 0x4

    if-eq p1, v1, :cond_e

    const/4 p1, 0x0

    goto :goto_19

    .line 2
    :cond_e
    sget-object p1, Lads_mobile_sdk/tw;->e:Lads_mobile_sdk/tw;

    goto :goto_19

    .line 3
    :cond_11
    sget-object p1, Lads_mobile_sdk/tw;->d:Lads_mobile_sdk/tw;

    goto :goto_19

    .line 4
    :cond_14
    sget-object p1, Lads_mobile_sdk/tw;->c:Lads_mobile_sdk/tw;

    goto :goto_19

    .line 5
    :cond_17
    sget-object p1, Lads_mobile_sdk/tw;->b:Lads_mobile_sdk/tw;

    :goto_19
    if-eqz p1, :cond_1c

    return v0

    :cond_1c
    const/4 p1, 0x0

    return p1
.end method
