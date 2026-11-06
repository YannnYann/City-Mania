###### Class com.explorestack.protobuf.LazyStringList (com.explorestack.protobuf.LazyStringList)
.class public interface abstract Lcom/explorestack/protobuf/LazyStringList;
.super Ljava/lang/Object;
.source "LazyStringList.java"

# interfaces
.implements Lcom/explorestack/protobuf/ProtocolStringList;


# virtual methods
.method public abstract add(Lcom/explorestack/protobuf/ByteString;)V
.end method

.method public abstract getByteString(I)Lcom/explorestack/protobuf/ByteString;
.end method

.method public abstract getRaw(I)Ljava/lang/Object;
.end method

.method public abstract getUnderlyingElements()Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "*>;"
        }
    .end annotation
.end method

.method public abstract getUnmodifiableView()Lcom/explorestack/protobuf/LazyStringList;
.end method
