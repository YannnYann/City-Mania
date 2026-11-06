###### Class ads_mobile_sdk.oi0 (ads_mobile_sdk.oi0)
.class public final Lads_mobile_sdk/oi0;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lads_mobile_sdk/f03;


# instance fields
.field public final a:Lads_mobile_sdk/vf0;

.field public b:Lcom/google/android/libraries/ads/mobile/sdk/common/AdRequest;

.field public c:Lcom/google/android/libraries/ads/mobile/sdk/common/BaseRequest;

.field public e:Ljava/lang/Boolean;

.field public f:Ljava/lang/Boolean;


# direct methods
.method public constructor <init>(Lads_mobile_sdk/vf0;)V
    .registers 2

    .line 2326
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2327
    iput-object p1, p0, Lads_mobile_sdk/oi0;->a:Lads_mobile_sdk/vf0;

    return-void
.end method


# virtual methods
.method public final a(Lads_mobile_sdk/j53;)Ljava/lang/Object;
    .registers 2

    .line 0
    const/4 p1, 0x0

    throw p1
.end method

.method public final a(Lcom/google/android/libraries/ads/mobile/sdk/common/AdRequest;)Ljava/lang/Object;
    .registers 2

    .line 2
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 3
    iput-object p1, p0, Lads_mobile_sdk/oi0;->b:Lcom/google/android/libraries/ads/mobile/sdk/common/AdRequest;

    return-object p0
.end method

.method public final a(Lcom/google/android/libraries/ads/mobile/sdk/common/BaseRequest;)Ljava/lang/Object;
    .registers 2

    .line 5
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 6
    iput-object p1, p0, Lads_mobile_sdk/oi0;->c:Lcom/google/android/libraries/ads/mobile/sdk/common/BaseRequest;

    return-object p0
.end method

.method public final a(Z)Ljava/lang/Object;
    .registers 2

    .line 8
    sget-object p1, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    iput-object p1, p0, Lads_mobile_sdk/oi0;->f:Ljava/lang/Boolean;

    return-object p0
.end method

.method public final b(Z)Ljava/lang/Object;
    .registers 2

    .line 2
    sget-object p1, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    iput-object p1, p0, Lads_mobile_sdk/oi0;->e:Ljava/lang/Boolean;

    return-object p0
.end method
