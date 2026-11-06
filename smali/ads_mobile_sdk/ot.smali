###### Class ads_mobile_sdk.ot (ads_mobile_sdk.ot)
.class public final Lads_mobile_sdk/ot;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lads_mobile_sdk/yh1$d$a;


# direct methods
.method public constructor <init>()V
    .registers 1

    .line 2209
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final a(I)Ljava/lang/Object;
    .registers 3

    if-eqz p1, :cond_a

    const/4 v0, 0x1

    if-eq p1, v0, :cond_7

    const/4 p1, 0x0

    goto :goto_c

    .line 2
    :cond_7
    sget-object p1, Lads_mobile_sdk/qt;->c:Lads_mobile_sdk/qt;

    goto :goto_c

    .line 3
    :cond_a
    sget-object p1, Lads_mobile_sdk/qt;->b:Lads_mobile_sdk/qt;

    :goto_c
    if-nez p1, :cond_10

    .line 4
    sget-object p1, Lads_mobile_sdk/qt;->b:Lads_mobile_sdk/qt;

    :cond_10
    return-object p1
.end method
