###### Class com.google.android.ump.ConsentRequestParameters (com.google.android.ump.ConsentRequestParameters)
.class public Lcom/google/android/ump/ConsentRequestParameters;
.super Ljava/lang/Object;
.source "com.google.android.ump:user-messaging-platform@@4.0.0"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/google/android/ump/ConsentRequestParameters$Builder;
    }
.end annotation


# instance fields
.field public final zza:Z

.field public final zzb:Ljava/lang/String;

.field public final zzc:Lcom/google/android/ump/ConsentDebugSettings;

.field public final zzd:Ljava/lang/String;


# direct methods
.method public synthetic constructor <init>(Lcom/google/android/ump/ConsentRequestParameters$Builder;Lcom/google/android/ump/zzb;)V
    .registers 3

    .line 0
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    invoke-static {p1}, Lcom/google/android/ump/ConsentRequestParameters$Builder;->zzd(Lcom/google/android/ump/ConsentRequestParameters$Builder;)Z

    move-result p2

    iput-boolean p2, p0, Lcom/google/android/ump/ConsentRequestParameters;->zza:Z

    invoke-static {p1}, Lcom/google/android/ump/ConsentRequestParameters$Builder;->zzb(Lcom/google/android/ump/ConsentRequestParameters$Builder;)Ljava/lang/String;

    move-result-object p2

    iput-object p2, p0, Lcom/google/android/ump/ConsentRequestParameters;->zzb:Ljava/lang/String;

    invoke-static {p1}, Lcom/google/android/ump/ConsentRequestParameters$Builder;->zza(Lcom/google/android/ump/ConsentRequestParameters$Builder;)Lcom/google/android/ump/ConsentDebugSettings;

    move-result-object p2

    iput-object p2, p0, Lcom/google/android/ump/ConsentRequestParameters;->zzc:Lcom/google/android/ump/ConsentDebugSettings;

    invoke-static {p1}, Lcom/google/android/ump/ConsentRequestParameters$Builder;->zzc(Lcom/google/android/ump/ConsentRequestParameters$Builder;)Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Lcom/google/android/ump/ConsentRequestParameters;->zzd:Ljava/lang/String;

    return-void
.end method


# virtual methods
.method public getConsentDebugSettings()Lcom/google/android/ump/ConsentDebugSettings;
    .registers 2
    .annotation build Landroidx/annotation/RecentlyNullable;
    .end annotation

    .line 0
    iget-object v0, p0, Lcom/google/android/ump/ConsentRequestParameters;->zzc:Lcom/google/android/ump/ConsentDebugSettings;

    return-object v0
.end method

.method public getConsentSyncId()Ljava/lang/String;
    .registers 2
    .annotation build Landroidx/annotation/RecentlyNullable;
    .end annotation

    .line 0
    iget-object v0, p0, Lcom/google/android/ump/ConsentRequestParameters;->zzd:Ljava/lang/String;

    return-object v0
.end method

.method public isTagForUnderAgeOfConsent()Z
    .registers 2

    .line 0
    iget-boolean v0, p0, Lcom/google/android/ump/ConsentRequestParameters;->zza:Z

    return v0
.end method

.method public final zza()Ljava/lang/String;
    .registers 2
    .annotation build Landroidx/annotation/RecentlyNullable;
    .end annotation

    .line 0
    iget-object v0, p0, Lcom/google/android/ump/ConsentRequestParameters;->zzb:Ljava/lang/String;

    return-object v0
.end method

###### Class com.google.android.ump.ConsentRequestParameters.Builder (com.google.android.ump.ConsentRequestParameters$Builder)
.class public final Lcom/google/android/ump/ConsentRequestParameters$Builder;
.super Ljava/lang/Object;
.source "com.google.android.ump:user-messaging-platform@@4.0.0"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/android/ump/ConsentRequestParameters;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "Builder"
.end annotation


# instance fields
.field public zza:Z

.field public zzb:Ljava/lang/String;

.field public zzc:Lcom/google/android/ump/ConsentDebugSettings;

.field public zzd:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .registers 1

    .line 0
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static bridge synthetic zza(Lcom/google/android/ump/ConsentRequestParameters$Builder;)Lcom/google/android/ump/ConsentDebugSettings;
    .registers 1

    .line 0
    iget-object p0, p0, Lcom/google/android/ump/ConsentRequestParameters$Builder;->zzc:Lcom/google/android/ump/ConsentDebugSettings;

    return-object p0
.end method

.method public static bridge synthetic zzb(Lcom/google/android/ump/ConsentRequestParameters$Builder;)Ljava/lang/String;
    .registers 1

    .line 0
    iget-object p0, p0, Lcom/google/android/ump/ConsentRequestParameters$Builder;->zzb:Ljava/lang/String;

    return-object p0
.end method

.method public static bridge synthetic zzc(Lcom/google/android/ump/ConsentRequestParameters$Builder;)Ljava/lang/String;
    .registers 1

    .line 0
    iget-object p0, p0, Lcom/google/android/ump/ConsentRequestParameters$Builder;->zzd:Ljava/lang/String;

    return-object p0
.end method

.method public static bridge synthetic zzd(Lcom/google/android/ump/ConsentRequestParameters$Builder;)Z
    .registers 1

    .line 0
    iget-boolean p0, p0, Lcom/google/android/ump/ConsentRequestParameters$Builder;->zza:Z

    return p0
.end method


# virtual methods
.method public build()Lcom/google/android/ump/ConsentRequestParameters;
    .registers 3
    .annotation build Landroidx/annotation/RecentlyNonNull;
    .end annotation

    .line 0
    new-instance v0, Lcom/google/android/ump/ConsentRequestParameters;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, Lcom/google/android/ump/ConsentRequestParameters;-><init>(Lcom/google/android/ump/ConsentRequestParameters$Builder;Lcom/google/android/ump/zzb;)V

    return-object v0
.end method
