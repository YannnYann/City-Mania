###### Class com.google.android.gms.ads.mediation.MediationAdapter (com.google.android.gms.ads.mediation.MediationAdapter)
.class public interface abstract Lcom/google/android/gms/ads/mediation/MediationAdapter;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/google/android/gms/ads/mediation/MediationExtrasReceiver;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/google/android/gms/ads/mediation/MediationAdapter$AdapterInfoBuilder;,
        Lcom/google/android/gms/ads/mediation/MediationAdapter$Companion;
    }
.end annotation


# static fields
.field public static final CAPABILITIES_DELAYED_IMPRESSIONS:I = 0x1

.field public static final CAPABILITIES_FLOOR_CPM:I = 0x2

.field public static final CAPABILITIES_RETURNS_CPM:I = 0x4

.field public static final Companion:Lcom/google/android/gms/ads/mediation/MediationAdapter$Companion;


# direct methods
.method static constructor <clinit>()V
    .registers 1

    .line 0
    sget-object v0, Lcom/google/android/gms/ads/mediation/MediationAdapter$Companion;->a:Lcom/google/android/gms/ads/mediation/MediationAdapter$Companion;

    sput-object v0, Lcom/google/android/gms/ads/mediation/MediationAdapter;->Companion:Lcom/google/android/gms/ads/mediation/MediationAdapter$Companion;

    return-void
.end method


# virtual methods
.method public abstract onDestroy()V
.end method

.method public abstract onPause()V
.end method

.method public abstract onResume()V
.end method

###### Class com.google.android.gms.ads.mediation.MediationAdapter.AdapterInfoBuilder (com.google.android.gms.ads.mediation.MediationAdapter$AdapterInfoBuilder)
.class public final Lcom/google/android/gms/ads/mediation/MediationAdapter$AdapterInfoBuilder;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/android/gms/ads/mediation/MediationAdapter;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "AdapterInfoBuilder"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/google/android/gms/ads/mediation/MediationAdapter$AdapterInfoBuilder$Companion;
    }
.end annotation


# static fields
.field public static final Companion:Lcom/google/android/gms/ads/mediation/MediationAdapter$AdapterInfoBuilder$Companion;


# instance fields
.field private a:I


# direct methods
.method static constructor <clinit>()V
    .registers 2

    .line 0
    new-instance v0, Lcom/google/android/gms/ads/mediation/MediationAdapter$AdapterInfoBuilder$Companion;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lcom/google/android/gms/ads/mediation/MediationAdapter$AdapterInfoBuilder$Companion;-><init>(I)V

    sput-object v0, Lcom/google/android/gms/ads/mediation/MediationAdapter$AdapterInfoBuilder;->Companion:Lcom/google/android/gms/ads/mediation/MediationAdapter$AdapterInfoBuilder$Companion;

    return-void
.end method

.method public constructor <init>()V
    .registers 1

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final build()Landroid/os/Bundle;
    .registers 4

    .line 1
    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    iget v1, p0, Lcom/google/android/gms/ads/mediation/MediationAdapter$AdapterInfoBuilder;->a:I

    const-string v2, "capabilities"

    invoke-virtual {v0, v2, v1}, Landroid/os/BaseBundle;->putInt(Ljava/lang/String;I)V

    return-object v0
.end method

.method public final setCapabilities(I)Lcom/google/android/gms/ads/mediation/MediationAdapter$AdapterInfoBuilder;
    .registers 2

    .line 1
    iput p1, p0, Lcom/google/android/gms/ads/mediation/MediationAdapter$AdapterInfoBuilder;->a:I

    return-object p0
.end method

###### Class com.google.android.gms.ads.mediation.MediationAdapter.AdapterInfoBuilder.Companion (com.google.android.gms.ads.mediation.MediationAdapter$AdapterInfoBuilder$Companion)
.class public final Lcom/google/android/gms/ads/mediation/MediationAdapter$AdapterInfoBuilder$Companion;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/android/gms/ads/mediation/MediationAdapter$AdapterInfoBuilder;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "Companion"
.end annotation


# direct methods
.method private constructor <init>()V
    .registers 1

    .line 2
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public synthetic constructor <init>(I)V
    .registers 2

    .line 1
    invoke-direct {p0}, Lcom/google/android/gms/ads/mediation/MediationAdapter$AdapterInfoBuilder$Companion;-><init>()V

    return-void
.end method

###### Class com.google.android.gms.ads.mediation.MediationAdapter.Companion (com.google.android.gms.ads.mediation.MediationAdapter$Companion)
.class public final Lcom/google/android/gms/ads/mediation/MediationAdapter$Companion;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/android/gms/ads/mediation/MediationAdapter;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "Companion"
.end annotation


# static fields
.field public static final CAPABILITIES_DELAYED_IMPRESSIONS:I = 0x1

.field public static final CAPABILITIES_FLOOR_CPM:I = 0x2

.field public static final CAPABILITIES_RETURNS_CPM:I = 0x4

.field static final synthetic a:Lcom/google/android/gms/ads/mediation/MediationAdapter$Companion;


# direct methods
.method static constructor <clinit>()V
    .registers 1

    .line 0
    new-instance v0, Lcom/google/android/gms/ads/mediation/MediationAdapter$Companion;

    invoke-direct {v0}, Lcom/google/android/gms/ads/mediation/MediationAdapter$Companion;-><init>()V

    sput-object v0, Lcom/google/android/gms/ads/mediation/MediationAdapter$Companion;->a:Lcom/google/android/gms/ads/mediation/MediationAdapter$Companion;

    return-void
.end method

.method private constructor <init>()V
    .registers 1

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method
