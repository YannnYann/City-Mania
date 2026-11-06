###### Class com.unity3d.coherence.NativeAttributesProvider (com.unity3d.coherence.NativeAttributesProvider)
.class public final Lcom/unity3d/coherence/NativeAttributesProvider;
.super Ljava/lang/Object;
.source "NativeAttributesProvider.java"

# interfaces
.implements Lcom/unity3d/coherence/AttributesProvider;


# instance fields
.field public final library:Lcom/unity3d/coherence/CoherenceLibrary;


# direct methods
.method public constructor <init>(Lcom/unity3d/coherence/CoherenceLibrary;)V
    .registers 2

    .line 11
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 12
    iput-object p1, p0, Lcom/unity3d/coherence/NativeAttributesProvider;->library:Lcom/unity3d/coherence/CoherenceLibrary;

    return-void
.end method


# virtual methods
.method public getCommonAttributes(Lcom/unity3d/coherence/CommonAttributesConfig;)[B
    .registers 5

    if-eqz p1, :cond_15

    .line 21
    iget-object v0, p0, Lcom/unity3d/coherence/NativeAttributesProvider;->library:Lcom/unity3d/coherence/CoherenceLibrary;

    invoke-virtual {v0}, Lcom/unity3d/coherence/CoherenceLibrary;->apiPtr()J

    move-result-wide v0

    invoke-virtual {p1}, Lcom/unity3d/coherence/CommonAttributesConfig;->getProductId()I

    move-result v2

    invoke-virtual {p1}, Lcom/unity3d/coherence/CommonAttributesConfig;->getEventId()I

    move-result p1

    invoke-static {v0, v1, v2, p1}, Lcom/unity3d/coherence/CoherenceBridge;->getCommonAttributes(JII)[B

    move-result-object p1

    return-object p1

    .line 19
    :cond_15
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string v0, "config must not be null"

    invoke-direct {p1, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1
.end method
