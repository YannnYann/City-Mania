###### Class com.google.android.gms.location.Geofence (com.google.android.gms.location.Geofence)
.class public interface abstract Lcom/google/android/gms/location/Geofence;
.super Ljava/lang/Object;
.source "com.google.android.gms:play-services-location@@18.0.0"


# annotations
.annotation build Lcom/google/android/gms/common/util/VisibleForTesting;
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/google/android/gms/location/Geofence$Builder;,
        Lcom/google/android/gms/location/Geofence$TransitionTypes;,
        Lcom/google/android/gms/location/Geofence$GeofenceTransition;
    }
.end annotation

###### Class com.google.android.gms.location.Geofence.Builder (com.google.android.gms.location.Geofence$Builder)
.class public final Lcom/google/android/gms/location/Geofence$Builder;
.super Ljava/lang/Object;
.source "com.google.android.gms:play-services-location@@18.0.0"


# annotations
.annotation build Lcom/google/android/gms/common/util/VisibleForTesting;
.end annotation

.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/android/gms/location/Geofence;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "Builder"
.end annotation


# instance fields
.field public zza:Ljava/lang/String;

.field public zzb:I
    .annotation build Lcom/google/android/gms/location/Geofence$TransitionTypes;
    .end annotation
.end field

.field public zzc:J

.field public zzd:S

.field public zzh:I

.field public zzi:I


# direct methods
.method public constructor <init>()V
    .registers 4

    .line 0
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/google/android/gms/location/Geofence$Builder;->zza:Ljava/lang/String;

    const/4 v0, 0x0

    iput v0, p0, Lcom/google/android/gms/location/Geofence$Builder;->zzb:I

    const-wide/high16 v1, -0x8000000000000000L

    iput-wide v1, p0, Lcom/google/android/gms/location/Geofence$Builder;->zzc:J

    const/4 v1, -0x1

    iput-short v1, p0, Lcom/google/android/gms/location/Geofence$Builder;->zzd:S

    iput v0, p0, Lcom/google/android/gms/location/Geofence$Builder;->zzh:I

    iput v1, p0, Lcom/google/android/gms/location/Geofence$Builder;->zzi:I

    return-void
.end method

###### Class com.google.android.gms.location.Geofence.GeofenceTransition (com.google.android.gms.location.Geofence$GeofenceTransition)
.class public interface abstract annotation Lcom/google/android/gms/location/Geofence$GeofenceTransition;
.super Ljava/lang/Object;
.source "com.google.android.gms:play-services-location@@18.0.0"

# interfaces
.implements Ljava/lang/annotation/Annotation;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/android/gms/location/Geofence;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2609
    name = "GeofenceTransition"
.end annotation

###### Class com.google.android.gms.location.Geofence.TransitionTypes (com.google.android.gms.location.Geofence$TransitionTypes)
.class public interface abstract annotation Lcom/google/android/gms/location/Geofence$TransitionTypes;
.super Ljava/lang/Object;
.source "com.google.android.gms:play-services-location@@18.0.0"

# interfaces
.implements Ljava/lang/annotation/Annotation;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/android/gms/location/Geofence;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2609
    name = "TransitionTypes"
.end annotation
