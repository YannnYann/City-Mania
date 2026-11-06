###### Class com.google.crypto.tink.subtle.PrfAesCmac (com.google.crypto.tink.subtle.PrfAesCmac)
.class public final Lcom/google/crypto/tink/subtle/PrfAesCmac;
.super Ljava/lang/Object;
.source "PrfAesCmac.java"

# interfaces
.implements Lcom/google/crypto/tink/prf/Prf;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/google/crypto/tink/subtle/PrfAesCmac$PrfImplementation;
    }
.end annotation


# direct methods
.method public static create(Lcom/google/crypto/tink/prf/AesCmacPrfKey;)Lcom/google/crypto/tink/prf/Prf;
    .registers 4
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "key"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/security/GeneralSecurityException;
        }
    .end annotation

    .line 79
    invoke-static {p0}, Lcom/google/crypto/tink/prf/internal/PrfAesCmac;->create(Lcom/google/crypto/tink/prf/AesCmacPrfKey;)Lcom/google/crypto/tink/prf/Prf;

    move-result-object v0

    .line 81
    :try_start_4
    invoke-static {p0}, Lcom/google/crypto/tink/prf/internal/PrfAesCmacConscrypt;->create(Lcom/google/crypto/tink/prf/AesCmacPrfKey;)Lcom/google/crypto/tink/prf/Prf;

    move-result-object p0

    .line 85
    new-instance v1, Lcom/google/crypto/tink/subtle/PrfAesCmac$PrfImplementation;

    const/4 v2, 0x0

    invoke-direct {v1, v0, p0, v2}, Lcom/google/crypto/tink/subtle/PrfAesCmac$PrfImplementation;-><init>(Lcom/google/crypto/tink/prf/Prf;Lcom/google/crypto/tink/prf/Prf;Lcom/google/crypto/tink/subtle/PrfAesCmac$1;)V
    :try_end_e
    .catch Ljava/security/GeneralSecurityException; {:try_start_4 .. :try_end_e} :catch_f

    return-object v1

    :catch_f
    return-object v0
.end method

###### Class com.google.crypto.tink.subtle.PrfAesCmac.AnonymousClass1 (com.google.crypto.tink.subtle.PrfAesCmac$1)
.class public synthetic Lcom/google/crypto/tink/subtle/PrfAesCmac$1;
.super Ljava/lang/Object;
.source "PrfAesCmac.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/crypto/tink/subtle/PrfAesCmac;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1009
    name = null
.end annotation

###### Class com.google.crypto.tink.subtle.PrfAesCmac.PrfImplementation (com.google.crypto.tink.subtle.PrfAesCmac$PrfImplementation)
.class public Lcom/google/crypto/tink/subtle/PrfAesCmac$PrfImplementation;
.super Ljava/lang/Object;
.source "PrfAesCmac.java"

# interfaces
.implements Lcom/google/crypto/tink/prf/Prf;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/crypto/tink/subtle/PrfAesCmac;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "PrfImplementation"
.end annotation


# instance fields
.field public final large:Lcom/google/crypto/tink/prf/Prf;

.field public final small:Lcom/google/crypto/tink/prf/Prf;


# direct methods
.method public constructor <init>(Lcom/google/crypto/tink/prf/Prf;Lcom/google/crypto/tink/prf/Prf;)V
    .registers 3
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0
        }
        names = {
            "small",
            "large"
        }
    .end annotation

    .line 72
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 73
    iput-object p1, p0, Lcom/google/crypto/tink/subtle/PrfAesCmac$PrfImplementation;->small:Lcom/google/crypto/tink/prf/Prf;

    .line 74
    iput-object p2, p0, Lcom/google/crypto/tink/subtle/PrfAesCmac$PrfImplementation;->large:Lcom/google/crypto/tink/prf/Prf;

    return-void
.end method

.method public synthetic constructor <init>(Lcom/google/crypto/tink/prf/Prf;Lcom/google/crypto/tink/prf/Prf;Lcom/google/crypto/tink/subtle/PrfAesCmac$1;)V
    .registers 4

    .line 58
    invoke-direct {p0, p1, p2}, Lcom/google/crypto/tink/subtle/PrfAesCmac$PrfImplementation;-><init>(Lcom/google/crypto/tink/prf/Prf;Lcom/google/crypto/tink/prf/Prf;)V

    return-void
.end method


# virtual methods
.method public compute([BI)[B
    .registers 5
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x10,
            0x0
        }
        names = {
            "data",
            "outputLength"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/security/GeneralSecurityException;
        }
    .end annotation

    .line 66
    array-length v0, p1

    const/16 v1, 0x40

    if-gt v0, v1, :cond_c

    .line 67
    iget-object v0, p0, Lcom/google/crypto/tink/subtle/PrfAesCmac$PrfImplementation;->small:Lcom/google/crypto/tink/prf/Prf;

    invoke-interface {v0, p1, p2}, Lcom/google/crypto/tink/prf/Prf;->compute([BI)[B

    move-result-object p1

    return-object p1

    .line 69
    :cond_c
    iget-object v0, p0, Lcom/google/crypto/tink/subtle/PrfAesCmac$PrfImplementation;->large:Lcom/google/crypto/tink/prf/Prf;

    invoke-interface {v0, p1, p2}, Lcom/google/crypto/tink/prf/Prf;->compute([BI)[B

    move-result-object p1

    return-object p1
.end method
