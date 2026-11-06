###### Class com.google.crypto.tink.internal.MonitoringUtil (com.google.crypto.tink.internal.MonitoringUtil)
.class public final Lcom/google/crypto/tink/internal/MonitoringUtil;
.super Ljava/lang/Object;
.source "MonitoringUtil.java"


# static fields
.field public static final DO_NOTHING_LOGGER:Lcom/google/crypto/tink/internal/MonitoringClient$Logger;


# direct methods
.method static constructor <clinit>()V
    .registers 1

    .line 23
    new-instance v0, Lcom/google/crypto/tink/internal/MonitoringUtil$1;

    invoke-direct {v0}, Lcom/google/crypto/tink/internal/MonitoringUtil$1;-><init>()V

    sput-object v0, Lcom/google/crypto/tink/internal/MonitoringUtil;->DO_NOTHING_LOGGER:Lcom/google/crypto/tink/internal/MonitoringClient$Logger;

    return-void
.end method

###### Class com.google.crypto.tink.internal.MonitoringUtil.AnonymousClass1 (com.google.crypto.tink.internal.MonitoringUtil$1)
.class public Lcom/google/crypto/tink/internal/MonitoringUtil$1;
.super Ljava/lang/Object;
.source "MonitoringUtil.java"

# interfaces
.implements Lcom/google/crypto/tink/internal/MonitoringClient$Logger;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/crypto/tink/internal/MonitoringUtil;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# direct methods
.method public constructor <init>()V
    .registers 1

    .line 23
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method
