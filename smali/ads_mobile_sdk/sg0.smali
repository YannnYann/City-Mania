###### Class ads_mobile_sdk.sg0 (ads_mobile_sdk.sg0)
.class public final Lads_mobile_sdk/sg0;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lads_mobile_sdk/qm1;


# instance fields
.field public final a:Lads_mobile_sdk/vf0;

.field public b:Lads_mobile_sdk/tf3;

.field public c:Ljava/lang/String;

.field public d:Lcom/google/android/libraries/ads/mobile/sdk/common/BaseRequest;

.field public e:Lads_mobile_sdk/j53;

.field public f:Ljava/lang/Boolean;

.field public g:Lads_mobile_sdk/n03;

.field public h:Lads_mobile_sdk/tn1;

.field public i:Lads_mobile_sdk/md1;

.field public j:Ljava/lang/Boolean;

.field public k:Lcom/google/android/libraries/ads/mobile/sdk/nativead/NativeRequest;

.field public l:Lads_mobile_sdk/gj1;


# direct methods
.method public constructor <init>(Lads_mobile_sdk/vf0;)V
    .registers 2

    .line 4079
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 4080
    iput-object p1, p0, Lads_mobile_sdk/sg0;->a:Lads_mobile_sdk/vf0;

    return-void
.end method


# virtual methods
.method public final a(Lads_mobile_sdk/j53;)Ljava/lang/Object;
    .registers 2

    .line 19
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 20
    iput-object p1, p0, Lads_mobile_sdk/sg0;->e:Lads_mobile_sdk/j53;

    return-object p0
.end method

.method public final a(Lads_mobile_sdk/md1;)Ljava/lang/Object;
    .registers 2

    .line 8
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 9
    iput-object p1, p0, Lads_mobile_sdk/sg0;->i:Lads_mobile_sdk/md1;

    return-object p0
.end method

.method public final a(Lads_mobile_sdk/n03;)Ljava/lang/Object;
    .registers 2

    .line 16
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 17
    iput-object p1, p0, Lads_mobile_sdk/sg0;->g:Lads_mobile_sdk/n03;

    return-object p0
.end method

.method public final a(Lads_mobile_sdk/tf3;)Ljava/lang/Object;
    .registers 2

    .line 22
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 23
    iput-object p1, p0, Lads_mobile_sdk/sg0;->b:Lads_mobile_sdk/tf3;

    return-object p0
.end method

.method public final a(Lads_mobile_sdk/tn1;)Ljava/lang/Object;
    .registers 2

    .line 11
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 12
    iput-object p1, p0, Lads_mobile_sdk/sg0;->h:Lads_mobile_sdk/tn1;

    return-object p0
.end method

.method public final a(Lcom/google/android/libraries/ads/mobile/sdk/signal/SignalRequest;)Ljava/lang/Object;
    .registers 2

    .line 5
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 6
    iput-object p1, p0, Lads_mobile_sdk/sg0;->d:Lcom/google/android/libraries/ads/mobile/sdk/common/BaseRequest;

    return-object p0
.end method

.method public final a(Ljava/lang/String;)Ljava/lang/Object;
    .registers 2

    .line 2
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 3
    iput-object p1, p0, Lads_mobile_sdk/sg0;->c:Ljava/lang/String;

    return-object p0
.end method

.method public final a(Z)Ljava/lang/Object;
    .registers 2

    .line 14
    invoke-static {p1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object p1

    iput-object p1, p0, Lads_mobile_sdk/sg0;->f:Ljava/lang/Boolean;

    return-object p0
.end method
