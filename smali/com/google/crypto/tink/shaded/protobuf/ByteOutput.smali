###### Class com.google.crypto.tink.shaded.protobuf.ByteOutput (com.google.crypto.tink.shaded.protobuf.ByteOutput)
.class public abstract Lcom/google/crypto/tink/shaded/protobuf/ByteOutput;
.super Ljava/lang/Object;
.source "ByteOutput.java"


# direct methods
.method public constructor <init>()V
    .registers 1

    .line 27
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public abstract writeLazy([BII)V
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0,
            0x0
        }
        names = {
            "value",
            "offset",
            "length"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation
.end method
