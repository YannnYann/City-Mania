###### Class com.unity3d.ads.core.data.model.OfferwallShowEvent (com.unity3d.ads.core.data.model.OfferwallShowEvent)
.class public abstract Lcom/unity3d/ads/core/data/model/OfferwallShowEvent;
.super Ljava/lang/Object;
.source "OfferwallShowEvent.kt"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/unity3d/ads/core/data/model/OfferwallShowEvent$Show;
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
    invoke-direct {p0}, Lcom/unity3d/ads/core/data/model/OfferwallShowEvent;-><init>()V

    return-void
.end method

###### Class com.unity3d.ads.core.data.model.OfferwallShowEvent.Show (com.unity3d.ads.core.data.model.OfferwallShowEvent$Show)
.class public final Lcom/unity3d/ads/core/data/model/OfferwallShowEvent$Show;
.super Lcom/unity3d/ads/core/data/model/OfferwallShowEvent;
.source "OfferwallShowEvent.kt"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/unity3d/ads/core/data/model/OfferwallShowEvent;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "Show"
.end annotation


# static fields
.field public static final INSTANCE:Lcom/unity3d/ads/core/data/model/OfferwallShowEvent$Show;


# direct methods
.method static constructor <clinit>()V
    .registers 1

    .line 0
    new-instance v0, Lcom/unity3d/ads/core/data/model/OfferwallShowEvent$Show;

    invoke-direct {v0}, Lcom/unity3d/ads/core/data/model/OfferwallShowEvent$Show;-><init>()V

    sput-object v0, Lcom/unity3d/ads/core/data/model/OfferwallShowEvent$Show;->INSTANCE:Lcom/unity3d/ads/core/data/model/OfferwallShowEvent$Show;

    return-void
.end method

.method private constructor <init>()V
    .registers 2

    const/4 v0, 0x0

    .line 4
    invoke-direct {p0, v0}, Lcom/unity3d/ads/core/data/model/OfferwallShowEvent;-><init>(Lkotlin/jvm/internal/DefaultConstructorMarker;)V

    return-void
.end method
