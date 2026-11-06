###### Class com.google.crypto.tink.Key (com.google.crypto.tink.Key)
.class public abstract Lcom/google/crypto/tink/Key;
.super Ljava/lang/Object;
.source "Key.java"


# direct methods
.method public constructor <init>()V
    .registers 1

    .line 37
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public abstract getIdRequirementOrNull()Ljava/lang/Integer;
.end method

.method public abstract getParameters()Lcom/google/crypto/tink/Parameters;
.end method
