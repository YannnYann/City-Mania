###### Class com.explorestack.protobuf.NewInstanceSchemaFull (com.explorestack.protobuf.NewInstanceSchemaFull)
.class public final Lcom/explorestack/protobuf/NewInstanceSchemaFull;
.super Ljava/lang/Object;
.source "NewInstanceSchemaFull.java"

# interfaces
.implements Lcom/explorestack/protobuf/NewInstanceSchema;


# direct methods
.method public constructor <init>()V
    .registers 1

    .line 33
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public newInstance(Ljava/lang/Object;)Ljava/lang/Object;
    .registers 3

    .line 36
    check-cast p1, Lcom/explorestack/protobuf/GeneratedMessageV3;

    sget-object v0, Lcom/explorestack/protobuf/GeneratedMessageV3$UnusedPrivateParameter;->INSTANCE:Lcom/explorestack/protobuf/GeneratedMessageV3$UnusedPrivateParameter;

    .line 37
    invoke-virtual {p1, v0}, Lcom/explorestack/protobuf/GeneratedMessageV3;->newInstance(Lcom/explorestack/protobuf/GeneratedMessageV3$UnusedPrivateParameter;)Ljava/lang/Object;

    move-result-object p1

    return-object p1
.end method
