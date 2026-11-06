###### Class com.explorestack.protobuf.ProtoSyntax (com.explorestack.protobuf.ProtoSyntax)
.class public final enum Lcom/explorestack/protobuf/ProtoSyntax;
.super Ljava/lang/Enum;
.source "ProtoSyntax.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lcom/explorestack/protobuf/ProtoSyntax;",
        ">;"
    }
.end annotation


# static fields
.field public static final synthetic $VALUES:[Lcom/explorestack/protobuf/ProtoSyntax;

.field public static final enum PROTO2:Lcom/explorestack/protobuf/ProtoSyntax;

.field public static final enum PROTO3:Lcom/explorestack/protobuf/ProtoSyntax;


# direct methods
.method static constructor <clinit>()V
    .registers 4

    .line 36
    new-instance v0, Lcom/explorestack/protobuf/ProtoSyntax;

    const-string v1, "PROTO2"

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2}, Lcom/explorestack/protobuf/ProtoSyntax;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/explorestack/protobuf/ProtoSyntax;->PROTO2:Lcom/explorestack/protobuf/ProtoSyntax;

    .line 37
    new-instance v1, Lcom/explorestack/protobuf/ProtoSyntax;

    const-string v2, "PROTO3"

    const/4 v3, 0x1

    invoke-direct {v1, v2, v3}, Lcom/explorestack/protobuf/ProtoSyntax;-><init>(Ljava/lang/String;I)V

    sput-object v1, Lcom/explorestack/protobuf/ProtoSyntax;->PROTO3:Lcom/explorestack/protobuf/ProtoSyntax;

    .line 34
    filled-new-array {v0, v1}, [Lcom/explorestack/protobuf/ProtoSyntax;

    move-result-object v0

    sput-object v0, Lcom/explorestack/protobuf/ProtoSyntax;->$VALUES:[Lcom/explorestack/protobuf/ProtoSyntax;

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;I)V
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    .line 35
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/explorestack/protobuf/ProtoSyntax;
    .registers 2

    .line 34
    const-class v0, Lcom/explorestack/protobuf/ProtoSyntax;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lcom/explorestack/protobuf/ProtoSyntax;

    return-object p0
.end method

.method public static values()[Lcom/explorestack/protobuf/ProtoSyntax;
    .registers 1

    .line 34
    sget-object v0, Lcom/explorestack/protobuf/ProtoSyntax;->$VALUES:[Lcom/explorestack/protobuf/ProtoSyntax;

    invoke-virtual {v0}, [Lcom/explorestack/protobuf/ProtoSyntax;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/explorestack/protobuf/ProtoSyntax;

    return-object v0
.end method
