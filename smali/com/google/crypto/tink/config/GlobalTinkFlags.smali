###### Class com.google.crypto.tink.config.GlobalTinkFlags (com.google.crypto.tink.config.GlobalTinkFlags)
.class public final Lcom/google/crypto/tink/config/GlobalTinkFlags;
.super Ljava/lang/Object;
.source "GlobalTinkFlags.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/google/crypto/tink/config/GlobalTinkFlags$TinkFlagImpl;
    }
.end annotation


# static fields
.field public static final validateKeysetsOnParsing:Lcom/google/crypto/tink/config/TinkFlag;


# direct methods
.method static constructor <clinit>()V
    .registers 2

    .line 38
    new-instance v0, Lcom/google/crypto/tink/config/GlobalTinkFlags$TinkFlagImpl;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lcom/google/crypto/tink/config/GlobalTinkFlags$TinkFlagImpl;-><init>(Z)V

    sput-object v0, Lcom/google/crypto/tink/config/GlobalTinkFlags;->validateKeysetsOnParsing:Lcom/google/crypto/tink/config/TinkFlag;

    return-void
.end method

###### Class com.google.crypto.tink.config.GlobalTinkFlags.TinkFlagImpl (com.google.crypto.tink.config.GlobalTinkFlags$TinkFlagImpl)
.class public Lcom/google/crypto/tink/config/GlobalTinkFlags$TinkFlagImpl;
.super Ljava/lang/Object;
.source "GlobalTinkFlags.java"

# interfaces
.implements Lcom/google/crypto/tink/config/TinkFlag;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/crypto/tink/config/GlobalTinkFlags;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "TinkFlagImpl"
.end annotation


# instance fields
.field public final b:Ljava/util/concurrent/atomic/AtomicBoolean;


# direct methods
.method public constructor <init>(Z)V
    .registers 3
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "b"
        }
    .end annotation

    .line 43
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 44
    new-instance v0, Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-direct {v0, p1}, Ljava/util/concurrent/atomic/AtomicBoolean;-><init>(Z)V

    iput-object v0, p0, Lcom/google/crypto/tink/config/GlobalTinkFlags$TinkFlagImpl;->b:Ljava/util/concurrent/atomic/AtomicBoolean;

    return-void
.end method


# virtual methods
.method public getValue()Z
    .registers 2

    .line 49
    iget-object v0, p0, Lcom/google/crypto/tink/config/GlobalTinkFlags$TinkFlagImpl;->b:Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicBoolean;->get()Z

    move-result v0

    return v0
.end method
