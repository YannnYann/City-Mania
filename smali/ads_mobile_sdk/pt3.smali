###### Class ads_mobile_sdk.pt3 (ads_mobile_sdk.pt3)
.class public final Lads_mobile_sdk/pt3;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# direct methods
.method public constructor <init>()V
    .registers 1

    .line 262
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final run()V
    .registers 13

    .line 1
    sget-object v4, Lads_mobile_sdk/rt3;->g:Lads_mobile_sdk/rt3;

    .line 2
    invoke-virtual {v4}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 3
    iget-object v0, v4, Lads_mobile_sdk/rt3;->b:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->clear()V

    .line 4
    sget-object v0, Lads_mobile_sdk/q9;->c:Lads_mobile_sdk/q9;

    .line 5
    iget-object v0, v0, Lads_mobile_sdk/q9;->b:Ljava/util/ArrayList;

    .line 6
    invoke-static {v0}, Ljava/util/Collections;->unmodifiableCollection(Ljava/util/Collection;)Ljava/util/Collection;

    move-result-object v0

    .line 7
    invoke-interface {v0}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_16
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_26

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lads_mobile_sdk/p9;

    .line 8
    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    goto :goto_16

    .line 9
    :cond_26
    invoke-static {}, Ljava/lang/System;->nanoTime()J

    move-result-wide v0

    .line 10
    iput-wide v0, v4, Lads_mobile_sdk/rt3;->f:J

    .line 11
    iget-object v0, v4, Lads_mobile_sdk/rt3;->d:Lads_mobile_sdk/fd;

    invoke-virtual {v0}, Lads_mobile_sdk/fd;->a()V

    .line 12
    invoke-static {}, Ljava/lang/System;->nanoTime()J

    move-result-wide v9

    .line 13
    iget-object v0, v4, Lads_mobile_sdk/rt3;->c:Lads_mobile_sdk/pu2;

    .line 14
    iget-object v1, v0, Lads_mobile_sdk/pu2;->b:Lads_mobile_sdk/na3;

    .line 15
    iget-object v0, v4, Lads_mobile_sdk/rt3;->d:Lads_mobile_sdk/fd;

    .line 16
    iget-object v0, v0, Lads_mobile_sdk/fd;->f:Ljava/util/HashSet;

    .line 17
    invoke-virtual {v0}, Ljava/util/HashSet;->size()I

    move-result v0

    const/4 v11, 0x0

    if-lez v0, :cond_b0

    .line 18
    iget-object v0, v4, Lads_mobile_sdk/rt3;->d:Lads_mobile_sdk/fd;

    .line 19
    iget-object v0, v0, Lads_mobile_sdk/fd;->f:Ljava/util/HashSet;

    .line 20
    invoke-virtual {v0}, Ljava/util/HashSet;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_4c
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_b0

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    move-object v3, v0

    check-cast v3, Ljava/lang/String;

    .line 21
    invoke-virtual {v1, v11}, Lads_mobile_sdk/na3;->a(Landroid/view/View;)Lorg/json/JSONObject;

    move-result-object v8

    .line 22
    iget-object v0, v4, Lads_mobile_sdk/rt3;->d:Lads_mobile_sdk/fd;

    .line 23
    iget-object v0, v0, Lads_mobile_sdk/fd;->c:Ljava/util/HashMap;

    .line 24
    invoke-virtual {v0, v3}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/View;

    .line 25
    iget-object v5, v4, Lads_mobile_sdk/rt3;->c:Lads_mobile_sdk/pu2;

    .line 26
    iget-object v5, v5, Lads_mobile_sdk/pu2;->a:Lads_mobile_sdk/by3;

    .line 27
    iget-object v6, v4, Lads_mobile_sdk/rt3;->d:Lads_mobile_sdk/fd;

    .line 28
    iget-object v6, v6, Lads_mobile_sdk/fd;->g:Ljava/util/HashMap;

    .line 29
    invoke-virtual {v6, v3}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Ljava/lang/String;

    if-eqz v6, :cond_98

    .line 30
    invoke-virtual {v5, v0}, Lads_mobile_sdk/by3;->a(Landroid/view/View;)Lorg/json/JSONObject;

    move-result-object v5

    .line 31
    :try_start_7b
    const-string v0, "adSessionId"

    invoke-virtual {v5, v0, v3}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;
    :try_end_80
    .catch Lorg/json/JSONException; {:try_start_7b .. :try_end_80} :catch_81

    goto :goto_87

    :catch_81
    move-exception v0

    .line 34
    const-string v7, "Error with setting ad session id"

    invoke-static {v7, v0}, Lads_mobile_sdk/bf2;->a(Ljava/lang/String;Ljava/lang/Exception;)V

    .line 35
    :goto_87
    :try_start_87
    const-string v0, "notVisibleReason"

    invoke-virtual {v5, v0, v6}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;
    :try_end_8c
    .catch Lorg/json/JSONException; {:try_start_87 .. :try_end_8c} :catch_8d

    goto :goto_95

    :catch_8d
    move-exception v0

    .line 38
    const-string v6, "Error with setting not visible reason"

    .line 39
    const-string v7, "OMIDLIB"

    invoke-static {v7, v6, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 40
    :goto_95
    invoke-static {v8, v5}, Lads_mobile_sdk/pe2;->a(Lorg/json/JSONObject;Lorg/json/JSONObject;)V

    .line 41
    :cond_98
    invoke-static {v8}, Lads_mobile_sdk/pe2;->b(Lorg/json/JSONObject;)V

    .line 42
    new-instance v7, Ljava/util/HashSet;

    invoke-direct {v7}, Ljava/util/HashSet;-><init>()V

    .line 43
    invoke-virtual {v7, v3}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    .line 44
    iget-object v6, v4, Lads_mobile_sdk/rt3;->e:Lads_mobile_sdk/gl3;

    .line 45
    iget-object v0, v6, Lads_mobile_sdk/gl3;->b:Lads_mobile_sdk/od2;

    .line 46
    new-instance v5, Lads_mobile_sdk/ud2;

    invoke-direct/range {v5 .. v10}, Lads_mobile_sdk/ud2;-><init>(Lads_mobile_sdk/gl3;Ljava/util/HashSet;Lorg/json/JSONObject;J)V

    invoke-virtual {v0, v5}, Lads_mobile_sdk/od2;->a(Lads_mobile_sdk/nd2;)V

    goto :goto_4c

    .line 47
    :cond_b0
    iget-object v0, v4, Lads_mobile_sdk/rt3;->d:Lads_mobile_sdk/fd;

    .line 48
    iget-object v0, v0, Lads_mobile_sdk/fd;->e:Ljava/util/HashSet;

    .line 49
    invoke-virtual {v0}, Ljava/util/HashSet;->size()I

    move-result v0

    if-lez v0, :cond_d9

    .line 50
    invoke-virtual {v1, v11}, Lads_mobile_sdk/na3;->a(Landroid/view/View;)Lorg/json/JSONObject;

    move-result-object v3

    const/4 v6, 0x0

    const/4 v5, 0x1

    const/4 v2, 0x0

    .line 51
    invoke-virtual/range {v1 .. v6}, Lads_mobile_sdk/na3;->a(Landroid/view/View;Lorg/json/JSONObject;Lads_mobile_sdk/hb2;ZZ)V

    .line 52
    invoke-static {v3}, Lads_mobile_sdk/pe2;->b(Lorg/json/JSONObject;)V

    .line 53
    iget-object v6, v4, Lads_mobile_sdk/rt3;->e:Lads_mobile_sdk/gl3;

    iget-object v0, v4, Lads_mobile_sdk/rt3;->d:Lads_mobile_sdk/fd;

    .line 54
    iget-object v7, v0, Lads_mobile_sdk/fd;->e:Ljava/util/HashSet;

    .line 55
    iget-object v0, v6, Lads_mobile_sdk/gl3;->b:Lads_mobile_sdk/od2;

    .line 56
    new-instance v5, Lads_mobile_sdk/ag2;

    move-object v8, v3

    invoke-direct/range {v5 .. v10}, Lads_mobile_sdk/ag2;-><init>(Lads_mobile_sdk/gl3;Ljava/util/HashSet;Lorg/json/JSONObject;J)V

    invoke-virtual {v0, v5}, Lads_mobile_sdk/od2;->a(Lads_mobile_sdk/nd2;)V

    goto :goto_e5

    .line 57
    :cond_d9
    iget-object v0, v4, Lads_mobile_sdk/rt3;->e:Lads_mobile_sdk/gl3;

    .line 58
    iget-object v1, v0, Lads_mobile_sdk/gl3;->b:Lads_mobile_sdk/od2;

    .line 59
    new-instance v2, Lads_mobile_sdk/rd2;

    invoke-direct {v2, v0}, Lads_mobile_sdk/rd2;-><init>(Lads_mobile_sdk/gl3;)V

    invoke-virtual {v1, v2}, Lads_mobile_sdk/od2;->a(Lads_mobile_sdk/nd2;)V

    .line 60
    :goto_e5
    iget-object v0, v4, Lads_mobile_sdk/rt3;->d:Lads_mobile_sdk/fd;

    .line 61
    iget-object v1, v0, Lads_mobile_sdk/fd;->a:Ljava/util/HashMap;

    .line 62
    invoke-virtual {v1}, Ljava/util/HashMap;->clear()V

    .line 63
    iget-object v1, v0, Lads_mobile_sdk/fd;->b:Ljava/util/HashMap;

    invoke-virtual {v1}, Ljava/util/HashMap;->clear()V

    .line 64
    iget-object v1, v0, Lads_mobile_sdk/fd;->c:Ljava/util/HashMap;

    invoke-virtual {v1}, Ljava/util/HashMap;->clear()V

    .line 65
    iget-object v1, v0, Lads_mobile_sdk/fd;->d:Ljava/util/HashSet;

    invoke-virtual {v1}, Ljava/util/HashSet;->clear()V

    .line 66
    iget-object v1, v0, Lads_mobile_sdk/fd;->e:Ljava/util/HashSet;

    invoke-virtual {v1}, Ljava/util/HashSet;->clear()V

    .line 67
    iget-object v1, v0, Lads_mobile_sdk/fd;->f:Ljava/util/HashSet;

    invoke-virtual {v1}, Ljava/util/HashSet;->clear()V

    .line 68
    iget-object v1, v0, Lads_mobile_sdk/fd;->g:Ljava/util/HashMap;

    invoke-virtual {v1}, Ljava/util/HashMap;->clear()V

    const/4 v1, 0x0

    .line 69
    iput-boolean v1, v0, Lads_mobile_sdk/fd;->j:Z

    .line 70
    iget-object v0, v0, Lads_mobile_sdk/fd;->h:Ljava/util/HashSet;

    invoke-virtual {v0}, Ljava/util/HashSet;->clear()V

    .line 71
    invoke-static {}, Ljava/lang/System;->nanoTime()J

    move-result-wide v0

    .line 72
    iget-wide v2, v4, Lads_mobile_sdk/rt3;->f:J

    sub-long/2addr v0, v2

    .line 73
    iget-object v2, v4, Lads_mobile_sdk/rt3;->a:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v2

    if-lez v2, :cond_140

    .line 74
    iget-object v2, v4, Lads_mobile_sdk/rt3;->a:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v2

    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-nez v3, :cond_12e

    goto :goto_140

    :cond_12e
    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    if-nez v2, :cond_13a

    .line 75
    sget-object v2, Ljava/util/concurrent/TimeUnit;->NANOSECONDS:Ljava/util/concurrent/TimeUnit;

    invoke-virtual {v2, v0, v1}, Ljava/util/concurrent/TimeUnit;->toMillis(J)J

    throw v11

    .line 76
    :cond_13a
    new-instance v0, Ljava/lang/ClassCastException;

    invoke-direct {v0}, Ljava/lang/ClassCastException;-><init>()V

    throw v0

    .line 77
    :cond_140
    :goto_140
    sget-object v0, Lads_mobile_sdk/ra3;->d:Lads_mobile_sdk/ra3;

    invoke-virtual {v0}, Lads_mobile_sdk/ra3;->a()V

    return-void
.end method
