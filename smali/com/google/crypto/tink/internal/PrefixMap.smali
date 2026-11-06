###### Class com.google.crypto.tink.internal.PrefixMap (com.google.crypto.tink.internal.PrefixMap)
.class public final Lcom/google/crypto/tink/internal/PrefixMap;
.super Ljava/lang/Object;
.source "PrefixMap.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/google/crypto/tink/internal/PrefixMap$ConcatenatedIterator;,
        Lcom/google/crypto/tink/internal/PrefixMap$Builder;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<P:",
        "Ljava/lang/Object;",
        ">",
        "Ljava/lang/Object;"
    }
.end annotation


# static fields
.field public static final EMPTY_BYTES:Lcom/google/crypto/tink/util/Bytes;


# instance fields
.field public final entries:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Lcom/google/crypto/tink/util/Bytes;",
            "Ljava/util/List<",
            "TP;>;>;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .registers 1

    const/4 v0, 0x0

    .line 41
    new-array v0, v0, [B

    invoke-static {v0}, Lcom/google/crypto/tink/util/Bytes;->copyFrom([B)Lcom/google/crypto/tink/util/Bytes;

    move-result-object v0

    sput-object v0, Lcom/google/crypto/tink/internal/PrefixMap;->EMPTY_BYTES:Lcom/google/crypto/tink/util/Bytes;

    return-void
.end method

.method public constructor <init>(Ljava/util/Map;)V
    .registers 2
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "entries"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map<",
            "Lcom/google/crypto/tink/util/Bytes;",
            "Ljava/util/List<",
            "TP;>;>;)V"
        }
    .end annotation

    .line 126
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 127
    iput-object p1, p0, Lcom/google/crypto/tink/internal/PrefixMap;->entries:Ljava/util/Map;

    return-void
.end method

.method public synthetic constructor <init>(Ljava/util/Map;Lcom/google/crypto/tink/internal/PrefixMap$1;)V
    .registers 3

    .line 40
    invoke-direct {p0, p1}, Lcom/google/crypto/tink/internal/PrefixMap;-><init>(Ljava/util/Map;)V

    return-void
.end method


# virtual methods
.method public getAllWithMatchingPrefix([B)Ljava/lang/Iterable;
    .registers 6
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "text"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "([B)",
            "Ljava/lang/Iterable<",
            "TP;>;"
        }
    .end annotation

    .line 105
    iget-object v0, p0, Lcom/google/crypto/tink/internal/PrefixMap;->entries:Ljava/util/Map;

    sget-object v1, Lcom/google/crypto/tink/internal/PrefixMap;->EMPTY_BYTES:Lcom/google/crypto/tink/util/Bytes;

    invoke-interface {v0, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/List;

    .line 107
    array-length v1, p1

    const/4 v2, 0x5

    if-lt v1, v2, :cond_1c

    iget-object v1, p0, Lcom/google/crypto/tink/internal/PrefixMap;->entries:Ljava/util/Map;

    const/4 v3, 0x0

    invoke-static {p1, v3, v2}, Lcom/google/crypto/tink/util/Bytes;->copyFrom([BII)Lcom/google/crypto/tink/util/Bytes;

    move-result-object p1

    invoke-interface {v1, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/util/List;

    goto :goto_1d

    :cond_1c
    const/4 p1, 0x0

    :goto_1d
    if-nez v0, :cond_27

    if-nez p1, :cond_27

    .line 109
    new-instance p1, Ljava/util/ArrayList;

    invoke-direct {p1}, Ljava/util/ArrayList;-><init>()V

    return-object p1

    :cond_27
    if-nez v0, :cond_2a

    return-object p1

    :cond_2a
    if-nez p1, :cond_2d

    return-object v0

    .line 117
    :cond_2d
    new-instance v1, Lcom/google/crypto/tink/internal/PrefixMap$1;

    invoke-direct {v1, p0, p1, v0}, Lcom/google/crypto/tink/internal/PrefixMap$1;-><init>(Lcom/google/crypto/tink/internal/PrefixMap;Ljava/util/List;Ljava/util/List;)V

    return-object v1
.end method

###### Class com.google.crypto.tink.internal.PrefixMap.AnonymousClass1 (com.google.crypto.tink.internal.PrefixMap$1)
.class public Lcom/google/crypto/tink/internal/PrefixMap$1;
.super Ljava/lang/Object;
.source "PrefixMap.java"

# interfaces
.implements Ljava/lang/Iterable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/google/crypto/tink/internal/PrefixMap;->getAllWithMatchingPrefix([B)Ljava/lang/Iterable;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Ljava/lang/Iterable<",
        "TP;>;"
    }
.end annotation


# instance fields
.field public final synthetic this$0:Lcom/google/crypto/tink/internal/PrefixMap;

.field public final synthetic val$fiveByteEntriesOrNull:Ljava/util/List;

.field public final synthetic val$zeroByteEntriesOrNull:Ljava/util/List;


# direct methods
.method public constructor <init>(Lcom/google/crypto/tink/internal/PrefixMap;Ljava/util/List;Ljava/util/List;)V
    .registers 4
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x8010,
            0x1010,
            0x1010
        }
        names = {
            "this$0",
            "val$fiveByteEntriesOrNull",
            "val$zeroByteEntriesOrNull"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    .line 117
    iput-object p1, p0, Lcom/google/crypto/tink/internal/PrefixMap$1;->this$0:Lcom/google/crypto/tink/internal/PrefixMap;

    iput-object p2, p0, Lcom/google/crypto/tink/internal/PrefixMap$1;->val$fiveByteEntriesOrNull:Ljava/util/List;

    iput-object p3, p0, Lcom/google/crypto/tink/internal/PrefixMap$1;->val$zeroByteEntriesOrNull:Ljava/util/List;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public iterator()Ljava/util/Iterator;
    .registers 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Iterator<",
            "TP;>;"
        }
    .end annotation

    .line 120
    new-instance v0, Lcom/google/crypto/tink/internal/PrefixMap$ConcatenatedIterator;

    iget-object v1, p0, Lcom/google/crypto/tink/internal/PrefixMap$1;->val$fiveByteEntriesOrNull:Ljava/util/List;

    .line 121
    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    iget-object v2, p0, Lcom/google/crypto/tink/internal/PrefixMap$1;->val$zeroByteEntriesOrNull:Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    const/4 v3, 0x0

    invoke-direct {v0, v1, v2, v3}, Lcom/google/crypto/tink/internal/PrefixMap$ConcatenatedIterator;-><init>(Ljava/util/Iterator;Ljava/util/Iterator;Lcom/google/crypto/tink/internal/PrefixMap$1;)V

    return-object v0
.end method

###### Class com.google.crypto.tink.internal.PrefixMap.Builder (com.google.crypto.tink.internal.PrefixMap$Builder)
.class public Lcom/google/crypto/tink/internal/PrefixMap$Builder;
.super Ljava/lang/Object;
.source "PrefixMap.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/crypto/tink/internal/PrefixMap;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "Builder"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<P:",
        "Ljava/lang/Object;",
        ">",
        "Ljava/lang/Object;"
    }
.end annotation


# instance fields
.field public final entries:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Lcom/google/crypto/tink/util/Bytes;",
            "Ljava/util/List<",
            "TP;>;>;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .registers 2

    .line 44
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 70
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/google/crypto/tink/internal/PrefixMap$Builder;->entries:Ljava/util/Map;

    return-void
.end method


# virtual methods
.method public build()Lcom/google/crypto/tink/internal/PrefixMap;
    .registers 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lcom/google/crypto/tink/internal/PrefixMap<",
            "TP;>;"
        }
    .end annotation

    .line 67
    new-instance v0, Lcom/google/crypto/tink/internal/PrefixMap;

    iget-object v1, p0, Lcom/google/crypto/tink/internal/PrefixMap$Builder;->entries:Ljava/util/Map;

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2}, Lcom/google/crypto/tink/internal/PrefixMap;-><init>(Ljava/util/Map;Lcom/google/crypto/tink/internal/PrefixMap$1;)V

    return-object v0
.end method

.method public put(Lcom/google/crypto/tink/util/Bytes;Ljava/lang/Object;)Lcom/google/crypto/tink/internal/PrefixMap$Builder;
    .registers 5
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0
        }
        names = {
            "prefix",
            "primitive"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/google/crypto/tink/util/Bytes;",
            "TP;)",
            "Lcom/google/crypto/tink/internal/PrefixMap$Builder<",
            "TP;>;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/security/GeneralSecurityException;
        }
    .end annotation

    .line 52
    invoke-virtual {p1}, Lcom/google/crypto/tink/util/Bytes;->size()I

    move-result v0

    if-eqz v0, :cond_16

    invoke-virtual {p1}, Lcom/google/crypto/tink/util/Bytes;->size()I

    move-result v0

    const/4 v1, 0x5

    if-ne v0, v1, :cond_e

    goto :goto_16

    .line 53
    :cond_e
    new-instance p1, Ljava/security/GeneralSecurityException;

    const-string p2, "PrefixMap only supports 0 and 5 byte prefixes"

    invoke-direct {p1, p2}, Ljava/security/GeneralSecurityException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 56
    :cond_16
    :goto_16
    iget-object v0, p0, Lcom/google/crypto/tink/internal/PrefixMap$Builder;->entries:Ljava/util/Map;

    invoke-interface {v0, p1}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_27

    .line 57
    iget-object v0, p0, Lcom/google/crypto/tink/internal/PrefixMap$Builder;->entries:Ljava/util/Map;

    invoke-interface {v0, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/util/List;

    goto :goto_32

    .line 59
    :cond_27
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 60
    iget-object v1, p0, Lcom/google/crypto/tink/internal/PrefixMap$Builder;->entries:Ljava/util/Map;

    invoke-interface {v1, p1, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-object p1, v0

    .line 62
    :goto_32
    invoke-interface {p1, p2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    return-object p0
.end method

###### Class com.google.crypto.tink.internal.PrefixMap.ConcatenatedIterator (com.google.crypto.tink.internal.PrefixMap$ConcatenatedIterator)
.class public Lcom/google/crypto/tink/internal/PrefixMap$ConcatenatedIterator;
.super Ljava/lang/Object;
.source "PrefixMap.java"

# interfaces
.implements Ljava/util/Iterator;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/crypto/tink/internal/PrefixMap;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "ConcatenatedIterator"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<P:",
        "Ljava/lang/Object;",
        ">",
        "Ljava/lang/Object;",
        "Ljava/util/Iterator<",
        "TP;>;"
    }
.end annotation


# instance fields
.field public final it0:Ljava/util/Iterator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Iterator<",
            "TP;>;"
        }
    .end annotation
.end field

.field public final it1:Ljava/util/Iterator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Iterator<",
            "TP;>;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Ljava/util/Iterator;Ljava/util/Iterator;)V
    .registers 3
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0
        }
        names = {
            "it0",
            "it1"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Iterator<",
            "TP;>;",
            "Ljava/util/Iterator<",
            "TP;>;)V"
        }
    .end annotation

    .line 75
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 76
    iput-object p1, p0, Lcom/google/crypto/tink/internal/PrefixMap$ConcatenatedIterator;->it0:Ljava/util/Iterator;

    .line 77
    iput-object p2, p0, Lcom/google/crypto/tink/internal/PrefixMap$ConcatenatedIterator;->it1:Ljava/util/Iterator;

    return-void
.end method

.method public synthetic constructor <init>(Ljava/util/Iterator;Ljava/util/Iterator;Lcom/google/crypto/tink/internal/PrefixMap$1;)V
    .registers 4

    .line 73
    invoke-direct {p0, p1, p2}, Lcom/google/crypto/tink/internal/PrefixMap$ConcatenatedIterator;-><init>(Ljava/util/Iterator;Ljava/util/Iterator;)V

    return-void
.end method


# virtual methods
.method public hasNext()Z
    .registers 2

    .line 82
    iget-object v0, p0, Lcom/google/crypto/tink/internal/PrefixMap$ConcatenatedIterator;->it0:Ljava/util/Iterator;

    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-nez v0, :cond_13

    iget-object v0, p0, Lcom/google/crypto/tink/internal/PrefixMap$ConcatenatedIterator;->it1:Ljava/util/Iterator;

    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_11

    goto :goto_13

    :cond_11
    const/4 v0, 0x0

    return v0

    :cond_13
    :goto_13
    const/4 v0, 0x1

    return v0
.end method

.method public next()Ljava/lang/Object;
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()TP;"
        }
    .end annotation

    .line 87
    iget-object v0, p0, Lcom/google/crypto/tink/internal/PrefixMap$ConcatenatedIterator;->it0:Ljava/util/Iterator;

    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_f

    .line 88
    iget-object v0, p0, Lcom/google/crypto/tink/internal/PrefixMap$ConcatenatedIterator;->it0:Ljava/util/Iterator;

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    return-object v0

    .line 90
    :cond_f
    iget-object v0, p0, Lcom/google/crypto/tink/internal/PrefixMap$ConcatenatedIterator;->it1:Ljava/util/Iterator;

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method
