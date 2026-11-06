###### Class vm2.WeakTable (vm2.WeakTable)
.class public Lvm2/WeakTable;
.super Ljava/lang/Object;
.source "WeakTable.java"

# interfaces
.implements Lvm2/Metatable;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lvm2/WeakTable$WeakKeyAndValueSlot;,
        Lvm2/WeakTable$WeakKeySlot;,
        Lvm2/WeakTable$WeakValueSlot;,
        Lvm2/WeakTable$WeakValue;,
        Lvm2/WeakTable$WeakUserdata;,
        Lvm2/WeakTable$WeakSlot;
    }
.end annotation


# instance fields
.field private backing:Lvm2/LuaValue;

.field private weakkeys:Z

.field private weakvalues:Z


# direct methods
.method public constructor <init>(ZZLvm2/LuaValue;)V
    .registers 4

    .line 65
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 66
    iput-boolean p1, p0, Lvm2/WeakTable;->weakkeys:Z

    .line 67
    iput-boolean p2, p0, Lvm2/WeakTable;->weakvalues:Z

    .line 68
    iput-object p3, p0, Lvm2/WeakTable;->backing:Lvm2/LuaValue;

    return-void
.end method

.method public static make(ZZ)Lvm2/LuaTable;
    .registers 5

    if-eqz p0, :cond_b

    if-eqz p1, :cond_b

    .line 46
    const-string p0, "kv"

    invoke-static {p0}, Lvm2/LuaString;->valueOf(Ljava/lang/String;)Lvm2/LuaString;

    move-result-object p0

    goto :goto_1c

    :cond_b
    if-eqz p0, :cond_14

    .line 48
    const-string p0, "k"

    invoke-static {p0}, Lvm2/LuaString;->valueOf(Ljava/lang/String;)Lvm2/LuaString;

    move-result-object p0

    goto :goto_1c

    :cond_14
    if-eqz p1, :cond_33

    .line 50
    const-string p0, "v"

    invoke-static {p0}, Lvm2/LuaString;->valueOf(Ljava/lang/String;)Lvm2/LuaString;

    move-result-object p0

    .line 54
    :goto_1c
    invoke-static {}, Lvm2/LuaValue;->tableOf()Lvm2/LuaTable;

    move-result-object p1

    const/4 v0, 0x2

    .line 55
    new-array v0, v0, [Lvm2/LuaValue;

    sget-object v1, Lvm2/LuaValue;->MODE:Lvm2/LuaString;

    const/4 v2, 0x0

    aput-object v1, v0, v2

    const/4 v1, 0x1

    aput-object p0, v0, v1

    invoke-static {v0}, Lvm2/LuaValue;->tableOf([Lvm2/LuaValue;)Lvm2/LuaTable;

    move-result-object p0

    .line 56
    invoke-virtual {p1, p0}, Lvm2/LuaTable;->setmetatable(Lvm2/LuaValue;)Lvm2/LuaValue;

    return-object p1

    .line 52
    :cond_33
    invoke-static {}, Lvm2/LuaValue;->tableOf()Lvm2/LuaTable;

    move-result-object p0

    return-object p0
.end method

.method public static strengthen(Ljava/lang/Object;)Lvm2/LuaValue;
    .registers 2

    .line 327
    instance-of v0, p0, Ljava/lang/ref/WeakReference;

    if-eqz v0, :cond_a

    .line 328
    check-cast p0, Ljava/lang/ref/WeakReference;

    invoke-virtual {p0}, Ljava/lang/ref/Reference;->get()Ljava/lang/Object;

    move-result-object p0

    .line 330
    :cond_a
    instance-of v0, p0, Lvm2/WeakTable$WeakValue;

    if-eqz v0, :cond_15

    .line 331
    check-cast p0, Lvm2/WeakTable$WeakValue;

    invoke-virtual {p0}, Lvm2/WeakTable$WeakValue;->strongvalue()Lvm2/LuaValue;

    move-result-object p0

    return-object p0

    .line 333
    :cond_15
    check-cast p0, Lvm2/LuaValue;

    return-object p0
.end method

.method public static weaken(Lvm2/LuaValue;)Lvm2/LuaValue;
    .registers 3

    .line 308
    invoke-virtual {p0}, Lvm2/LuaValue;->type()I

    move-result v0

    const/4 v1, 0x3

    if-eq v0, v1, :cond_19

    const/16 v1, 0x9

    if-eq v0, v1, :cond_19

    const/4 v1, 0x6

    if-eq v0, v1, :cond_12

    const/4 v1, 0x7

    if-eq v0, v1, :cond_19

    return-object p0

    .line 314
    :cond_12
    new-instance v0, Lvm2/WeakTable$WeakUserdata;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, Lvm2/WeakTable$WeakUserdata;-><init>(Lvm2/LuaValue;Lvm2/WeakTable$1;)V

    return-object v0

    .line 312
    :cond_19
    new-instance v0, Lvm2/WeakTable$WeakValue;

    invoke-direct {v0, p0}, Lvm2/WeakTable$WeakValue;-><init>(Lvm2/LuaValue;)V

    return-object v0
.end method


# virtual methods
.method public arrayget([Lvm2/LuaValue;I)Lvm2/LuaValue;
    .registers 5

    .line 404
    aget-object v0, p1, p2

    if-eqz v0, :cond_d

    .line 406
    invoke-static {v0}, Lvm2/WeakTable;->strengthen(Ljava/lang/Object;)Lvm2/LuaValue;

    move-result-object v0

    if-nez v0, :cond_d

    const/4 v1, 0x0

    .line 408
    aput-object v1, p1, p2

    :cond_d
    return-object v0
.end method

.method public entry(Lvm2/LuaValue;Lvm2/LuaValue;)Lvm2/LuaTable$Slot;
    .registers 5

    .line 84
    invoke-virtual {p2}, Lvm2/LuaValue;->strongvalue()Lvm2/LuaValue;

    move-result-object p2

    const/4 v0, 0x0

    if-nez p2, :cond_8

    return-object v0

    .line 87
    :cond_8
    iget-boolean v1, p0, Lvm2/WeakTable;->weakkeys:Z

    if-eqz v1, :cond_40

    invoke-virtual {p1}, Lvm2/LuaValue;->isnumber()Z

    move-result v1

    if-nez v1, :cond_40

    invoke-virtual {p1}, Lvm2/LuaValue;->isstring()Z

    move-result v1

    if-nez v1, :cond_40

    invoke-virtual {p1}, Lvm2/LuaValue;->isboolean()Z

    move-result v1

    if-nez v1, :cond_40

    .line 88
    iget-boolean v1, p0, Lvm2/WeakTable;->weakvalues:Z

    if-eqz v1, :cond_3a

    invoke-virtual {p2}, Lvm2/LuaValue;->isnumber()Z

    move-result v1

    if-nez v1, :cond_3a

    invoke-virtual {p2}, Lvm2/LuaValue;->isstring()Z

    move-result v1

    if-nez v1, :cond_3a

    invoke-virtual {p2}, Lvm2/LuaValue;->isboolean()Z

    move-result v1

    if-nez v1, :cond_3a

    .line 89
    new-instance v1, Lvm2/WeakTable$WeakKeyAndValueSlot;

    invoke-direct {v1, p1, p2, v0}, Lvm2/WeakTable$WeakKeyAndValueSlot;-><init>(Lvm2/LuaValue;Lvm2/LuaValue;Lvm2/LuaTable$Slot;)V

    return-object v1

    .line 91
    :cond_3a
    new-instance v1, Lvm2/WeakTable$WeakKeySlot;

    invoke-direct {v1, p1, p2, v0}, Lvm2/WeakTable$WeakKeySlot;-><init>(Lvm2/LuaValue;Lvm2/LuaValue;Lvm2/LuaTable$Slot;)V

    return-object v1

    .line 94
    :cond_40
    iget-boolean v1, p0, Lvm2/WeakTable;->weakvalues:Z

    if-eqz v1, :cond_5c

    invoke-virtual {p2}, Lvm2/LuaValue;->isnumber()Z

    move-result v1

    if-nez v1, :cond_5c

    invoke-virtual {p2}, Lvm2/LuaValue;->isstring()Z

    move-result v1

    if-nez v1, :cond_5c

    invoke-virtual {p2}, Lvm2/LuaValue;->isboolean()Z

    move-result v1

    if-nez v1, :cond_5c

    .line 95
    new-instance v1, Lvm2/WeakTable$WeakValueSlot;

    invoke-direct {v1, p1, p2, v0}, Lvm2/WeakTable$WeakValueSlot;-><init>(Lvm2/LuaValue;Lvm2/LuaValue;Lvm2/LuaTable$Slot;)V

    return-object v1

    .line 97
    :cond_5c
    invoke-static {p1, p2}, Lvm2/LuaTable;->defaultEntry(Lvm2/LuaValue;Lvm2/LuaValue;)Lvm2/LuaTable$Entry;

    move-result-object p1

    return-object p1
.end method

.method public toLuaValue()Lvm2/LuaValue;
    .registers 2

    .line 80
    iget-object v0, p0, Lvm2/WeakTable;->backing:Lvm2/LuaValue;

    return-object v0
.end method

.method public useWeakKeys()Z
    .registers 2

    .line 72
    iget-boolean v0, p0, Lvm2/WeakTable;->weakkeys:Z

    return v0
.end method

.method public useWeakValues()Z
    .registers 2

    .line 76
    iget-boolean v0, p0, Lvm2/WeakTable;->weakvalues:Z

    return v0
.end method

.method public wrap(Lvm2/LuaValue;)Lvm2/LuaValue;
    .registers 3

    .line 400
    iget-boolean v0, p0, Lvm2/WeakTable;->weakvalues:Z

    if-eqz v0, :cond_8

    invoke-static {p1}, Lvm2/WeakTable;->weaken(Lvm2/LuaValue;)Lvm2/LuaValue;

    move-result-object p1

    :cond_8
    return-object p1
.end method

###### Class vm2.WeakTable.AnonymousClass1 (vm2.WeakTable$1)
.class synthetic Lvm2/WeakTable$1;
.super Ljava/lang/Object;
.source "WeakTable.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lvm2/WeakTable;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1009
    name = null
.end annotation

###### Class vm2.WeakTable.WeakKeyAndValueSlot (vm2.WeakTable$WeakKeyAndValueSlot)
.class Lvm2/WeakTable$WeakKeyAndValueSlot;
.super Lvm2/WeakTable$WeakSlot;
.source "WeakTable.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lvm2/WeakTable;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "WeakKeyAndValueSlot"
.end annotation


# instance fields
.field private final keyhash:I


# direct methods
.method public constructor <init>(Lvm2/LuaValue;Lvm2/LuaValue;Lvm2/LuaTable$Slot;)V
    .registers 5

    .line 271
    invoke-static {p1}, Lvm2/WeakTable;->weaken(Lvm2/LuaValue;)Lvm2/LuaValue;

    move-result-object v0

    invoke-static {p2}, Lvm2/WeakTable;->weaken(Lvm2/LuaValue;)Lvm2/LuaValue;

    move-result-object p2

    invoke-direct {p0, v0, p2, p3}, Lvm2/WeakTable$WeakSlot;-><init>(Ljava/lang/Object;Ljava/lang/Object;Lvm2/LuaTable$Slot;)V

    .line 272
    invoke-virtual {p1}, Ljava/lang/Object;->hashCode()I

    move-result p1

    iput p1, p0, Lvm2/WeakTable$WeakKeyAndValueSlot;->keyhash:I

    return-void
.end method

.method public constructor <init>(Lvm2/WeakTable$WeakKeyAndValueSlot;Lvm2/LuaTable$Slot;)V
    .registers 5

    .line 276
    iget-object v0, p1, Lvm2/WeakTable$WeakSlot;->key:Ljava/lang/Object;

    iget-object v1, p1, Lvm2/WeakTable$WeakSlot;->value:Ljava/lang/Object;

    invoke-direct {p0, v0, v1, p2}, Lvm2/WeakTable$WeakSlot;-><init>(Ljava/lang/Object;Ljava/lang/Object;Lvm2/LuaTable$Slot;)V

    .line 277
    iget p1, p1, Lvm2/WeakTable$WeakKeyAndValueSlot;->keyhash:I

    iput p1, p0, Lvm2/WeakTable$WeakKeyAndValueSlot;->keyhash:I

    return-void
.end method


# virtual methods
.method public copy(Lvm2/LuaTable$Slot;)Lvm2/WeakTable$WeakSlot;
    .registers 3

    .line 298
    new-instance v0, Lvm2/WeakTable$WeakKeyAndValueSlot;

    invoke-direct {v0, p0, p1}, Lvm2/WeakTable$WeakKeyAndValueSlot;-><init>(Lvm2/WeakTable$WeakKeyAndValueSlot;Lvm2/LuaTable$Slot;)V

    return-object v0
.end method

.method public keyindex(I)I
    .registers 3

    .line 281
    iget v0, p0, Lvm2/WeakTable$WeakKeyAndValueSlot;->keyhash:I

    invoke-static {v0, p1}, Lvm2/LuaTable;->hashmod(II)I

    move-result p1

    return p1
.end method

.method public set(Lvm2/LuaValue;)Lvm2/LuaTable$Slot;
    .registers 2

    .line 285
    invoke-static {p1}, Lvm2/WeakTable;->weaken(Lvm2/LuaValue;)Lvm2/LuaValue;

    move-result-object p1

    iput-object p1, p0, Lvm2/WeakTable$WeakSlot;->value:Ljava/lang/Object;

    return-object p0
.end method

.method public strongkey()Lvm2/LuaValue;
    .registers 2

    .line 290
    iget-object v0, p0, Lvm2/WeakTable$WeakSlot;->key:Ljava/lang/Object;

    invoke-static {v0}, Lvm2/WeakTable;->strengthen(Ljava/lang/Object;)Lvm2/LuaValue;

    move-result-object v0

    return-object v0
.end method

.method public strongvalue()Lvm2/LuaValue;
    .registers 2

    .line 294
    iget-object v0, p0, Lvm2/WeakTable$WeakSlot;->value:Ljava/lang/Object;

    invoke-static {v0}, Lvm2/WeakTable;->strengthen(Ljava/lang/Object;)Lvm2/LuaValue;

    move-result-object v0

    return-object v0
.end method

###### Class vm2.WeakTable.WeakKeySlot (vm2.WeakTable$WeakKeySlot)
.class Lvm2/WeakTable$WeakKeySlot;
.super Lvm2/WeakTable$WeakSlot;
.source "WeakTable.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lvm2/WeakTable;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "WeakKeySlot"
.end annotation


# instance fields
.field private final keyhash:I


# direct methods
.method public constructor <init>(Lvm2/LuaValue;Lvm2/LuaValue;Lvm2/LuaTable$Slot;)V
    .registers 5

    .line 211
    invoke-static {p1}, Lvm2/WeakTable;->weaken(Lvm2/LuaValue;)Lvm2/LuaValue;

    move-result-object v0

    invoke-direct {p0, v0, p2, p3}, Lvm2/WeakTable$WeakSlot;-><init>(Ljava/lang/Object;Ljava/lang/Object;Lvm2/LuaTable$Slot;)V

    .line 212
    invoke-virtual {p1}, Ljava/lang/Object;->hashCode()I

    move-result p1

    iput p1, p0, Lvm2/WeakTable$WeakKeySlot;->keyhash:I

    return-void
.end method

.method public constructor <init>(Lvm2/WeakTable$WeakKeySlot;Lvm2/LuaTable$Slot;)V
    .registers 5

    .line 216
    iget-object v0, p1, Lvm2/WeakTable$WeakSlot;->key:Ljava/lang/Object;

    iget-object v1, p1, Lvm2/WeakTable$WeakSlot;->value:Ljava/lang/Object;

    invoke-direct {p0, v0, v1, p2}, Lvm2/WeakTable$WeakSlot;-><init>(Ljava/lang/Object;Ljava/lang/Object;Lvm2/LuaTable$Slot;)V

    .line 217
    iget p1, p1, Lvm2/WeakTable$WeakKeySlot;->keyhash:I

    iput p1, p0, Lvm2/WeakTable$WeakKeySlot;->keyhash:I

    return-void
.end method


# virtual methods
.method public copy(Lvm2/LuaTable$Slot;)Lvm2/WeakTable$WeakSlot;
    .registers 3

    .line 234
    new-instance v0, Lvm2/WeakTable$WeakKeySlot;

    invoke-direct {v0, p0, p1}, Lvm2/WeakTable$WeakKeySlot;-><init>(Lvm2/WeakTable$WeakKeySlot;Lvm2/LuaTable$Slot;)V

    return-object v0
.end method

.method public keyindex(I)I
    .registers 3

    .line 221
    iget v0, p0, Lvm2/WeakTable$WeakKeySlot;->keyhash:I

    invoke-static {v0, p1}, Lvm2/LuaTable;->hashmod(II)I

    move-result p1

    return p1
.end method

.method public set(Lvm2/LuaValue;)Lvm2/LuaTable$Slot;
    .registers 2

    .line 225
    iput-object p1, p0, Lvm2/WeakTable$WeakSlot;->value:Ljava/lang/Object;

    return-object p0
.end method

.method public strongkey()Lvm2/LuaValue;
    .registers 2

    .line 230
    iget-object v0, p0, Lvm2/WeakTable$WeakSlot;->key:Ljava/lang/Object;

    invoke-static {v0}, Lvm2/WeakTable;->strengthen(Ljava/lang/Object;)Lvm2/LuaValue;

    move-result-object v0

    return-object v0
.end method

###### Class vm2.WeakTable.WeakSlot (vm2.WeakTable$WeakSlot)
.class public abstract Lvm2/WeakTable$WeakSlot;
.super Ljava/lang/Object;
.source "WeakTable.java"

# interfaces
.implements Lvm2/LuaTable$Slot;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lvm2/WeakTable;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x409
    name = "WeakSlot"
.end annotation


# instance fields
.field protected key:Ljava/lang/Object;

.field protected next:Lvm2/LuaTable$Slot;

.field protected value:Ljava/lang/Object;


# direct methods
.method public constructor <init>(Ljava/lang/Object;Ljava/lang/Object;Lvm2/LuaTable$Slot;)V
    .registers 4

    .line 106
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 107
    iput-object p1, p0, Lvm2/WeakTable$WeakSlot;->key:Ljava/lang/Object;

    .line 108
    iput-object p2, p0, Lvm2/WeakTable$WeakSlot;->value:Ljava/lang/Object;

    .line 109
    iput-object p3, p0, Lvm2/WeakTable$WeakSlot;->next:Lvm2/LuaTable$Slot;

    return-void
.end method


# virtual methods
.method public add(Lvm2/LuaTable$Slot;)Lvm2/LuaTable$Slot;
    .registers 3

    .line 162
    iget-object v0, p0, Lvm2/WeakTable$WeakSlot;->next:Lvm2/LuaTable$Slot;

    if-eqz v0, :cond_8

    invoke-interface {v0, p1}, Lvm2/LuaTable$Slot;->add(Lvm2/LuaTable$Slot;)Lvm2/LuaTable$Slot;

    move-result-object p1

    :cond_8
    iput-object p1, p0, Lvm2/WeakTable$WeakSlot;->next:Lvm2/LuaTable$Slot;

    .line 163
    invoke-virtual {p0}, Lvm2/WeakTable$WeakSlot;->strongkey()Lvm2/LuaValue;

    move-result-object p1

    if-eqz p1, :cond_17

    invoke-virtual {p0}, Lvm2/WeakTable$WeakSlot;->strongvalue()Lvm2/LuaValue;

    move-result-object p1

    if-eqz p1, :cond_17

    return-object p0

    .line 166
    :cond_17
    iget-object p1, p0, Lvm2/WeakTable$WeakSlot;->next:Lvm2/LuaTable$Slot;

    return-object p1
.end method

.method public arraykey(I)I
    .registers 2

    .line 0
    const/4 p1, 0x0

    return p1
.end method

.method public abstract copy(Lvm2/LuaTable$Slot;)Lvm2/WeakTable$WeakSlot;
.end method

.method public find(Lvm2/LuaValue;)Lvm2/LuaTable$StrongSlot;
    .registers 3

    .line 129
    invoke-virtual {p0}, Lvm2/WeakTable$WeakSlot;->first()Lvm2/LuaTable$StrongSlot;

    move-result-object v0

    if-eqz v0, :cond_b

    .line 130
    invoke-interface {v0, p1}, Lvm2/LuaTable$Slot;->find(Lvm2/LuaValue;)Lvm2/LuaTable$StrongSlot;

    move-result-object p1

    return-object p1

    :cond_b
    const/4 p1, 0x0

    return-object p1
.end method

.method public first()Lvm2/LuaTable$StrongSlot;
    .registers 4

    .line 117
    invoke-virtual {p0}, Lvm2/WeakTable$WeakSlot;->strongkey()Lvm2/LuaValue;

    move-result-object v0

    .line 118
    invoke-virtual {p0}, Lvm2/WeakTable$WeakSlot;->strongvalue()Lvm2/LuaValue;

    move-result-object v1

    if-eqz v0, :cond_12

    if-eqz v1, :cond_12

    .line 120
    new-instance v2, Lvm2/LuaTable$NormalEntry;

    invoke-direct {v2, v0, v1}, Lvm2/LuaTable$NormalEntry;-><init>(Lvm2/LuaValue;Lvm2/LuaValue;)V

    return-object v2

    :cond_12
    const/4 v0, 0x0

    .line 122
    iput-object v0, p0, Lvm2/WeakTable$WeakSlot;->key:Ljava/lang/Object;

    .line 123
    iput-object v0, p0, Lvm2/WeakTable$WeakSlot;->value:Ljava/lang/Object;

    return-object v0
.end method

.method public keyeq(Lvm2/LuaValue;)Z
    .registers 3

    .line 134
    invoke-virtual {p0}, Lvm2/WeakTable$WeakSlot;->first()Lvm2/LuaTable$StrongSlot;

    move-result-object v0

    if-eqz v0, :cond_e

    .line 135
    invoke-interface {v0, p1}, Lvm2/LuaTable$Slot;->keyeq(Lvm2/LuaValue;)Z

    move-result p1

    if-eqz p1, :cond_e

    const/4 p1, 0x1

    return p1

    :cond_e
    const/4 p1, 0x0

    return p1
.end method

.method public abstract keyindex(I)I
.end method

.method public relink(Lvm2/LuaTable$Slot;)Lvm2/LuaTable$Slot;
    .registers 3

    .line 184
    invoke-virtual {p0}, Lvm2/WeakTable$WeakSlot;->strongkey()Lvm2/LuaValue;

    move-result-object v0

    if-eqz v0, :cond_17

    invoke-virtual {p0}, Lvm2/WeakTable$WeakSlot;->strongvalue()Lvm2/LuaValue;

    move-result-object v0

    if-eqz v0, :cond_17

    if-nez p1, :cond_13

    .line 185
    iget-object v0, p0, Lvm2/WeakTable$WeakSlot;->next:Lvm2/LuaTable$Slot;

    if-nez v0, :cond_13

    return-object p0

    .line 188
    :cond_13
    invoke-virtual {p0, p1}, Lvm2/WeakTable$WeakSlot;->copy(Lvm2/LuaTable$Slot;)Lvm2/WeakTable$WeakSlot;

    move-result-object p1

    :cond_17
    return-object p1
.end method

.method public remove(Lvm2/LuaTable$StrongSlot;)Lvm2/LuaTable$Slot;
    .registers 3

    .line 171
    invoke-virtual {p0}, Lvm2/WeakTable$WeakSlot;->strongkey()Lvm2/LuaValue;

    move-result-object v0

    if-nez v0, :cond_d

    .line 173
    iget-object v0, p0, Lvm2/WeakTable$WeakSlot;->next:Lvm2/LuaTable$Slot;

    invoke-interface {v0, p1}, Lvm2/LuaTable$Slot;->remove(Lvm2/LuaTable$StrongSlot;)Lvm2/LuaTable$Slot;

    move-result-object p1

    return-object p1

    .line 174
    :cond_d
    invoke-interface {p1, v0}, Lvm2/LuaTable$Slot;->keyeq(Lvm2/LuaValue;)Z

    move-result v0

    if-eqz v0, :cond_17

    const/4 p1, 0x0

    .line 175
    iput-object p1, p0, Lvm2/WeakTable$WeakSlot;->value:Ljava/lang/Object;

    return-object p0

    .line 178
    :cond_17
    iget-object v0, p0, Lvm2/WeakTable$WeakSlot;->next:Lvm2/LuaTable$Slot;

    invoke-interface {v0, p1}, Lvm2/LuaTable$Slot;->remove(Lvm2/LuaTable$StrongSlot;)Lvm2/LuaTable$Slot;

    move-result-object p1

    iput-object p1, p0, Lvm2/WeakTable$WeakSlot;->next:Lvm2/LuaTable$Slot;

    return-object p0
.end method

.method public rest()Lvm2/LuaTable$Slot;
    .registers 2

    .line 139
    iget-object v0, p0, Lvm2/WeakTable$WeakSlot;->next:Lvm2/LuaTable$Slot;

    return-object v0
.end method

.method public set(Lvm2/LuaTable$StrongSlot;Lvm2/LuaValue;)Lvm2/LuaTable$Slot;
    .registers 5

    .line 148
    invoke-virtual {p0}, Lvm2/WeakTable$WeakSlot;->strongkey()Lvm2/LuaValue;

    move-result-object v0

    if-eqz v0, :cond_11

    .line 149
    invoke-interface {p1, v0}, Lvm2/LuaTable$Slot;->find(Lvm2/LuaValue;)Lvm2/LuaTable$StrongSlot;

    move-result-object v1

    if-eqz v1, :cond_11

    .line 150
    invoke-virtual {p0, p2}, Lvm2/WeakTable$WeakSlot;->set(Lvm2/LuaValue;)Lvm2/LuaTable$Slot;

    move-result-object p1

    return-object p1

    :cond_11
    if-eqz v0, :cond_1c

    .line 153
    iget-object v0, p0, Lvm2/WeakTable$WeakSlot;->next:Lvm2/LuaTable$Slot;

    invoke-interface {v0, p1, p2}, Lvm2/LuaTable$Slot;->set(Lvm2/LuaTable$StrongSlot;Lvm2/LuaValue;)Lvm2/LuaTable$Slot;

    move-result-object p1

    iput-object p1, p0, Lvm2/WeakTable$WeakSlot;->next:Lvm2/LuaTable$Slot;

    return-object p0

    .line 157
    :cond_1c
    iget-object v0, p0, Lvm2/WeakTable$WeakSlot;->next:Lvm2/LuaTable$Slot;

    invoke-interface {v0, p1, p2}, Lvm2/LuaTable$Slot;->set(Lvm2/LuaTable$StrongSlot;Lvm2/LuaValue;)Lvm2/LuaTable$Slot;

    move-result-object p1

    return-object p1
.end method

.method public abstract set(Lvm2/LuaValue;)Lvm2/LuaTable$Slot;
.end method

.method public strongkey()Lvm2/LuaValue;
    .registers 2

    .line 196
    iget-object v0, p0, Lvm2/WeakTable$WeakSlot;->key:Ljava/lang/Object;

    check-cast v0, Lvm2/LuaValue;

    return-object v0
.end method

.method public strongvalue()Lvm2/LuaValue;
    .registers 2

    .line 200
    iget-object v0, p0, Lvm2/WeakTable$WeakSlot;->value:Ljava/lang/Object;

    check-cast v0, Lvm2/LuaValue;

    return-object v0
.end method

###### Class vm2.WeakTable.WeakUserdata (vm2.WeakTable$WeakUserdata)
.class final Lvm2/WeakTable$WeakUserdata;
.super Lvm2/WeakTable$WeakValue;
.source "WeakTable.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lvm2/WeakTable;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "WeakUserdata"
.end annotation


# instance fields
.field private final mt:Lvm2/LuaValue;

.field private final ob:Ljava/lang/ref/WeakReference;


# direct methods
.method private constructor <init>(Lvm2/LuaValue;)V
    .registers 4

    .line 379
    invoke-direct {p0, p1}, Lvm2/WeakTable$WeakValue;-><init>(Lvm2/LuaValue;)V

    .line 380
    new-instance v0, Ljava/lang/ref/WeakReference;

    invoke-virtual {p1}, Lvm2/LuaValue;->touserdata()Ljava/lang/Object;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/ref/WeakReference;-><init>(Ljava/lang/Object;)V

    iput-object v0, p0, Lvm2/WeakTable$WeakUserdata;->ob:Ljava/lang/ref/WeakReference;

    .line 381
    invoke-virtual {p1}, Lvm2/LuaValue;->getmetatable()Lvm2/LuaValue;

    move-result-object p1

    iput-object p1, p0, Lvm2/WeakTable$WeakUserdata;->mt:Lvm2/LuaValue;

    return-void
.end method

.method public synthetic constructor <init>(Lvm2/LuaValue;Lvm2/WeakTable$1;)V
    .registers 3

    .line 374
    invoke-direct {p0, p1}, Lvm2/WeakTable$WeakUserdata;-><init>(Lvm2/LuaValue;)V

    return-void
.end method


# virtual methods
.method public strongvalue()Lvm2/LuaValue;
    .registers 3

    .line 385
    iget-object v0, p0, Lvm2/WeakTable$WeakValue;->ref:Ljava/lang/ref/WeakReference;

    invoke-virtual {v0}, Ljava/lang/ref/Reference;->get()Ljava/lang/Object;

    move-result-object v0

    if-eqz v0, :cond_b

    .line 387
    check-cast v0, Lvm2/LuaValue;

    return-object v0

    .line 388
    :cond_b
    iget-object v0, p0, Lvm2/WeakTable$WeakUserdata;->ob:Ljava/lang/ref/WeakReference;

    invoke-virtual {v0}, Ljava/lang/ref/Reference;->get()Ljava/lang/Object;

    move-result-object v0

    if-eqz v0, :cond_21

    .line 390
    iget-object v1, p0, Lvm2/WeakTable$WeakUserdata;->mt:Lvm2/LuaValue;

    invoke-static {v0, v1}, Lvm2/LuaValue;->userdataOf(Ljava/lang/Object;Lvm2/LuaValue;)Lvm2/LuaUserdata;

    move-result-object v0

    .line 391
    new-instance v1, Ljava/lang/ref/WeakReference;

    invoke-direct {v1, v0}, Ljava/lang/ref/WeakReference;-><init>(Ljava/lang/Object;)V

    iput-object v1, p0, Lvm2/WeakTable$WeakValue;->ref:Ljava/lang/ref/WeakReference;

    return-object v0

    :cond_21
    const/4 v0, 0x0

    return-object v0
.end method

###### Class vm2.WeakTable.WeakValue (vm2.WeakTable$WeakValue)
.class Lvm2/WeakTable$WeakValue;
.super Lvm2/LuaValue;
.source "WeakTable.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lvm2/WeakTable;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "WeakValue"
.end annotation


# instance fields
.field ref:Ljava/lang/ref/WeakReference;


# direct methods
.method public constructor <init>(Lvm2/LuaValue;)V
    .registers 3

    .line 342
    invoke-direct {p0}, Lvm2/LuaValue;-><init>()V

    .line 343
    new-instance v0, Ljava/lang/ref/WeakReference;

    invoke-direct {v0, p1}, Ljava/lang/ref/WeakReference;-><init>(Ljava/lang/Object;)V

    iput-object v0, p0, Lvm2/WeakTable$WeakValue;->ref:Ljava/lang/ref/WeakReference;

    return-void
.end method


# virtual methods
.method public raweq(Lvm2/LuaValue;)Z
    .registers 3

    .line 366
    iget-object v0, p0, Lvm2/WeakTable$WeakValue;->ref:Ljava/lang/ref/WeakReference;

    invoke-virtual {v0}, Ljava/lang/ref/Reference;->get()Ljava/lang/Object;

    move-result-object v0

    if-eqz v0, :cond_12

    .line 367
    check-cast v0, Lvm2/LuaValue;

    invoke-virtual {p1, v0}, Lvm2/LuaValue;->raweq(Lvm2/LuaValue;)Z

    move-result p1

    if-eqz p1, :cond_12

    const/4 p1, 0x1

    return p1

    :cond_12
    const/4 p1, 0x0

    return p1
.end method

.method public strongvalue()Lvm2/LuaValue;
    .registers 2

    .line 361
    iget-object v0, p0, Lvm2/WeakTable$WeakValue;->ref:Ljava/lang/ref/WeakReference;

    invoke-virtual {v0}, Ljava/lang/ref/Reference;->get()Ljava/lang/Object;

    move-result-object v0

    .line 362
    check-cast v0, Lvm2/LuaValue;

    return-object v0
.end method

.method public toString()Ljava/lang/String;
    .registers 3

    .line 357
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "weak<"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lvm2/WeakTable$WeakValue;->ref:Ljava/lang/ref/WeakReference;

    invoke-virtual {v1}, Ljava/lang/ref/Reference;->get()Ljava/lang/Object;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, ">"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public type()I
    .registers 3

    .line 347
    const-string v0, "type"

    const-string v1, "weak value"

    invoke-virtual {p0, v0, v1}, Lvm2/LuaValue;->illegal(Ljava/lang/String;Ljava/lang/String;)Lvm2/LuaValue;

    const/4 v0, 0x0

    return v0
.end method

.method public typename()Ljava/lang/String;
    .registers 3

    .line 352
    const-string v0, "typename"

    const-string v1, "weak value"

    invoke-virtual {p0, v0, v1}, Lvm2/LuaValue;->illegal(Ljava/lang/String;Ljava/lang/String;)Lvm2/LuaValue;

    const/4 v0, 0x0

    return-object v0
.end method

###### Class vm2.WeakTable.WeakValueSlot (vm2.WeakTable$WeakValueSlot)
.class Lvm2/WeakTable$WeakValueSlot;
.super Lvm2/WeakTable$WeakSlot;
.source "WeakTable.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lvm2/WeakTable;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "WeakValueSlot"
.end annotation


# direct methods
.method public constructor <init>(Lvm2/LuaValue;Lvm2/LuaValue;Lvm2/LuaTable$Slot;)V
    .registers 4

    .line 241
    invoke-static {p2}, Lvm2/WeakTable;->weaken(Lvm2/LuaValue;)Lvm2/LuaValue;

    move-result-object p2

    invoke-direct {p0, p1, p2, p3}, Lvm2/WeakTable$WeakSlot;-><init>(Ljava/lang/Object;Ljava/lang/Object;Lvm2/LuaTable$Slot;)V

    return-void
.end method

.method public constructor <init>(Lvm2/WeakTable$WeakValueSlot;Lvm2/LuaTable$Slot;)V
    .registers 4

    .line 245
    iget-object v0, p1, Lvm2/WeakTable$WeakSlot;->key:Ljava/lang/Object;

    iget-object p1, p1, Lvm2/WeakTable$WeakSlot;->value:Ljava/lang/Object;

    invoke-direct {p0, v0, p1, p2}, Lvm2/WeakTable$WeakSlot;-><init>(Ljava/lang/Object;Ljava/lang/Object;Lvm2/LuaTable$Slot;)V

    return-void
.end method


# virtual methods
.method public copy(Lvm2/LuaTable$Slot;)Lvm2/WeakTable$WeakSlot;
    .registers 3

    .line 262
    new-instance v0, Lvm2/WeakTable$WeakValueSlot;

    invoke-direct {v0, p0, p1}, Lvm2/WeakTable$WeakValueSlot;-><init>(Lvm2/WeakTable$WeakValueSlot;Lvm2/LuaTable$Slot;)V

    return-object v0
.end method

.method public keyindex(I)I
    .registers 3

    .line 249
    invoke-virtual {p0}, Lvm2/WeakTable$WeakSlot;->strongkey()Lvm2/LuaValue;

    move-result-object v0

    invoke-static {v0, p1}, Lvm2/LuaTable;->hashSlot(Lvm2/LuaValue;I)I

    move-result p1

    return p1
.end method

.method public set(Lvm2/LuaValue;)Lvm2/LuaTable$Slot;
    .registers 2

    .line 253
    invoke-static {p1}, Lvm2/WeakTable;->weaken(Lvm2/LuaValue;)Lvm2/LuaValue;

    move-result-object p1

    iput-object p1, p0, Lvm2/WeakTable$WeakSlot;->value:Ljava/lang/Object;

    return-object p0
.end method

.method public strongvalue()Lvm2/LuaValue;
    .registers 2

    .line 258
    iget-object v0, p0, Lvm2/WeakTable$WeakSlot;->value:Ljava/lang/Object;

    invoke-static {v0}, Lvm2/WeakTable;->strengthen(Ljava/lang/Object;)Lvm2/LuaValue;

    move-result-object v0

    return-object v0
.end method
