###### Class com.google.android.play.core.hsdp.service.HsdpDeepLinkServiceFactory (com.google.android.play.core.hsdp.service.HsdpDeepLinkServiceFactory)
.class public final Lcom/google/android/play/core/hsdp/service/HsdpDeepLinkServiceFactory;
.super Ljava/lang/Object;
.source "com.google.android.play:hsdp@@2.0.1"


# annotations
.annotation build Landroidx/annotation/Keep;
.end annotation


# static fields
.field private static final HPOA_SERVICE_CLASS_NAME:Ljava/lang/String; = "com.google.android.finsky.inlinedetails.hpoa.service.HpoaService"

.field private static final HPOA_SERVICE_CLASS_NAME_FOR_TESTING:Ljava/lang/String; = "com.google.android.play.core.hsdp.testapp.FakeHpoaService"

.field private static final HSDP_SERVICE_CLASS_NAME:Ljava/lang/String; = "com.google.android.finsky.inlinedetails.hsdp.service.HsdpService"


# direct methods
.method private constructor <init>()V
    .registers 1

    .line 0
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static create(Landroid/app/Activity;)Lcom/google/android/play/core/hsdp/service/HsdpDeepLinkService;
    .registers 2
    .annotation build Landroidx/annotation/Keep;
    .end annotation

    const/4 v0, 0x0

    .line 1
    invoke-static {p0, v0}, Lcom/google/android/play/core/hsdp/service/HsdpDeepLinkServiceFactory;->create(Landroid/app/Activity;Z)Lcom/google/android/play/core/hsdp/service/HsdpDeepLinkService;

    move-result-object p0

    return-object p0
.end method

.method public static create(Landroid/app/Activity;Z)Lcom/google/android/play/core/hsdp/service/HsdpDeepLinkService;
    .registers 3
    .annotation build Landroidx/annotation/Keep;
    .end annotation

    const/4 v0, 0x0

    .line 2
    invoke-static {p0, p1, v0}, Lcom/google/android/play/core/hsdp/service/HsdpDeepLinkServiceFactory;->create(Landroid/app/Activity;ZZ)Lcom/google/android/play/core/hsdp/service/HsdpDeepLinkService;

    move-result-object p0

    return-object p0
.end method

.method public static create(Landroid/app/Activity;ZZ)Lcom/google/android/play/core/hsdp/service/HsdpDeepLinkService;
    .registers 3
    .annotation build Landroidx/annotation/Keep;
    .end annotation

    .line 3
    invoke-static {p0, p1, p2}, Lcom/google/android/play/core/hsdp/service/HsdpDeepLinkServiceFactory;->createInternal(Landroid/content/Context;ZZ)Lcom/google/android/play/core/hsdp/service/HsdpDeepLinkService;

    move-result-object p0

    return-object p0
.end method

.method public static create(Landroid/content/Context;)Lcom/google/android/play/core/hsdp/service/HsdpDeepLinkService;
    .registers 3
    .annotation build Landroidx/annotation/Keep;
    .end annotation

    const/4 v0, 0x0

    const/4 v1, 0x1

    .line 4
    invoke-static {p0, v0, v1}, Lcom/google/android/play/core/hsdp/service/HsdpDeepLinkServiceFactory;->createInternal(Landroid/content/Context;ZZ)Lcom/google/android/play/core/hsdp/service/HsdpDeepLinkService;

    move-result-object p0

    return-object p0
.end method

.method private static createHpoaServiceIntent(Landroid/content/Context;Z)Landroid/content/Intent;
    .registers 3

    if-eqz p1, :cond_12

    .line 1
    new-instance p1, Landroid/content/Intent;

    invoke-direct {p1}, Landroid/content/Intent;-><init>()V

    .line 2
    invoke-virtual {p0}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object p0

    const-string v0, "com.google.android.play.core.hsdp.testapp.FakeHpoaService"

    invoke-virtual {p1, p0, v0}, Landroid/content/Intent;->setClassName(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    move-result-object p0

    return-object p0

    :cond_12
    new-instance p0, Landroid/content/Intent;

    .line 3
    invoke-direct {p0}, Landroid/content/Intent;-><init>()V

    const-string p1, "com.android.vending"

    const-string v0, "com.google.android.finsky.inlinedetails.hpoa.service.HpoaService"

    invoke-virtual {p0, p1, v0}, Landroid/content/Intent;->setClassName(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    move-result-object p0

    return-object p0
.end method

.method public static createHsdpServiceIntent()Landroid/content/Intent;
    .registers 3

    .line 1
    new-instance v0, Landroid/content/Intent;

    invoke-direct {v0}, Landroid/content/Intent;-><init>()V

    const-string v1, "com.android.vending"

    const-string v2, "com.google.android.finsky.inlinedetails.hsdp.service.HsdpService"

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->setClassName(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    move-result-object v0

    return-object v0
.end method

.method private static createInternal(Landroid/content/Context;ZZ)Lcom/google/android/play/core/hsdp/service/HsdpDeepLinkService;
    .registers 14

    if-nez p2, :cond_f

    .line 1
    instance-of v0, p0, Landroid/app/Activity;

    if-eqz v0, :cond_7

    goto :goto_f

    :cond_7
    new-instance p0, Ljava/lang/IllegalArgumentException;

    const-string p1, "Context must be an Activity when using activity-based HSDP."

    .line 2
    invoke-direct {p0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0

    :cond_f
    :goto_f
    if-eqz p1, :cond_1e

    .line 3
    instance-of v0, p0, Landroid/app/Activity;

    if-eqz v0, :cond_16

    goto :goto_1e

    :cond_16
    new-instance p0, Ljava/lang/IllegalArgumentException;

    const-string p1, "Context must be an Activity when enabling loading panel."

    .line 4
    invoke-direct {p0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0

    .line 5
    :cond_1e
    :goto_1e
    invoke-static {}, Landroid/app/ActivityManager;->isRunningInTestHarness()Z

    move-result v0

    const/4 v1, 0x1

    if-nez v0, :cond_32

    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v2, 0x1d

    const/4 v3, 0x0

    if-lt v0, v2, :cond_34

    .line 6
    invoke-static {}, Lcom/google/android/play/core/hsdp/service/HsdpDeepLinkServiceFactory$$ExternalSyntheticApiModelOutline0;->m()Z

    move-result v0

    if-eqz v0, :cond_34

    :cond_32
    move v8, v1

    goto :goto_35

    :cond_34
    move v8, v3

    :goto_35
    new-instance v4, Lcom/google/android/play/core/hsdp/service/zzat;

    new-instance v0, Lcom/google/android/play/core/hsdp/service/zzaj;

    invoke-direct {v0, p0, v8}, Lcom/google/android/play/core/hsdp/service/zzaj;-><init>(Landroid/content/Context;Z)V

    .line 7
    invoke-static {v0}, Lcom/google/android/gms/internal/playcore_hsdp/zzj;->zza(Lcom/google/android/gms/internal/playcore_hsdp/zzg;)Lcom/google/android/gms/internal/playcore_hsdp/zzg;

    move-result-object v6

    new-instance v0, Lcom/google/android/play/core/hsdp/service/zzak;

    invoke-direct {v0, p0}, Lcom/google/android/play/core/hsdp/service/zzak;-><init>(Landroid/content/Context;)V

    .line 8
    invoke-static {v0}, Lcom/google/android/gms/internal/playcore_hsdp/zzj;->zza(Lcom/google/android/gms/internal/playcore_hsdp/zzg;)Lcom/google/android/gms/internal/playcore_hsdp/zzg;

    move-result-object v7

    move-object v5, p0

    move v10, p1

    move v9, p2

    invoke-direct/range {v4 .. v10}, Lcom/google/android/play/core/hsdp/service/zzat;-><init>(Landroid/content/Context;Lcom/google/android/gms/internal/playcore_hsdp/zzg;Lcom/google/android/gms/internal/playcore_hsdp/zzg;ZZZ)V

    return-object v4
.end method

.method public static synthetic lambda$createInternal$0(Landroid/content/Context;Z)Lcom/google/android/play/core/hsdp/service/zze;
    .registers 3

    .line 1
    invoke-static {p0, p1}, Lcom/google/android/play/core/hsdp/service/HsdpDeepLinkServiceFactory;->createHpoaServiceIntent(Landroid/content/Context;Z)Landroid/content/Intent;

    move-result-object p1

    check-cast p0, Landroid/app/Activity;

    new-instance v0, Lcom/google/android/play/core/hsdp/service/zzp;

    .line 2
    invoke-direct {v0, p1, p0}, Lcom/google/android/play/core/hsdp/service/zzp;-><init>(Landroid/content/Intent;Landroid/app/Activity;)V

    return-object v0
.end method

.method public static synthetic lambda$createInternal$1(Landroid/content/Context;)Lcom/google/android/play/core/hsdp/service/zzr;
    .registers 2

    .line 1
    invoke-static {}, Lcom/google/android/play/core/hsdp/service/HsdpDeepLinkServiceFactory;->createHsdpServiceIntent()Landroid/content/Intent;

    move-result-object v0

    invoke-static {v0, p0}, Lcom/google/android/play/core/hsdp/service/zzs;->zza(Landroid/content/Intent;Landroid/content/Context;)Lcom/google/android/play/core/hsdp/service/zzr;

    move-result-object p0

    return-object p0
.end method

###### Class com.google.android.play.core.hsdp.service.zzaj (com.google.android.play.core.hsdp.service.zzaj)
.class public final synthetic Lcom/google/android/play/core/hsdp/service/zzaj;
.super Ljava/lang/Object;
.source "com.google.android.play:hsdp@@2.0.1"

# interfaces
.implements Lcom/google/android/gms/internal/playcore_hsdp/zzg;


# instance fields
.field public final synthetic zza:Landroid/content/Context;

.field public final synthetic zzb:Z


# direct methods
.method public synthetic constructor <init>(Landroid/content/Context;Z)V
    .registers 3

    .line 0
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/google/android/play/core/hsdp/service/zzaj;->zza:Landroid/content/Context;

    iput-boolean p2, p0, Lcom/google/android/play/core/hsdp/service/zzaj;->zzb:Z

    return-void
.end method


# virtual methods
.method public final zza()Ljava/lang/Object;
    .registers 3

    .line 0
    iget-object v0, p0, Lcom/google/android/play/core/hsdp/service/zzaj;->zza:Landroid/content/Context;

    iget-boolean v1, p0, Lcom/google/android/play/core/hsdp/service/zzaj;->zzb:Z

    invoke-static {v0, v1}, Lcom/google/android/play/core/hsdp/service/HsdpDeepLinkServiceFactory;->lambda$createInternal$0(Landroid/content/Context;Z)Lcom/google/android/play/core/hsdp/service/zze;

    move-result-object v0

    return-object v0
.end method

###### Class com.google.android.play.core.hsdp.service.zzak (com.google.android.play.core.hsdp.service.zzak)
.class public final synthetic Lcom/google/android/play/core/hsdp/service/zzak;
.super Ljava/lang/Object;
.source "com.google.android.play:hsdp@@2.0.1"

# interfaces
.implements Lcom/google/android/gms/internal/playcore_hsdp/zzg;


# instance fields
.field public final synthetic zza:Landroid/content/Context;


# direct methods
.method public synthetic constructor <init>(Landroid/content/Context;)V
    .registers 2

    .line 0
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/google/android/play/core/hsdp/service/zzak;->zza:Landroid/content/Context;

    return-void
.end method


# virtual methods
.method public final zza()Ljava/lang/Object;
    .registers 2

    .line 0
    iget-object v0, p0, Lcom/google/android/play/core/hsdp/service/zzak;->zza:Landroid/content/Context;

    invoke-static {v0}, Lcom/google/android/play/core/hsdp/service/HsdpDeepLinkServiceFactory;->lambda$createInternal$1(Landroid/content/Context;)Lcom/google/android/play/core/hsdp/service/zzr;

    move-result-object v0

    return-object v0
.end method
