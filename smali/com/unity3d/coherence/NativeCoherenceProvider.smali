###### Class com.unity3d.coherence.NativeCoherenceProvider (com.unity3d.coherence.NativeCoherenceProvider)
.class public final Lcom/unity3d/coherence/NativeCoherenceProvider;
.super Ljava/lang/Object;
.source "NativeCoherenceProvider.java"

# interfaces
.implements Lcom/unity3d/coherence/CoherenceProvider;


# instance fields
.field public final library:Lcom/unity3d/coherence/CoherenceLibrary;


# direct methods
.method public constructor <init>(Lcom/unity3d/coherence/CoherenceLibrary;)V
    .registers 2

    .line 7
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 8
    iput-object p1, p0, Lcom/unity3d/coherence/NativeCoherenceProvider;->library:Lcom/unity3d/coherence/CoherenceLibrary;

    return-void
.end method
