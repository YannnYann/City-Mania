###### Class com.google.android.gms.games.PageDirection (com.google.android.gms.games.PageDirection)
.class public final Lcom/google/android/gms/games/PageDirection;
.super Ljava/lang/Object;
.source "com.google.android.gms:play-services-games-v2@@22.1.0"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/google/android/gms/games/PageDirection$Direction;
    }
.end annotation


# direct methods
.method private constructor <init>()V
    .registers 3

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Ljava/lang/AssertionError;

    const-string v1, "Uninstantiable"

    invoke-direct {v0, v1}, Ljava/lang/AssertionError;-><init>(Ljava/lang/Object;)V

    throw v0
.end method

###### Class com.google.android.gms.games.PageDirection.Direction (com.google.android.gms.games.PageDirection$Direction)
.class public interface abstract annotation Lcom/google/android/gms/games/PageDirection$Direction;
.super Ljava/lang/Object;
.source "com.google.android.gms:play-services-games-v2@@22.1.0"

# interfaces
.implements Ljava/lang/annotation/Annotation;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/android/gms/games/PageDirection;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2609
    name = "Direction"
.end annotation

.annotation runtime Ljava/lang/annotation/Retention;
    value = .enum Ljava/lang/annotation/RetentionPolicy;->SOURCE:Ljava/lang/annotation/RetentionPolicy;
.end annotation
