###### Class com.google.crypto.tink.internal.MonitoringClient (com.google.crypto.tink.internal.MonitoringClient)
.class public interface abstract Lcom/google/crypto/tink/internal/MonitoringClient;
.super Ljava/lang/Object;
.source "MonitoringClient.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/google/crypto/tink/internal/MonitoringClient$Logger;
    }
.end annotation


# virtual methods
.method public abstract createLogger(Lcom/google/crypto/tink/internal/KeysetHandleInterface;Lcom/google/crypto/tink/internal/MonitoringAnnotations;Ljava/lang/String;Ljava/lang/String;)Lcom/google/crypto/tink/internal/MonitoringClient$Logger;
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0,
            0x0,
            0x0
        }
        names = {
            "keysetInfo",
            "annotations",
            "primitive",
            "api"
        }
    .end annotation
.end method

###### Class com.google.crypto.tink.internal.MonitoringClient.Logger (com.google.crypto.tink.internal.MonitoringClient$Logger)
.class public interface abstract Lcom/google/crypto/tink/internal/MonitoringClient$Logger;
.super Ljava/lang/Object;
.source "MonitoringClient.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/crypto/tink/internal/MonitoringClient;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x609
    name = "Logger"
.end annotation


# virtual methods
.method public log(IJ)V
    .registers 4
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0
        }
        names = {
            "keyId",
            "numBytesAsInput"
        }
    .end annotation

    .line 0
    return-void
.end method

.method public logFailure()V
    .registers 1

    .line 0
    return-void
.end method

.method public logKeyExport(I)V
    .registers 2
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "keyId"
        }
    .end annotation

    .line 0
    return-void
.end method
