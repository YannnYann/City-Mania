###### Class com.unity3d.coherence.CommonAttributesConfig (com.unity3d.coherence.CommonAttributesConfig)
.class public final Lcom/unity3d/coherence/CommonAttributesConfig;
.super Ljava/lang/Object;
.source "CommonAttributesConfig.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/unity3d/coherence/CommonAttributesConfig$Builder;
    }
.end annotation


# instance fields
.field public final eventId:I

.field public final productId:I


# direct methods
.method public constructor <init>(II)V
    .registers 3

    .line 21
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 22
    iput p1, p0, Lcom/unity3d/coherence/CommonAttributesConfig;->productId:I

    .line 23
    iput p2, p0, Lcom/unity3d/coherence/CommonAttributesConfig;->eventId:I

    return-void
.end method

.method public synthetic constructor <init>(IILcom/unity3d/coherence/CommonAttributesConfig-IA;)V
    .registers 4

    .line 0
    invoke-direct {p0, p1, p2}, Lcom/unity3d/coherence/CommonAttributesConfig;-><init>(II)V

    return-void
.end method


# virtual methods
.method public getEventId()I
    .registers 2

    .line 31
    iget v0, p0, Lcom/unity3d/coherence/CommonAttributesConfig;->eventId:I

    return v0
.end method

.method public getProductId()I
    .registers 2

    .line 27
    iget v0, p0, Lcom/unity3d/coherence/CommonAttributesConfig;->productId:I

    return v0
.end method

###### Class com.unity3d.coherence.CommonAttributesConfig.Builder (com.unity3d.coherence.CommonAttributesConfig$Builder)
.class public final Lcom/unity3d/coherence/CommonAttributesConfig$Builder;
.super Ljava/lang/Object;
.source "CommonAttributesConfig.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/unity3d/coherence/CommonAttributesConfig;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "Builder"
.end annotation


# instance fields
.field public eventId:I

.field public productId:I


# direct methods
.method public constructor <init>()V
    .registers 2

    .line 34
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    .line 36
    iput v0, p0, Lcom/unity3d/coherence/CommonAttributesConfig$Builder;->productId:I

    .line 37
    iput v0, p0, Lcom/unity3d/coherence/CommonAttributesConfig$Builder;->eventId:I

    return-void
.end method


# virtual methods
.method public build()Lcom/unity3d/coherence/CommonAttributesConfig;
    .registers 5

    .line 55
    new-instance v0, Lcom/unity3d/coherence/CommonAttributesConfig;

    iget v1, p0, Lcom/unity3d/coherence/CommonAttributesConfig$Builder;->productId:I

    iget v2, p0, Lcom/unity3d/coherence/CommonAttributesConfig$Builder;->eventId:I

    const/4 v3, 0x0

    invoke-direct {v0, v1, v2, v3}, Lcom/unity3d/coherence/CommonAttributesConfig;-><init>(IILcom/unity3d/coherence/CommonAttributesConfig-IA;)V

    return-object v0
.end method
