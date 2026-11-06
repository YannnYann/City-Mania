###### Class info.flowersoft.theotown.resources.NewContentManager (info.flowersoft.theotown.resources.NewContentManager)
.class public final Linfo/flowersoft/theotown/resources/NewContentManager;
.super Ljava/lang/Object;
.source "NewContentManager.java"


# static fields
.field public static instance:Linfo/flowersoft/theotown/resources/NewContentManager;


# instance fields
.field public firstRun:Z

.field public knownIds:Ljava/util/Set;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Set<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .registers 4

    .line 20
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 18
    new-instance v0, Ljava/util/HashSet;

    invoke-direct {v0}, Ljava/util/HashSet;-><init>()V

    iput-object v0, p0, Linfo/flowersoft/theotown/resources/NewContentManager;->knownIds:Ljava/util/Set;

    .line 21
    new-instance v0, Linfo/flowersoft/theotown/util/SSP;

    const-string v1, "newcontent"

    invoke-direct {v0, v1}, Linfo/flowersoft/theotown/util/SSP;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0}, Linfo/flowersoft/theotown/util/SSP;->load()Linfo/flowersoft/theotown/util/SSP$Reader;

    move-result-object v0

    .line 22
    const-string v1, "ids"

    const/4 v2, 0x0

    invoke-interface {v0, v1, v2}, Linfo/flowersoft/theotown/util/SSP$Reader;->getStringSet(Ljava/lang/String;Ljava/util/Set;)Ljava/util/Set;

    move-result-object v0

    if-eqz v0, :cond_24

    .line 24
    iget-object v1, p0, Linfo/flowersoft/theotown/resources/NewContentManager;->knownIds:Ljava/util/Set;

    invoke-interface {v1, v0}, Ljava/util/Set;->addAll(Ljava/util/Collection;)Z

    return-void

    :cond_24
    const/4 v0, 0x1

    .line 26
    iput-boolean v0, p0, Linfo/flowersoft/theotown/resources/NewContentManager;->firstRun:Z

    return-void
.end method

.method public static dispose()V
    .registers 1

    const/4 v0, 0x0

    .line 76
    sput-object v0, Linfo/flowersoft/theotown/resources/NewContentManager;->instance:Linfo/flowersoft/theotown/resources/NewContentManager;

    return-void
.end method

.method public static getInstance()Linfo/flowersoft/theotown/resources/NewContentManager;
    .registers 1

    .line 80
    sget-object v0, Linfo/flowersoft/theotown/resources/NewContentManager;->instance:Linfo/flowersoft/theotown/resources/NewContentManager;

    return-object v0
.end method

.method public static init()V
    .registers 1

    .line 72
    new-instance v0, Linfo/flowersoft/theotown/resources/NewContentManager;

    invoke-direct {v0}, Linfo/flowersoft/theotown/resources/NewContentManager;-><init>()V

    sput-object v0, Linfo/flowersoft/theotown/resources/NewContentManager;->instance:Linfo/flowersoft/theotown/resources/NewContentManager;

    return-void
.end method


# virtual methods
.method public endRegister()V
    .registers 2

    .line 38
    iget-boolean v0, p0, Linfo/flowersoft/theotown/resources/NewContentManager;->firstRun:Z

    if-eqz v0, :cond_a

    .line 39
    invoke-virtual {p0}, Linfo/flowersoft/theotown/resources/NewContentManager;->save()V

    const/4 v0, 0x0

    .line 40
    iput-boolean v0, p0, Linfo/flowersoft/theotown/resources/NewContentManager;->firstRun:Z

    :cond_a
    return-void
.end method

.method public isNew(Ljava/lang/String;)Z
    .registers 3

    if-eqz p1, :cond_c

    .line 47
    iget-object v0, p0, Linfo/flowersoft/theotown/resources/NewContentManager;->knownIds:Ljava/util/Set;

    invoke-interface {v0, p1}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result p1

    if-nez p1, :cond_c

    const/4 p1, 0x1

    return p1

    :cond_c
    const/4 p1, 0x0

    return p1
.end method

.method public markAsNotNew(Ljava/lang/String;)V
    .registers 3

    if-eqz p1, :cond_d

    .line 51
    iget-object v0, p0, Linfo/flowersoft/theotown/resources/NewContentManager;->knownIds:Ljava/util/Set;

    invoke-interface {v0, p1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_d

    .line 52
    invoke-virtual {p0}, Linfo/flowersoft/theotown/resources/NewContentManager;->save()V

    :cond_d
    return-void
.end method

.method public register(Ljava/lang/String;)V
    .registers 3

    .line 32
    iget-boolean v0, p0, Linfo/flowersoft/theotown/resources/NewContentManager;->firstRun:Z

    if-eqz v0, :cond_b

    if-eqz p1, :cond_b

    .line 33
    iget-object v0, p0, Linfo/flowersoft/theotown/resources/NewContentManager;->knownIds:Ljava/util/Set;

    invoke-interface {v0, p1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    :cond_b
    return-void
.end method

.method public final save()V
    .registers 4

    .line 64
    new-instance v0, Linfo/flowersoft/theotown/util/SSP;

    const-string v1, "newcontent"

    invoke-direct {v0, v1}, Linfo/flowersoft/theotown/util/SSP;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0}, Linfo/flowersoft/theotown/util/SSP;->edit()Linfo/flowersoft/theotown/util/SSP$Writer;

    move-result-object v0

    .line 65
    const-string v1, "ids"

    iget-object v2, p0, Linfo/flowersoft/theotown/resources/NewContentManager;->knownIds:Ljava/util/Set;

    invoke-interface {v0, v1, v2}, Linfo/flowersoft/theotown/util/SSP$Writer;->putStringSet(Ljava/lang/String;Ljava/util/Set;)V

    .line 66
    invoke-interface {v0}, Linfo/flowersoft/theotown/util/SSP$Writer;->apply()V

    return-void
.end method
