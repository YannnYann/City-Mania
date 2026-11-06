###### Class com.ironsource.C3524b6 (com.ironsource.b6)
.class public Lcom/ironsource/b6;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field private final a:Landroid/content/Context;

.field private final b:Lcom/ironsource/j5;

.field private final c:Lcom/ironsource/a6;

.field private final d:Lcom/ironsource/Ub;

.field private final e:Lcom/ironsource/B7;


# direct methods
.method public static bridge synthetic -$$Nest$fgetd(Lcom/ironsource/b6;)Lcom/ironsource/Ub;
    .registers 1

    .line 0
    iget-object p0, p0, Lcom/ironsource/b6;->d:Lcom/ironsource/Ub;

    return-object p0
.end method

.method public constructor <init>(Landroid/content/Context;Lcom/ironsource/j5;Lcom/ironsource/a6;Lcom/ironsource/Ub;)V
    .registers 6

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    invoke-static {}, Lcom/ironsource/Pb;->k0()Lcom/ironsource/M7;

    move-result-object v0

    invoke-interface {v0}, Lcom/ironsource/M7;->a()Lcom/ironsource/B7;

    move-result-object v0

    iput-object v0, p0, Lcom/ironsource/b6;->e:Lcom/ironsource/B7;

    .line 3
    iput-object p1, p0, Lcom/ironsource/b6;->a:Landroid/content/Context;

    .line 4
    iput-object p2, p0, Lcom/ironsource/b6;->b:Lcom/ironsource/j5;

    .line 5
    iput-object p3, p0, Lcom/ironsource/b6;->c:Lcom/ironsource/a6;

    .line 6
    iput-object p4, p0, Lcom/ironsource/b6;->d:Lcom/ironsource/Ub;

    return-void
.end method


# virtual methods
.method public a(Lcom/ironsource/D8;)V
    .registers 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .line 56
    invoke-virtual {p1}, Ljava/io/File;->exists()Z

    move-result v0

    if-nez v0, :cond_7

    return-void

    .line 59
    :cond_7
    invoke-virtual {p1}, Ljava/io/File;->delete()Z

    move-result v0

    if-eqz v0, :cond_17

    .line 63
    iget-object v0, p0, Lcom/ironsource/b6;->d:Lcom/ironsource/Ub;

    invoke-virtual {p1}, Ljava/io/File;->getName()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, p1}, Lcom/ironsource/Ub;->a(Ljava/lang/String;)Z

    return-void

    .line 64
    :cond_17
    new-instance p1, Ljava/lang/Exception;

    const-string v0, "Failed to delete file"

    invoke-direct {p1, v0}, Ljava/lang/Exception;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public a(Lcom/ironsource/D8;Ljava/lang/String;IILcom/ironsource/Vc;)V
    .registers 12
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .line 1
    invoke-static {p2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_61

    .line 4
    iget-object v0, p0, Lcom/ironsource/b6;->e:Lcom/ironsource/B7;

    iget-object v1, p0, Lcom/ironsource/b6;->b:Lcom/ironsource/j5;

    .line 5
    invoke-virtual {v1}, Lcom/ironsource/j5;->a()Ljava/lang/String;

    move-result-object v1

    .line 6
    invoke-interface {v0, v1}, Lcom/ironsource/B7;->a(Ljava/lang/String;)J

    move-result-wide v0

    const-wide/16 v2, 0x0

    cmp-long v0, v0, v2

    if-lez v0, :cond_59

    .line 12
    iget-object v0, p0, Lcom/ironsource/b6;->a:Landroid/content/Context;

    invoke-static {v0}, Lcom/ironsource/X3;->h(Landroid/content/Context;)Z

    move-result v0

    if-eqz v0, :cond_51

    .line 16
    iget-object v0, p0, Lcom/ironsource/b6;->c:Lcom/ironsource/a6;

    .line 17
    invoke-virtual {p1}, Ljava/io/File;->getPath()Ljava/lang/String;

    move-result-object v1

    new-instance v2, Lcom/ironsource/b6$a;

    invoke-direct {v2, p0, p5}, Lcom/ironsource/b6$a;-><init>(Lcom/ironsource/b6;Lcom/ironsource/Vc;)V

    .line 18
    invoke-virtual {v0, v1, v2}, Lcom/ironsource/a6;->a(Ljava/lang/String;Lcom/ironsource/Vc;)V

    .line 44
    invoke-virtual {p1}, Ljava/io/File;->exists()Z

    move-result p5

    if-eqz p5, :cond_45

    .line 45
    new-instance p2, Landroid/os/Message;

    invoke-direct {p2}, Landroid/os/Message;-><init>()V

    .line 46
    iput-object p1, p2, Landroid/os/Message;->obj:Ljava/lang/Object;

    const/16 p1, 0x3f7

    .line 47
    iput p1, p2, Landroid/os/Message;->what:I

    .line 48
    iget-object p1, p0, Lcom/ironsource/b6;->c:Lcom/ironsource/a6;

    invoke-virtual {p1, p2}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    return-void

    .line 52
    :cond_45
    iget-object v0, p0, Lcom/ironsource/b6;->b:Lcom/ironsource/j5;

    iget-object v5, p0, Lcom/ironsource/b6;->c:Lcom/ironsource/a6;

    move-object v1, p1

    move-object v2, p2

    move v3, p3

    move v4, p4

    invoke-virtual/range {v0 .. v5}, Lcom/ironsource/j5;->a(Lcom/ironsource/D8;Ljava/lang/String;IILandroid/os/Handler;)V

    return-void

    .line 53
    :cond_51
    new-instance p1, Ljava/lang/Exception;

    const-string p2, "no_network_connection"

    invoke-direct {p1, p2}, Ljava/lang/Exception;-><init>(Ljava/lang/String;)V

    throw p1

    .line 54
    :cond_59
    new-instance p1, Ljava/lang/Exception;

    const-string p2, "no_disk_space"

    invoke-direct {p1, p2}, Ljava/lang/Exception;-><init>(Ljava/lang/String;)V

    throw p1

    .line 55
    :cond_61
    new-instance p1, Ljava/lang/Exception;

    const-string p2, "Missing params for file"

    invoke-direct {p1, p2}, Ljava/lang/Exception;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public a(Lcom/ironsource/D8;Lorg/json/JSONObject;)V
    .registers 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    if-eqz p2, :cond_25

    .line 65
    invoke-virtual {p1}, Ljava/io/File;->exists()Z

    move-result v0

    if-eqz v0, :cond_1d

    .line 69
    iget-object v0, p0, Lcom/ironsource/b6;->d:Lcom/ironsource/Ub;

    invoke-virtual {p1}, Ljava/io/File;->getName()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, p1, p2}, Lcom/ironsource/Ub;->b(Ljava/lang/String;Lorg/json/JSONObject;)Z

    move-result p1

    if-eqz p1, :cond_15

    return-void

    .line 72
    :cond_15
    new-instance p1, Ljava/lang/Exception;

    const-string p2, "Failed to update attribute"

    invoke-direct {p1, p2}, Ljava/lang/Exception;-><init>(Ljava/lang/String;)V

    throw p1

    .line 73
    :cond_1d
    new-instance p1, Ljava/lang/Exception;

    const-string p2, "File does not exist"

    invoke-direct {p1, p2}, Ljava/lang/Exception;-><init>(Ljava/lang/String;)V

    throw p1

    .line 74
    :cond_25
    new-instance p1, Ljava/lang/Exception;

    const-string p2, "Missing attributes to update"

    invoke-direct {p1, p2}, Ljava/lang/Exception;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public b(Lcom/ironsource/D8;)V
    .registers 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .line 1
    invoke-virtual {p1}, Ljava/io/File;->exists()Z

    move-result v0

    if-nez v0, :cond_7

    return-void

    .line 4
    :cond_7
    invoke-static {p1}, Lcom/ironsource/sdk/utils/IronSourceStorageUtils;->getFilesInFolderRecursive(Lcom/ironsource/D8;)Ljava/util/ArrayList;

    move-result-object v0

    .line 6
    invoke-static {p1}, Lcom/ironsource/sdk/utils/IronSourceStorageUtils;->deleteFolderContentRecursive(Ljava/io/File;)Z

    move-result v1

    if-eqz v1, :cond_1d

    invoke-virtual {p1}, Ljava/io/File;->delete()Z

    move-result p1

    if-eqz p1, :cond_1d

    .line 10
    iget-object p1, p0, Lcom/ironsource/b6;->d:Lcom/ironsource/Ub;

    invoke-virtual {p1, v0}, Lcom/ironsource/Ub;->a(Ljava/util/ArrayList;)Z

    return-void

    .line 11
    :cond_1d
    new-instance p1, Ljava/lang/Exception;

    const-string v0, "Failed to delete folder"

    invoke-direct {p1, v0}, Ljava/lang/Exception;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public c(Lcom/ironsource/D8;)Lorg/json/JSONObject;
    .registers 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .line 1
    invoke-virtual {p1}, Ljava/io/File;->exists()Z

    move-result v0

    if-eqz v0, :cond_11

    .line 4
    iget-object v0, p0, Lcom/ironsource/b6;->d:Lcom/ironsource/Ub;

    .line 5
    invoke-virtual {v0}, Lcom/ironsource/Ub;->b()Lorg/json/JSONObject;

    move-result-object v0

    .line 6
    invoke-static {p1, v0}, Lcom/ironsource/sdk/utils/IronSourceStorageUtils;->buildFilesMapOfDirectory(Lcom/ironsource/D8;Lorg/json/JSONObject;)Lorg/json/JSONObject;

    move-result-object p1

    return-object p1

    .line 7
    :cond_11
    new-instance p1, Ljava/lang/Exception;

    const-string v0, "Folder does not exist"

    invoke-direct {p1, v0}, Ljava/lang/Exception;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public d(Lcom/ironsource/D8;)J
    .registers 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .line 1
    invoke-virtual {p1}, Ljava/io/File;->exists()Z

    move-result v0

    if-eqz v0, :cond_b

    .line 4
    invoke-static {p1}, Lcom/ironsource/sdk/utils/IronSourceStorageUtils;->getTotalSizeOfDir(Lcom/ironsource/D8;)J

    move-result-wide v0

    return-wide v0

    .line 5
    :cond_b
    new-instance p1, Ljava/lang/Exception;

    const-string v0, "Folder does not exist"

    invoke-direct {p1, v0}, Ljava/lang/Exception;-><init>(Ljava/lang/String;)V

    throw p1
.end method

###### Class com.ironsource.C3524b6.a (com.ironsource.b6$a)
.class Lcom/ironsource/b6$a;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/ironsource/Vc;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/ironsource/b6;->a(Lcom/ironsource/D8;Ljava/lang/String;IILcom/ironsource/Vc;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/ironsource/Vc;

.field final synthetic b:Lcom/ironsource/b6;


# direct methods
.method public constructor <init>(Lcom/ironsource/b6;Lcom/ironsource/Vc;)V
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    .line 1
    iput-object p1, p0, Lcom/ironsource/b6$a;->b:Lcom/ironsource/b6;

    iput-object p2, p0, Lcom/ironsource/b6$a;->a:Lcom/ironsource/Vc;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a(Lcom/ironsource/D8;)V
    .registers 4

    .line 1
    iget-object v0, p0, Lcom/ironsource/b6$a;->a:Lcom/ironsource/Vc;

    invoke-interface {v0, p1}, Lcom/ironsource/Vc;->a(Lcom/ironsource/D8;)V

    .line 3
    :try_start_5
    new-instance v0, Lcom/ironsource/b6$a$a;

    invoke-direct {v0, p0}, Lcom/ironsource/b6$a$a;-><init>(Lcom/ironsource/b6$a;)V

    .line 9
    iget-object v1, p0, Lcom/ironsource/b6$a;->b:Lcom/ironsource/b6;

    invoke-static {v1}, Lcom/ironsource/b6;->-$$Nest$fgetd(Lcom/ironsource/b6;)Lcom/ironsource/Ub;

    move-result-object v1

    invoke-virtual {p1}, Ljava/io/File;->getName()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v1, p1, v0}, Lcom/ironsource/Ub;->a(Ljava/lang/String;Lorg/json/JSONObject;)Z
    :try_end_17
    .catch Ljava/lang/Exception; {:try_start_5 .. :try_end_17} :catch_18

    return-void

    :catch_18
    move-exception p1

    .line 11
    invoke-static {}, Lcom/ironsource/r4;->d()Lcom/ironsource/r4;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/ironsource/r4;->a(Ljava/lang/Throwable;)V

    .line 12
    sget-object v0, Lcom/ironsource/mediationsdk/logger/IronLog;->INTERNAL:Lcom/ironsource/mediationsdk/logger/IronLog;

    invoke-virtual {p1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, p1}, Lcom/ironsource/mediationsdk/logger/IronLog;->error(Ljava/lang/String;)V

    return-void
.end method

.method public a(Lcom/ironsource/D8;Lcom/ironsource/u8;)V
    .registers 4

    .line 13
    iget-object v0, p0, Lcom/ironsource/b6$a;->a:Lcom/ironsource/Vc;

    invoke-interface {v0, p1, p2}, Lcom/ironsource/Vc;->a(Lcom/ironsource/D8;Lcom/ironsource/u8;)V

    return-void
.end method

###### Class com.ironsource.C3524b6.a.C1034a (com.ironsource.b6$a$a)
.class Lcom/ironsource/b6$a$a;
.super Lorg/json/JSONObject;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/ironsource/b6$a;->a(Lcom/ironsource/D8;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/ironsource/b6$a;


# direct methods
.method public constructor <init>(Lcom/ironsource/b6$a;)V
    .registers 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/json/JSONException;
        }
    .end annotation

    .line 1
    iput-object p1, p0, Lcom/ironsource/b6$a$a;->a:Lcom/ironsource/b6$a;

    invoke-direct {p0}, Lorg/json/JSONObject;-><init>()V

    .line 3
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    const-string p1, "lastReferencedTime"

    invoke-virtual {p0, p1, v0, v1}, Lorg/json/JSONObject;->put(Ljava/lang/String;J)Lorg/json/JSONObject;

    return-void
.end method
