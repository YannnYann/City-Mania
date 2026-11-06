###### Class com.explorestack.protobuf.Extension (com.explorestack.protobuf.Extension)
.class public abstract Lcom/explorestack/protobuf/Extension;
.super Lcom/explorestack/protobuf/ExtensionLite;
.source "Extension.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "<ContainingType::",
        "Lcom/explorestack/protobuf/MessageLite;",
        "Type:",
        "Ljava/lang/Object;",
        ">",
        "Lcom/explorestack/protobuf/ExtensionLite<",
        "TContainingType;TType;>;"
    }
.end annotation


# direct methods
.method public constructor <init>()V
    .registers 1

    .line 39
    invoke-direct {p0}, Lcom/explorestack/protobuf/ExtensionLite;-><init>()V

    return-void
.end method


# virtual methods
.method public final isLite()Z
    .registers 2

    .line 0
    const/4 v0, 0x0

    return v0
.end method
