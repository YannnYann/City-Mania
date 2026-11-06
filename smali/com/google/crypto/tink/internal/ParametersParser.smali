###### Class com.google.crypto.tink.internal.ParametersParser (com.google.crypto.tink.internal.ParametersParser)
.class public abstract Lcom/google/crypto/tink/internal/ParametersParser;
.super Ljava/lang/Object;
.source "ParametersParser.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/google/crypto/tink/internal/ParametersParser$ParametersParsingFunction;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<SerializationT::",
        "Lcom/google/crypto/tink/internal/Serialization;",
        ">",
        "Ljava/lang/Object;"
    }
.end annotation


# instance fields
.field public final objectIdentifier:Lcom/google/crypto/tink/util/Bytes;

.field public final serializationClass:Ljava/lang/Class;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/Class<",
            "TSerializationT;>;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Lcom/google/crypto/tink/util/Bytes;Ljava/lang/Class;)V
    .registers 3
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0
        }
        names = {
            "objectIdentifier",
            "serializationClass"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/google/crypto/tink/util/Bytes;",
            "Ljava/lang/Class<",
            "TSerializationT;>;)V"
        }
    .end annotation

    .line 43
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 44
    iput-object p1, p0, Lcom/google/crypto/tink/internal/ParametersParser;->objectIdentifier:Lcom/google/crypto/tink/util/Bytes;

    .line 45
    iput-object p2, p0, Lcom/google/crypto/tink/internal/ParametersParser;->serializationClass:Ljava/lang/Class;

    return-void
.end method

.method public synthetic constructor <init>(Lcom/google/crypto/tink/util/Bytes;Ljava/lang/Class;Lcom/google/crypto/tink/internal/ParametersParser$1;)V
    .registers 4

    .line 29
    invoke-direct {p0, p1, p2}, Lcom/google/crypto/tink/internal/ParametersParser;-><init>(Lcom/google/crypto/tink/util/Bytes;Ljava/lang/Class;)V

    return-void
.end method

.method public static create(Lcom/google/crypto/tink/internal/ParametersParser$ParametersParsingFunction;Lcom/google/crypto/tink/util/Bytes;Ljava/lang/Class;)Lcom/google/crypto/tink/internal/ParametersParser;
    .registers 4
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0,
            0x0
        }
        names = {
            "function",
            "objectIdentifier",
            "serializationClass"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<SerializationT::",
            "Lcom/google/crypto/tink/internal/Serialization;",
            ">(",
            "Lcom/google/crypto/tink/internal/ParametersParser$ParametersParsingFunction<",
            "TSerializationT;>;",
            "Lcom/google/crypto/tink/util/Bytes;",
            "Ljava/lang/Class<",
            "TSerializationT;>;)",
            "Lcom/google/crypto/tink/internal/ParametersParser<",
            "TSerializationT;>;"
        }
    .end annotation

    .line 104
    new-instance v0, Lcom/google/crypto/tink/internal/ParametersParser$1;

    invoke-direct {v0, p1, p2, p0}, Lcom/google/crypto/tink/internal/ParametersParser$1;-><init>(Lcom/google/crypto/tink/util/Bytes;Ljava/lang/Class;Lcom/google/crypto/tink/internal/ParametersParser$ParametersParsingFunction;)V

    return-object v0
.end method


# virtual methods
.method public final getObjectIdentifier()Lcom/google/crypto/tink/util/Bytes;
    .registers 2

    .line 68
    iget-object v0, p0, Lcom/google/crypto/tink/internal/ParametersParser;->objectIdentifier:Lcom/google/crypto/tink/util/Bytes;

    return-object v0
.end method

.method public final getSerializationClass()Ljava/lang/Class;
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/lang/Class<",
            "TSerializationT;>;"
        }
    .end annotation

    .line 72
    iget-object v0, p0, Lcom/google/crypto/tink/internal/ParametersParser;->serializationClass:Ljava/lang/Class;

    return-object v0
.end method

.method public abstract parseParameters(Lcom/google/crypto/tink/internal/Serialization;)Lcom/google/crypto/tink/Parameters;
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "serialization"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TSerializationT;)",
            "Lcom/google/crypto/tink/Parameters;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/security/GeneralSecurityException;
        }
    .end annotation
.end method

###### Class com.google.crypto.tink.internal.ParametersParser.AnonymousClass1 (com.google.crypto.tink.internal.ParametersParser$1)
.class public Lcom/google/crypto/tink/internal/ParametersParser$1;
.super Lcom/google/crypto/tink/internal/ParametersParser;
.source "ParametersParser.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/google/crypto/tink/internal/ParametersParser;->create(Lcom/google/crypto/tink/internal/ParametersParser$ParametersParsingFunction;Lcom/google/crypto/tink/util/Bytes;Ljava/lang/Class;)Lcom/google/crypto/tink/internal/ParametersParser;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/google/crypto/tink/internal/ParametersParser<",
        "TSerializationT;>;"
    }
.end annotation


# instance fields
.field public final synthetic val$function:Lcom/google/crypto/tink/internal/ParametersParser$ParametersParsingFunction;


# direct methods
.method public constructor <init>(Lcom/google/crypto/tink/util/Bytes;Ljava/lang/Class;Lcom/google/crypto/tink/internal/ParametersParser$ParametersParsingFunction;)V
    .registers 4
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0,
            0x1010
        }
        names = {
            "objectIdentifier",
            "serializationClass",
            "val$function"
        }
    .end annotation

    .line 104
    iput-object p3, p0, Lcom/google/crypto/tink/internal/ParametersParser$1;->val$function:Lcom/google/crypto/tink/internal/ParametersParser$ParametersParsingFunction;

    const/4 p3, 0x0

    invoke-direct {p0, p1, p2, p3}, Lcom/google/crypto/tink/internal/ParametersParser;-><init>(Lcom/google/crypto/tink/util/Bytes;Ljava/lang/Class;Lcom/google/crypto/tink/internal/ParametersParser$1;)V

    return-void
.end method


# virtual methods
.method public parseParameters(Lcom/google/crypto/tink/internal/Serialization;)Lcom/google/crypto/tink/Parameters;
    .registers 3
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "serialization"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TSerializationT;)",
            "Lcom/google/crypto/tink/Parameters;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/security/GeneralSecurityException;
        }
    .end annotation

    .line 108
    iget-object v0, p0, Lcom/google/crypto/tink/internal/ParametersParser$1;->val$function:Lcom/google/crypto/tink/internal/ParametersParser$ParametersParsingFunction;

    invoke-interface {v0, p1}, Lcom/google/crypto/tink/internal/ParametersParser$ParametersParsingFunction;->parseParameters(Lcom/google/crypto/tink/internal/Serialization;)Lcom/google/crypto/tink/Parameters;

    move-result-object p1

    return-object p1
.end method

###### Class com.google.crypto.tink.internal.ParametersParser.ParametersParsingFunction (com.google.crypto.tink.internal.ParametersParser$ParametersParsingFunction)
.class public interface abstract Lcom/google/crypto/tink/internal/ParametersParser$ParametersParsingFunction;
.super Ljava/lang/Object;
.source "ParametersParser.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/crypto/tink/internal/ParametersParser;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x609
    name = "ParametersParsingFunction"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<SerializationT::",
        "Lcom/google/crypto/tink/internal/Serialization;",
        ">",
        "Ljava/lang/Object;"
    }
.end annotation


# virtual methods
.method public abstract parseParameters(Lcom/google/crypto/tink/internal/Serialization;)Lcom/google/crypto/tink/Parameters;
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "serialization"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TSerializationT;)",
            "Lcom/google/crypto/tink/Parameters;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/security/GeneralSecurityException;
        }
    .end annotation
.end method
