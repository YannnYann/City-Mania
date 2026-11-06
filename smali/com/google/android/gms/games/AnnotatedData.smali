###### Class com.google.android.gms.games.AnnotatedData (com.google.android.gms.games.AnnotatedData)
.class public Lcom/google/android/gms/games/AnnotatedData;
.super Ljava/lang/Object;
.source "com.google.android.gms:play-services-games-v2@@22.1.0"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T:",
        "Ljava/lang/Object;",
        ">",
        "Ljava/lang/Object;"
    }
.end annotation


# instance fields
.field public final zza:Ljava/lang/Object;

.field public final zzb:Z


# direct methods
.method public constructor <init>(Ljava/lang/Object;Z)V
    .registers 3

    .line 0
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/google/android/gms/games/AnnotatedData;->zza:Ljava/lang/Object;

    iput-boolean p2, p0, Lcom/google/android/gms/games/AnnotatedData;->zzb:Z

    return-void
.end method


# virtual methods
.method public get()Ljava/lang/Object;
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()TT;"
        }
    .end annotation

    .line 0
    iget-object v0, p0, Lcom/google/android/gms/games/AnnotatedData;->zza:Ljava/lang/Object;

    return-object v0
.end method
