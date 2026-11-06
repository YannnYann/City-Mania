###### Class com.google.crypto.tink.internal.MutableKeyCreationRegistry (com.google.crypto.tink.internal.MutableKeyCreationRegistry)
.class public final Lcom/google/crypto/tink/internal/MutableKeyCreationRegistry;
.super Ljava/lang/Object;
.source "MutableKeyCreationRegistry.java"


# static fields
.field public static final LEGACY_PROTO_KEY_CREATOR:Lcom/google/crypto/tink/internal/KeyCreator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/google/crypto/tink/internal/KeyCreator<",
            "Lcom/google/crypto/tink/internal/LegacyProtoParameters;",
            ">;"
        }
    .end annotation
.end field

.field public static final globalInstance:Lcom/google/crypto/tink/internal/MutableKeyCreationRegistry;


# instance fields
.field public final creators:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/Class<",
            "+",
            "Lcom/google/crypto/tink/Parameters;",
            ">;",
            "Lcom/google/crypto/tink/internal/KeyCreator<",
            "+",
            "Lcom/google/crypto/tink/Parameters;",
            ">;>;"
        }
    .end annotation
.end field


# direct methods
.method public static synthetic $r8$lambda$OBO0HsRyYK_EBCkQw3p-mwrG2v8(Lcom/google/crypto/tink/internal/LegacyProtoParameters;Ljava/lang/Integer;)Lcom/google/crypto/tink/internal/LegacyProtoKey;
    .registers 2

    .line 0
    invoke-static {p0, p1}, Lcom/google/crypto/tink/internal/MutableKeyCreationRegistry;->createProtoKeyFromProtoParameters(Lcom/google/crypto/tink/internal/LegacyProtoParameters;Ljava/lang/Integer;)Lcom/google/crypto/tink/internal/LegacyProtoKey;

    move-result-object p0

    return-object p0
.end method

.method static constructor <clinit>()V
    .registers 1

    .line 57
    new-instance v0, Lcom/google/crypto/tink/internal/MutableKeyCreationRegistry$$ExternalSyntheticLambda0;

    invoke-direct {v0}, Lcom/google/crypto/tink/internal/MutableKeyCreationRegistry$$ExternalSyntheticLambda0;-><init>()V

    sput-object v0, Lcom/google/crypto/tink/internal/MutableKeyCreationRegistry;->LEGACY_PROTO_KEY_CREATOR:Lcom/google/crypto/tink/internal/KeyCreator;

    .line 69
    invoke-static {}, Lcom/google/crypto/tink/internal/MutableKeyCreationRegistry;->newRegistryWithLegacyFallback()Lcom/google/crypto/tink/internal/MutableKeyCreationRegistry;

    move-result-object v0

    sput-object v0, Lcom/google/crypto/tink/internal/MutableKeyCreationRegistry;->globalInstance:Lcom/google/crypto/tink/internal/MutableKeyCreationRegistry;

    return-void
.end method

.method public constructor <init>()V
    .registers 2

    .line 31
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 32
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/google/crypto/tink/internal/MutableKeyCreationRegistry;->creators:Ljava/util/Map;

    return-void
.end method

.method public static createProtoKeyFromProtoParameters(Lcom/google/crypto/tink/internal/LegacyProtoParameters;Ljava/lang/Integer;)Lcom/google/crypto/tink/internal/LegacyProtoKey;
    .registers 5
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0
        }
        names = {
            "parameters",
            "idRequirement"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/security/GeneralSecurityException;
        }
    .end annotation

    .line 38
    invoke-virtual {p0}, Lcom/google/crypto/tink/internal/LegacyProtoParameters;->getSerialization()Lcom/google/crypto/tink/internal/ProtoParametersSerialization;

    move-result-object p0

    invoke-virtual {p0}, Lcom/google/crypto/tink/internal/ProtoParametersSerialization;->getKeyTemplate()Lcom/google/crypto/tink/proto/KeyTemplate;

    move-result-object p0

    .line 40
    invoke-static {}, Lcom/google/crypto/tink/internal/KeyManagerRegistry;->globalInstance()Lcom/google/crypto/tink/internal/KeyManagerRegistry;

    move-result-object v0

    invoke-virtual {p0}, Lcom/google/crypto/tink/proto/KeyTemplate;->getTypeUrl()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/google/crypto/tink/internal/KeyManagerRegistry;->getUntypedKeyManager(Ljava/lang/String;)Lcom/google/crypto/tink/KeyManager;

    move-result-object v0

    .line 41
    invoke-static {}, Lcom/google/crypto/tink/internal/KeyManagerRegistry;->globalInstance()Lcom/google/crypto/tink/internal/KeyManagerRegistry;

    move-result-object v1

    invoke-virtual {p0}, Lcom/google/crypto/tink/proto/KeyTemplate;->getTypeUrl()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/google/crypto/tink/internal/KeyManagerRegistry;->isNewKeyAllowed(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_48

    .line 44
    invoke-virtual {p0}, Lcom/google/crypto/tink/proto/KeyTemplate;->getValue()Lcom/google/crypto/tink/shaded/protobuf/ByteString;

    move-result-object v1

    invoke-interface {v0, v1}, Lcom/google/crypto/tink/KeyManager;->newKeyData(Lcom/google/crypto/tink/shaded/protobuf/ByteString;)Lcom/google/crypto/tink/proto/KeyData;

    move-result-object v0

    .line 47
    invoke-virtual {v0}, Lcom/google/crypto/tink/proto/KeyData;->getTypeUrl()Ljava/lang/String;

    move-result-object v1

    .line 48
    invoke-virtual {v0}, Lcom/google/crypto/tink/proto/KeyData;->getValue()Lcom/google/crypto/tink/shaded/protobuf/ByteString;

    move-result-object v2

    .line 49
    invoke-virtual {v0}, Lcom/google/crypto/tink/proto/KeyData;->getKeyMaterialType()Lcom/google/crypto/tink/proto/KeyData$KeyMaterialType;

    move-result-object v0

    .line 50
    invoke-virtual {p0}, Lcom/google/crypto/tink/proto/KeyTemplate;->getOutputPrefixType()Lcom/google/crypto/tink/proto/OutputPrefixType;

    move-result-object p0

    .line 46
    invoke-static {v1, v2, v0, p0, p1}, Lcom/google/crypto/tink/internal/ProtoKeySerialization;->create(Ljava/lang/String;Lcom/google/crypto/tink/shaded/protobuf/ByteString;Lcom/google/crypto/tink/proto/KeyData$KeyMaterialType;Lcom/google/crypto/tink/proto/OutputPrefixType;Ljava/lang/Integer;)Lcom/google/crypto/tink/internal/ProtoKeySerialization;

    move-result-object p0

    .line 52
    new-instance p1, Lcom/google/crypto/tink/internal/LegacyProtoKey;

    invoke-static {}, Lcom/google/crypto/tink/InsecureSecretKeyAccess;->get()Lcom/google/crypto/tink/SecretKeyAccess;

    move-result-object v0

    invoke-direct {p1, p0, v0}, Lcom/google/crypto/tink/internal/LegacyProtoKey;-><init>(Lcom/google/crypto/tink/internal/ProtoKeySerialization;Lcom/google/crypto/tink/SecretKeyAccess;)V

    return-object p1

    .line 42
    :cond_48
    new-instance p0, Ljava/security/GeneralSecurityException;

    const-string p1, "Creating new keys is not allowed."

    invoke-direct {p0, p1}, Ljava/security/GeneralSecurityException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method public static globalInstance()Lcom/google/crypto/tink/internal/MutableKeyCreationRegistry;
    .registers 1

    .line 72
    sget-object v0, Lcom/google/crypto/tink/internal/MutableKeyCreationRegistry;->globalInstance:Lcom/google/crypto/tink/internal/MutableKeyCreationRegistry;

    return-object v0
.end method

.method public static newRegistryWithLegacyFallback()Lcom/google/crypto/tink/internal/MutableKeyCreationRegistry;
    .registers 3

    .line 60
    new-instance v0, Lcom/google/crypto/tink/internal/MutableKeyCreationRegistry;

    invoke-direct {v0}, Lcom/google/crypto/tink/internal/MutableKeyCreationRegistry;-><init>()V

    .line 62
    :try_start_5
    sget-object v1, Lcom/google/crypto/tink/internal/MutableKeyCreationRegistry;->LEGACY_PROTO_KEY_CREATOR:Lcom/google/crypto/tink/internal/KeyCreator;

    const-class v2, Lcom/google/crypto/tink/internal/LegacyProtoParameters;

    invoke-virtual {v0, v1, v2}, Lcom/google/crypto/tink/internal/MutableKeyCreationRegistry;->add(Lcom/google/crypto/tink/internal/KeyCreator;Ljava/lang/Class;)V
    :try_end_c
    .catch Ljava/security/GeneralSecurityException; {:try_start_5 .. :try_end_c} :catch_d

    return-object v0

    :catch_d
    move-exception v0

    .line 64
    new-instance v1, Ljava/lang/IllegalStateException;

    const-string v2, "unexpected error."

    invoke-direct {v1, v2, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v1
.end method


# virtual methods
.method public declared-synchronized add(Lcom/google/crypto/tink/internal/KeyCreator;Ljava/lang/Class;)V
    .registers 5
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0
        }
        names = {
            "creator",
            "parametersClass"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<ParametersT:",
            "Lcom/google/crypto/tink/Parameters;",
            ">(",
            "Lcom/google/crypto/tink/internal/KeyCreator<",
            "TParametersT;>;",
            "Ljava/lang/Class<",
            "TParametersT;>;)V"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/security/GeneralSecurityException;
        }
    .end annotation

    monitor-enter p0

    .line 84
    :try_start_1
    iget-object v0, p0, Lcom/google/crypto/tink/internal/MutableKeyCreationRegistry;->creators:Ljava/util/Map;

    invoke-interface {v0, p2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/crypto/tink/internal/KeyCreator;

    if-eqz v0, :cond_30

    .line 86
    invoke-virtual {v0, p1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_12

    goto :goto_30

    .line 87
    :cond_12
    new-instance p1, Ljava/security/GeneralSecurityException;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Different key creator for parameters class "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string p2, " already inserted"

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-direct {p1, p2}, Ljava/security/GeneralSecurityException;-><init>(Ljava/lang/String;)V

    throw p1

    :catchall_2e
    move-exception p1

    goto :goto_37

    .line 91
    :cond_30
    :goto_30
    iget-object v0, p0, Lcom/google/crypto/tink/internal/MutableKeyCreationRegistry;->creators:Ljava/util/Map;

    invoke-interface {v0, p2, p1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_35
    .catchall {:try_start_1 .. :try_end_35} :catchall_2e

    .line 92
    monitor-exit p0

    return-void

    :goto_37
    :try_start_37
    monitor-exit p0
    :try_end_38
    .catchall {:try_start_37 .. :try_end_38} :catchall_2e

    throw p1
.end method

.method public createKey(Lcom/google/crypto/tink/Parameters;Ljava/lang/Integer;)Lcom/google/crypto/tink/Key;
    .registers 3
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0
        }
        names = {
            "parameters",
            "idRequirement"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/security/GeneralSecurityException;
        }
    .end annotation

    .line 102
    invoke-virtual {p0, p1, p2}, Lcom/google/crypto/tink/internal/MutableKeyCreationRegistry;->createKeyTyped(Lcom/google/crypto/tink/Parameters;Ljava/lang/Integer;)Lcom/google/crypto/tink/Key;

    move-result-object p1

    return-object p1
.end method

.method public final declared-synchronized createKeyTyped(Lcom/google/crypto/tink/Parameters;Ljava/lang/Integer;)Lcom/google/crypto/tink/Key;
    .registers 5
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0
        }
        names = {
            "parameters",
            "idRequirement"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<ParametersT:",
            "Lcom/google/crypto/tink/Parameters;",
            ">(TParametersT;",
            "Ljava/lang/Integer;",
            ")",
            "Lcom/google/crypto/tink/Key;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/security/GeneralSecurityException;
        }
    .end annotation

    monitor-enter p0

    .line 108
    :try_start_1
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    .line 109
    iget-object v1, p0, Lcom/google/crypto/tink/internal/MutableKeyCreationRegistry;->creators:Ljava/util/Map;

    invoke-interface {v1, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/crypto/tink/internal/KeyCreator;

    if-eqz v0, :cond_17

    .line 118
    invoke-interface {v0, p1, p2}, Lcom/google/crypto/tink/internal/KeyCreator;->createKey(Lcom/google/crypto/tink/Parameters;Ljava/lang/Integer;)Lcom/google/crypto/tink/Key;

    move-result-object p1
    :try_end_13
    .catchall {:try_start_1 .. :try_end_13} :catchall_15

    monitor-exit p0

    return-object p1

    :catchall_15
    move-exception p1

    goto :goto_33

    .line 111
    :cond_17
    :try_start_17
    new-instance p2, Ljava/security/GeneralSecurityException;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Cannot create a new key for parameters "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string p1, ": no key creator for this class was registered."

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p2, p1}, Ljava/security/GeneralSecurityException;-><init>(Ljava/lang/String;)V

    throw p2

    .line 118
    :goto_33
    monitor-exit p0
    :try_end_34
    .catchall {:try_start_17 .. :try_end_34} :catchall_15

    throw p1
.end method

###### Class com.google.crypto.tink.internal.MutableKeyCreationRegistry$$ExternalSyntheticLambda0 (com.google.crypto.tink.internal.MutableKeyCreationRegistry$$ExternalSyntheticLambda0)
.class public final synthetic Lcom/google/crypto/tink/internal/MutableKeyCreationRegistry$$ExternalSyntheticLambda0;
.super Ljava/lang/Object;
.source "R8$$SyntheticClass"

# interfaces
.implements Lcom/google/crypto/tink/internal/KeyCreator;


# direct methods
.method public synthetic constructor <init>()V
    .registers 1

    .line 0
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final createKey(Lcom/google/crypto/tink/Parameters;Ljava/lang/Integer;)Lcom/google/crypto/tink/Key;
    .registers 3

    .line 0
    check-cast p1, Lcom/google/crypto/tink/internal/LegacyProtoParameters;

    invoke-static {p1, p2}, Lcom/google/crypto/tink/internal/MutableKeyCreationRegistry;->$r8$lambda$OBO0HsRyYK_EBCkQw3p-mwrG2v8(Lcom/google/crypto/tink/internal/LegacyProtoParameters;Ljava/lang/Integer;)Lcom/google/crypto/tink/internal/LegacyProtoKey;

    move-result-object p1

    return-object p1
.end method
