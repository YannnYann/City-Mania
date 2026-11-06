###### Class ads_mobile_sdk.fd (ads_mobile_sdk.fd)
.class public final Lads_mobile_sdk/fd;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field public final a:Ljava/util/HashMap;

.field public final b:Ljava/util/HashMap;

.field public final c:Ljava/util/HashMap;

.field public final d:Ljava/util/HashSet;

.field public final e:Ljava/util/HashSet;

.field public final f:Ljava/util/HashSet;

.field public final g:Ljava/util/HashMap;

.field public final h:Ljava/util/HashSet;

.field public final i:Ljava/util/WeakHashMap;

.field public j:Z


# direct methods
.method public constructor <init>()V
    .registers 2

    .line 72
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 73
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lads_mobile_sdk/fd;->a:Ljava/util/HashMap;

    .line 74
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lads_mobile_sdk/fd;->b:Ljava/util/HashMap;

    .line 75
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lads_mobile_sdk/fd;->c:Ljava/util/HashMap;

    .line 76
    new-instance v0, Ljava/util/HashSet;

    invoke-direct {v0}, Ljava/util/HashSet;-><init>()V

    iput-object v0, p0, Lads_mobile_sdk/fd;->d:Ljava/util/HashSet;

    .line 77
    new-instance v0, Ljava/util/HashSet;

    invoke-direct {v0}, Ljava/util/HashSet;-><init>()V

    iput-object v0, p0, Lads_mobile_sdk/fd;->e:Ljava/util/HashSet;

    .line 78
    new-instance v0, Ljava/util/HashSet;

    invoke-direct {v0}, Ljava/util/HashSet;-><init>()V

    iput-object v0, p0, Lads_mobile_sdk/fd;->f:Ljava/util/HashSet;

    .line 79
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lads_mobile_sdk/fd;->g:Ljava/util/HashMap;

    .line 80
    new-instance v0, Ljava/util/HashSet;

    invoke-direct {v0}, Ljava/util/HashSet;-><init>()V

    iput-object v0, p0, Lads_mobile_sdk/fd;->h:Ljava/util/HashSet;

    .line 87
    new-instance v0, Ljava/util/WeakHashMap;

    invoke-direct {v0}, Ljava/util/WeakHashMap;-><init>()V

    iput-object v0, p0, Lads_mobile_sdk/fd;->i:Ljava/util/WeakHashMap;

    return-void
.end method


# virtual methods
.method public final a()V
    .registers 10

    .line 1
    sget-object v0, Lads_mobile_sdk/q9;->c:Lads_mobile_sdk/q9;

    if-eqz v0, :cond_107

    .line 2
    iget-object v0, v0, Lads_mobile_sdk/q9;->b:Ljava/util/ArrayList;

    invoke-static {v0}, Ljava/util/Collections;->unmodifiableCollection(Ljava/util/Collection;)Ljava/util/Collection;

    move-result-object v0

    .line 3
    invoke-interface {v0}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_e
    :goto_e
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_107

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lads_mobile_sdk/p9;

    .line 4
    iget-object v2, v1, Lads_mobile_sdk/p9;->c:Lads_mobile_sdk/ty3;

    .line 5
    invoke-virtual {v2}, Ljava/lang/ref/Reference;->get()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/view/View;

    .line 6
    iget-boolean v3, v1, Lads_mobile_sdk/p9;->e:Z

    if-eqz v3, :cond_e

    iget-boolean v3, v1, Lads_mobile_sdk/p9;->f:Z

    if-nez v3, :cond_e

    .line 7
    iget-object v3, v1, Lads_mobile_sdk/p9;->g:Ljava/lang/String;

    if-eqz v2, :cond_f9

    .line 8
    invoke-static {v2}, Lads_mobile_sdk/jg2;->c(Landroid/view/View;)Z

    move-result v4

    if-eqz v4, :cond_39

    .line 10
    iget-object v5, p0, Lads_mobile_sdk/fd;->h:Ljava/util/HashSet;

    invoke-virtual {v5, v3}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    .line 11
    :cond_39
    invoke-virtual {v2}, Landroid/view/View;->isAttachedToWindow()Z

    move-result v5

    const-string v6, "noWindowFocus"

    if-nez v5, :cond_44

    .line 12
    const-string v4, "notAttached"

    goto :goto_9c

    .line 13
    :cond_44
    invoke-virtual {v2}, Landroid/view/View;->hasWindowFocus()Z

    move-result v5

    if-eqz v5, :cond_52

    .line 14
    iget-object v5, p0, Lads_mobile_sdk/fd;->i:Ljava/util/WeakHashMap;

    invoke-virtual {v5, v2}, Ljava/util/WeakHashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 15
    sget-object v5, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    goto :goto_6b

    .line 18
    :cond_52
    iget-object v5, p0, Lads_mobile_sdk/fd;->i:Ljava/util/WeakHashMap;

    invoke-virtual {v5, v2}, Ljava/util/WeakHashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_63

    .line 20
    iget-object v5, p0, Lads_mobile_sdk/fd;->i:Ljava/util/WeakHashMap;

    invoke-virtual {v5, v2}, Ljava/util/WeakHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/lang/Boolean;

    goto :goto_6b

    .line 24
    :cond_63
    iget-object v5, p0, Lads_mobile_sdk/fd;->i:Ljava/util/WeakHashMap;

    sget-object v7, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    invoke-virtual {v5, v2, v7}, Ljava/util/WeakHashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-object v5, v7

    .line 25
    :goto_6b
    invoke-virtual {v5}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v5

    if-eqz v5, :cond_75

    if-nez v4, :cond_75

    move-object v4, v6

    goto :goto_9c

    .line 29
    :cond_75
    new-instance v4, Ljava/util/HashSet;

    invoke-direct {v4}, Ljava/util/HashSet;-><init>()V

    move-object v5, v2

    :goto_7b
    const/4 v7, 0x0

    if-eqz v5, :cond_96

    .line 32
    invoke-static {v5}, Lads_mobile_sdk/jg2;->a(Landroid/view/View;)Ljava/lang/String;

    move-result-object v8

    if-eqz v8, :cond_86

    move-object v4, v8

    goto :goto_9c

    .line 36
    :cond_86
    invoke-virtual {v4, v5}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    .line 37
    invoke-virtual {v5}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    move-result-object v5

    .line 38
    instance-of v8, v5, Landroid/view/View;

    if-eqz v8, :cond_94

    check-cast v5, Landroid/view/View;

    goto :goto_7b

    :cond_94
    move-object v5, v7

    goto :goto_7b

    .line 40
    :cond_96
    iget-object v5, p0, Lads_mobile_sdk/fd;->d:Ljava/util/HashSet;

    invoke-virtual {v5, v4}, Ljava/util/AbstractCollection;->addAll(Ljava/util/Collection;)Z

    move-object v4, v7

    :goto_9c
    if-nez v4, :cond_e6

    .line 41
    iget-object v4, p0, Lads_mobile_sdk/fd;->e:Ljava/util/HashSet;

    invoke-virtual {v4, v3}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    .line 42
    iget-object v4, p0, Lads_mobile_sdk/fd;->a:Ljava/util/HashMap;

    invoke-virtual {v4, v2, v3}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 43
    iget-object v2, v1, Lads_mobile_sdk/p9;->b:Lads_mobile_sdk/ux0;

    .line 44
    iget-object v2, v2, Lads_mobile_sdk/ux0;->a:Ljava/util/ArrayList;

    .line 45
    invoke-virtual {v2}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_b0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_e

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lads_mobile_sdk/sx0;

    .line 46
    iget-object v4, v3, Lads_mobile_sdk/sx0;->a:Lads_mobile_sdk/ty3;

    .line 47
    invoke-virtual {v4}, Ljava/lang/ref/Reference;->get()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Landroid/view/View;

    if-nez v4, :cond_c7

    goto :goto_b0

    .line 50
    :cond_c7
    iget-object v5, p0, Lads_mobile_sdk/fd;->b:Ljava/util/HashMap;

    invoke-virtual {v5, v4}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lads_mobile_sdk/ed;

    if-eqz v5, :cond_d9

    .line 51
    iget-object v3, v1, Lads_mobile_sdk/p9;->g:Ljava/lang/String;

    .line 52
    iget-object v4, v5, Lads_mobile_sdk/ed;->b:Ljava/util/ArrayList;

    invoke-virtual {v4, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_b0

    .line 53
    :cond_d9
    iget-object v5, p0, Lads_mobile_sdk/fd;->b:Ljava/util/HashMap;

    new-instance v6, Lads_mobile_sdk/ed;

    .line 54
    iget-object v7, v1, Lads_mobile_sdk/p9;->g:Ljava/lang/String;

    .line 55
    invoke-direct {v6, v3, v7}, Lads_mobile_sdk/ed;-><init>(Lads_mobile_sdk/sx0;Ljava/lang/String;)V

    .line 56
    invoke-virtual {v5, v4, v6}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_b0

    :cond_e6
    if-eq v4, v6, :cond_e

    .line 58
    iget-object v1, p0, Lads_mobile_sdk/fd;->f:Ljava/util/HashSet;

    invoke-virtual {v1, v3}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    .line 59
    iget-object v1, p0, Lads_mobile_sdk/fd;->c:Ljava/util/HashMap;

    invoke-virtual {v1, v3, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 60
    iget-object v1, p0, Lads_mobile_sdk/fd;->g:Ljava/util/HashMap;

    invoke-virtual {v1, v3, v4}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto/16 :goto_e

    .line 63
    :cond_f9
    iget-object v1, p0, Lads_mobile_sdk/fd;->f:Ljava/util/HashSet;

    invoke-virtual {v1, v3}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    .line 64
    iget-object v1, p0, Lads_mobile_sdk/fd;->g:Ljava/util/HashMap;

    const-string v2, "noAdView"

    invoke-virtual {v1, v3, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto/16 :goto_e

    :cond_107
    return-void
.end method
