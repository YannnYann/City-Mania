###### Class ads_mobile_sdk.x01 (ads_mobile_sdk.x01)
.class public final Lads_mobile_sdk/x01;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lads_mobile_sdk/yh1$d$a;


# direct methods
.method public constructor <init>()V
    .registers 1

    .line 4488
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final a(I)Ljava/lang/Object;
    .registers 2

    .line 2
    invoke-static {p1}, Lads_mobile_sdk/mt1;->a(I)Lads_mobile_sdk/mt1;

    move-result-object p1

    if-nez p1, :cond_8

    .line 3
    sget-object p1, Lads_mobile_sdk/mt1;->y2:Lads_mobile_sdk/mt1;

    :cond_8
    return-object p1
.end method
