###### Class com.unity3d.coherence.NativeIdentityProvider (com.unity3d.coherence.NativeIdentityProvider)
.class public final Lcom/unity3d/coherence/NativeIdentityProvider;
.super Ljava/lang/Object;
.source "NativeIdentityProvider.java"

# interfaces
.implements Lcom/unity3d/coherence/IdentityProvider;


# instance fields
.field public final library:Lcom/unity3d/coherence/CoherenceLibrary;


# direct methods
.method public constructor <init>(Lcom/unity3d/coherence/CoherenceLibrary;)V
    .registers 2

    .line 8
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 9
    iput-object p1, p0, Lcom/unity3d/coherence/NativeIdentityProvider;->library:Lcom/unity3d/coherence/CoherenceLibrary;

    return-void
.end method
