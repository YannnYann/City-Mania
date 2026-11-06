###### Class vm2.UpValue (vm2.UpValue)
.class public final Lvm2/UpValue;
.super Ljava/lang/Object;
.source "UpValue.java"


# instance fields
.field array:[Lvm2/LuaValue;

.field index:I


# direct methods
.method public constructor <init>([Lvm2/LuaValue;I)V
    .registers 3

    .line 40
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 41
    iput-object p1, p0, Lvm2/UpValue;->array:[Lvm2/LuaValue;

    .line 42
    iput p2, p0, Lvm2/UpValue;->index:I

    return-void
.end method


# virtual methods
.method public final close()V
    .registers 4

    .line 78
    iget-object v0, p0, Lvm2/UpValue;->array:[Lvm2/LuaValue;

    .line 79
    iget v1, p0, Lvm2/UpValue;->index:I

    aget-object v2, v0, v1

    filled-new-array {v2}, [Lvm2/LuaValue;

    move-result-object v2

    iput-object v2, p0, Lvm2/UpValue;->array:[Lvm2/LuaValue;

    const/4 v2, 0x0

    .line 80
    aput-object v2, v0, v1

    const/4 v0, 0x0

    .line 81
    iput v0, p0, Lvm2/UpValue;->index:I

    return-void
.end method

.method public final getValue()Lvm2/LuaValue;
    .registers 3

    .line 63
    iget-object v0, p0, Lvm2/UpValue;->array:[Lvm2/LuaValue;

    iget v1, p0, Lvm2/UpValue;->index:I

    aget-object v0, v0, v1

    return-object v0
.end method

.method public final setValue(Lvm2/LuaValue;)V
    .registers 4

    .line 71
    iget-object v0, p0, Lvm2/UpValue;->array:[Lvm2/LuaValue;

    iget v1, p0, Lvm2/UpValue;->index:I

    aput-object p1, v0, v1

    return-void
.end method

.method public toString()Ljava/lang/String;
    .registers 4

    .line 46
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    iget v1, p0, Lvm2/UpValue;->index:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, "/"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lvm2/UpValue;->array:[Lvm2/LuaValue;

    array-length v1, v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, " "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lvm2/UpValue;->array:[Lvm2/LuaValue;

    iget v2, p0, Lvm2/UpValue;->index:I

    aget-object v1, v1, v2

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public tojstring()Ljava/lang/String;
    .registers 3

    .line 55
    iget-object v0, p0, Lvm2/UpValue;->array:[Lvm2/LuaValue;

    iget v1, p0, Lvm2/UpValue;->index:I

    aget-object v0, v0, v1

    invoke-virtual {v0}, Lvm2/LuaValue;->tojstring()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
