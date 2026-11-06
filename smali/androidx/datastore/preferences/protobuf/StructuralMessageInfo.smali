###### Class androidx.datastore.preferences.protobuf.StructuralMessageInfo (androidx.datastore.preferences.protobuf.StructuralMessageInfo)
.class public final Landroidx/datastore/preferences/protobuf/StructuralMessageInfo;
.super Ljava/lang/Object;
.source "StructuralMessageInfo.java"

# interfaces
.implements Landroidx/datastore/preferences/protobuf/MessageInfo;


# instance fields
.field public final checkInitialized:[I

.field public final defaultInstance:Landroidx/datastore/preferences/protobuf/MessageLite;

.field public final fields:[Landroidx/datastore/preferences/protobuf/FieldInfo;

.field public final messageSetWireFormat:Z

.field public final syntax:Landroidx/datastore/preferences/protobuf/ProtoSyntax;


# virtual methods
.method public getCheckInitialized()[I
    .registers 2

    .line 62
    iget-object v0, p0, Landroidx/datastore/preferences/protobuf/StructuralMessageInfo;->checkInitialized:[I

    return-object v0
.end method

.method public getDefaultInstance()Landroidx/datastore/preferences/protobuf/MessageLite;
    .registers 2

    .line 75
    iget-object v0, p0, Landroidx/datastore/preferences/protobuf/StructuralMessageInfo;->defaultInstance:Landroidx/datastore/preferences/protobuf/MessageLite;

    return-object v0
.end method

.method public getFields()[Landroidx/datastore/preferences/protobuf/FieldInfo;
    .registers 2

    .line 70
    iget-object v0, p0, Landroidx/datastore/preferences/protobuf/StructuralMessageInfo;->fields:[Landroidx/datastore/preferences/protobuf/FieldInfo;

    return-object v0
.end method

.method public getSyntax()Landroidx/datastore/preferences/protobuf/ProtoSyntax;
    .registers 2

    .line 51
    iget-object v0, p0, Landroidx/datastore/preferences/protobuf/StructuralMessageInfo;->syntax:Landroidx/datastore/preferences/protobuf/ProtoSyntax;

    return-object v0
.end method

.method public isMessageSetWireFormat()Z
    .registers 2

    .line 57
    iget-boolean v0, p0, Landroidx/datastore/preferences/protobuf/StructuralMessageInfo;->messageSetWireFormat:Z

    return v0
.end method
