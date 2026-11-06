###### Class info.flowersoft.theotown.cityloader.LightManagedPluginInfo (info.flowersoft.theotown.cityloader.LightManagedPluginInfo)
.class public Linfo/flowersoft/theotown/cityloader/LightManagedPluginInfo;
.super Ljava/lang/Object;
.source "LightManagedPluginInfo.java"


# instance fields
.field public author:Ljava/lang/String;

.field public authorId:I

.field public id:I

.field public occurrences:I

.field public text:Ljava/lang/String;

.field public title:Ljava/lang/String;

.field public version:I


# direct methods
.method public constructor <init>(ILjava/lang/String;Ljava/lang/String;IILjava/lang/String;)V
    .registers 7

    .line 78
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 79
    iput p1, p0, Linfo/flowersoft/theotown/cityloader/LightManagedPluginInfo;->id:I

    .line 80
    iput-object p2, p0, Linfo/flowersoft/theotown/cityloader/LightManagedPluginInfo;->title:Ljava/lang/String;

    .line 81
    iput-object p3, p0, Linfo/flowersoft/theotown/cityloader/LightManagedPluginInfo;->text:Ljava/lang/String;

    .line 82
    iput p4, p0, Linfo/flowersoft/theotown/cityloader/LightManagedPluginInfo;->version:I

    .line 83
    iput p5, p0, Linfo/flowersoft/theotown/cityloader/LightManagedPluginInfo;->authorId:I

    .line 84
    iput-object p6, p0, Linfo/flowersoft/theotown/cityloader/LightManagedPluginInfo;->author:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>(Linfo/flowersoft/theotown/store/ManagedPluginFile;)V
    .registers 9

    .line 72
    invoke-virtual {p1}, Linfo/flowersoft/theotown/store/ManagedPluginFile;->getPluginId()I

    move-result v1

    .line 73
    invoke-virtual {p1}, Linfo/flowersoft/theotown/store/ManagedPluginFile;->getTitle()Ljava/lang/String;

    move-result-object v2

    .line 74
    invoke-virtual {p1}, Linfo/flowersoft/theotown/store/ManagedPluginFile;->getText()Ljava/lang/String;

    move-result-object v3

    .line 75
    invoke-virtual {p1}, Linfo/flowersoft/theotown/store/ManagedPluginFile;->getVersion()I

    move-result v4

    invoke-virtual {p1}, Linfo/flowersoft/theotown/store/ManagedPluginFile;->getAuthorId()I

    move-result v5

    invoke-virtual {p1}, Linfo/flowersoft/theotown/store/ManagedPluginFile;->getAuthor()Ljava/lang/String;

    move-result-object v6

    move-object v0, p0

    .line 72
    invoke-direct/range {v0 .. v6}, Linfo/flowersoft/theotown/cityloader/LightManagedPluginInfo;-><init>(ILjava/lang/String;Ljava/lang/String;IILjava/lang/String;)V

    return-void
.end method

.method public constructor <init>(Lio/blueflower/stapel2d/util/json/JsonReader;)V
    .registers 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 21
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 22
    :goto_3
    invoke-interface {p1}, Lio/blueflower/stapel2d/util/json/JsonReader;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_a1

    .line 23
    invoke-interface {p1}, Lio/blueflower/stapel2d/util/json/JsonReader;->nextName()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    const/4 v1, -0x1

    invoke-virtual {v0}, Ljava/lang/String;->hashCode()I

    move-result v2

    sparse-switch v2, :sswitch_data_a2

    goto :goto_65

    :sswitch_19
    const-string v2, "author id"

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_22

    goto :goto_65

    :cond_22
    const/4 v1, 0x6

    goto :goto_65

    :sswitch_24
    const-string v2, "occurrences"

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_2d

    goto :goto_65

    :cond_2d
    const/4 v1, 0x5

    goto :goto_65

    :sswitch_2f
    const-string v2, "version"

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_38

    goto :goto_65

    :cond_38
    const/4 v1, 0x4

    goto :goto_65

    :sswitch_3a
    const-string v2, "title"

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_43

    goto :goto_65

    :cond_43
    const/4 v1, 0x3

    goto :goto_65

    :sswitch_45
    const-string v2, "text"

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_4e

    goto :goto_65

    :cond_4e
    const/4 v1, 0x2

    goto :goto_65

    :sswitch_50
    const-string v2, "id"

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_59

    goto :goto_65

    :cond_59
    const/4 v1, 0x1

    goto :goto_65

    :sswitch_5b
    const-string v2, "author"

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_64

    goto :goto_65

    :cond_64
    const/4 v1, 0x0

    :goto_65
    packed-switch v1, :pswitch_data_c0

    .line 46
    invoke-interface {p1}, Lio/blueflower/stapel2d/util/json/JsonReader;->skipValue()V

    goto :goto_3

    .line 37
    :pswitch_6c
    invoke-interface {p1}, Lio/blueflower/stapel2d/util/json/JsonReader;->nextInt()I

    move-result v0

    iput v0, p0, Linfo/flowersoft/theotown/cityloader/LightManagedPluginInfo;->authorId:I

    goto :goto_3

    .line 43
    :pswitch_73
    invoke-interface {p1}, Lio/blueflower/stapel2d/util/json/JsonReader;->nextInt()I

    move-result v0

    iput v0, p0, Linfo/flowersoft/theotown/cityloader/LightManagedPluginInfo;->occurrences:I

    goto :goto_3

    .line 34
    :pswitch_7a
    invoke-interface {p1}, Lio/blueflower/stapel2d/util/json/JsonReader;->nextInt()I

    move-result v0

    iput v0, p0, Linfo/flowersoft/theotown/cityloader/LightManagedPluginInfo;->version:I

    goto :goto_3

    .line 28
    :pswitch_81
    invoke-interface {p1}, Lio/blueflower/stapel2d/util/json/JsonReader;->nextString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Linfo/flowersoft/theotown/cityloader/LightManagedPluginInfo;->title:Ljava/lang/String;

    goto/16 :goto_3

    .line 31
    :pswitch_89
    invoke-interface {p1}, Lio/blueflower/stapel2d/util/json/JsonReader;->nextString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Linfo/flowersoft/theotown/cityloader/LightManagedPluginInfo;->text:Ljava/lang/String;

    goto/16 :goto_3

    .line 25
    :pswitch_91
    invoke-interface {p1}, Lio/blueflower/stapel2d/util/json/JsonReader;->nextInt()I

    move-result v0

    iput v0, p0, Linfo/flowersoft/theotown/cityloader/LightManagedPluginInfo;->id:I

    goto/16 :goto_3

    .line 40
    :pswitch_99
    invoke-interface {p1}, Lio/blueflower/stapel2d/util/json/JsonReader;->nextString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Linfo/flowersoft/theotown/cityloader/LightManagedPluginInfo;->author:Ljava/lang/String;

    goto/16 :goto_3

    :cond_a1
    return-void

    :sswitch_data_a2
    .sparse-switch
        -0x53d2de75 -> :sswitch_5b
        0xd1b -> :sswitch_50
        0x36452d -> :sswitch_45
        0x6942258 -> :sswitch_3a
        0x14f51cd8 -> :sswitch_2f
        0x2ec250c2 -> :sswitch_24
        0x57f2f3d0 -> :sswitch_19
    .end sparse-switch

    :pswitch_data_c0
    .packed-switch 0x0
        :pswitch_99
        :pswitch_91
        :pswitch_89
        :pswitch_81
        :pswitch_7a
        :pswitch_73
        :pswitch_6c
    .end packed-switch
.end method


# virtual methods
.method public getAuthor()Ljava/lang/String;
    .registers 2

    .line 108
    iget-object v0, p0, Linfo/flowersoft/theotown/cityloader/LightManagedPluginInfo;->author:Ljava/lang/String;

    return-object v0
.end method

.method public getId()I
    .registers 2

    .line 88
    iget v0, p0, Linfo/flowersoft/theotown/cityloader/LightManagedPluginInfo;->id:I

    return v0
.end method

.method public getTitle()Ljava/lang/String;
    .registers 2

    .line 92
    iget-object v0, p0, Linfo/flowersoft/theotown/cityloader/LightManagedPluginInfo;->title:Ljava/lang/String;

    return-object v0
.end method

.method public final limitString(Ljava/lang/String;)Ljava/lang/String;
    .registers 4

    if-eqz p1, :cond_f

    .line 64
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v0

    const/16 v1, 0x20

    if-le v0, v1, :cond_f

    const/4 v0, 0x0

    .line 65
    invoke-virtual {p1, v0, v1}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object p1

    :cond_f
    return-object p1
.end method

.method public save(Lio/blueflower/stapel2d/util/json/JsonWriter;)V
    .registers 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 53
    const-string v0, "id"

    invoke-interface {p1, v0}, Lio/blueflower/stapel2d/util/json/JsonWriter;->name(Ljava/lang/String;)Lio/blueflower/stapel2d/util/json/JsonWriter;

    move-result-object v0

    iget v1, p0, Linfo/flowersoft/theotown/cityloader/LightManagedPluginInfo;->id:I

    invoke-interface {v0, v1}, Lio/blueflower/stapel2d/util/json/JsonWriter;->value(I)Lio/blueflower/stapel2d/util/json/JsonWriter;

    .line 54
    const-string v0, "title"

    invoke-interface {p1, v0}, Lio/blueflower/stapel2d/util/json/JsonWriter;->name(Ljava/lang/String;)Lio/blueflower/stapel2d/util/json/JsonWriter;

    move-result-object v0

    iget-object v1, p0, Linfo/flowersoft/theotown/cityloader/LightManagedPluginInfo;->title:Ljava/lang/String;

    invoke-virtual {p0, v1}, Linfo/flowersoft/theotown/cityloader/LightManagedPluginInfo;->limitString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, v1}, Lio/blueflower/stapel2d/util/json/JsonWriter;->value(Ljava/lang/String;)Lio/blueflower/stapel2d/util/json/JsonWriter;

    .line 55
    const-string v0, "text"

    invoke-interface {p1, v0}, Lio/blueflower/stapel2d/util/json/JsonWriter;->name(Ljava/lang/String;)Lio/blueflower/stapel2d/util/json/JsonWriter;

    move-result-object v0

    iget-object v1, p0, Linfo/flowersoft/theotown/cityloader/LightManagedPluginInfo;->text:Ljava/lang/String;

    invoke-virtual {p0, v1}, Linfo/flowersoft/theotown/cityloader/LightManagedPluginInfo;->limitString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, v1}, Lio/blueflower/stapel2d/util/json/JsonWriter;->value(Ljava/lang/String;)Lio/blueflower/stapel2d/util/json/JsonWriter;

    .line 56
    const-string v0, "version"

    invoke-interface {p1, v0}, Lio/blueflower/stapel2d/util/json/JsonWriter;->name(Ljava/lang/String;)Lio/blueflower/stapel2d/util/json/JsonWriter;

    move-result-object v0

    iget v1, p0, Linfo/flowersoft/theotown/cityloader/LightManagedPluginInfo;->version:I

    invoke-interface {v0, v1}, Lio/blueflower/stapel2d/util/json/JsonWriter;->value(I)Lio/blueflower/stapel2d/util/json/JsonWriter;

    .line 57
    const-string v0, "author id"

    invoke-interface {p1, v0}, Lio/blueflower/stapel2d/util/json/JsonWriter;->name(Ljava/lang/String;)Lio/blueflower/stapel2d/util/json/JsonWriter;

    move-result-object v0

    iget v1, p0, Linfo/flowersoft/theotown/cityloader/LightManagedPluginInfo;->authorId:I

    invoke-interface {v0, v1}, Lio/blueflower/stapel2d/util/json/JsonWriter;->value(I)Lio/blueflower/stapel2d/util/json/JsonWriter;

    .line 58
    const-string v0, "author"

    invoke-interface {p1, v0}, Lio/blueflower/stapel2d/util/json/JsonWriter;->name(Ljava/lang/String;)Lio/blueflower/stapel2d/util/json/JsonWriter;

    move-result-object v0

    iget-object v1, p0, Linfo/flowersoft/theotown/cityloader/LightManagedPluginInfo;->author:Ljava/lang/String;

    invoke-virtual {p0, v1}, Linfo/flowersoft/theotown/cityloader/LightManagedPluginInfo;->limitString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, v1}, Lio/blueflower/stapel2d/util/json/JsonWriter;->value(Ljava/lang/String;)Lio/blueflower/stapel2d/util/json/JsonWriter;

    .line 59
    const-string v0, "occurrences"

    invoke-interface {p1, v0}, Lio/blueflower/stapel2d/util/json/JsonWriter;->name(Ljava/lang/String;)Lio/blueflower/stapel2d/util/json/JsonWriter;

    move-result-object p1

    iget v0, p0, Linfo/flowersoft/theotown/cityloader/LightManagedPluginInfo;->occurrences:I

    invoke-interface {p1, v0}, Lio/blueflower/stapel2d/util/json/JsonWriter;->value(I)Lio/blueflower/stapel2d/util/json/JsonWriter;

    return-void
.end method

.method public setOccurrences(I)V
    .registers 2

    .line 116
    iput p1, p0, Linfo/flowersoft/theotown/cityloader/LightManagedPluginInfo;->occurrences:I

    return-void
.end method

.method public toLuaTable()Lvm2/LuaTable;
    .registers 4

    .line 120
    invoke-static {}, Lvm2/LuaValue;->tableOf()Lvm2/LuaTable;

    move-result-object v0

    .line 121
    const-string v1, "id"

    iget v2, p0, Linfo/flowersoft/theotown/cityloader/LightManagedPluginInfo;->id:I

    invoke-virtual {v0, v1, v2}, Lvm2/LuaValue;->set(Ljava/lang/String;I)V

    .line 122
    const-string v1, "title"

    iget-object v2, p0, Linfo/flowersoft/theotown/cityloader/LightManagedPluginInfo;->title:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Lvm2/LuaValue;->set(Ljava/lang/String;Ljava/lang/String;)V

    .line 123
    const-string v1, "text"

    iget-object v2, p0, Linfo/flowersoft/theotown/cityloader/LightManagedPluginInfo;->text:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Lvm2/LuaValue;->set(Ljava/lang/String;Ljava/lang/String;)V

    .line 124
    const-string v1, "version"

    iget v2, p0, Linfo/flowersoft/theotown/cityloader/LightManagedPluginInfo;->version:I

    invoke-virtual {v0, v1, v2}, Lvm2/LuaValue;->set(Ljava/lang/String;I)V

    .line 125
    const-string v1, "author"

    iget-object v2, p0, Linfo/flowersoft/theotown/cityloader/LightManagedPluginInfo;->author:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Lvm2/LuaValue;->set(Ljava/lang/String;Ljava/lang/String;)V

    return-object v0
.end method
