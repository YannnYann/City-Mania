###### Class info.flowersoft.theotown.resources.PluginPolicy (info.flowersoft.theotown.resources.PluginPolicy)
.class public final Linfo/flowersoft/theotown/resources/PluginPolicy;
.super Ljava/lang/Object;
.source "PluginScriptPolicy.kt"


# instance fields
.field public allowed:Z

.field public changeTimeMS:J

.field public final ids:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field public final path:Ljava/lang/String;

.field public present:Z

.field public privileged:Z


# direct methods
.method public constructor <init>(Ljava/lang/String;Ljava/util/List;ZZZJ)V
    .registers 9
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;ZZZJ)V"
        }
    .end annotation

    const-string v0, "path"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "ids"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 12
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 13
    iput-object p1, p0, Linfo/flowersoft/theotown/resources/PluginPolicy;->path:Ljava/lang/String;

    .line 14
    iput-object p2, p0, Linfo/flowersoft/theotown/resources/PluginPolicy;->ids:Ljava/util/List;

    .line 15
    iput-boolean p3, p0, Linfo/flowersoft/theotown/resources/PluginPolicy;->allowed:Z

    .line 16
    iput-boolean p4, p0, Linfo/flowersoft/theotown/resources/PluginPolicy;->present:Z

    .line 17
    iput-boolean p5, p0, Linfo/flowersoft/theotown/resources/PluginPolicy;->privileged:Z

    .line 18
    iput-wide p6, p0, Linfo/flowersoft/theotown/resources/PluginPolicy;->changeTimeMS:J

    return-void
.end method

.method public synthetic constructor <init>(Ljava/lang/String;Ljava/util/List;ZZZJILkotlin/jvm/internal/DefaultConstructorMarker;)V
    .registers 16

    and-int/lit8 v0, p8, 0x2

    if-eqz v0, :cond_a

    .line 14
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    goto :goto_b

    :cond_a
    move-object v0, p2

    :goto_b
    and-int/lit8 v1, p8, 0x4

    const/4 v2, 0x0

    if-eqz v1, :cond_12

    move v1, v2

    goto :goto_13

    :cond_12
    move v1, p3

    :goto_13
    and-int/lit8 v3, p8, 0x8

    if-eqz v3, :cond_19

    move v3, v2

    goto :goto_1a

    :cond_19
    move v3, p4

    :goto_1a
    and-int/lit8 v4, p8, 0x10

    if-eqz v4, :cond_1f

    goto :goto_20

    :cond_1f
    move v2, p5

    :goto_20
    and-int/lit8 v4, p8, 0x20

    if-eqz v4, :cond_2e

    const-wide/16 v4, 0x0

    move-wide p8, v4

    :goto_27
    move-object p2, p0

    move-object p3, p1

    move-object p4, v0

    move p5, v1

    move p7, v2

    move p6, v3

    goto :goto_30

    :cond_2e
    move-wide p8, p6

    goto :goto_27

    .line 12
    :goto_30
    invoke-direct/range {p2 .. p9}, Linfo/flowersoft/theotown/resources/PluginPolicy;-><init>(Ljava/lang/String;Ljava/util/List;ZZZJ)V

    return-void
.end method

.method public static synthetic copy$default(Linfo/flowersoft/theotown/resources/PluginPolicy;Ljava/lang/String;Ljava/util/List;ZZZJILjava/lang/Object;)Linfo/flowersoft/theotown/resources/PluginPolicy;
    .registers 10

    .line 0
    and-int/lit8 p9, p8, 0x1

    if-eqz p9, :cond_6

    iget-object p1, p0, Linfo/flowersoft/theotown/resources/PluginPolicy;->path:Ljava/lang/String;

    :cond_6
    and-int/lit8 p9, p8, 0x2

    if-eqz p9, :cond_c

    iget-object p2, p0, Linfo/flowersoft/theotown/resources/PluginPolicy;->ids:Ljava/util/List;

    :cond_c
    and-int/lit8 p9, p8, 0x4

    if-eqz p9, :cond_12

    iget-boolean p3, p0, Linfo/flowersoft/theotown/resources/PluginPolicy;->allowed:Z

    :cond_12
    and-int/lit8 p9, p8, 0x8

    if-eqz p9, :cond_18

    iget-boolean p4, p0, Linfo/flowersoft/theotown/resources/PluginPolicy;->present:Z

    :cond_18
    and-int/lit8 p9, p8, 0x10

    if-eqz p9, :cond_1e

    iget-boolean p5, p0, Linfo/flowersoft/theotown/resources/PluginPolicy;->privileged:Z

    :cond_1e
    and-int/lit8 p8, p8, 0x20

    if-eqz p8, :cond_24

    iget-wide p6, p0, Linfo/flowersoft/theotown/resources/PluginPolicy;->changeTimeMS:J

    :cond_24
    move-wide p8, p6

    move p6, p4

    move p7, p5

    move-object p4, p2

    move p5, p3

    move-object p2, p0

    move-object p3, p1

    invoke-virtual/range {p2 .. p9}, Linfo/flowersoft/theotown/resources/PluginPolicy;->copy(Ljava/lang/String;Ljava/util/List;ZZZJ)Linfo/flowersoft/theotown/resources/PluginPolicy;

    move-result-object p0

    return-object p0
.end method


# virtual methods
.method public final copy(Ljava/lang/String;Ljava/util/List;ZZZJ)Linfo/flowersoft/theotown/resources/PluginPolicy;
    .registers 17
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;ZZZJ)",
            "Linfo/flowersoft/theotown/resources/PluginPolicy;"
        }
    .end annotation

    .line 0
    const-string v0, "path"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "ids"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    new-instance v1, Linfo/flowersoft/theotown/resources/PluginPolicy;

    move-object v2, p1

    move-object v3, p2

    move v4, p3

    move v5, p4

    move v6, p5

    move-wide v7, p6

    invoke-direct/range {v1 .. v8}, Linfo/flowersoft/theotown/resources/PluginPolicy;-><init>(Ljava/lang/String;Ljava/util/List;ZZZJ)V

    return-object v1
.end method

.method public equals(Ljava/lang/Object;)Z
    .registers 9

    .line 0
    const/4 v0, 0x1

    if-ne p0, p1, :cond_4

    return v0

    :cond_4
    instance-of v1, p1, Linfo/flowersoft/theotown/resources/PluginPolicy;

    const/4 v2, 0x0

    if-nez v1, :cond_a

    return v2

    :cond_a
    check-cast p1, Linfo/flowersoft/theotown/resources/PluginPolicy;

    iget-object v1, p0, Linfo/flowersoft/theotown/resources/PluginPolicy;->path:Ljava/lang/String;

    iget-object v3, p1, Linfo/flowersoft/theotown/resources/PluginPolicy;->path:Ljava/lang/String;

    invoke-static {v1, v3}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_17

    return v2

    :cond_17
    iget-object v1, p0, Linfo/flowersoft/theotown/resources/PluginPolicy;->ids:Ljava/util/List;

    iget-object v3, p1, Linfo/flowersoft/theotown/resources/PluginPolicy;->ids:Ljava/util/List;

    invoke-static {v1, v3}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_22

    return v2

    :cond_22
    iget-boolean v1, p0, Linfo/flowersoft/theotown/resources/PluginPolicy;->allowed:Z

    iget-boolean v3, p1, Linfo/flowersoft/theotown/resources/PluginPolicy;->allowed:Z

    if-eq v1, v3, :cond_29

    return v2

    :cond_29
    iget-boolean v1, p0, Linfo/flowersoft/theotown/resources/PluginPolicy;->present:Z

    iget-boolean v3, p1, Linfo/flowersoft/theotown/resources/PluginPolicy;->present:Z

    if-eq v1, v3, :cond_30

    return v2

    :cond_30
    iget-boolean v1, p0, Linfo/flowersoft/theotown/resources/PluginPolicy;->privileged:Z

    iget-boolean v3, p1, Linfo/flowersoft/theotown/resources/PluginPolicy;->privileged:Z

    if-eq v1, v3, :cond_37

    return v2

    :cond_37
    iget-wide v3, p0, Linfo/flowersoft/theotown/resources/PluginPolicy;->changeTimeMS:J

    iget-wide v5, p1, Linfo/flowersoft/theotown/resources/PluginPolicy;->changeTimeMS:J

    cmp-long p1, v3, v5

    if-eqz p1, :cond_40

    return v2

    :cond_40
    return v0
.end method

.method public final getAllowed()Z
    .registers 2

    .line 15
    iget-boolean v0, p0, Linfo/flowersoft/theotown/resources/PluginPolicy;->allowed:Z

    return v0
.end method

.method public final getChangeTimeMS()J
    .registers 3

    .line 18
    iget-wide v0, p0, Linfo/flowersoft/theotown/resources/PluginPolicy;->changeTimeMS:J

    return-wide v0
.end method

.method public final getIds()Ljava/util/List;
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .line 14
    iget-object v0, p0, Linfo/flowersoft/theotown/resources/PluginPolicy;->ids:Ljava/util/List;

    return-object v0
.end method

.method public final getPath()Ljava/lang/String;
    .registers 2

    .line 13
    iget-object v0, p0, Linfo/flowersoft/theotown/resources/PluginPolicy;->path:Ljava/lang/String;

    return-object v0
.end method

.method public final getPresent()Z
    .registers 2

    .line 16
    iget-boolean v0, p0, Linfo/flowersoft/theotown/resources/PluginPolicy;->present:Z

    return v0
.end method

.method public final getPrivileged()Z
    .registers 2

    .line 17
    iget-boolean v0, p0, Linfo/flowersoft/theotown/resources/PluginPolicy;->privileged:Z

    return v0
.end method

.method public hashCode()I
    .registers 4

    .line 0
    iget-object v0, p0, Linfo/flowersoft/theotown/resources/PluginPolicy;->path:Ljava/lang/String;

    invoke-virtual {v0}, Ljava/lang/String;->hashCode()I

    move-result v0

    mul-int/lit8 v0, v0, 0x1f

    iget-object v1, p0, Linfo/flowersoft/theotown/resources/PluginPolicy;->ids:Ljava/util/List;

    invoke-virtual {v1}, Ljava/lang/Object;->hashCode()I

    move-result v1

    add-int/2addr v0, v1

    mul-int/lit8 v0, v0, 0x1f

    iget-boolean v1, p0, Linfo/flowersoft/theotown/resources/PluginPolicy;->allowed:Z

    invoke-static {v1}, Ljava/lang/Boolean;->hashCode(Z)I

    move-result v1

    add-int/2addr v0, v1

    mul-int/lit8 v0, v0, 0x1f

    iget-boolean v1, p0, Linfo/flowersoft/theotown/resources/PluginPolicy;->present:Z

    invoke-static {v1}, Ljava/lang/Boolean;->hashCode(Z)I

    move-result v1

    add-int/2addr v0, v1

    mul-int/lit8 v0, v0, 0x1f

    iget-boolean v1, p0, Linfo/flowersoft/theotown/resources/PluginPolicy;->privileged:Z

    invoke-static {v1}, Ljava/lang/Boolean;->hashCode(Z)I

    move-result v1

    add-int/2addr v0, v1

    mul-int/lit8 v0, v0, 0x1f

    iget-wide v1, p0, Linfo/flowersoft/theotown/resources/PluginPolicy;->changeTimeMS:J

    invoke-static {v1, v2}, Ljava/lang/Long;->hashCode(J)I

    move-result v1

    add-int/2addr v0, v1

    return v0
.end method

.method public final setAllowed(Z)V
    .registers 2

    .line 15
    iput-boolean p1, p0, Linfo/flowersoft/theotown/resources/PluginPolicy;->allowed:Z

    return-void
.end method

.method public final setChangeTimeMS(J)V
    .registers 3

    .line 18
    iput-wide p1, p0, Linfo/flowersoft/theotown/resources/PluginPolicy;->changeTimeMS:J

    return-void
.end method

.method public final setPresent(Z)V
    .registers 2

    .line 16
    iput-boolean p1, p0, Linfo/flowersoft/theotown/resources/PluginPolicy;->present:Z

    return-void
.end method

.method public final setPrivileged(Z)V
    .registers 2

    .line 17
    iput-boolean p1, p0, Linfo/flowersoft/theotown/resources/PluginPolicy;->privileged:Z

    return-void
.end method

.method public toString()Ljava/lang/String;
    .registers 4

    .line 0
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "PluginPolicy(path="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Linfo/flowersoft/theotown/resources/PluginPolicy;->path:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, ", ids="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Linfo/flowersoft/theotown/resources/PluginPolicy;->ids:Ljava/util/List;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, ", allowed="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v1, p0, Linfo/flowersoft/theotown/resources/PluginPolicy;->allowed:Z

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v1, ", present="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v1, p0, Linfo/flowersoft/theotown/resources/PluginPolicy;->present:Z

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v1, ", privileged="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v1, p0, Linfo/flowersoft/theotown/resources/PluginPolicy;->privileged:Z

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v1, ", changeTimeMS="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-wide v1, p0, Linfo/flowersoft/theotown/resources/PluginPolicy;->changeTimeMS:J

    invoke-virtual {v0, v1, v2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const/16 v1, 0x29

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
