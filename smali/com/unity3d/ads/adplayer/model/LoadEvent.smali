###### Class com.unity3d.ads.adplayer.model.LoadEvent (com.unity3d.ads.adplayer.model.LoadEvent)
.class public abstract Lcom/unity3d/ads/adplayer/model/LoadEvent;
.super Ljava/lang/Object;
.source "LoadEvent.kt"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/unity3d/ads/adplayer/model/LoadEvent$Completed;,
        Lcom/unity3d/ads/adplayer/model/LoadEvent$Error;
    }
.end annotation


# direct methods
.method private constructor <init>()V
    .registers 1

    .line 3
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public synthetic constructor <init>(Lkotlin/jvm/internal/DefaultConstructorMarker;)V
    .registers 2

    .line 0
    invoke-direct {p0}, Lcom/unity3d/ads/adplayer/model/LoadEvent;-><init>()V

    return-void
.end method

###### Class com.unity3d.ads.adplayer.model.LoadEvent.Completed (com.unity3d.ads.adplayer.model.LoadEvent$Completed)
.class public final Lcom/unity3d/ads/adplayer/model/LoadEvent$Completed;
.super Lcom/unity3d/ads/adplayer/model/LoadEvent;
.source "LoadEvent.kt"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/unity3d/ads/adplayer/model/LoadEvent;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "Completed"
.end annotation


# static fields
.field public static final INSTANCE:Lcom/unity3d/ads/adplayer/model/LoadEvent$Completed;


# direct methods
.method static constructor <clinit>()V
    .registers 1

    .line 0
    new-instance v0, Lcom/unity3d/ads/adplayer/model/LoadEvent$Completed;

    invoke-direct {v0}, Lcom/unity3d/ads/adplayer/model/LoadEvent$Completed;-><init>()V

    sput-object v0, Lcom/unity3d/ads/adplayer/model/LoadEvent$Completed;->INSTANCE:Lcom/unity3d/ads/adplayer/model/LoadEvent$Completed;

    return-void
.end method

.method private constructor <init>()V
    .registers 2

    const/4 v0, 0x0

    .line 4
    invoke-direct {p0, v0}, Lcom/unity3d/ads/adplayer/model/LoadEvent;-><init>(Lkotlin/jvm/internal/DefaultConstructorMarker;)V

    return-void
.end method

###### Class com.unity3d.ads.adplayer.model.LoadEvent.Error (com.unity3d.ads.adplayer.model.LoadEvent$Error)
.class public final Lcom/unity3d/ads/adplayer/model/LoadEvent$Error;
.super Lcom/unity3d/ads/adplayer/model/LoadEvent;
.source "LoadEvent.kt"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/unity3d/ads/adplayer/model/LoadEvent;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "Error"
.end annotation


# instance fields
.field private final errorCode:I

.field private final message:Ljava/lang/String;


# direct methods
.method public constructor <init>(Ljava/lang/String;I)V
    .registers 4

    const-string v0, "message"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const/4 v0, 0x0

    .line 5
    invoke-direct {p0, v0}, Lcom/unity3d/ads/adplayer/model/LoadEvent;-><init>(Lkotlin/jvm/internal/DefaultConstructorMarker;)V

    iput-object p1, p0, Lcom/unity3d/ads/adplayer/model/LoadEvent$Error;->message:Ljava/lang/String;

    iput p2, p0, Lcom/unity3d/ads/adplayer/model/LoadEvent$Error;->errorCode:I

    return-void
.end method

.method public static synthetic copy$default(Lcom/unity3d/ads/adplayer/model/LoadEvent$Error;Ljava/lang/String;IILjava/lang/Object;)Lcom/unity3d/ads/adplayer/model/LoadEvent$Error;
    .registers 5

    .line 0
    and-int/lit8 p4, p3, 0x1

    if-eqz p4, :cond_6

    iget-object p1, p0, Lcom/unity3d/ads/adplayer/model/LoadEvent$Error;->message:Ljava/lang/String;

    :cond_6
    and-int/lit8 p3, p3, 0x2

    if-eqz p3, :cond_c

    iget p2, p0, Lcom/unity3d/ads/adplayer/model/LoadEvent$Error;->errorCode:I

    :cond_c
    invoke-virtual {p0, p1, p2}, Lcom/unity3d/ads/adplayer/model/LoadEvent$Error;->copy(Ljava/lang/String;I)Lcom/unity3d/ads/adplayer/model/LoadEvent$Error;

    move-result-object p0

    return-object p0
.end method


# virtual methods
.method public final component1()Ljava/lang/String;
    .registers 2

    .line 0
    iget-object v0, p0, Lcom/unity3d/ads/adplayer/model/LoadEvent$Error;->message:Ljava/lang/String;

    return-object v0
.end method

.method public final component2()I
    .registers 2

    .line 0
    iget v0, p0, Lcom/unity3d/ads/adplayer/model/LoadEvent$Error;->errorCode:I

    return v0
.end method

.method public final copy(Ljava/lang/String;I)Lcom/unity3d/ads/adplayer/model/LoadEvent$Error;
    .registers 4

    .line 0
    const-string v0, "message"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    new-instance v0, Lcom/unity3d/ads/adplayer/model/LoadEvent$Error;

    invoke-direct {v0, p1, p2}, Lcom/unity3d/ads/adplayer/model/LoadEvent$Error;-><init>(Ljava/lang/String;I)V

    return-object v0
.end method

.method public equals(Ljava/lang/Object;)Z
    .registers 6

    .line 0
    const/4 v0, 0x1

    if-ne p0, p1, :cond_4

    return v0

    :cond_4
    instance-of v1, p1, Lcom/unity3d/ads/adplayer/model/LoadEvent$Error;

    const/4 v2, 0x0

    if-nez v1, :cond_a

    return v2

    :cond_a
    check-cast p1, Lcom/unity3d/ads/adplayer/model/LoadEvent$Error;

    iget-object v1, p0, Lcom/unity3d/ads/adplayer/model/LoadEvent$Error;->message:Ljava/lang/String;

    iget-object v3, p1, Lcom/unity3d/ads/adplayer/model/LoadEvent$Error;->message:Ljava/lang/String;

    invoke-static {v1, v3}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_17

    return v2

    :cond_17
    iget v1, p0, Lcom/unity3d/ads/adplayer/model/LoadEvent$Error;->errorCode:I

    iget p1, p1, Lcom/unity3d/ads/adplayer/model/LoadEvent$Error;->errorCode:I

    if-eq v1, p1, :cond_1e

    return v2

    :cond_1e
    return v0
.end method

.method public final getErrorCode()I
    .registers 2

    .line 5
    iget v0, p0, Lcom/unity3d/ads/adplayer/model/LoadEvent$Error;->errorCode:I

    return v0
.end method

.method public final getMessage()Ljava/lang/String;
    .registers 2

    .line 5
    iget-object v0, p0, Lcom/unity3d/ads/adplayer/model/LoadEvent$Error;->message:Ljava/lang/String;

    return-object v0
.end method

.method public hashCode()I
    .registers 3

    .line 0
    iget-object v0, p0, Lcom/unity3d/ads/adplayer/model/LoadEvent$Error;->message:Ljava/lang/String;

    invoke-virtual {v0}, Ljava/lang/String;->hashCode()I

    move-result v0

    mul-int/lit8 v0, v0, 0x1f

    iget v1, p0, Lcom/unity3d/ads/adplayer/model/LoadEvent$Error;->errorCode:I

    invoke-static {v1}, Ljava/lang/Integer;->hashCode(I)I

    move-result v1

    add-int/2addr v0, v1

    return v0
.end method

.method public toString()Ljava/lang/String;
    .registers 3

    .line 0
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Error(message="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/unity3d/ads/adplayer/model/LoadEvent$Error;->message:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, ", errorCode="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lcom/unity3d/ads/adplayer/model/LoadEvent$Error;->errorCode:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const/16 v1, 0x29

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
