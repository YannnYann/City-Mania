###### Class info.flowersoft.theotown.resources.ScriptingManager (info.flowersoft.theotown.resources.ScriptingManager)
.class public Linfo/flowersoft/theotown/resources/ScriptingManager;
.super Ljava/lang/Object;
.source "ScriptingManager.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Linfo/flowersoft/theotown/resources/ScriptingManager$ScriptEntry;
    }
.end annotation


# static fields
.field public static final LOCAL_SCRIPTS:[Ljava/lang/String;

.field public static instance:Linfo/flowersoft/theotown/resources/ScriptingManager;


# instance fields
.field public final scripts:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Linfo/flowersoft/theotown/resources/ScriptingManager$ScriptEntry;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .registers 1

    const/4 v0, 0x0

    .line 18
    new-array v0, v0, [Ljava/lang/String;

    sput-object v0, Linfo/flowersoft/theotown/resources/ScriptingManager;->LOCAL_SCRIPTS:[Ljava/lang/String;

    return-void
.end method

.method public constructor <init>()V
    .registers 2

    .line 26
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 24
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Linfo/flowersoft/theotown/resources/ScriptingManager;->scripts:Ljava/util/List;

    return-void
.end method

.method public static getInstance()Linfo/flowersoft/theotown/resources/ScriptingManager;
    .registers 1

    .line 80
    sget-object v0, Linfo/flowersoft/theotown/resources/ScriptingManager;->instance:Linfo/flowersoft/theotown/resources/ScriptingManager;

    if-nez v0, :cond_b

    .line 81
    new-instance v0, Linfo/flowersoft/theotown/resources/ScriptingManager;

    invoke-direct {v0}, Linfo/flowersoft/theotown/resources/ScriptingManager;-><init>()V

    sput-object v0, Linfo/flowersoft/theotown/resources/ScriptingManager;->instance:Linfo/flowersoft/theotown/resources/ScriptingManager;

    .line 83
    :cond_b
    sget-object v0, Linfo/flowersoft/theotown/resources/ScriptingManager;->instance:Linfo/flowersoft/theotown/resources/ScriptingManager;

    return-object v0
.end method


# virtual methods
.method public get(Ljava/lang/String;)Linfo/flowersoft/theotown/resources/ScriptingManager$ScriptEntry;
    .registers 7

    const/4 v0, 0x0

    move v1, v0

    .line 29
    :goto_2
    iget-object v2, p0, Linfo/flowersoft/theotown/resources/ScriptingManager;->scripts:Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v2

    if-ge v1, v2, :cond_28

    .line 30
    iget-object v2, p0, Linfo/flowersoft/theotown/resources/ScriptingManager;->scripts:Ljava/util/List;

    invoke-interface {v2, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Linfo/flowersoft/theotown/resources/ScriptingManager$ScriptEntry;

    .line 31
    invoke-virtual {v2}, Linfo/flowersoft/theotown/resources/ScriptingManager$ScriptEntry;->getName()Ljava/lang/String;

    move-result-object v3

    if-eqz v3, :cond_25

    .line 32
    invoke-virtual {v3}, Ljava/lang/String;->isEmpty()Z

    move-result v4

    if-nez v4, :cond_25

    invoke-virtual {v3, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_25

    return-object v2

    :cond_25
    add-int/lit8 v1, v1, 0x1

    goto :goto_2

    .line 37
    :cond_28
    :goto_28
    iget-object v1, p0, Linfo/flowersoft/theotown/resources/ScriptingManager;->scripts:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    if-ge v0, v1, :cond_5f

    .line 38
    iget-object v1, p0, Linfo/flowersoft/theotown/resources/ScriptingManager;->scripts:Ljava/util/List;

    invoke-interface {v1, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Linfo/flowersoft/theotown/resources/ScriptingManager$ScriptEntry;

    .line 39
    invoke-virtual {v1}, Linfo/flowersoft/theotown/resources/ScriptingManager$ScriptEntry;->getPath()Ljava/lang/String;

    move-result-object v2

    if-eqz v2, :cond_5c

    .line 40
    invoke-virtual {v2, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_5b

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v4, ".lua"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_5c

    :cond_5b
    return-object v1

    :cond_5c
    add-int/lit8 v0, v0, 0x1

    goto :goto_28

    :cond_5f
    const/4 p1, 0x0

    return-object p1
.end method

.method public init()V
    .registers 11

    .line 49
    iget-object v0, p0, Linfo/flowersoft/theotown/resources/ScriptingManager;->scripts:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->clear()V

    .line 52
    sget-object v0, Linfo/flowersoft/theotown/util/PackedUtils;->INSTANCE:Linfo/flowersoft/theotown/util/PackedUtils;

    const-string v1, "scripting.lby"

    invoke-virtual {v0, v1}, Linfo/flowersoft/theotown/util/PackedUtils;->readInternalText(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 54
    :try_start_d
    new-instance v1, Linfo/flowersoft/theotown/util/json/JSONObject;

    invoke-direct {v1, v0}, Linfo/flowersoft/theotown/util/json/JSONObject;-><init>(Ljava/lang/String;)V

    .line 55
    const-string v0, "gversion"

    invoke-virtual {v1, v0}, Linfo/flowersoft/theotown/util/json/JSONObject;->getInt(Ljava/lang/String;)I

    move-result v0

    sget v2, Linfo/flowersoft/theotown/crossplatform/TheoTown;->VERSION_CODE:I

    if-ne v0, v2, :cond_70

    .line 59
    const-string v0, "scripts"

    invoke-virtual {v1, v0}, Linfo/flowersoft/theotown/util/json/JSONObject;->getJSONArray(Ljava/lang/String;)Linfo/flowersoft/theotown/util/json/JSONArray;

    move-result-object v0

    const/4 v1, 0x0

    move v2, v1

    .line 60
    :goto_24
    invoke-virtual {v0}, Linfo/flowersoft/theotown/util/json/JSONArray;->length()I

    move-result v3

    if-ge v2, v3, :cond_42

    .line 61
    invoke-virtual {v0, v2}, Linfo/flowersoft/theotown/util/json/JSONArray;->optJSONObject(I)Linfo/flowersoft/theotown/util/json/JSONObject;

    move-result-object v3

    if-nez v3, :cond_31

    goto :goto_3d

    .line 66
    :cond_31
    iget-object v4, p0, Linfo/flowersoft/theotown/resources/ScriptingManager;->scripts:Ljava/util/List;

    new-instance v5, Linfo/flowersoft/theotown/resources/ScriptingManager$ScriptEntry;

    const/4 v6, 0x0

    const/4 v7, 0x1

    invoke-direct {v5, v3, v7, v6}, Linfo/flowersoft/theotown/resources/ScriptingManager$ScriptEntry;-><init>(Linfo/flowersoft/theotown/util/json/JSONObject;ZLinfo/flowersoft/theotown/resources/ScriptingManager$1;)V

    invoke-interface {v4, v5}, Ljava/util/List;->add(Ljava/lang/Object;)Z
    :try_end_3d
    .catch Linfo/flowersoft/theotown/util/json/JSONException; {:try_start_d .. :try_end_3d} :catch_40

    :goto_3d
    add-int/lit8 v2, v2, 0x1

    goto :goto_24

    :catch_40
    move-exception v0

    goto :goto_78

    .line 73
    :cond_42
    sget-object v0, Linfo/flowersoft/theotown/resources/ScriptingManager;->LOCAL_SCRIPTS:[Ljava/lang/String;

    array-length v2, v0

    :goto_45
    if-ge v1, v2, :cond_6f

    aget-object v5, v0, v1

    .line 74
    sget-object v3, Linfo/flowersoft/theotown/util/PackedUtils;->INSTANCE:Linfo/flowersoft/theotown/util/PackedUtils;

    invoke-virtual {v3, v5}, Linfo/flowersoft/theotown/util/PackedUtils;->readInternalText(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    .line 75
    iget-object v9, p0, Linfo/flowersoft/theotown/resources/ScriptingManager;->scripts:Ljava/util/List;

    new-instance v3, Linfo/flowersoft/theotown/resources/ScriptingManager$ScriptEntry;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "local/"

    invoke-virtual {v4, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    const/4 v7, 0x0

    const/4 v8, 0x0

    invoke-direct/range {v3 .. v8}, Linfo/flowersoft/theotown/resources/ScriptingManager$ScriptEntry;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;ZLinfo/flowersoft/theotown/resources/ScriptingManager$1;)V

    invoke-interface {v9, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    add-int/lit8 v1, v1, 0x1

    goto :goto_45

    :cond_6f
    return-void

    .line 56
    :cond_70
    :try_start_70
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "Incompatible scripting"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0
    :try_end_78
    .catch Linfo/flowersoft/theotown/util/json/JSONException; {:try_start_70 .. :try_end_78} :catch_40

    .line 69
    :goto_78
    new-instance v1, Ljava/lang/Error;

    invoke-direct {v1, v0}, Ljava/lang/Error;-><init>(Ljava/lang/Throwable;)V

    throw v1
.end method

###### Class info.flowersoft.theotown.resources.ScriptingManager.AnonymousClass1 (info.flowersoft.theotown.resources.ScriptingManager$1)
.class public synthetic Linfo/flowersoft/theotown/resources/ScriptingManager$1;
.super Ljava/lang/Object;
.source "ScriptingManager.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Linfo/flowersoft/theotown/resources/ScriptingManager;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1009
    name = null
.end annotation

###### Class info.flowersoft.theotown.resources.ScriptingManager.ScriptEntry (info.flowersoft.theotown.resources.ScriptingManager$ScriptEntry)
.class public Linfo/flowersoft/theotown/resources/ScriptingManager$ScriptEntry;
.super Ljava/lang/Object;
.source "ScriptingManager.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Linfo/flowersoft/theotown/resources/ScriptingManager;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "ScriptEntry"
.end annotation


# instance fields
.field public final binary:Z

.field public final code:Ljava/lang/String;

.field public final name:Ljava/lang/String;

.field public final path:Ljava/lang/String;


# direct methods
.method public constructor <init>(Linfo/flowersoft/theotown/util/json/JSONObject;Z)V
    .registers 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Linfo/flowersoft/theotown/util/json/JSONException;
        }
    .end annotation

    .line 93
    const-string v0, "name"

    invoke-virtual {p1, v0}, Linfo/flowersoft/theotown/util/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    const-string v1, "path"

    invoke-virtual {p1, v1}, Linfo/flowersoft/theotown/util/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    const-string v2, "code"

    invoke-virtual {p1, v2}, Linfo/flowersoft/theotown/util/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0, v0, v1, p1, p2}, Linfo/flowersoft/theotown/resources/ScriptingManager$ScriptEntry;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Z)V

    return-void
.end method

.method public synthetic constructor <init>(Linfo/flowersoft/theotown/util/json/JSONObject;ZLinfo/flowersoft/theotown/resources/ScriptingManager$1;)V
    .registers 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Linfo/flowersoft/theotown/util/json/JSONException;
        }
    .end annotation

    .line 86
    invoke-direct {p0, p1, p2}, Linfo/flowersoft/theotown/resources/ScriptingManager$ScriptEntry;-><init>(Linfo/flowersoft/theotown/util/json/JSONObject;Z)V

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Z)V
    .registers 5

    .line 96
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 97
    iput-object p1, p0, Linfo/flowersoft/theotown/resources/ScriptingManager$ScriptEntry;->name:Ljava/lang/String;

    .line 98
    iput-object p2, p0, Linfo/flowersoft/theotown/resources/ScriptingManager$ScriptEntry;->path:Ljava/lang/String;

    .line 99
    iput-object p3, p0, Linfo/flowersoft/theotown/resources/ScriptingManager$ScriptEntry;->code:Ljava/lang/String;

    .line 100
    iput-boolean p4, p0, Linfo/flowersoft/theotown/resources/ScriptingManager$ScriptEntry;->binary:Z

    return-void
.end method

.method public synthetic constructor <init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;ZLinfo/flowersoft/theotown/resources/ScriptingManager$1;)V
    .registers 6

    .line 86
    invoke-direct {p0, p1, p2, p3, p4}, Linfo/flowersoft/theotown/resources/ScriptingManager$ScriptEntry;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Z)V

    return-void
.end method


# virtual methods
.method public getCode()Ljava/lang/String;
    .registers 2

    .line 112
    iget-object v0, p0, Linfo/flowersoft/theotown/resources/ScriptingManager$ScriptEntry;->code:Ljava/lang/String;

    return-object v0
.end method

.method public getName()Ljava/lang/String;
    .registers 2

    .line 104
    iget-object v0, p0, Linfo/flowersoft/theotown/resources/ScriptingManager$ScriptEntry;->name:Ljava/lang/String;

    return-object v0
.end method

.method public getPath()Ljava/lang/String;
    .registers 2

    .line 108
    iget-object v0, p0, Linfo/flowersoft/theotown/resources/ScriptingManager$ScriptEntry;->path:Ljava/lang/String;

    return-object v0
.end method

.method public isBinary()Z
    .registers 2

    .line 119
    iget-boolean v0, p0, Linfo/flowersoft/theotown/resources/ScriptingManager$ScriptEntry;->binary:Z

    return v0
.end method
