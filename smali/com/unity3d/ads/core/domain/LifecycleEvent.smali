###### Class com.unity3d.ads.core.domain.LifecycleEvent (com.unity3d.ads.core.domain.LifecycleEvent)
.class public interface abstract Lcom/unity3d/ads/core/domain/LifecycleEvent;
.super Ljava/lang/Object;
.source "AndroidGetLifecycleFlow.kt"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/unity3d/ads/core/domain/LifecycleEvent$Created;,
        Lcom/unity3d/ads/core/domain/LifecycleEvent$Destroyed;,
        Lcom/unity3d/ads/core/domain/LifecycleEvent$Paused;,
        Lcom/unity3d/ads/core/domain/LifecycleEvent$Resumed;,
        Lcom/unity3d/ads/core/domain/LifecycleEvent$SaveInstanceState;,
        Lcom/unity3d/ads/core/domain/LifecycleEvent$Started;,
        Lcom/unity3d/ads/core/domain/LifecycleEvent$Stopped;
    }
.end annotation


# virtual methods
.method public abstract getActivity()Ljava/lang/ref/WeakReference;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/lang/ref/WeakReference<",
            "Landroid/app/Activity;",
            ">;"
        }
    .end annotation
.end method

###### Class com.unity3d.ads.core.domain.LifecycleEvent.Created (com.unity3d.ads.core.domain.LifecycleEvent$Created)
.class public final Lcom/unity3d/ads/core/domain/LifecycleEvent$Created;
.super Ljava/lang/Object;
.source "AndroidGetLifecycleFlow.kt"

# interfaces
.implements Lcom/unity3d/ads/core/domain/LifecycleEvent;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/unity3d/ads/core/domain/LifecycleEvent;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "Created"
.end annotation


# instance fields
.field private final activity:Ljava/lang/ref/WeakReference;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/ref/WeakReference<",
            "Landroid/app/Activity;",
            ">;"
        }
    .end annotation
.end field

.field private final bundle:Landroid/os/Bundle;


# direct methods
.method public constructor <init>(Ljava/lang/ref/WeakReference;Landroid/os/Bundle;)V
    .registers 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/ref/WeakReference<",
            "Landroid/app/Activity;",
            ">;",
            "Landroid/os/Bundle;",
            ")V"
        }
    .end annotation

    const-string v0, "activity"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 17
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/unity3d/ads/core/domain/LifecycleEvent$Created;->activity:Ljava/lang/ref/WeakReference;

    iput-object p2, p0, Lcom/unity3d/ads/core/domain/LifecycleEvent$Created;->bundle:Landroid/os/Bundle;

    return-void
.end method

.method public static synthetic copy$default(Lcom/unity3d/ads/core/domain/LifecycleEvent$Created;Ljava/lang/ref/WeakReference;Landroid/os/Bundle;ILjava/lang/Object;)Lcom/unity3d/ads/core/domain/LifecycleEvent$Created;
    .registers 5

    .line 0
    and-int/lit8 p4, p3, 0x1

    if-eqz p4, :cond_6

    iget-object p1, p0, Lcom/unity3d/ads/core/domain/LifecycleEvent$Created;->activity:Ljava/lang/ref/WeakReference;

    :cond_6
    and-int/lit8 p3, p3, 0x2

    if-eqz p3, :cond_c

    iget-object p2, p0, Lcom/unity3d/ads/core/domain/LifecycleEvent$Created;->bundle:Landroid/os/Bundle;

    :cond_c
    invoke-virtual {p0, p1, p2}, Lcom/unity3d/ads/core/domain/LifecycleEvent$Created;->copy(Ljava/lang/ref/WeakReference;Landroid/os/Bundle;)Lcom/unity3d/ads/core/domain/LifecycleEvent$Created;

    move-result-object p0

    return-object p0
.end method


# virtual methods
.method public final component1()Ljava/lang/ref/WeakReference;
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/lang/ref/WeakReference<",
            "Landroid/app/Activity;",
            ">;"
        }
    .end annotation

    .line 0
    iget-object v0, p0, Lcom/unity3d/ads/core/domain/LifecycleEvent$Created;->activity:Ljava/lang/ref/WeakReference;

    return-object v0
.end method

.method public final component2()Landroid/os/Bundle;
    .registers 2

    .line 0
    iget-object v0, p0, Lcom/unity3d/ads/core/domain/LifecycleEvent$Created;->bundle:Landroid/os/Bundle;

    return-object v0
.end method

.method public final copy(Ljava/lang/ref/WeakReference;Landroid/os/Bundle;)Lcom/unity3d/ads/core/domain/LifecycleEvent$Created;
    .registers 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/ref/WeakReference<",
            "Landroid/app/Activity;",
            ">;",
            "Landroid/os/Bundle;",
            ")",
            "Lcom/unity3d/ads/core/domain/LifecycleEvent$Created;"
        }
    .end annotation

    .line 0
    const-string v0, "activity"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    new-instance v0, Lcom/unity3d/ads/core/domain/LifecycleEvent$Created;

    invoke-direct {v0, p1, p2}, Lcom/unity3d/ads/core/domain/LifecycleEvent$Created;-><init>(Ljava/lang/ref/WeakReference;Landroid/os/Bundle;)V

    return-object v0
.end method

.method public equals(Ljava/lang/Object;)Z
    .registers 6

    .line 0
    const/4 v0, 0x1

    if-ne p0, p1, :cond_4

    return v0

    :cond_4
    instance-of v1, p1, Lcom/unity3d/ads/core/domain/LifecycleEvent$Created;

    const/4 v2, 0x0

    if-nez v1, :cond_a

    return v2

    :cond_a
    check-cast p1, Lcom/unity3d/ads/core/domain/LifecycleEvent$Created;

    iget-object v1, p0, Lcom/unity3d/ads/core/domain/LifecycleEvent$Created;->activity:Ljava/lang/ref/WeakReference;

    iget-object v3, p1, Lcom/unity3d/ads/core/domain/LifecycleEvent$Created;->activity:Ljava/lang/ref/WeakReference;

    invoke-static {v1, v3}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_17

    return v2

    :cond_17
    iget-object v1, p0, Lcom/unity3d/ads/core/domain/LifecycleEvent$Created;->bundle:Landroid/os/Bundle;

    iget-object p1, p1, Lcom/unity3d/ads/core/domain/LifecycleEvent$Created;->bundle:Landroid/os/Bundle;

    invoke-static {v1, p1}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result p1

    if-nez p1, :cond_22

    return v2

    :cond_22
    return v0
.end method

.method public getActivity()Ljava/lang/ref/WeakReference;
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/lang/ref/WeakReference<",
            "Landroid/app/Activity;",
            ">;"
        }
    .end annotation

    .line 17
    iget-object v0, p0, Lcom/unity3d/ads/core/domain/LifecycleEvent$Created;->activity:Ljava/lang/ref/WeakReference;

    return-object v0
.end method

.method public final getBundle()Landroid/os/Bundle;
    .registers 2

    .line 17
    iget-object v0, p0, Lcom/unity3d/ads/core/domain/LifecycleEvent$Created;->bundle:Landroid/os/Bundle;

    return-object v0
.end method

.method public hashCode()I
    .registers 3

    .line 0
    iget-object v0, p0, Lcom/unity3d/ads/core/domain/LifecycleEvent$Created;->activity:Ljava/lang/ref/WeakReference;

    invoke-virtual {v0}, Ljava/lang/Object;->hashCode()I

    move-result v0

    mul-int/lit8 v0, v0, 0x1f

    iget-object v1, p0, Lcom/unity3d/ads/core/domain/LifecycleEvent$Created;->bundle:Landroid/os/Bundle;

    if-nez v1, :cond_e

    const/4 v1, 0x0

    goto :goto_12

    :cond_e
    invoke-virtual {v1}, Ljava/lang/Object;->hashCode()I

    move-result v1

    :goto_12
    add-int/2addr v0, v1

    return v0
.end method

.method public toString()Ljava/lang/String;
    .registers 3

    .line 0
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Created(activity="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/unity3d/ads/core/domain/LifecycleEvent$Created;->activity:Ljava/lang/ref/WeakReference;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, ", bundle="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/unity3d/ads/core/domain/LifecycleEvent$Created;->bundle:Landroid/os/Bundle;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const/16 v1, 0x29

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

###### Class com.unity3d.ads.core.domain.LifecycleEvent.Destroyed (com.unity3d.ads.core.domain.LifecycleEvent$Destroyed)
.class public final Lcom/unity3d/ads/core/domain/LifecycleEvent$Destroyed;
.super Ljava/lang/Object;
.source "AndroidGetLifecycleFlow.kt"

# interfaces
.implements Lcom/unity3d/ads/core/domain/LifecycleEvent;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/unity3d/ads/core/domain/LifecycleEvent;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "Destroyed"
.end annotation


# instance fields
.field private final activity:Ljava/lang/ref/WeakReference;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/ref/WeakReference<",
            "Landroid/app/Activity;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Ljava/lang/ref/WeakReference;)V
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/ref/WeakReference<",
            "Landroid/app/Activity;",
            ">;)V"
        }
    .end annotation

    const-string v0, "activity"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 23
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/unity3d/ads/core/domain/LifecycleEvent$Destroyed;->activity:Ljava/lang/ref/WeakReference;

    return-void
.end method

.method public static synthetic copy$default(Lcom/unity3d/ads/core/domain/LifecycleEvent$Destroyed;Ljava/lang/ref/WeakReference;ILjava/lang/Object;)Lcom/unity3d/ads/core/domain/LifecycleEvent$Destroyed;
    .registers 4

    .line 0
    and-int/lit8 p2, p2, 0x1

    if-eqz p2, :cond_6

    iget-object p1, p0, Lcom/unity3d/ads/core/domain/LifecycleEvent$Destroyed;->activity:Ljava/lang/ref/WeakReference;

    :cond_6
    invoke-virtual {p0, p1}, Lcom/unity3d/ads/core/domain/LifecycleEvent$Destroyed;->copy(Ljava/lang/ref/WeakReference;)Lcom/unity3d/ads/core/domain/LifecycleEvent$Destroyed;

    move-result-object p0

    return-object p0
.end method


# virtual methods
.method public final component1()Ljava/lang/ref/WeakReference;
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/lang/ref/WeakReference<",
            "Landroid/app/Activity;",
            ">;"
        }
    .end annotation

    .line 0
    iget-object v0, p0, Lcom/unity3d/ads/core/domain/LifecycleEvent$Destroyed;->activity:Ljava/lang/ref/WeakReference;

    return-object v0
.end method

.method public final copy(Ljava/lang/ref/WeakReference;)Lcom/unity3d/ads/core/domain/LifecycleEvent$Destroyed;
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/ref/WeakReference<",
            "Landroid/app/Activity;",
            ">;)",
            "Lcom/unity3d/ads/core/domain/LifecycleEvent$Destroyed;"
        }
    .end annotation

    .line 0
    const-string v0, "activity"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    new-instance v0, Lcom/unity3d/ads/core/domain/LifecycleEvent$Destroyed;

    invoke-direct {v0, p1}, Lcom/unity3d/ads/core/domain/LifecycleEvent$Destroyed;-><init>(Ljava/lang/ref/WeakReference;)V

    return-object v0
.end method

.method public equals(Ljava/lang/Object;)Z
    .registers 5

    .line 0
    const/4 v0, 0x1

    if-ne p0, p1, :cond_4

    return v0

    :cond_4
    instance-of v1, p1, Lcom/unity3d/ads/core/domain/LifecycleEvent$Destroyed;

    const/4 v2, 0x0

    if-nez v1, :cond_a

    return v2

    :cond_a
    check-cast p1, Lcom/unity3d/ads/core/domain/LifecycleEvent$Destroyed;

    iget-object v1, p0, Lcom/unity3d/ads/core/domain/LifecycleEvent$Destroyed;->activity:Ljava/lang/ref/WeakReference;

    iget-object p1, p1, Lcom/unity3d/ads/core/domain/LifecycleEvent$Destroyed;->activity:Ljava/lang/ref/WeakReference;

    invoke-static {v1, p1}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result p1

    if-nez p1, :cond_17

    return v2

    :cond_17
    return v0
.end method

.method public getActivity()Ljava/lang/ref/WeakReference;
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/lang/ref/WeakReference<",
            "Landroid/app/Activity;",
            ">;"
        }
    .end annotation

    .line 23
    iget-object v0, p0, Lcom/unity3d/ads/core/domain/LifecycleEvent$Destroyed;->activity:Ljava/lang/ref/WeakReference;

    return-object v0
.end method

.method public hashCode()I
    .registers 2

    .line 0
    iget-object v0, p0, Lcom/unity3d/ads/core/domain/LifecycleEvent$Destroyed;->activity:Ljava/lang/ref/WeakReference;

    invoke-virtual {v0}, Ljava/lang/Object;->hashCode()I

    move-result v0

    return v0
.end method

.method public toString()Ljava/lang/String;
    .registers 3

    .line 0
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Destroyed(activity="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/unity3d/ads/core/domain/LifecycleEvent$Destroyed;->activity:Ljava/lang/ref/WeakReference;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const/16 v1, 0x29

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

###### Class com.unity3d.ads.core.domain.LifecycleEvent.Paused (com.unity3d.ads.core.domain.LifecycleEvent$Paused)
.class public final Lcom/unity3d/ads/core/domain/LifecycleEvent$Paused;
.super Ljava/lang/Object;
.source "AndroidGetLifecycleFlow.kt"

# interfaces
.implements Lcom/unity3d/ads/core/domain/LifecycleEvent;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/unity3d/ads/core/domain/LifecycleEvent;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "Paused"
.end annotation


# instance fields
.field private final activity:Ljava/lang/ref/WeakReference;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/ref/WeakReference<",
            "Landroid/app/Activity;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Ljava/lang/ref/WeakReference;)V
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/ref/WeakReference<",
            "Landroid/app/Activity;",
            ">;)V"
        }
    .end annotation

    const-string v0, "activity"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 20
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/unity3d/ads/core/domain/LifecycleEvent$Paused;->activity:Ljava/lang/ref/WeakReference;

    return-void
.end method

.method public static synthetic copy$default(Lcom/unity3d/ads/core/domain/LifecycleEvent$Paused;Ljava/lang/ref/WeakReference;ILjava/lang/Object;)Lcom/unity3d/ads/core/domain/LifecycleEvent$Paused;
    .registers 4

    .line 0
    and-int/lit8 p2, p2, 0x1

    if-eqz p2, :cond_6

    iget-object p1, p0, Lcom/unity3d/ads/core/domain/LifecycleEvent$Paused;->activity:Ljava/lang/ref/WeakReference;

    :cond_6
    invoke-virtual {p0, p1}, Lcom/unity3d/ads/core/domain/LifecycleEvent$Paused;->copy(Ljava/lang/ref/WeakReference;)Lcom/unity3d/ads/core/domain/LifecycleEvent$Paused;

    move-result-object p0

    return-object p0
.end method


# virtual methods
.method public final component1()Ljava/lang/ref/WeakReference;
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/lang/ref/WeakReference<",
            "Landroid/app/Activity;",
            ">;"
        }
    .end annotation

    .line 0
    iget-object v0, p0, Lcom/unity3d/ads/core/domain/LifecycleEvent$Paused;->activity:Ljava/lang/ref/WeakReference;

    return-object v0
.end method

.method public final copy(Ljava/lang/ref/WeakReference;)Lcom/unity3d/ads/core/domain/LifecycleEvent$Paused;
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/ref/WeakReference<",
            "Landroid/app/Activity;",
            ">;)",
            "Lcom/unity3d/ads/core/domain/LifecycleEvent$Paused;"
        }
    .end annotation

    .line 0
    const-string v0, "activity"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    new-instance v0, Lcom/unity3d/ads/core/domain/LifecycleEvent$Paused;

    invoke-direct {v0, p1}, Lcom/unity3d/ads/core/domain/LifecycleEvent$Paused;-><init>(Ljava/lang/ref/WeakReference;)V

    return-object v0
.end method

.method public equals(Ljava/lang/Object;)Z
    .registers 5

    .line 0
    const/4 v0, 0x1

    if-ne p0, p1, :cond_4

    return v0

    :cond_4
    instance-of v1, p1, Lcom/unity3d/ads/core/domain/LifecycleEvent$Paused;

    const/4 v2, 0x0

    if-nez v1, :cond_a

    return v2

    :cond_a
    check-cast p1, Lcom/unity3d/ads/core/domain/LifecycleEvent$Paused;

    iget-object v1, p0, Lcom/unity3d/ads/core/domain/LifecycleEvent$Paused;->activity:Ljava/lang/ref/WeakReference;

    iget-object p1, p1, Lcom/unity3d/ads/core/domain/LifecycleEvent$Paused;->activity:Ljava/lang/ref/WeakReference;

    invoke-static {v1, p1}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result p1

    if-nez p1, :cond_17

    return v2

    :cond_17
    return v0
.end method

.method public getActivity()Ljava/lang/ref/WeakReference;
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/lang/ref/WeakReference<",
            "Landroid/app/Activity;",
            ">;"
        }
    .end annotation

    .line 20
    iget-object v0, p0, Lcom/unity3d/ads/core/domain/LifecycleEvent$Paused;->activity:Ljava/lang/ref/WeakReference;

    return-object v0
.end method

.method public hashCode()I
    .registers 2

    .line 0
    iget-object v0, p0, Lcom/unity3d/ads/core/domain/LifecycleEvent$Paused;->activity:Ljava/lang/ref/WeakReference;

    invoke-virtual {v0}, Ljava/lang/Object;->hashCode()I

    move-result v0

    return v0
.end method

.method public toString()Ljava/lang/String;
    .registers 3

    .line 0
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Paused(activity="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/unity3d/ads/core/domain/LifecycleEvent$Paused;->activity:Ljava/lang/ref/WeakReference;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const/16 v1, 0x29

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

###### Class com.unity3d.ads.core.domain.LifecycleEvent.Resumed (com.unity3d.ads.core.domain.LifecycleEvent$Resumed)
.class public final Lcom/unity3d/ads/core/domain/LifecycleEvent$Resumed;
.super Ljava/lang/Object;
.source "AndroidGetLifecycleFlow.kt"

# interfaces
.implements Lcom/unity3d/ads/core/domain/LifecycleEvent;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/unity3d/ads/core/domain/LifecycleEvent;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "Resumed"
.end annotation


# instance fields
.field private final activity:Ljava/lang/ref/WeakReference;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/ref/WeakReference<",
            "Landroid/app/Activity;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Ljava/lang/ref/WeakReference;)V
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/ref/WeakReference<",
            "Landroid/app/Activity;",
            ">;)V"
        }
    .end annotation

    const-string v0, "activity"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 19
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/unity3d/ads/core/domain/LifecycleEvent$Resumed;->activity:Ljava/lang/ref/WeakReference;

    return-void
.end method

.method public static synthetic copy$default(Lcom/unity3d/ads/core/domain/LifecycleEvent$Resumed;Ljava/lang/ref/WeakReference;ILjava/lang/Object;)Lcom/unity3d/ads/core/domain/LifecycleEvent$Resumed;
    .registers 4

    .line 0
    and-int/lit8 p2, p2, 0x1

    if-eqz p2, :cond_6

    iget-object p1, p0, Lcom/unity3d/ads/core/domain/LifecycleEvent$Resumed;->activity:Ljava/lang/ref/WeakReference;

    :cond_6
    invoke-virtual {p0, p1}, Lcom/unity3d/ads/core/domain/LifecycleEvent$Resumed;->copy(Ljava/lang/ref/WeakReference;)Lcom/unity3d/ads/core/domain/LifecycleEvent$Resumed;

    move-result-object p0

    return-object p0
.end method


# virtual methods
.method public final component1()Ljava/lang/ref/WeakReference;
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/lang/ref/WeakReference<",
            "Landroid/app/Activity;",
            ">;"
        }
    .end annotation

    .line 0
    iget-object v0, p0, Lcom/unity3d/ads/core/domain/LifecycleEvent$Resumed;->activity:Ljava/lang/ref/WeakReference;

    return-object v0
.end method

.method public final copy(Ljava/lang/ref/WeakReference;)Lcom/unity3d/ads/core/domain/LifecycleEvent$Resumed;
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/ref/WeakReference<",
            "Landroid/app/Activity;",
            ">;)",
            "Lcom/unity3d/ads/core/domain/LifecycleEvent$Resumed;"
        }
    .end annotation

    .line 0
    const-string v0, "activity"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    new-instance v0, Lcom/unity3d/ads/core/domain/LifecycleEvent$Resumed;

    invoke-direct {v0, p1}, Lcom/unity3d/ads/core/domain/LifecycleEvent$Resumed;-><init>(Ljava/lang/ref/WeakReference;)V

    return-object v0
.end method

.method public equals(Ljava/lang/Object;)Z
    .registers 5

    .line 0
    const/4 v0, 0x1

    if-ne p0, p1, :cond_4

    return v0

    :cond_4
    instance-of v1, p1, Lcom/unity3d/ads/core/domain/LifecycleEvent$Resumed;

    const/4 v2, 0x0

    if-nez v1, :cond_a

    return v2

    :cond_a
    check-cast p1, Lcom/unity3d/ads/core/domain/LifecycleEvent$Resumed;

    iget-object v1, p0, Lcom/unity3d/ads/core/domain/LifecycleEvent$Resumed;->activity:Ljava/lang/ref/WeakReference;

    iget-object p1, p1, Lcom/unity3d/ads/core/domain/LifecycleEvent$Resumed;->activity:Ljava/lang/ref/WeakReference;

    invoke-static {v1, p1}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result p1

    if-nez p1, :cond_17

    return v2

    :cond_17
    return v0
.end method

.method public getActivity()Ljava/lang/ref/WeakReference;
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/lang/ref/WeakReference<",
            "Landroid/app/Activity;",
            ">;"
        }
    .end annotation

    .line 19
    iget-object v0, p0, Lcom/unity3d/ads/core/domain/LifecycleEvent$Resumed;->activity:Ljava/lang/ref/WeakReference;

    return-object v0
.end method

.method public hashCode()I
    .registers 2

    .line 0
    iget-object v0, p0, Lcom/unity3d/ads/core/domain/LifecycleEvent$Resumed;->activity:Ljava/lang/ref/WeakReference;

    invoke-virtual {v0}, Ljava/lang/Object;->hashCode()I

    move-result v0

    return v0
.end method

.method public toString()Ljava/lang/String;
    .registers 3

    .line 0
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Resumed(activity="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/unity3d/ads/core/domain/LifecycleEvent$Resumed;->activity:Ljava/lang/ref/WeakReference;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const/16 v1, 0x29

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

###### Class com.unity3d.ads.core.domain.LifecycleEvent.SaveInstanceState (com.unity3d.ads.core.domain.LifecycleEvent$SaveInstanceState)
.class public final Lcom/unity3d/ads/core/domain/LifecycleEvent$SaveInstanceState;
.super Ljava/lang/Object;
.source "AndroidGetLifecycleFlow.kt"

# interfaces
.implements Lcom/unity3d/ads/core/domain/LifecycleEvent;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/unity3d/ads/core/domain/LifecycleEvent;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "SaveInstanceState"
.end annotation


# instance fields
.field private final activity:Ljava/lang/ref/WeakReference;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/ref/WeakReference<",
            "Landroid/app/Activity;",
            ">;"
        }
    .end annotation
.end field

.field private final bundle:Landroid/os/Bundle;


# direct methods
.method public constructor <init>(Ljava/lang/ref/WeakReference;Landroid/os/Bundle;)V
    .registers 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/ref/WeakReference<",
            "Landroid/app/Activity;",
            ">;",
            "Landroid/os/Bundle;",
            ")V"
        }
    .end annotation

    const-string v0, "activity"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 22
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/unity3d/ads/core/domain/LifecycleEvent$SaveInstanceState;->activity:Ljava/lang/ref/WeakReference;

    iput-object p2, p0, Lcom/unity3d/ads/core/domain/LifecycleEvent$SaveInstanceState;->bundle:Landroid/os/Bundle;

    return-void
.end method

.method public static synthetic copy$default(Lcom/unity3d/ads/core/domain/LifecycleEvent$SaveInstanceState;Ljava/lang/ref/WeakReference;Landroid/os/Bundle;ILjava/lang/Object;)Lcom/unity3d/ads/core/domain/LifecycleEvent$SaveInstanceState;
    .registers 5

    .line 0
    and-int/lit8 p4, p3, 0x1

    if-eqz p4, :cond_6

    iget-object p1, p0, Lcom/unity3d/ads/core/domain/LifecycleEvent$SaveInstanceState;->activity:Ljava/lang/ref/WeakReference;

    :cond_6
    and-int/lit8 p3, p3, 0x2

    if-eqz p3, :cond_c

    iget-object p2, p0, Lcom/unity3d/ads/core/domain/LifecycleEvent$SaveInstanceState;->bundle:Landroid/os/Bundle;

    :cond_c
    invoke-virtual {p0, p1, p2}, Lcom/unity3d/ads/core/domain/LifecycleEvent$SaveInstanceState;->copy(Ljava/lang/ref/WeakReference;Landroid/os/Bundle;)Lcom/unity3d/ads/core/domain/LifecycleEvent$SaveInstanceState;

    move-result-object p0

    return-object p0
.end method


# virtual methods
.method public final component1()Ljava/lang/ref/WeakReference;
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/lang/ref/WeakReference<",
            "Landroid/app/Activity;",
            ">;"
        }
    .end annotation

    .line 0
    iget-object v0, p0, Lcom/unity3d/ads/core/domain/LifecycleEvent$SaveInstanceState;->activity:Ljava/lang/ref/WeakReference;

    return-object v0
.end method

.method public final component2()Landroid/os/Bundle;
    .registers 2

    .line 0
    iget-object v0, p0, Lcom/unity3d/ads/core/domain/LifecycleEvent$SaveInstanceState;->bundle:Landroid/os/Bundle;

    return-object v0
.end method

.method public final copy(Ljava/lang/ref/WeakReference;Landroid/os/Bundle;)Lcom/unity3d/ads/core/domain/LifecycleEvent$SaveInstanceState;
    .registers 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/ref/WeakReference<",
            "Landroid/app/Activity;",
            ">;",
            "Landroid/os/Bundle;",
            ")",
            "Lcom/unity3d/ads/core/domain/LifecycleEvent$SaveInstanceState;"
        }
    .end annotation

    .line 0
    const-string v0, "activity"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    new-instance v0, Lcom/unity3d/ads/core/domain/LifecycleEvent$SaveInstanceState;

    invoke-direct {v0, p1, p2}, Lcom/unity3d/ads/core/domain/LifecycleEvent$SaveInstanceState;-><init>(Ljava/lang/ref/WeakReference;Landroid/os/Bundle;)V

    return-object v0
.end method

.method public equals(Ljava/lang/Object;)Z
    .registers 6

    .line 0
    const/4 v0, 0x1

    if-ne p0, p1, :cond_4

    return v0

    :cond_4
    instance-of v1, p1, Lcom/unity3d/ads/core/domain/LifecycleEvent$SaveInstanceState;

    const/4 v2, 0x0

    if-nez v1, :cond_a

    return v2

    :cond_a
    check-cast p1, Lcom/unity3d/ads/core/domain/LifecycleEvent$SaveInstanceState;

    iget-object v1, p0, Lcom/unity3d/ads/core/domain/LifecycleEvent$SaveInstanceState;->activity:Ljava/lang/ref/WeakReference;

    iget-object v3, p1, Lcom/unity3d/ads/core/domain/LifecycleEvent$SaveInstanceState;->activity:Ljava/lang/ref/WeakReference;

    invoke-static {v1, v3}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_17

    return v2

    :cond_17
    iget-object v1, p0, Lcom/unity3d/ads/core/domain/LifecycleEvent$SaveInstanceState;->bundle:Landroid/os/Bundle;

    iget-object p1, p1, Lcom/unity3d/ads/core/domain/LifecycleEvent$SaveInstanceState;->bundle:Landroid/os/Bundle;

    invoke-static {v1, p1}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result p1

    if-nez p1, :cond_22

    return v2

    :cond_22
    return v0
.end method

.method public getActivity()Ljava/lang/ref/WeakReference;
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/lang/ref/WeakReference<",
            "Landroid/app/Activity;",
            ">;"
        }
    .end annotation

    .line 22
    iget-object v0, p0, Lcom/unity3d/ads/core/domain/LifecycleEvent$SaveInstanceState;->activity:Ljava/lang/ref/WeakReference;

    return-object v0
.end method

.method public final getBundle()Landroid/os/Bundle;
    .registers 2

    .line 22
    iget-object v0, p0, Lcom/unity3d/ads/core/domain/LifecycleEvent$SaveInstanceState;->bundle:Landroid/os/Bundle;

    return-object v0
.end method

.method public hashCode()I
    .registers 3

    .line 0
    iget-object v0, p0, Lcom/unity3d/ads/core/domain/LifecycleEvent$SaveInstanceState;->activity:Ljava/lang/ref/WeakReference;

    invoke-virtual {v0}, Ljava/lang/Object;->hashCode()I

    move-result v0

    mul-int/lit8 v0, v0, 0x1f

    iget-object v1, p0, Lcom/unity3d/ads/core/domain/LifecycleEvent$SaveInstanceState;->bundle:Landroid/os/Bundle;

    if-nez v1, :cond_e

    const/4 v1, 0x0

    goto :goto_12

    :cond_e
    invoke-virtual {v1}, Ljava/lang/Object;->hashCode()I

    move-result v1

    :goto_12
    add-int/2addr v0, v1

    return v0
.end method

.method public toString()Ljava/lang/String;
    .registers 3

    .line 0
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "SaveInstanceState(activity="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/unity3d/ads/core/domain/LifecycleEvent$SaveInstanceState;->activity:Ljava/lang/ref/WeakReference;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, ", bundle="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/unity3d/ads/core/domain/LifecycleEvent$SaveInstanceState;->bundle:Landroid/os/Bundle;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const/16 v1, 0x29

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

###### Class com.unity3d.ads.core.domain.LifecycleEvent.Started (com.unity3d.ads.core.domain.LifecycleEvent$Started)
.class public final Lcom/unity3d/ads/core/domain/LifecycleEvent$Started;
.super Ljava/lang/Object;
.source "AndroidGetLifecycleFlow.kt"

# interfaces
.implements Lcom/unity3d/ads/core/domain/LifecycleEvent;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/unity3d/ads/core/domain/LifecycleEvent;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "Started"
.end annotation


# instance fields
.field private final activity:Ljava/lang/ref/WeakReference;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/ref/WeakReference<",
            "Landroid/app/Activity;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Ljava/lang/ref/WeakReference;)V
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/ref/WeakReference<",
            "Landroid/app/Activity;",
            ">;)V"
        }
    .end annotation

    const-string v0, "activity"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 18
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/unity3d/ads/core/domain/LifecycleEvent$Started;->activity:Ljava/lang/ref/WeakReference;

    return-void
.end method

.method public static synthetic copy$default(Lcom/unity3d/ads/core/domain/LifecycleEvent$Started;Ljava/lang/ref/WeakReference;ILjava/lang/Object;)Lcom/unity3d/ads/core/domain/LifecycleEvent$Started;
    .registers 4

    .line 0
    and-int/lit8 p2, p2, 0x1

    if-eqz p2, :cond_6

    iget-object p1, p0, Lcom/unity3d/ads/core/domain/LifecycleEvent$Started;->activity:Ljava/lang/ref/WeakReference;

    :cond_6
    invoke-virtual {p0, p1}, Lcom/unity3d/ads/core/domain/LifecycleEvent$Started;->copy(Ljava/lang/ref/WeakReference;)Lcom/unity3d/ads/core/domain/LifecycleEvent$Started;

    move-result-object p0

    return-object p0
.end method


# virtual methods
.method public final component1()Ljava/lang/ref/WeakReference;
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/lang/ref/WeakReference<",
            "Landroid/app/Activity;",
            ">;"
        }
    .end annotation

    .line 0
    iget-object v0, p0, Lcom/unity3d/ads/core/domain/LifecycleEvent$Started;->activity:Ljava/lang/ref/WeakReference;

    return-object v0
.end method

.method public final copy(Ljava/lang/ref/WeakReference;)Lcom/unity3d/ads/core/domain/LifecycleEvent$Started;
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/ref/WeakReference<",
            "Landroid/app/Activity;",
            ">;)",
            "Lcom/unity3d/ads/core/domain/LifecycleEvent$Started;"
        }
    .end annotation

    .line 0
    const-string v0, "activity"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    new-instance v0, Lcom/unity3d/ads/core/domain/LifecycleEvent$Started;

    invoke-direct {v0, p1}, Lcom/unity3d/ads/core/domain/LifecycleEvent$Started;-><init>(Ljava/lang/ref/WeakReference;)V

    return-object v0
.end method

.method public equals(Ljava/lang/Object;)Z
    .registers 5

    .line 0
    const/4 v0, 0x1

    if-ne p0, p1, :cond_4

    return v0

    :cond_4
    instance-of v1, p1, Lcom/unity3d/ads/core/domain/LifecycleEvent$Started;

    const/4 v2, 0x0

    if-nez v1, :cond_a

    return v2

    :cond_a
    check-cast p1, Lcom/unity3d/ads/core/domain/LifecycleEvent$Started;

    iget-object v1, p0, Lcom/unity3d/ads/core/domain/LifecycleEvent$Started;->activity:Ljava/lang/ref/WeakReference;

    iget-object p1, p1, Lcom/unity3d/ads/core/domain/LifecycleEvent$Started;->activity:Ljava/lang/ref/WeakReference;

    invoke-static {v1, p1}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result p1

    if-nez p1, :cond_17

    return v2

    :cond_17
    return v0
.end method

.method public getActivity()Ljava/lang/ref/WeakReference;
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/lang/ref/WeakReference<",
            "Landroid/app/Activity;",
            ">;"
        }
    .end annotation

    .line 18
    iget-object v0, p0, Lcom/unity3d/ads/core/domain/LifecycleEvent$Started;->activity:Ljava/lang/ref/WeakReference;

    return-object v0
.end method

.method public hashCode()I
    .registers 2

    .line 0
    iget-object v0, p0, Lcom/unity3d/ads/core/domain/LifecycleEvent$Started;->activity:Ljava/lang/ref/WeakReference;

    invoke-virtual {v0}, Ljava/lang/Object;->hashCode()I

    move-result v0

    return v0
.end method

.method public toString()Ljava/lang/String;
    .registers 3

    .line 0
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Started(activity="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/unity3d/ads/core/domain/LifecycleEvent$Started;->activity:Ljava/lang/ref/WeakReference;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const/16 v1, 0x29

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

###### Class com.unity3d.ads.core.domain.LifecycleEvent.Stopped (com.unity3d.ads.core.domain.LifecycleEvent$Stopped)
.class public final Lcom/unity3d/ads/core/domain/LifecycleEvent$Stopped;
.super Ljava/lang/Object;
.source "AndroidGetLifecycleFlow.kt"

# interfaces
.implements Lcom/unity3d/ads/core/domain/LifecycleEvent;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/unity3d/ads/core/domain/LifecycleEvent;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "Stopped"
.end annotation


# instance fields
.field private final activity:Ljava/lang/ref/WeakReference;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/ref/WeakReference<",
            "Landroid/app/Activity;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Ljava/lang/ref/WeakReference;)V
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/ref/WeakReference<",
            "Landroid/app/Activity;",
            ">;)V"
        }
    .end annotation

    const-string v0, "activity"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 21
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/unity3d/ads/core/domain/LifecycleEvent$Stopped;->activity:Ljava/lang/ref/WeakReference;

    return-void
.end method

.method public static synthetic copy$default(Lcom/unity3d/ads/core/domain/LifecycleEvent$Stopped;Ljava/lang/ref/WeakReference;ILjava/lang/Object;)Lcom/unity3d/ads/core/domain/LifecycleEvent$Stopped;
    .registers 4

    .line 0
    and-int/lit8 p2, p2, 0x1

    if-eqz p2, :cond_6

    iget-object p1, p0, Lcom/unity3d/ads/core/domain/LifecycleEvent$Stopped;->activity:Ljava/lang/ref/WeakReference;

    :cond_6
    invoke-virtual {p0, p1}, Lcom/unity3d/ads/core/domain/LifecycleEvent$Stopped;->copy(Ljava/lang/ref/WeakReference;)Lcom/unity3d/ads/core/domain/LifecycleEvent$Stopped;

    move-result-object p0

    return-object p0
.end method


# virtual methods
.method public final component1()Ljava/lang/ref/WeakReference;
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/lang/ref/WeakReference<",
            "Landroid/app/Activity;",
            ">;"
        }
    .end annotation

    .line 0
    iget-object v0, p0, Lcom/unity3d/ads/core/domain/LifecycleEvent$Stopped;->activity:Ljava/lang/ref/WeakReference;

    return-object v0
.end method

.method public final copy(Ljava/lang/ref/WeakReference;)Lcom/unity3d/ads/core/domain/LifecycleEvent$Stopped;
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/ref/WeakReference<",
            "Landroid/app/Activity;",
            ">;)",
            "Lcom/unity3d/ads/core/domain/LifecycleEvent$Stopped;"
        }
    .end annotation

    .line 0
    const-string v0, "activity"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    new-instance v0, Lcom/unity3d/ads/core/domain/LifecycleEvent$Stopped;

    invoke-direct {v0, p1}, Lcom/unity3d/ads/core/domain/LifecycleEvent$Stopped;-><init>(Ljava/lang/ref/WeakReference;)V

    return-object v0
.end method

.method public equals(Ljava/lang/Object;)Z
    .registers 5

    .line 0
    const/4 v0, 0x1

    if-ne p0, p1, :cond_4

    return v0

    :cond_4
    instance-of v1, p1, Lcom/unity3d/ads/core/domain/LifecycleEvent$Stopped;

    const/4 v2, 0x0

    if-nez v1, :cond_a

    return v2

    :cond_a
    check-cast p1, Lcom/unity3d/ads/core/domain/LifecycleEvent$Stopped;

    iget-object v1, p0, Lcom/unity3d/ads/core/domain/LifecycleEvent$Stopped;->activity:Ljava/lang/ref/WeakReference;

    iget-object p1, p1, Lcom/unity3d/ads/core/domain/LifecycleEvent$Stopped;->activity:Ljava/lang/ref/WeakReference;

    invoke-static {v1, p1}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result p1

    if-nez p1, :cond_17

    return v2

    :cond_17
    return v0
.end method

.method public getActivity()Ljava/lang/ref/WeakReference;
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/lang/ref/WeakReference<",
            "Landroid/app/Activity;",
            ">;"
        }
    .end annotation

    .line 21
    iget-object v0, p0, Lcom/unity3d/ads/core/domain/LifecycleEvent$Stopped;->activity:Ljava/lang/ref/WeakReference;

    return-object v0
.end method

.method public hashCode()I
    .registers 2

    .line 0
    iget-object v0, p0, Lcom/unity3d/ads/core/domain/LifecycleEvent$Stopped;->activity:Ljava/lang/ref/WeakReference;

    invoke-virtual {v0}, Ljava/lang/Object;->hashCode()I

    move-result v0

    return v0
.end method

.method public toString()Ljava/lang/String;
    .registers 3

    .line 0
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Stopped(activity="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/unity3d/ads/core/domain/LifecycleEvent$Stopped;->activity:Ljava/lang/ref/WeakReference;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const/16 v1, 0x29

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
