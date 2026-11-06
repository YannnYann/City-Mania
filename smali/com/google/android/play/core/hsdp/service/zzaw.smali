###### Class com.google.android.play.core.hsdp.service.zzaw (com.google.android.play.core.hsdp.service.zzaw)
.class public final Lcom/google/android/play/core/hsdp/service/zzaw;
.super Ljava/lang/Object;
.source "com.google.android.play:hsdp@@2.0.1"

# interfaces
.implements Landroid/view/View$OnClickListener;


# instance fields
.field public final synthetic zza:Lcom/google/android/play/core/hsdp/service/zzax;


# direct methods
.method public constructor <init>(Lcom/google/android/play/core/hsdp/service/zzax;)V
    .registers 2

    .line 1
    invoke-static {p1}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    iput-object p1, p0, Lcom/google/android/play/core/hsdp/service/zzaw;->zza:Lcom/google/android/play/core/hsdp/service/zzax;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onClick(Landroid/view/View;)V
    .registers 2

    .line 1
    iget-object p1, p0, Lcom/google/android/play/core/hsdp/service/zzaw;->zza:Lcom/google/android/play/core/hsdp/service/zzax;

    invoke-virtual {p1}, Lcom/google/android/play/core/hsdp/service/zzax;->zzb()V

    return-void
.end method
