###### Class com.google.crypto.tink.internal.MonitoringAnnotations (com.google.crypto.tink.internal.MonitoringAnnotations)
.class public final Lcom/google/crypto/tink/internal/MonitoringAnnotations;
.super Ljava/lang/Object;
.source "MonitoringAnnotations.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/google/crypto/tink/internal/MonitoringAnnotations$Builder;
    }
.end annotation


# static fields
.field public static final EMPTY:Lcom/google/crypto/tink/internal/MonitoringAnnotations;


# instance fields
.field public final entries:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .registers 1

    .line 35
    invoke-static {}, Lcom/google/crypto/tink/internal/MonitoringAnnotations;->newBuilder()Lcom/google/crypto/tink/internal/MonitoringAnnotations$Builder;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/crypto/tink/internal/MonitoringAnnotations$Builder;->build()Lcom/google/crypto/tink/internal/MonitoringAnnotations;

    move-result-object v0

    sput-object v0, Lcom/google/crypto/tink/internal/MonitoringAnnotations;->EMPTY:Lcom/google/crypto/tink/internal/MonitoringAnnotations;

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
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    .line 77
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 78
    iput-object p1, p0, Lcom/google/crypto/tink/internal/MonitoringAnnotations;->entries:Ljava/util/Map;

    return-void
.end method

.method public synthetic constructor <init>(Ljava/util/Map;Lcom/google/crypto/tink/internal/MonitoringAnnotations$1;)V
    .registers 3

    .line 33
    invoke-direct {p0, p1}, Lcom/google/crypto/tink/internal/MonitoringAnnotations;-><init>(Ljava/util/Map;)V

    return-void
.end method

.method public static newBuilder()Lcom/google/crypto/tink/internal/MonitoringAnnotations$Builder;
    .registers 1

    .line 82
    new-instance v0, Lcom/google/crypto/tink/internal/MonitoringAnnotations$Builder;

    invoke-direct {v0}, Lcom/google/crypto/tink/internal/MonitoringAnnotations$Builder;-><init>()V

    return-object v0
.end method


# virtual methods
.method public equals(Ljava/lang/Object;)Z
    .registers 3
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "obj"
        }
    .end annotation

    .line 97
    instance-of v0, p1, Lcom/google/crypto/tink/internal/MonitoringAnnotations;

    if-nez v0, :cond_6

    const/4 p1, 0x0

    return p1

    .line 100
    :cond_6
    check-cast p1, Lcom/google/crypto/tink/internal/MonitoringAnnotations;

    .line 101
    iget-object v0, p0, Lcom/google/crypto/tink/internal/MonitoringAnnotations;->entries:Ljava/util/Map;

    iget-object p1, p1, Lcom/google/crypto/tink/internal/MonitoringAnnotations;->entries:Ljava/util/Map;

    invoke-interface {v0, p1}, Ljava/util/Map;->equals(Ljava/lang/Object;)Z

    move-result p1

    return p1
.end method

.method public hashCode()I
    .registers 2

    .line 106
    iget-object v0, p0, Lcom/google/crypto/tink/internal/MonitoringAnnotations;->entries:Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map;->hashCode()I

    move-result v0

    return v0
.end method

.method public isEmpty()Z
    .registers 2

    .line 92
    iget-object v0, p0, Lcom/google/crypto/tink/internal/MonitoringAnnotations;->entries:Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map;->isEmpty()Z

    move-result v0

    return v0
.end method

.method public toString()Ljava/lang/String;
    .registers 2

    .line 111
    iget-object v0, p0, Lcom/google/crypto/tink/internal/MonitoringAnnotations;->entries:Ljava/util/Map;

    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

###### Class com.google.crypto.tink.internal.MonitoringAnnotations.AnonymousClass1 (com.google.crypto.tink.internal.MonitoringAnnotations$1)
.class public synthetic Lcom/google/crypto/tink/internal/MonitoringAnnotations$1;
.super Ljava/lang/Object;
.source "MonitoringAnnotations.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/crypto/tink/internal/MonitoringAnnotations;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1009
    name = null
.end annotation

###### Class com.google.crypto.tink.internal.MonitoringAnnotations.Builder (com.google.crypto.tink.internal.MonitoringAnnotations$Builder)
.class public final Lcom/google/crypto/tink/internal/MonitoringAnnotations$Builder;
.super Ljava/lang/Object;
.source "MonitoringAnnotations.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/crypto/tink/internal/MonitoringAnnotations;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "Builder"
.end annotation


# instance fields
.field public builderEntries:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .registers 2

    .line 38
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 39
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/google/crypto/tink/internal/MonitoringAnnotations$Builder;->builderEntries:Ljava/util/HashMap;

    return-void
.end method


# virtual methods
.method public build()Lcom/google/crypto/tink/internal/MonitoringAnnotations;
    .registers 4

    .line 61
    iget-object v0, p0, Lcom/google/crypto/tink/internal/MonitoringAnnotations$Builder;->builderEntries:Ljava/util/HashMap;

    if-eqz v0, :cond_13

    .line 64
    new-instance v0, Lcom/google/crypto/tink/internal/MonitoringAnnotations;

    iget-object v1, p0, Lcom/google/crypto/tink/internal/MonitoringAnnotations$Builder;->builderEntries:Ljava/util/HashMap;

    .line 65
    invoke-static {v1}, Ljava/util/Collections;->unmodifiableMap(Ljava/util/Map;)Ljava/util/Map;

    move-result-object v1

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2}, Lcom/google/crypto/tink/internal/MonitoringAnnotations;-><init>(Ljava/util/Map;Lcom/google/crypto/tink/internal/MonitoringAnnotations$1;)V

    .line 69
    iput-object v2, p0, Lcom/google/crypto/tink/internal/MonitoringAnnotations$Builder;->builderEntries:Ljava/util/HashMap;

    return-object v0

    .line 62
    :cond_13
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "cannot call build() twice"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0
.end method
