###### Class com.unity3d.ads.core.data.repository.FocusState (com.unity3d.ads.core.data.repository.FocusState)
.class public interface abstract Lcom/unity3d/ads/core/data/repository/FocusState;
.super Ljava/lang/Object;
.source "FocusRepository.kt"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/unity3d/ads/core/data/repository/FocusState$Focused;,
        Lcom/unity3d/ads/core/data/repository/FocusState$Unfocused;
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

###### Class com.unity3d.ads.core.data.repository.FocusState.Focused (com.unity3d.ads.core.data.repository.FocusState$Focused)
.class public final Lcom/unity3d/ads/core/data/repository/FocusState$Focused;
.super Ljava/lang/Object;
.source "FocusRepository.kt"

# interfaces
.implements Lcom/unity3d/ads/core/data/repository/FocusState;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/unity3d/ads/core/data/repository/FocusState;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "Focused"
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

    iput-object p1, p0, Lcom/unity3d/ads/core/data/repository/FocusState$Focused;->activity:Ljava/lang/ref/WeakReference;

    return-void
.end method

.method public static synthetic copy$default(Lcom/unity3d/ads/core/data/repository/FocusState$Focused;Ljava/lang/ref/WeakReference;ILjava/lang/Object;)Lcom/unity3d/ads/core/data/repository/FocusState$Focused;
    .registers 4

    .line 0
    and-int/lit8 p2, p2, 0x1

    if-eqz p2, :cond_6

    iget-object p1, p0, Lcom/unity3d/ads/core/data/repository/FocusState$Focused;->activity:Ljava/lang/ref/WeakReference;

    :cond_6
    invoke-virtual {p0, p1}, Lcom/unity3d/ads/core/data/repository/FocusState$Focused;->copy(Ljava/lang/ref/WeakReference;)Lcom/unity3d/ads/core/data/repository/FocusState$Focused;

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
    iget-object v0, p0, Lcom/unity3d/ads/core/data/repository/FocusState$Focused;->activity:Ljava/lang/ref/WeakReference;

    return-object v0
.end method

.method public final copy(Ljava/lang/ref/WeakReference;)Lcom/unity3d/ads/core/data/repository/FocusState$Focused;
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/ref/WeakReference<",
            "Landroid/app/Activity;",
            ">;)",
            "Lcom/unity3d/ads/core/data/repository/FocusState$Focused;"
        }
    .end annotation

    .line 0
    const-string v0, "activity"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    new-instance v0, Lcom/unity3d/ads/core/data/repository/FocusState$Focused;

    invoke-direct {v0, p1}, Lcom/unity3d/ads/core/data/repository/FocusState$Focused;-><init>(Ljava/lang/ref/WeakReference;)V

    return-object v0
.end method

.method public equals(Ljava/lang/Object;)Z
    .registers 5

    .line 0
    const/4 v0, 0x1

    if-ne p0, p1, :cond_4

    return v0

    :cond_4
    instance-of v1, p1, Lcom/unity3d/ads/core/data/repository/FocusState$Focused;

    const/4 v2, 0x0

    if-nez v1, :cond_a

    return v2

    :cond_a
    check-cast p1, Lcom/unity3d/ads/core/data/repository/FocusState$Focused;

    iget-object v1, p0, Lcom/unity3d/ads/core/data/repository/FocusState$Focused;->activity:Ljava/lang/ref/WeakReference;

    iget-object p1, p1, Lcom/unity3d/ads/core/data/repository/FocusState$Focused;->activity:Ljava/lang/ref/WeakReference;

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
    iget-object v0, p0, Lcom/unity3d/ads/core/data/repository/FocusState$Focused;->activity:Ljava/lang/ref/WeakReference;

    return-object v0
.end method

.method public hashCode()I
    .registers 2

    .line 0
    iget-object v0, p0, Lcom/unity3d/ads/core/data/repository/FocusState$Focused;->activity:Ljava/lang/ref/WeakReference;

    invoke-virtual {v0}, Ljava/lang/Object;->hashCode()I

    move-result v0

    return v0
.end method

.method public toString()Ljava/lang/String;
    .registers 3

    .line 0
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Focused(activity="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/unity3d/ads/core/data/repository/FocusState$Focused;->activity:Ljava/lang/ref/WeakReference;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const/16 v1, 0x29

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

###### Class com.unity3d.ads.core.data.repository.FocusState.Unfocused (com.unity3d.ads.core.data.repository.FocusState$Unfocused)
.class public final Lcom/unity3d/ads/core/data/repository/FocusState$Unfocused;
.super Ljava/lang/Object;
.source "FocusRepository.kt"

# interfaces
.implements Lcom/unity3d/ads/core/data/repository/FocusState;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/unity3d/ads/core/data/repository/FocusState;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "Unfocused"
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

    .line 22
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/unity3d/ads/core/data/repository/FocusState$Unfocused;->activity:Ljava/lang/ref/WeakReference;

    return-void
.end method

.method public static synthetic copy$default(Lcom/unity3d/ads/core/data/repository/FocusState$Unfocused;Ljava/lang/ref/WeakReference;ILjava/lang/Object;)Lcom/unity3d/ads/core/data/repository/FocusState$Unfocused;
    .registers 4

    .line 0
    and-int/lit8 p2, p2, 0x1

    if-eqz p2, :cond_6

    iget-object p1, p0, Lcom/unity3d/ads/core/data/repository/FocusState$Unfocused;->activity:Ljava/lang/ref/WeakReference;

    :cond_6
    invoke-virtual {p0, p1}, Lcom/unity3d/ads/core/data/repository/FocusState$Unfocused;->copy(Ljava/lang/ref/WeakReference;)Lcom/unity3d/ads/core/data/repository/FocusState$Unfocused;

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
    iget-object v0, p0, Lcom/unity3d/ads/core/data/repository/FocusState$Unfocused;->activity:Ljava/lang/ref/WeakReference;

    return-object v0
.end method

.method public final copy(Ljava/lang/ref/WeakReference;)Lcom/unity3d/ads/core/data/repository/FocusState$Unfocused;
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/ref/WeakReference<",
            "Landroid/app/Activity;",
            ">;)",
            "Lcom/unity3d/ads/core/data/repository/FocusState$Unfocused;"
        }
    .end annotation

    .line 0
    const-string v0, "activity"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    new-instance v0, Lcom/unity3d/ads/core/data/repository/FocusState$Unfocused;

    invoke-direct {v0, p1}, Lcom/unity3d/ads/core/data/repository/FocusState$Unfocused;-><init>(Ljava/lang/ref/WeakReference;)V

    return-object v0
.end method

.method public equals(Ljava/lang/Object;)Z
    .registers 5

    .line 0
    const/4 v0, 0x1

    if-ne p0, p1, :cond_4

    return v0

    :cond_4
    instance-of v1, p1, Lcom/unity3d/ads/core/data/repository/FocusState$Unfocused;

    const/4 v2, 0x0

    if-nez v1, :cond_a

    return v2

    :cond_a
    check-cast p1, Lcom/unity3d/ads/core/data/repository/FocusState$Unfocused;

    iget-object v1, p0, Lcom/unity3d/ads/core/data/repository/FocusState$Unfocused;->activity:Ljava/lang/ref/WeakReference;

    iget-object p1, p1, Lcom/unity3d/ads/core/data/repository/FocusState$Unfocused;->activity:Ljava/lang/ref/WeakReference;

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

    .line 22
    iget-object v0, p0, Lcom/unity3d/ads/core/data/repository/FocusState$Unfocused;->activity:Ljava/lang/ref/WeakReference;

    return-object v0
.end method

.method public hashCode()I
    .registers 2

    .line 0
    iget-object v0, p0, Lcom/unity3d/ads/core/data/repository/FocusState$Unfocused;->activity:Ljava/lang/ref/WeakReference;

    invoke-virtual {v0}, Ljava/lang/Object;->hashCode()I

    move-result v0

    return v0
.end method

.method public toString()Ljava/lang/String;
    .registers 3

    .line 0
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Unfocused(activity="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/unity3d/ads/core/data/repository/FocusState$Unfocused;->activity:Ljava/lang/ref/WeakReference;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const/16 v1, 0x29

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
