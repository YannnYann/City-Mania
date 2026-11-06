###### Class ads_mobile_sdk.xa0 (ads_mobile_sdk.xa0)
.class public final Lads_mobile_sdk/xa0;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lads_mobile_sdk/yh1$b;


# static fields
.field public static final a:Lads_mobile_sdk/xa0;


# direct methods
.method static constructor <clinit>()V
    .registers 1

    .line 1
    new-instance v0, Lads_mobile_sdk/xa0;

    invoke-direct {v0}, Lads_mobile_sdk/xa0;-><init>()V

    sput-object v0, Lads_mobile_sdk/xa0;->a:Lads_mobile_sdk/xa0;

    return-void
.end method

.method public constructor <init>()V
    .registers 1

    .line 21691
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final a(I)Z
    .registers 4

    const/4 v0, 0x1

    if-eqz p1, :cond_22

    if-eq p1, v0, :cond_1f

    const/4 v1, 0x2

    if-eq p1, v1, :cond_1c

    const/4 v1, 0x3

    if-eq p1, v1, :cond_19

    const/4 v1, 0x4

    if-eq p1, v1, :cond_16

    const/4 v1, 0x5

    if-eq p1, v1, :cond_13

    const/4 p1, 0x0

    goto :goto_24

    .line 2
    :cond_13
    sget-object p1, Lads_mobile_sdk/ya0;->g:Lads_mobile_sdk/ya0;

    goto :goto_24

    .line 3
    :cond_16
    sget-object p1, Lads_mobile_sdk/ya0;->f:Lads_mobile_sdk/ya0;

    goto :goto_24

    .line 4
    :cond_19
    sget-object p1, Lads_mobile_sdk/ya0;->e:Lads_mobile_sdk/ya0;

    goto :goto_24

    .line 5
    :cond_1c
    sget-object p1, Lads_mobile_sdk/ya0;->d:Lads_mobile_sdk/ya0;

    goto :goto_24

    .line 6
    :cond_1f
    sget-object p1, Lads_mobile_sdk/ya0;->c:Lads_mobile_sdk/ya0;

    goto :goto_24

    .line 7
    :cond_22
    sget-object p1, Lads_mobile_sdk/ya0;->b:Lads_mobile_sdk/ya0;

    :goto_24
    if-eqz p1, :cond_27

    return v0

    :cond_27
    const/4 p1, 0x0

    return p1
.end method
