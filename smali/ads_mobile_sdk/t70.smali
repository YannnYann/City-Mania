###### Class ads_mobile_sdk.t70 (ads_mobile_sdk.t70)
.class public final Lads_mobile_sdk/t70;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lads_mobile_sdk/yh1$d$a;


# direct methods
.method public constructor <init>()V
    .registers 1

    .line 4627
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final a(I)Ljava/lang/Object;
    .registers 3

    if-eqz p1, :cond_22

    const/4 v0, 0x1

    if-eq p1, v0, :cond_1f

    const/4 v0, 0x2

    if-eq p1, v0, :cond_1c

    const/4 v0, 0x3

    if-eq p1, v0, :cond_19

    const/4 v0, 0x4

    if-eq p1, v0, :cond_16

    const/4 v0, 0x5

    if-eq p1, v0, :cond_13

    const/4 p1, 0x0

    goto :goto_24

    .line 2
    :cond_13
    sget-object p1, Lads_mobile_sdk/c80;->g:Lads_mobile_sdk/c80;

    goto :goto_24

    .line 3
    :cond_16
    sget-object p1, Lads_mobile_sdk/c80;->f:Lads_mobile_sdk/c80;

    goto :goto_24

    .line 4
    :cond_19
    sget-object p1, Lads_mobile_sdk/c80;->e:Lads_mobile_sdk/c80;

    goto :goto_24

    .line 5
    :cond_1c
    sget-object p1, Lads_mobile_sdk/c80;->d:Lads_mobile_sdk/c80;

    goto :goto_24

    .line 6
    :cond_1f
    sget-object p1, Lads_mobile_sdk/c80;->c:Lads_mobile_sdk/c80;

    goto :goto_24

    .line 7
    :cond_22
    sget-object p1, Lads_mobile_sdk/c80;->b:Lads_mobile_sdk/c80;

    :goto_24
    if-nez p1, :cond_28

    .line 8
    sget-object p1, Lads_mobile_sdk/c80;->b:Lads_mobile_sdk/c80;

    :cond_28
    return-object p1
.end method
