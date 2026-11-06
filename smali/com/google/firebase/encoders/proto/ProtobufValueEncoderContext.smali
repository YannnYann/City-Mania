###### Class com.google.firebase.encoders.proto.ProtobufValueEncoderContext (com.google.firebase.encoders.proto.ProtobufValueEncoderContext)
.class public Lcom/google/firebase/encoders/proto/ProtobufValueEncoderContext;
.super Ljava/lang/Object;
.source "ProtobufValueEncoderContext.java"

# interfaces
.implements Lcom/google/firebase/encoders/ValueEncoderContext;


# instance fields
.field public encoded:Z

.field public field:Lcom/google/firebase/encoders/FieldDescriptor;

.field public final objEncoderCtx:Lcom/google/firebase/encoders/proto/ProtobufDataEncoderContext;

.field public skipDefault:Z


# direct methods
.method public constructor <init>(Lcom/google/firebase/encoders/proto/ProtobufDataEncoderContext;)V
    .registers 3

    .line 30
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    .line 25
    iput-boolean v0, p0, Lcom/google/firebase/encoders/proto/ProtobufValueEncoderContext;->encoded:Z

    .line 26
    iput-boolean v0, p0, Lcom/google/firebase/encoders/proto/ProtobufValueEncoderContext;->skipDefault:Z

    .line 31
    iput-object p1, p0, Lcom/google/firebase/encoders/proto/ProtobufValueEncoderContext;->objEncoderCtx:Lcom/google/firebase/encoders/proto/ProtobufDataEncoderContext;

    return-void
.end method


# virtual methods
.method public add(Ljava/lang/String;)Lcom/google/firebase/encoders/ValueEncoderContext;
    .registers 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 50
    invoke-virtual {p0}, Lcom/google/firebase/encoders/proto/ProtobufValueEncoderContext;->checkNotUsed()V

    .line 51
    iget-object v0, p0, Lcom/google/firebase/encoders/proto/ProtobufValueEncoderContext;->objEncoderCtx:Lcom/google/firebase/encoders/proto/ProtobufDataEncoderContext;

    iget-object v1, p0, Lcom/google/firebase/encoders/proto/ProtobufValueEncoderContext;->field:Lcom/google/firebase/encoders/FieldDescriptor;

    iget-boolean v2, p0, Lcom/google/firebase/encoders/proto/ProtobufValueEncoderContext;->skipDefault:Z

    invoke-virtual {v0, v1, p1, v2}, Lcom/google/firebase/encoders/proto/ProtobufDataEncoderContext;->add(Lcom/google/firebase/encoders/FieldDescriptor;Ljava/lang/Object;Z)Lcom/google/firebase/encoders/ObjectEncoderContext;

    return-object p0
.end method

.method public add(Z)Lcom/google/firebase/encoders/ValueEncoderContext;
    .registers 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 90
    invoke-virtual {p0}, Lcom/google/firebase/encoders/proto/ProtobufValueEncoderContext;->checkNotUsed()V

    .line 91
    iget-object v0, p0, Lcom/google/firebase/encoders/proto/ProtobufValueEncoderContext;->objEncoderCtx:Lcom/google/firebase/encoders/proto/ProtobufDataEncoderContext;

    iget-object v1, p0, Lcom/google/firebase/encoders/proto/ProtobufValueEncoderContext;->field:Lcom/google/firebase/encoders/FieldDescriptor;

    iget-boolean v2, p0, Lcom/google/firebase/encoders/proto/ProtobufValueEncoderContext;->skipDefault:Z

    invoke-virtual {v0, v1, p1, v2}, Lcom/google/firebase/encoders/proto/ProtobufDataEncoderContext;->add(Lcom/google/firebase/encoders/FieldDescriptor;ZZ)Lcom/google/firebase/encoders/proto/ProtobufDataEncoderContext;

    return-object p0
.end method

.method public final checkNotUsed()V
    .registers 3

    .line 41
    iget-boolean v0, p0, Lcom/google/firebase/encoders/proto/ProtobufValueEncoderContext;->encoded:Z

    if-nez v0, :cond_8

    const/4 v0, 0x1

    .line 44
    iput-boolean v0, p0, Lcom/google/firebase/encoders/proto/ProtobufValueEncoderContext;->encoded:Z

    return-void

    .line 42
    :cond_8
    new-instance v0, Lcom/google/firebase/encoders/EncodingException;

    const-string v1, "Cannot encode a second value in the ValueEncoderContext"

    invoke-direct {v0, v1}, Lcom/google/firebase/encoders/EncodingException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public resetContext(Lcom/google/firebase/encoders/FieldDescriptor;Z)V
    .registers 4

    const/4 v0, 0x0

    .line 35
    iput-boolean v0, p0, Lcom/google/firebase/encoders/proto/ProtobufValueEncoderContext;->encoded:Z

    .line 36
    iput-object p1, p0, Lcom/google/firebase/encoders/proto/ProtobufValueEncoderContext;->field:Lcom/google/firebase/encoders/FieldDescriptor;

    .line 37
    iput-boolean p2, p0, Lcom/google/firebase/encoders/proto/ProtobufValueEncoderContext;->skipDefault:Z

    return-void
.end method
