###### Class androidx.datastore.preferences.protobuf.SchemaFactory (androidx.datastore.preferences.protobuf.SchemaFactory)
.class public interface abstract Landroidx/datastore/preferences/protobuf/SchemaFactory;
.super Ljava/lang/Object;
.source "SchemaFactory.java"


# virtual methods
.method public abstract createSchema(Ljava/lang/Class;)Landroidx/datastore/preferences/protobuf/Schema;
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "messageType"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/lang/Class<",
            "TT;>;)",
            "Landroidx/datastore/preferences/protobuf/Schema<",
            "TT;>;"
        }
    .end annotation
.end method
