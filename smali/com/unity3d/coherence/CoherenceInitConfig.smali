###### Class com.unity3d.coherence.CoherenceInitConfig (com.unity3d.coherence.CoherenceInitConfig)
.class public final Lcom/unity3d/coherence/CoherenceInitConfig;
.super Ljava/lang/Object;
.source "CoherenceInitConfig.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/unity3d/coherence/CoherenceInitConfig$Builder;
    }
.end annotation


# instance fields
.field public final context:Landroid/content/Context;

.field public final source:I


# direct methods
.method public constructor <init>(Landroid/content/Context;I)V
    .registers 3

    .line 39
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 40
    iput-object p1, p0, Lcom/unity3d/coherence/CoherenceInitConfig;->context:Landroid/content/Context;

    .line 41
    iput p2, p0, Lcom/unity3d/coherence/CoherenceInitConfig;->source:I

    return-void
.end method

.method public synthetic constructor <init>(Landroid/content/Context;ILcom/unity3d/coherence/CoherenceInitConfig-IA;)V
    .registers 4

    .line 0
    invoke-direct {p0, p1, p2}, Lcom/unity3d/coherence/CoherenceInitConfig;-><init>(Landroid/content/Context;I)V

    return-void
.end method


# virtual methods
.method public getContext()Landroid/content/Context;
    .registers 2

    .line 45
    iget-object v0, p0, Lcom/unity3d/coherence/CoherenceInitConfig;->context:Landroid/content/Context;

    return-object v0
.end method

.method public getSource()I
    .registers 2

    .line 49
    iget v0, p0, Lcom/unity3d/coherence/CoherenceInitConfig;->source:I

    return v0
.end method

###### Class com.unity3d.coherence.CoherenceInitConfig.Builder (com.unity3d.coherence.CoherenceInitConfig$Builder)
.class public final Lcom/unity3d/coherence/CoherenceInitConfig$Builder;
.super Ljava/lang/Object;
.source "CoherenceInitConfig.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/unity3d/coherence/CoherenceInitConfig;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "Builder"
.end annotation


# instance fields
.field public final context:Landroid/content/Context;

.field public source:I


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .registers 3

    .line 60
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 61
    const-string v0, "context must not be null"

    invoke-static {p1, v0}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    .line 62
    invoke-virtual {p1}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    if-eqz v0, :cond_f

    move-object p1, v0

    .line 65
    :cond_f
    iput-object p1, p0, Lcom/unity3d/coherence/CoherenceInitConfig$Builder;->context:Landroid/content/Context;

    return-void
.end method


# virtual methods
.method public build()Lcom/unity3d/coherence/CoherenceInitConfig;
    .registers 5

    .line 82
    new-instance v0, Lcom/unity3d/coherence/CoherenceInitConfig;

    iget-object v1, p0, Lcom/unity3d/coherence/CoherenceInitConfig$Builder;->context:Landroid/content/Context;

    iget v2, p0, Lcom/unity3d/coherence/CoherenceInitConfig$Builder;->source:I

    const/4 v3, 0x0

    invoke-direct {v0, v1, v2, v3}, Lcom/unity3d/coherence/CoherenceInitConfig;-><init>(Landroid/content/Context;ILcom/unity3d/coherence/CoherenceInitConfig-IA;)V

    return-object v0
.end method

.method public setSource(I)Lcom/unity3d/coherence/CoherenceInitConfig$Builder;
    .registers 2

    .line 71
    iput p1, p0, Lcom/unity3d/coherence/CoherenceInitConfig$Builder;->source:I

    return-object p0
.end method
