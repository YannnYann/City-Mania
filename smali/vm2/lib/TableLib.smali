###### Class vm2.lib.TableLib (vm2.lib.TableLib)
.class public Lvm2/lib/TableLib;
.super Lvm2/lib/TwoArgFunction;
.source "TableLib.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lvm2/lib/TableLib$concat;,
        Lvm2/lib/TableLib$insert;,
        Lvm2/lib/TableLib$pack;,
        Lvm2/lib/TableLib$remove;,
        Lvm2/lib/TableLib$sort;,
        Lvm2/lib/TableLib$unpack;
    }
.end annotation


# direct methods
.method public constructor <init>()V
    .registers 1

    .line 57
    invoke-direct {p0}, Lvm2/lib/TwoArgFunction;-><init>()V

    return-void
.end method


# virtual methods
.method public call(Lvm2/LuaValue;Lvm2/LuaValue;)Lvm2/LuaValue;
    .registers 6

    .line 66
    new-instance p1, Lvm2/LuaTable;

    invoke-direct {p1}, Lvm2/LuaTable;-><init>()V

    .line 67
    new-instance v0, Lvm2/lib/TableLib$concat;

    invoke-direct {v0}, Lvm2/lib/TableLib$concat;-><init>()V

    const-string v1, "concat"

    invoke-virtual {p1, v1, v0}, Lvm2/LuaValue;->set(Ljava/lang/String;Lvm2/LuaValue;)V

    .line 68
    new-instance v0, Lvm2/lib/TableLib$insert;

    invoke-direct {v0}, Lvm2/lib/TableLib$insert;-><init>()V

    const-string v1, "insert"

    invoke-virtual {p1, v1, v0}, Lvm2/LuaValue;->set(Ljava/lang/String;Lvm2/LuaValue;)V

    .line 69
    new-instance v0, Lvm2/lib/TableLib$pack;

    invoke-direct {v0}, Lvm2/lib/TableLib$pack;-><init>()V

    const-string v1, "pack"

    invoke-virtual {p1, v1, v0}, Lvm2/LuaValue;->set(Ljava/lang/String;Lvm2/LuaValue;)V

    .line 70
    new-instance v0, Lvm2/lib/TableLib$remove;

    invoke-direct {v0}, Lvm2/lib/TableLib$remove;-><init>()V

    const-string v1, "remove"

    invoke-virtual {p1, v1, v0}, Lvm2/LuaValue;->set(Ljava/lang/String;Lvm2/LuaValue;)V

    .line 71
    new-instance v0, Lvm2/lib/TableLib$sort;

    invoke-direct {v0}, Lvm2/lib/TableLib$sort;-><init>()V

    const-string v1, "sort"

    invoke-virtual {p1, v1, v0}, Lvm2/LuaValue;->set(Ljava/lang/String;Lvm2/LuaValue;)V

    .line 72
    new-instance v0, Lvm2/lib/TableLib$unpack;

    invoke-direct {v0}, Lvm2/lib/TableLib$unpack;-><init>()V

    const-string v1, "unpack"

    invoke-virtual {p1, v1, v0}, Lvm2/LuaValue;->set(Ljava/lang/String;Lvm2/LuaValue;)V

    .line 73
    const-string v0, "table"

    invoke-virtual {p2, v0, p1}, Lvm2/LuaValue;->set(Ljava/lang/String;Lvm2/LuaValue;)V

    .line 74
    const-string v1, "package"

    invoke-virtual {p2, v1}, Lvm2/LuaValue;->get(Ljava/lang/String;)Lvm2/LuaValue;

    move-result-object v2

    invoke-virtual {v2}, Lvm2/LuaValue;->isnil()Z

    move-result v2

    if-nez v2, :cond_5f

    invoke-virtual {p2, v1}, Lvm2/LuaValue;->get(Ljava/lang/String;)Lvm2/LuaValue;

    move-result-object p2

    const-string v1, "loaded"

    invoke-virtual {p2, v1}, Lvm2/LuaValue;->get(Ljava/lang/String;)Lvm2/LuaValue;

    move-result-object p2

    invoke-virtual {p2, v0, p1}, Lvm2/LuaValue;->set(Ljava/lang/String;Lvm2/LuaValue;)V

    .line 75
    :cond_5f
    sget-object p1, Lvm2/LuaValue;->NIL:Lvm2/LuaValue;

    return-object p1
.end method

###### Class vm2.lib.TableLib.concat (vm2.lib.TableLib$concat)
.class Lvm2/lib/TableLib$concat;
.super Lvm2/lib/TableLibFunction;
.source "TableLib.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lvm2/lib/TableLib;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "concat"
.end annotation


# direct methods
.method public constructor <init>()V
    .registers 1

    .line 79
    invoke-direct {p0}, Lvm2/lib/TableLibFunction;-><init>()V

    return-void
.end method


# virtual methods
.method public call(Lvm2/LuaValue;)Lvm2/LuaValue;
    .registers 5

    .line 81
    invoke-virtual {p1}, Lvm2/LuaValue;->checktable()Lvm2/LuaTable;

    move-result-object v0

    sget-object v1, Lvm2/LuaValue;->EMPTYSTRING:Lvm2/LuaString;

    const/4 v2, 0x1

    invoke-virtual {p1}, Lvm2/LuaValue;->length()I

    move-result p1

    invoke-virtual {v0, v1, v2, p1}, Lvm2/LuaTable;->concat(Lvm2/LuaString;II)Lvm2/LuaValue;

    move-result-object p1

    return-object p1
.end method

.method public call(Lvm2/LuaValue;Lvm2/LuaValue;)Lvm2/LuaValue;
    .registers 5

    .line 84
    invoke-virtual {p1}, Lvm2/LuaValue;->checktable()Lvm2/LuaTable;

    move-result-object v0

    invoke-virtual {p2}, Lvm2/LuaValue;->checkstring()Lvm2/LuaString;

    move-result-object p2

    const/4 v1, 0x1

    invoke-virtual {p1}, Lvm2/LuaValue;->length()I

    move-result p1

    invoke-virtual {v0, p2, v1, p1}, Lvm2/LuaTable;->concat(Lvm2/LuaString;II)Lvm2/LuaValue;

    move-result-object p1

    return-object p1
.end method

.method public call(Lvm2/LuaValue;Lvm2/LuaValue;Lvm2/LuaValue;)Lvm2/LuaValue;
    .registers 5

    .line 87
    invoke-virtual {p1}, Lvm2/LuaValue;->checktable()Lvm2/LuaTable;

    move-result-object v0

    invoke-virtual {p2}, Lvm2/LuaValue;->checkstring()Lvm2/LuaString;

    move-result-object p2

    invoke-virtual {p3}, Lvm2/LuaValue;->checkint()I

    move-result p3

    invoke-virtual {p1}, Lvm2/LuaValue;->length()I

    move-result p1

    invoke-virtual {v0, p2, p3, p1}, Lvm2/LuaTable;->concat(Lvm2/LuaString;II)Lvm2/LuaValue;

    move-result-object p1

    return-object p1
.end method

.method public call(Lvm2/LuaValue;Lvm2/LuaValue;Lvm2/LuaValue;Lvm2/LuaValue;)Lvm2/LuaValue;
    .registers 5

    .line 90
    invoke-virtual {p1}, Lvm2/LuaValue;->checktable()Lvm2/LuaTable;

    move-result-object p1

    invoke-virtual {p2}, Lvm2/LuaValue;->checkstring()Lvm2/LuaString;

    move-result-object p2

    invoke-virtual {p3}, Lvm2/LuaValue;->checkint()I

    move-result p3

    invoke-virtual {p4}, Lvm2/LuaValue;->checkint()I

    move-result p4

    invoke-virtual {p1, p2, p3, p4}, Lvm2/LuaTable;->concat(Lvm2/LuaString;II)Lvm2/LuaValue;

    move-result-object p1

    return-object p1
.end method

###### Class vm2.lib.TableLib.insert (vm2.lib.TableLib$insert)
.class Lvm2/lib/TableLib$insert;
.super Lvm2/lib/VarArgFunction;
.source "TableLib.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lvm2/lib/TableLib;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "insert"
.end annotation


# direct methods
.method public constructor <init>()V
    .registers 1

    .line 95
    invoke-direct {p0}, Lvm2/lib/VarArgFunction;-><init>()V

    return-void
.end method


# virtual methods
.method public invoke(Lvm2/Varargs;)Lvm2/Varargs;
    .registers 9

    .line 97
    invoke-virtual {p1}, Lvm2/Varargs;->narg()I

    move-result v0

    const/4 v1, 0x2

    const/4 v2, 0x1

    if-eq v0, v1, :cond_61

    const/4 v3, 0x3

    if-eq v0, v3, :cond_2a

    .line 112
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "wrong number of arguments to \'table.insert\': "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Lvm2/Varargs;->narg()I

    move-result p1

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p1, " (must be 2 or 3)"

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Lvm2/LuaValue;->error(Ljava/lang/String;)Lvm2/LuaValue;

    move-result-object p1

    return-object p1

    .line 104
    :cond_2a
    invoke-virtual {p1, v2}, Lvm2/Varargs;->checktable(I)Lvm2/LuaTable;

    move-result-object v0

    .line 105
    invoke-virtual {p1, v1}, Lvm2/Varargs;->checkint(I)I

    move-result v4

    .line 106
    invoke-virtual {v0}, Lvm2/LuaTable;->length()I

    move-result v5

    add-int/2addr v5, v2

    if-lt v4, v2, :cond_3b

    if-le v4, v5, :cond_57

    .line 107
    :cond_3b
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "position out of bounds: "

    invoke-virtual {v2, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v6, " not between 1 and "

    invoke-virtual {v2, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lvm2/LuaValue;->argerror(ILjava/lang/String;)Lvm2/LuaValue;

    .line 108
    :cond_57
    invoke-virtual {p1, v3}, Lvm2/Varargs;->arg(I)Lvm2/LuaValue;

    move-result-object p1

    invoke-virtual {v0, v4, p1}, Lvm2/LuaTable;->insert(ILvm2/LuaValue;)V

    .line 109
    sget-object p1, Lvm2/LuaValue;->NONE:Lvm2/LuaValue;

    return-object p1

    .line 99
    :cond_61
    invoke-virtual {p1, v2}, Lvm2/Varargs;->checktable(I)Lvm2/LuaTable;

    move-result-object v0

    .line 100
    invoke-virtual {v0}, Lvm2/LuaTable;->length()I

    move-result v3

    add-int/2addr v3, v2

    invoke-virtual {p1, v1}, Lvm2/Varargs;->arg(I)Lvm2/LuaValue;

    move-result-object p1

    invoke-virtual {v0, v3, p1}, Lvm2/LuaTable;->insert(ILvm2/LuaValue;)V

    .line 101
    sget-object p1, Lvm2/LuaValue;->NONE:Lvm2/LuaValue;

    return-object p1
.end method

###### Class vm2.lib.TableLib.pack (vm2.lib.TableLib$pack)
.class Lvm2/lib/TableLib$pack;
.super Lvm2/lib/VarArgFunction;
.source "TableLib.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lvm2/lib/TableLib;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "pack"
.end annotation


# direct methods
.method public constructor <init>()V
    .registers 1

    .line 119
    invoke-direct {p0}, Lvm2/lib/VarArgFunction;-><init>()V

    return-void
.end method


# virtual methods
.method public invoke(Lvm2/Varargs;)Lvm2/Varargs;
    .registers 4

    const/4 v0, 0x1

    .line 121
    invoke-static {p1, v0}, Lvm2/LuaValue;->tableOf(Lvm2/Varargs;I)Lvm2/LuaTable;

    move-result-object v0

    .line 122
    const-string v1, "n"

    invoke-virtual {p1}, Lvm2/Varargs;->narg()I

    move-result p1

    invoke-virtual {v0, v1, p1}, Lvm2/LuaValue;->set(Ljava/lang/String;I)V

    return-object v0
.end method

###### Class vm2.lib.TableLib.remove (vm2.lib.TableLib$remove)
.class Lvm2/lib/TableLib$remove;
.super Lvm2/lib/VarArgFunction;
.source "TableLib.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lvm2/lib/TableLib;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "remove"
.end annotation


# direct methods
.method public constructor <init>()V
    .registers 1

    .line 128
    invoke-direct {p0}, Lvm2/lib/VarArgFunction;-><init>()V

    return-void
.end method


# virtual methods
.method public invoke(Lvm2/Varargs;)Lvm2/Varargs;
    .registers 8

    const/4 v0, 0x1

    .line 130
    invoke-virtual {p1, v0}, Lvm2/Varargs;->checktable(I)Lvm2/LuaTable;

    move-result-object v1

    .line 131
    invoke-virtual {v1}, Lvm2/LuaTable;->length()I

    move-result v2

    const/4 v3, 0x2

    .line 132
    invoke-virtual {p1, v3, v2}, Lvm2/Varargs;->optint(II)I

    move-result p1

    if-eq p1, v2, :cond_33

    if-lt p1, v0, :cond_16

    add-int/lit8 v4, v2, 0x1

    if-le p1, v4, :cond_33

    .line 134
    :cond_16
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "position out of bounds: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v5, " not between 1 and "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    add-int/2addr v2, v0

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v3, v0}, Lvm2/LuaValue;->argerror(ILjava/lang/String;)Lvm2/LuaValue;

    .line 136
    :cond_33
    invoke-virtual {v1, p1}, Lvm2/LuaTable;->remove(I)Lvm2/LuaValue;

    move-result-object p1

    return-object p1
.end method

###### Class vm2.lib.TableLib.sort (vm2.lib.TableLib$sort)
.class Lvm2/lib/TableLib$sort;
.super Lvm2/lib/VarArgFunction;
.source "TableLib.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lvm2/lib/TableLib;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "sort"
.end annotation


# direct methods
.method public constructor <init>()V
    .registers 1

    .line 141
    invoke-direct {p0}, Lvm2/lib/VarArgFunction;-><init>()V

    return-void
.end method


# virtual methods
.method public invoke(Lvm2/Varargs;)Lvm2/Varargs;
    .registers 5

    const/4 v0, 0x1

    .line 143
    invoke-virtual {p1, v0}, Lvm2/Varargs;->checktable(I)Lvm2/LuaTable;

    move-result-object v0

    const/4 v1, 0x2

    .line 144
    invoke-virtual {p1, v1}, Lvm2/Varargs;->isnil(I)Z

    move-result v2

    if-eqz v2, :cond_f

    sget-object p1, Lvm2/LuaValue;->NIL:Lvm2/LuaValue;

    goto :goto_13

    :cond_f
    invoke-virtual {p1, v1}, Lvm2/Varargs;->checkfunction(I)Lvm2/LuaFunction;

    move-result-object p1

    .line 143
    :goto_13
    invoke-virtual {v0, p1}, Lvm2/LuaTable;->sort(Lvm2/LuaValue;)V

    .line 145
    sget-object p1, Lvm2/LuaValue;->NONE:Lvm2/LuaValue;

    return-object p1
.end method

###### Class vm2.lib.TableLib.unpack (vm2.lib.TableLib$unpack)
.class Lvm2/lib/TableLib$unpack;
.super Lvm2/lib/VarArgFunction;
.source "TableLib.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lvm2/lib/TableLib;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "unpack"
.end annotation


# direct methods
.method public constructor <init>()V
    .registers 1

    .line 151
    invoke-direct {p0}, Lvm2/lib/VarArgFunction;-><init>()V

    return-void
.end method


# virtual methods
.method public invoke(Lvm2/Varargs;)Lvm2/Varargs;
    .registers 7

    const/4 v0, 0x1

    .line 153
    invoke-virtual {p1, v0}, Lvm2/Varargs;->checktable(I)Lvm2/LuaTable;

    move-result-object v1

    const/4 v2, 0x3

    .line 155
    invoke-virtual {p1, v2}, Lvm2/Varargs;->arg(I)Lvm2/LuaValue;

    move-result-object v3

    invoke-virtual {v3}, Lvm2/LuaValue;->isnil()Z

    move-result v3

    if-eqz v3, :cond_15

    invoke-virtual {v1}, Lvm2/LuaTable;->length()I

    move-result v3

    goto :goto_16

    :cond_15
    const/4 v3, 0x0

    :goto_16
    const/4 v4, 0x2

    .line 156
    invoke-virtual {p1, v4, v0}, Lvm2/Varargs;->optint(II)I

    move-result v0

    invoke-virtual {p1, v2, v3}, Lvm2/Varargs;->optint(II)I

    move-result p1

    invoke-virtual {v1, v0, p1}, Lvm2/LuaTable;->unpack(II)Lvm2/Varargs;

    move-result-object p1

    return-object p1
.end method
