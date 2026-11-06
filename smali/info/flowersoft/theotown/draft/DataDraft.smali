###### Class info.flowersoft.theotown.draft.DataDraft (info.flowersoft.theotown.draft.DataDraft)
.class public Linfo/flowersoft/theotown/draft/DataDraft;
.super Linfo/flowersoft/theotown/draft/Draft;
.source "DataDraft.java"


# instance fields
.field public content:Linfo/flowersoft/theotown/util/json/JSONObject;

.field public luaContent:Lvm2/LuaValue;


# direct methods
.method public constructor <init>()V
    .registers 1

    .line 7
    invoke-direct {p0}, Linfo/flowersoft/theotown/draft/Draft;-><init>()V

    return-void
.end method


# virtual methods
.method public getLuaContent()Lvm2/LuaValue;
    .registers 4

    .line 14
    iget-object v0, p0, Linfo/flowersoft/theotown/draft/DataDraft;->luaContent:Lvm2/LuaValue;

    if-nez v0, :cond_1c

    .line 16
    :try_start_4
    iget-object v0, p0, Linfo/flowersoft/theotown/draft/DataDraft;->content:Linfo/flowersoft/theotown/util/json/JSONObject;

    invoke-static {v0}, Linfo/flowersoft/theotown/scripting/LuaTableSerializer;->deserialize(Linfo/flowersoft/theotown/util/json/JSONObject;)Lvm2/LuaTable;

    move-result-object v0

    iput-object v0, p0, Linfo/flowersoft/theotown/draft/DataDraft;->luaContent:Lvm2/LuaValue;

    .line 17
    const-string v1, "privileged"

    sget-object v2, Lvm2/LuaValue;->NIL:Lvm2/LuaValue;

    invoke-virtual {v0, v1, v2}, Lvm2/LuaValue;->set(Ljava/lang/String;Lvm2/LuaValue;)V
    :try_end_13
    .catch Ljava/lang/Exception; {:try_start_4 .. :try_end_13} :catch_14

    goto :goto_1c

    :catch_14
    move-exception v0

    .line 19
    invoke-virtual {v0}, Ljava/lang/Throwable;->printStackTrace()V

    .line 20
    sget-object v0, Lvm2/LuaValue;->NIL:Lvm2/LuaValue;

    iput-object v0, p0, Linfo/flowersoft/theotown/draft/DataDraft;->luaContent:Lvm2/LuaValue;

    .line 23
    :cond_1c
    :goto_1c
    iget-object v0, p0, Linfo/flowersoft/theotown/draft/DataDraft;->luaContent:Lvm2/LuaValue;

    return-object v0
.end method
