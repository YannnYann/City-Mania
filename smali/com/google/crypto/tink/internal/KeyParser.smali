###### Class com.google.crypto.tink.internal.KeyParser (com.google.crypto.tink.internal.KeyParser)
.class public abstract Lcom/google/crypto/tink/internal/KeyParser;
.super Ljava/lang/Object;
.source "KeyParser.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/google/crypto/tink/internal/KeyParser$KeyParsingFunction;
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

    .line 46
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 47
    iput-object p1, p0, Lcom/google/crypto/tink/internal/KeyParser;->objectIdentifier:Lcom/google/crypto/tink/util/Bytes;

    .line 48
    iput-object p2, p0, Lcom/google/crypto/tink/internal/KeyParser;->serializationClass:Ljava/lang/Class;

    return-void
.end method

.method public synthetic constructor <init>(Lcom/google/crypto/tink/util/Bytes;Ljava/lang/Class;Lcom/google/crypto/tink/internal/KeyParser$1;)V
    .registers 4

    .line 31
    invoke-direct {p0, p1, p2}, Lcom/google/crypto/tink/internal/KeyParser;-><init>(Lcom/google/crypto/tink/util/Bytes;Ljava/lang/Class;)V

    return-void
.end method

.method public static create(Lcom/google/crypto/tink/internal/KeyParser$KeyParsingFunction;Lcom/google/crypto/tink/util/Bytes;Ljava/lang/Class;)Lcom/google/crypto/tink/internal/KeyParser;
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
            "Lcom/google/crypto/tink/internal/KeyParser$KeyParsingFunction<",
            "TSerializationT;>;",
            "Lcom/google/crypto/tink/util/Bytes;",
            "Ljava/lang/Class<",
            "TSerializationT;>;)",
            "Lcom/google/crypto/tink/internal/KeyParser<",
            "TSerializationT;>;"
        }
    .end annotation

    .line 109
    new-instance v0, Lcom/google/crypto/tink/internal/KeyParser$1;

    invoke-direct {v0, p1, p2, p0}, Lcom/google/crypto/tink/internal/KeyParser$1;-><init>(Lcom/google/crypto/tink/util/Bytes;Ljava/lang/Class;Lcom/google/crypto/tink/internal/KeyParser$KeyParsingFunction;)V

    return-object v0
.end method


# virtual methods
.method public final getObjectIdentifier()Lcom/google/crypto/tink/util/Bytes;
    .registers 2

    .line 70
    iget-object v0, p0, Lcom/google/crypto/tink/internal/KeyParser;->objectIdentifier:Lcom/google/crypto/tink/util/Bytes;

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

    .line 74
    iget-object v0, p0, Lcom/google/crypto/tink/internal/KeyParser;->serializationClass:Ljava/lang/Class;

    return-object v0
.end method

.method public abstract parseKey(Lcom/google/crypto/tink/internal/Serialization;Lcom/google/crypto/tink/SecretKeyAccess;)Lcom/google/crypto/tink/Key;
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0
        }
        names = {
            "serialization",
            "access"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TSerializationT;",
            "Lcom/google/crypto/tink/SecretKeyAccess;",
            ")",
            "Lcom/google/crypto/tink/Key;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/security/GeneralSecurityException;
        }
    .end annotation
.end method

###### Class com.google.crypto.tink.internal.KeyParser.AnonymousClass1 (com.google.crypto.tink.internal.KeyParser$1)
.class public Lcom/google/crypto/tink/internal/KeyParser$1;
.super Lcom/google/crypto/tink/internal/KeyParser;
.source "KeyParser.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/google/crypto/tink/internal/KeyParser;->create(Lcom/google/crypto/tink/internal/KeyParser$KeyParsingFunction;Lcom/google/crypto/tink/util/Bytes;Ljava/lang/Class;)Lcom/google/crypto/tink/internal/KeyParser;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/google/crypto/tink/internal/KeyParser<",
        "TSerializationT;>;"
    }
.end annotation


# instance fields
.field public final synthetic val$function:Lcom/google/crypto/tink/internal/KeyParser$KeyParsingFunction;


# direct methods
.method public constructor <init>(Lcom/google/crypto/tink/util/Bytes;Ljava/lang/Class;Lcom/google/crypto/tink/internal/KeyParser$KeyParsingFunction;)V
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

    .line 109
    iput-object p3, p0, Lcom/google/crypto/tink/internal/KeyParser$1;->val$function:Lcom/google/crypto/tink/internal/KeyParser$KeyParsingFunction;

    const/4 p3, 0x0

    invoke-direct {p0, p1, p2, p3}, Lcom/google/crypto/tink/internal/KeyParser;-><init>(Lcom/google/crypto/tink/util/Bytes;Ljava/lang/Class;Lcom/google/crypto/tink/internal/KeyParser$1;)V

    return-void
.end method


# virtual methods
.method public parseKey(Lcom/google/crypto/tink/internal/Serialization;Lcom/google/crypto/tink/SecretKeyAccess;)Lcom/google/crypto/tink/Key;
    .registers 4
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0
        }
        names = {
            "serialization",
            "access"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TSerializationT;",
            "Lcom/google/crypto/tink/SecretKeyAccess;",
            ")",
            "Lcom/google/crypto/tink/Key;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/security/GeneralSecurityException;
        }
    .end annotation

    .line 113
    iget-object v0, p0, Lcom/google/crypto/tink/internal/KeyParser$1;->val$function:Lcom/google/crypto/tink/internal/KeyParser$KeyParsingFunction;

    invoke-interface {v0, p1, p2}, Lcom/google/crypto/tink/internal/KeyParser$KeyParsingFunction;->parseKey(Lcom/google/crypto/tink/internal/Serialization;Lcom/google/crypto/tink/SecretKeyAccess;)Lcom/google/crypto/tink/Key;

    move-result-object p1

    return-object p1
.end method

###### Class com.google.crypto.tink.internal.KeyParser.KeyParsingFunction (com.google.crypto.tink.internal.KeyParser$KeyParsingFunction)
.class public interface abstract Lcom/google/crypto/tink/internal/KeyParser$KeyParsingFunction;
.super Ljava/lang/Object;
.source "KeyParser.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/crypto/tink/internal/KeyParser;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x609
    name = "KeyParsingFunction"
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
.method public abstract parseKey(Lcom/google/crypto/tink/internal/Serialization;Lcom/google/crypto/tink/SecretKeyAccess;)Lcom/google/crypto/tink/Key;
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0
        }
        names = {
            "serialization",
            "access"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TSerializationT;",
            "Lcom/google/crypto/tink/SecretKeyAccess;",
            ")",
            "Lcom/google/crypto/tink/Key;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/security/GeneralSecurityException;
        }
    .end annotation
.end method
