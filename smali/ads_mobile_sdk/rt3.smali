###### Class ads_mobile_sdk.rt3 (ads_mobile_sdk.rt3)
.class public final Lads_mobile_sdk/rt3;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lads_mobile_sdk/hb2;


# static fields
.field public static final g:Lads_mobile_sdk/rt3;

.field public static final h:Landroid/os/Handler;

.field public static i:Landroid/os/Handler;

.field public static final j:Lads_mobile_sdk/pt3;

.field public static final k:Lads_mobile_sdk/qt3;


# instance fields
.field public final a:Ljava/util/ArrayList;

.field public final b:Ljava/util/ArrayList;

.field public final c:Lads_mobile_sdk/pu2;

.field public final d:Lads_mobile_sdk/fd;

.field public final e:Lads_mobile_sdk/gl3;

.field public f:J


# direct methods
.method static constructor <clinit>()V
    .registers 2

    .line 1
    new-instance v0, Lads_mobile_sdk/rt3;

    invoke-direct {v0}, Lads_mobile_sdk/rt3;-><init>()V

    sput-object v0, Lads_mobile_sdk/rt3;->g:Lads_mobile_sdk/rt3;

    .line 2
    new-instance v0, Landroid/os/Handler;

    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object v1

    invoke-direct {v0, v1}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    sput-object v0, Lads_mobile_sdk/rt3;->h:Landroid/os/Handler;

    const/4 v0, 0x0

    .line 3
    sput-object v0, Lads_mobile_sdk/rt3;->i:Landroid/os/Handler;

    .line 231
    new-instance v0, Lads_mobile_sdk/pt3;

    invoke-direct {v0}, Lads_mobile_sdk/pt3;-><init>()V

    sput-object v0, Lads_mobile_sdk/rt3;->j:Lads_mobile_sdk/pt3;

    .line 238
    new-instance v0, Lads_mobile_sdk/qt3;

    invoke-direct {v0}, Lads_mobile_sdk/qt3;-><init>()V

    sput-object v0, Lads_mobile_sdk/rt3;->k:Lads_mobile_sdk/qt3;

    return-void
.end method

.method public constructor <init>()V
    .registers 3

    .line 46
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 47
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lads_mobile_sdk/rt3;->a:Ljava/util/ArrayList;

    .line 51
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lads_mobile_sdk/rt3;->b:Ljava/util/ArrayList;

    .line 58
    new-instance v0, Lads_mobile_sdk/fd;

    invoke-direct {v0}, Lads_mobile_sdk/fd;-><init>()V

    iput-object v0, p0, Lads_mobile_sdk/rt3;->d:Lads_mobile_sdk/fd;

    .line 59
    new-instance v0, Lads_mobile_sdk/pu2;

    invoke-direct {v0}, Lads_mobile_sdk/pu2;-><init>()V

    iput-object v0, p0, Lads_mobile_sdk/rt3;->c:Lads_mobile_sdk/pu2;

    .line 60
    new-instance v0, Lads_mobile_sdk/gl3;

    new-instance v1, Lads_mobile_sdk/od2;

    invoke-direct {v1}, Lads_mobile_sdk/od2;-><init>()V

    invoke-direct {v0, v1}, Lads_mobile_sdk/gl3;-><init>(Lads_mobile_sdk/od2;)V

    iput-object v0, p0, Lads_mobile_sdk/rt3;->e:Lads_mobile_sdk/gl3;

    return-void
.end method


# virtual methods
.method public final a(Landroid/view/View;Lads_mobile_sdk/ib2;Lorg/json/JSONObject;Z)V
    .registers 15

    .line 2
    invoke-static {p1}, Lads_mobile_sdk/jg2;->a(Landroid/view/View;)Ljava/lang/String;

    move-result-object v0

    if-nez v0, :cond_103

    .line 3
    iget-object v0, p0, Lads_mobile_sdk/rt3;->d:Lads_mobile_sdk/fd;

    .line 4
    iget-object v1, v0, Lads_mobile_sdk/fd;->d:Ljava/util/HashSet;

    .line 5
    invoke-virtual {v1, p1}, Ljava/util/HashSet;->contains(Ljava/lang/Object;)Z

    move-result v1

    const/4 v2, 0x3

    const/4 v3, 0x1

    if-eqz v1, :cond_14

    move v1, v3

    goto :goto_1c

    .line 8
    :cond_14
    iget-boolean v0, v0, Lads_mobile_sdk/fd;->j:Z

    if-eqz v0, :cond_1b

    const/4 v0, 0x2

    move v1, v0

    goto :goto_1c

    :cond_1b
    move v1, v2

    :goto_1c
    if-ne v1, v2, :cond_20

    goto/16 :goto_103

    .line 9
    :cond_20
    invoke-interface {p2, p1}, Lads_mobile_sdk/ib2;->a(Landroid/view/View;)Lorg/json/JSONObject;

    move-result-object v6

    .line 10
    invoke-static {p3, v6}, Lads_mobile_sdk/pe2;->a(Lorg/json/JSONObject;Lorg/json/JSONObject;)V

    .line 11
    iget-object p3, p0, Lads_mobile_sdk/rt3;->d:Lads_mobile_sdk/fd;

    .line 12
    iget-object v0, p3, Lads_mobile_sdk/fd;->a:Ljava/util/HashMap;

    .line 13
    invoke-virtual {v0}, Ljava/util/HashMap;->size()I

    move-result v0

    if-nez v0, :cond_33

    const/4 p3, 0x0

    goto :goto_43

    .line 16
    :cond_33
    iget-object v0, p3, Lads_mobile_sdk/fd;->a:Ljava/util/HashMap;

    invoke-virtual {v0, p1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    if-eqz v0, :cond_42

    .line 18
    iget-object p3, p3, Lads_mobile_sdk/fd;->a:Ljava/util/HashMap;

    invoke-virtual {p3, p1}, Ljava/util/HashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    :cond_42
    move-object p3, v0

    :goto_43
    const-string v2, "OMIDLIB"

    const/4 v4, 0x0

    if-eqz p3, :cond_9a

    .line 19
    :try_start_48
    const-string p2, "adSessionId"

    invoke-virtual {v6, p2, p3}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;
    :try_end_4d
    .catch Lorg/json/JSONException; {:try_start_48 .. :try_end_4d} :catch_4e

    goto :goto_55

    :catch_4e
    move-exception v0

    move-object p2, v0

    .line 22
    const-string p4, "Error with setting ad session id"

    invoke-static {p4, p2}, Lads_mobile_sdk/bf2;->a(Ljava/lang/String;Ljava/lang/Exception;)V

    .line 23
    :goto_55
    iget-object p2, p0, Lads_mobile_sdk/rt3;->d:Lads_mobile_sdk/fd;

    .line 24
    iget-object p4, p2, Lads_mobile_sdk/fd;->i:Ljava/util/WeakHashMap;

    .line 25
    invoke-virtual {p4, p1}, Ljava/util/WeakHashMap;->containsKey(Ljava/lang/Object;)Z

    move-result p4

    if-eqz p4, :cond_67

    .line 27
    iget-object p2, p2, Lads_mobile_sdk/fd;->i:Ljava/util/WeakHashMap;

    sget-object p4, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    invoke-virtual {p2, p1, p4}, Ljava/util/WeakHashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_68

    :cond_67
    move v4, v3

    .line 28
    :goto_68
    invoke-static {v4}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object p1

    .line 29
    :try_start_6c
    const-string p2, "hasWindowFocus"

    invoke-virtual {v6, p2, p1}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;
    :try_end_71
    .catch Lorg/json/JSONException; {:try_start_6c .. :try_end_71} :catch_72

    goto :goto_79

    :catch_72
    move-exception v0

    move-object p1, v0

    .line 32
    const-string p2, "Error with setting has window focus"

    .line 33
    invoke-static {v2, p2, p1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 34
    :goto_79
    iget-object p1, p0, Lads_mobile_sdk/rt3;->d:Lads_mobile_sdk/fd;

    .line 35
    iget-object p1, p1, Lads_mobile_sdk/fd;->h:Ljava/util/HashSet;

    .line 36
    invoke-virtual {p1, p3}, Ljava/util/HashSet;->contains(Ljava/lang/Object;)Z

    move-result p1

    .line 37
    invoke-static {p1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object p2

    if-eqz p1, :cond_94

    .line 38
    :try_start_87
    const-string p1, "isPipActive"

    invoke-virtual {v6, p1, p2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;
    :try_end_8c
    .catch Lorg/json/JSONException; {:try_start_87 .. :try_end_8c} :catch_8d

    goto :goto_94

    :catch_8d
    move-exception v0

    move-object p1, v0

    .line 41
    const-string p2, "Error with setting is picture-in-picture active"

    .line 42
    invoke-static {v2, p2, p1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 43
    :cond_94
    :goto_94
    iget-object p1, p0, Lads_mobile_sdk/rt3;->d:Lads_mobile_sdk/fd;

    .line 44
    iput-boolean v3, p1, Lads_mobile_sdk/fd;->j:Z

    goto/16 :goto_103

    .line 45
    :cond_9a
    iget-object p3, p0, Lads_mobile_sdk/rt3;->d:Lads_mobile_sdk/fd;

    .line 46
    iget-object v0, p3, Lads_mobile_sdk/fd;->b:Ljava/util/HashMap;

    .line 47
    invoke-virtual {v0, p1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lads_mobile_sdk/ed;

    if-eqz v0, :cond_ab

    .line 49
    iget-object p3, p3, Lads_mobile_sdk/fd;->b:Ljava/util/HashMap;

    invoke-virtual {p3, p1}, Ljava/util/HashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    :cond_ab
    if-eqz v0, :cond_ee

    .line 50
    iget-object p3, v0, Lads_mobile_sdk/ed;->a:Lads_mobile_sdk/sx0;

    .line 51
    new-instance v5, Lorg/json/JSONArray;

    invoke-direct {v5}, Lorg/json/JSONArray;-><init>()V

    .line 52
    iget-object v0, v0, Lads_mobile_sdk/ed;->b:Ljava/util/ArrayList;

    .line 53
    invoke-virtual {v0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_ba
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v7

    if-eqz v7, :cond_ca

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Ljava/lang/String;

    .line 54
    invoke-virtual {v5, v7}, Lorg/json/JSONArray;->put(Ljava/lang/Object;)Lorg/json/JSONArray;

    goto :goto_ba

    .line 57
    :cond_ca
    :try_start_ca
    const-string v0, "isFriendlyObstructionFor"

    invoke-virtual {v6, v0, v5}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 58
    const-string v0, "friendlyObstructionClass"

    .line 59
    iget-object v5, p3, Lads_mobile_sdk/sx0;->b:Ljava/lang/String;

    .line 60
    invoke-virtual {v6, v0, v5}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 61
    const-string v0, "friendlyObstructionPurpose"

    .line 62
    iget-object v5, p3, Lads_mobile_sdk/sx0;->c:Lads_mobile_sdk/tx0;

    .line 63
    invoke-virtual {v6, v0, v5}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 64
    const-string v0, "friendlyObstructionReason"

    .line 65
    iget-object p3, p3, Lads_mobile_sdk/sx0;->d:Ljava/lang/String;

    .line 66
    invoke-virtual {v6, v0, p3}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;
    :try_end_e4
    .catch Lorg/json/JSONException; {:try_start_ca .. :try_end_e4} :catch_e5

    goto :goto_ec

    :catch_e5
    move-exception v0

    move-object p3, v0

    .line 68
    const-string v0, "Error with setting friendly obstruction"

    .line 69
    invoke-static {v2, v0, p3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    :goto_ec
    move p3, v3

    goto :goto_ef

    :cond_ee
    move p3, v4

    :goto_ef
    if-nez p4, :cond_f6

    if-eqz p3, :cond_f4

    goto :goto_f6

    :cond_f4
    move v9, v4

    goto :goto_f7

    :cond_f6
    :goto_f6
    move v9, v3

    :goto_f7
    if-ne v1, v3, :cond_fe

    move v8, v3

    :goto_fa
    move-object v7, p0

    move-object v5, p1

    move-object v4, p2

    goto :goto_100

    :cond_fe
    move v8, v4

    goto :goto_fa

    .line 70
    :goto_100
    invoke-interface/range {v4 .. v9}, Lads_mobile_sdk/ib2;->a(Landroid/view/View;Lorg/json/JSONObject;Lads_mobile_sdk/hb2;ZZ)V

    :cond_103
    :goto_103
    return-void
.end method
