###### Class info.flowersoft.theotown.online.RegionSettings (info.flowersoft.theotown.online.RegionSettings)
.class public Linfo/flowersoft/theotown/online/RegionSettings;
.super Ljava/lang/Object;
.source "RegionSettings.java"


# instance fields
.field public allowPlugins:Z

.field public allowSandbox:Z

.field public availableTags:Linfo/flowersoft/theotown/online/RegionTagMap;

.field public enforcePassword:Z

.field public hasPasswordDefined:Z

.field public icon:Linfo/flowersoft/theotown/region/RegionIcon;

.field public infos:Ljava/lang/String;

.field public password:Ljava/lang/String;

.field public rules:Ljava/lang/String;

.field public tags:Lio/blueflower/stapel2d/util/IntList;

.field public winter:I


# direct methods
.method public constructor <init>(Linfo/flowersoft/theotown/online/VirtualRegion;Linfo/flowersoft/theotown/online/RegionTagMap;)V
    .registers 5

    .line 22
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 23
    sget-object v0, Linfo/flowersoft/theotown/region/RegionIcon;->Companion:Linfo/flowersoft/theotown/region/RegionIcon$Companion;

    invoke-virtual {p1}, Linfo/flowersoft/theotown/online/VirtualRegion;->getIcon()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Linfo/flowersoft/theotown/region/RegionIcon$Companion;->resolveOrDefault(Ljava/lang/String;)Linfo/flowersoft/theotown/region/RegionIcon;

    move-result-object v0

    iput-object v0, p0, Linfo/flowersoft/theotown/online/RegionSettings;->icon:Linfo/flowersoft/theotown/region/RegionIcon;

    .line 24
    invoke-virtual {p1}, Linfo/flowersoft/theotown/online/VirtualRegion;->isAllowPlugins()Z

    move-result v0

    iput-boolean v0, p0, Linfo/flowersoft/theotown/online/RegionSettings;->allowPlugins:Z

    .line 25
    invoke-virtual {p1}, Linfo/flowersoft/theotown/online/VirtualRegion;->isAllowSandbox()Z

    move-result v0

    iput-boolean v0, p0, Linfo/flowersoft/theotown/online/RegionSettings;->allowSandbox:Z

    .line 26
    invoke-virtual {p1}, Linfo/flowersoft/theotown/online/VirtualRegion;->getRules()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Linfo/flowersoft/theotown/online/RegionSettings;->rules:Ljava/lang/String;

    .line 27
    invoke-virtual {p1}, Linfo/flowersoft/theotown/online/VirtualRegion;->getInfos()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Linfo/flowersoft/theotown/online/RegionSettings;->infos:Ljava/lang/String;

    .line 28
    invoke-virtual {p1}, Linfo/flowersoft/theotown/online/VirtualRegion;->hasPasswordDefined()Z

    move-result v0

    iput-boolean v0, p0, Linfo/flowersoft/theotown/online/RegionSettings;->hasPasswordDefined:Z

    .line 29
    invoke-virtual {p1}, Linfo/flowersoft/theotown/online/VirtualRegion;->isPasswordEnforced()Z

    move-result v0

    iput-boolean v0, p0, Linfo/flowersoft/theotown/online/RegionSettings;->enforcePassword:Z

    .line 30
    const-string v0, ""

    iput-object v0, p0, Linfo/flowersoft/theotown/online/RegionSettings;->password:Ljava/lang/String;

    .line 31
    invoke-virtual {p1}, Linfo/flowersoft/theotown/online/VirtualRegion;->getWinter()I

    move-result v0

    iput v0, p0, Linfo/flowersoft/theotown/online/RegionSettings;->winter:I

    .line 32
    new-instance v0, Lio/blueflower/stapel2d/util/IntList;

    invoke-virtual {p1}, Linfo/flowersoft/theotown/online/VirtualRegion;->getTags()[I

    move-result-object v1

    invoke-virtual {v1}, [I->clone()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, [I

    invoke-direct {v0, v1}, Lio/blueflower/stapel2d/util/IntList;-><init>([I)V

    iput-object v0, p0, Linfo/flowersoft/theotown/online/RegionSettings;->tags:Lio/blueflower/stapel2d/util/IntList;

    .line 33
    iput-object p2, p0, Linfo/flowersoft/theotown/online/RegionSettings;->availableTags:Linfo/flowersoft/theotown/online/RegionTagMap;

    .line 35
    invoke-virtual {p1}, Linfo/flowersoft/theotown/online/VirtualRegion;->getExtra()Linfo/flowersoft/theotown/util/json/JSONObject;

    return-void
.end method


# virtual methods
.method public equals(Ljava/lang/Object;)Z
    .registers 5

    .line 45
    instance-of v0, p1, Linfo/flowersoft/theotown/online/RegionSettings;

    const/4 v1, 0x0

    if-eqz v0, :cond_55

    .line 46
    check-cast p1, Linfo/flowersoft/theotown/online/RegionSettings;

    .line 47
    iget-object v0, p0, Linfo/flowersoft/theotown/online/RegionSettings;->icon:Linfo/flowersoft/theotown/region/RegionIcon;

    iget-object v2, p1, Linfo/flowersoft/theotown/online/RegionSettings;->icon:Linfo/flowersoft/theotown/region/RegionIcon;

    if-ne v0, v2, :cond_55

    iget-boolean v0, p0, Linfo/flowersoft/theotown/online/RegionSettings;->allowPlugins:Z

    iget-boolean v2, p1, Linfo/flowersoft/theotown/online/RegionSettings;->allowPlugins:Z

    if-ne v0, v2, :cond_55

    iget-boolean v0, p0, Linfo/flowersoft/theotown/online/RegionSettings;->allowSandbox:Z

    iget-boolean v2, p1, Linfo/flowersoft/theotown/online/RegionSettings;->allowSandbox:Z

    if-ne v0, v2, :cond_55

    iget-object v0, p0, Linfo/flowersoft/theotown/online/RegionSettings;->rules:Ljava/lang/String;

    iget-object v2, p1, Linfo/flowersoft/theotown/online/RegionSettings;->rules:Ljava/lang/String;

    .line 50
    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_55

    iget-object v0, p0, Linfo/flowersoft/theotown/online/RegionSettings;->infos:Ljava/lang/String;

    iget-object v2, p1, Linfo/flowersoft/theotown/online/RegionSettings;->infos:Ljava/lang/String;

    .line 51
    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_55

    iget-boolean v0, p0, Linfo/flowersoft/theotown/online/RegionSettings;->hasPasswordDefined:Z

    iget-boolean v2, p1, Linfo/flowersoft/theotown/online/RegionSettings;->hasPasswordDefined:Z

    if-ne v0, v2, :cond_55

    iget-boolean v0, p0, Linfo/flowersoft/theotown/online/RegionSettings;->enforcePassword:Z

    iget-boolean v2, p1, Linfo/flowersoft/theotown/online/RegionSettings;->enforcePassword:Z

    if-ne v0, v2, :cond_55

    iget-object v0, p0, Linfo/flowersoft/theotown/online/RegionSettings;->password:Ljava/lang/String;

    iget-object v2, p1, Linfo/flowersoft/theotown/online/RegionSettings;->password:Ljava/lang/String;

    .line 54
    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_55

    iget v0, p0, Linfo/flowersoft/theotown/online/RegionSettings;->winter:I

    iget v2, p1, Linfo/flowersoft/theotown/online/RegionSettings;->winter:I

    if-ne v0, v2, :cond_55

    iget-object v0, p0, Linfo/flowersoft/theotown/online/RegionSettings;->tags:Lio/blueflower/stapel2d/util/IntList;

    iget-object p1, p1, Linfo/flowersoft/theotown/online/RegionSettings;->tags:Lio/blueflower/stapel2d/util/IntList;

    .line 56
    invoke-virtual {v0, p1}, Lio/blueflower/stapel2d/util/IntList;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_55

    const/4 p1, 0x1

    return p1

    :cond_55
    return v1
.end method

.method public getExtra()Linfo/flowersoft/theotown/util/json/JSONObject;
    .registers 2

    .line 39
    new-instance v0, Linfo/flowersoft/theotown/util/json/JSONObject;

    invoke-direct {v0}, Linfo/flowersoft/theotown/util/json/JSONObject;-><init>()V

    return-object v0
.end method
