###### Class com.explorestack.protobuf.StructuralMessageInfo (com.explorestack.protobuf.StructuralMessageInfo)
.class public final Lcom/explorestack/protobuf/StructuralMessageInfo;
.super Ljava/lang/Object;
.source "StructuralMessageInfo.java"

# interfaces
.implements Lcom/explorestack/protobuf/MessageInfo;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/explorestack/protobuf/StructuralMessageInfo$Builder;
    }
.end annotation


# instance fields
.field public final checkInitialized:[I

.field public final defaultInstance:Lcom/explorestack/protobuf/MessageLite;

.field public final fields:[Lcom/explorestack/protobuf/FieldInfo;

.field public final messageSetWireFormat:Z

.field public final syntax:Lcom/explorestack/protobuf/ProtoSyntax;


# direct methods
.method public constructor <init>(Lcom/explorestack/protobuf/ProtoSyntax;Z[I[Lcom/explorestack/protobuf/FieldInfo;Ljava/lang/Object;)V
    .registers 6

    .line 62
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 63
    iput-object p1, p0, Lcom/explorestack/protobuf/StructuralMessageInfo;->syntax:Lcom/explorestack/protobuf/ProtoSyntax;

    .line 64
    iput-boolean p2, p0, Lcom/explorestack/protobuf/StructuralMessageInfo;->messageSetWireFormat:Z

    .line 65
    iput-object p3, p0, Lcom/explorestack/protobuf/StructuralMessageInfo;->checkInitialized:[I

    .line 66
    iput-object p4, p0, Lcom/explorestack/protobuf/StructuralMessageInfo;->fields:[Lcom/explorestack/protobuf/FieldInfo;

    .line 67
    const-string p1, "defaultInstance"

    invoke-static {p5, p1}, Lcom/explorestack/protobuf/Internal;->checkNotNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/explorestack/protobuf/MessageLite;

    iput-object p1, p0, Lcom/explorestack/protobuf/StructuralMessageInfo;->defaultInstance:Lcom/explorestack/protobuf/MessageLite;

    return-void
.end method

.method public static newBuilder(I)Lcom/explorestack/protobuf/StructuralMessageInfo$Builder;
    .registers 2

    .line 107
    new-instance v0, Lcom/explorestack/protobuf/StructuralMessageInfo$Builder;

    invoke-direct {v0, p0}, Lcom/explorestack/protobuf/StructuralMessageInfo$Builder;-><init>(I)V

    return-object v0
.end method


# virtual methods
.method public getCheckInitialized()[I
    .registers 2

    .line 84
    iget-object v0, p0, Lcom/explorestack/protobuf/StructuralMessageInfo;->checkInitialized:[I

    return-object v0
.end method

.method public getDefaultInstance()Lcom/explorestack/protobuf/MessageLite;
    .registers 2

    .line 97
    iget-object v0, p0, Lcom/explorestack/protobuf/StructuralMessageInfo;->defaultInstance:Lcom/explorestack/protobuf/MessageLite;

    return-object v0
.end method

.method public getFields()[Lcom/explorestack/protobuf/FieldInfo;
    .registers 2

    .line 92
    iget-object v0, p0, Lcom/explorestack/protobuf/StructuralMessageInfo;->fields:[Lcom/explorestack/protobuf/FieldInfo;

    return-object v0
.end method

.method public getSyntax()Lcom/explorestack/protobuf/ProtoSyntax;
    .registers 2

    .line 73
    iget-object v0, p0, Lcom/explorestack/protobuf/StructuralMessageInfo;->syntax:Lcom/explorestack/protobuf/ProtoSyntax;

    return-object v0
.end method

.method public isMessageSetWireFormat()Z
    .registers 2

    .line 79
    iget-boolean v0, p0, Lcom/explorestack/protobuf/StructuralMessageInfo;->messageSetWireFormat:Z

    return v0
.end method

###### Class com.explorestack.protobuf.StructuralMessageInfo.Builder (com.explorestack.protobuf.StructuralMessageInfo$Builder)
.class public final Lcom/explorestack/protobuf/StructuralMessageInfo$Builder;
.super Ljava/lang/Object;
.source "StructuralMessageInfo.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/explorestack/protobuf/StructuralMessageInfo;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "Builder"
.end annotation


# instance fields
.field public checkInitialized:[I

.field public defaultInstance:Ljava/lang/Object;

.field public final fields:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/explorestack/protobuf/FieldInfo;",
            ">;"
        }
    .end annotation
.end field

.field public messageSetWireFormat:Z

.field public syntax:Lcom/explorestack/protobuf/ProtoSyntax;

.field public wasBuilt:Z


# direct methods
.method public constructor <init>(I)V
    .registers 3

    .line 123
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    .line 116
    iput-object v0, p0, Lcom/explorestack/protobuf/StructuralMessageInfo$Builder;->checkInitialized:[I

    .line 124
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0, p1}, Ljava/util/ArrayList;-><init>(I)V

    iput-object v0, p0, Lcom/explorestack/protobuf/StructuralMessageInfo$Builder;->fields:Ljava/util/List;

    return-void
.end method


# virtual methods
.method public build()Lcom/explorestack/protobuf/StructuralMessageInfo;
    .registers 8

    .line 151
    iget-boolean v0, p0, Lcom/explorestack/protobuf/StructuralMessageInfo$Builder;->wasBuilt:Z

    if-nez v0, :cond_32

    .line 154
    iget-object v0, p0, Lcom/explorestack/protobuf/StructuralMessageInfo$Builder;->syntax:Lcom/explorestack/protobuf/ProtoSyntax;

    if-eqz v0, :cond_2a

    const/4 v0, 0x1

    .line 157
    iput-boolean v0, p0, Lcom/explorestack/protobuf/StructuralMessageInfo$Builder;->wasBuilt:Z

    .line 158
    iget-object v0, p0, Lcom/explorestack/protobuf/StructuralMessageInfo$Builder;->fields:Ljava/util/List;

    invoke-static {v0}, Ljava/util/Collections;->sort(Ljava/util/List;)V

    .line 159
    new-instance v1, Lcom/explorestack/protobuf/StructuralMessageInfo;

    iget-object v2, p0, Lcom/explorestack/protobuf/StructuralMessageInfo$Builder;->syntax:Lcom/explorestack/protobuf/ProtoSyntax;

    iget-boolean v3, p0, Lcom/explorestack/protobuf/StructuralMessageInfo$Builder;->messageSetWireFormat:Z

    iget-object v4, p0, Lcom/explorestack/protobuf/StructuralMessageInfo$Builder;->checkInitialized:[I

    iget-object v0, p0, Lcom/explorestack/protobuf/StructuralMessageInfo$Builder;->fields:Ljava/util/List;

    const/4 v5, 0x0

    new-array v5, v5, [Lcom/explorestack/protobuf/FieldInfo;

    .line 163
    invoke-interface {v0, v5}, Ljava/util/List;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v0

    move-object v5, v0

    check-cast v5, [Lcom/explorestack/protobuf/FieldInfo;

    iget-object v6, p0, Lcom/explorestack/protobuf/StructuralMessageInfo$Builder;->defaultInstance:Ljava/lang/Object;

    invoke-direct/range {v1 .. v6}, Lcom/explorestack/protobuf/StructuralMessageInfo;-><init>(Lcom/explorestack/protobuf/ProtoSyntax;Z[I[Lcom/explorestack/protobuf/FieldInfo;Ljava/lang/Object;)V

    return-object v1

    .line 155
    :cond_2a
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "Must specify a proto syntax"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 152
    :cond_32
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "Builder can only build once"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public withCheckInitialized([I)V
    .registers 2

    .line 140
    iput-object p1, p0, Lcom/explorestack/protobuf/StructuralMessageInfo$Builder;->checkInitialized:[I

    return-void
.end method

.method public withDefaultInstance(Ljava/lang/Object;)V
    .registers 2

    .line 128
    iput-object p1, p0, Lcom/explorestack/protobuf/StructuralMessageInfo$Builder;->defaultInstance:Ljava/lang/Object;

    return-void
.end method

.method public withField(Lcom/explorestack/protobuf/FieldInfo;)V
    .registers 3

    .line 144
    iget-boolean v0, p0, Lcom/explorestack/protobuf/StructuralMessageInfo$Builder;->wasBuilt:Z

    if-nez v0, :cond_a

    .line 147
    iget-object v0, p0, Lcom/explorestack/protobuf/StructuralMessageInfo$Builder;->fields:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    return-void

    .line 145
    :cond_a
    new-instance p1, Ljava/lang/IllegalStateException;

    const-string v0, "Builder can only build once"

    invoke-direct {p1, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public withMessageSetWireFormat(Z)V
    .registers 2

    .line 136
    iput-boolean p1, p0, Lcom/explorestack/protobuf/StructuralMessageInfo$Builder;->messageSetWireFormat:Z

    return-void
.end method

.method public withSyntax(Lcom/explorestack/protobuf/ProtoSyntax;)V
    .registers 3

    .line 132
    const-string v0, "syntax"

    invoke-static {p1, v0}, Lcom/explorestack/protobuf/Internal;->checkNotNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/explorestack/protobuf/ProtoSyntax;

    iput-object p1, p0, Lcom/explorestack/protobuf/StructuralMessageInfo$Builder;->syntax:Lcom/explorestack/protobuf/ProtoSyntax;

    return-void
.end method
