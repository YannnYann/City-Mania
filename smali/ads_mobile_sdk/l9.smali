###### Class ads_mobile_sdk.l9 (ads_mobile_sdk.l9)
.class public final Lads_mobile_sdk/l9;
.super Lads_mobile_sdk/sn;
.source "SourceFile"


# static fields
.field public static final d:Lads_mobile_sdk/l9;


# direct methods
.method static constructor <clinit>()V
    .registers 1

    .line 1
    new-instance v0, Lads_mobile_sdk/l9;

    invoke-direct {v0}, Lads_mobile_sdk/l9;-><init>()V

    sput-object v0, Lads_mobile_sdk/l9;->d:Lads_mobile_sdk/l9;

    return-void
.end method

.method public constructor <init>()V
    .registers 1

    .line 15
    invoke-direct {p0}, Lads_mobile_sdk/sn;-><init>()V

    return-void
.end method


# virtual methods
.method public final a(Z)V
    .registers 7

    .line 1
    sget-object v0, Lads_mobile_sdk/q9;->c:Lads_mobile_sdk/q9;

    .line 2
    iget-object v0, v0, Lads_mobile_sdk/q9;->a:Ljava/util/ArrayList;

    .line 3
    invoke-static {v0}, Ljava/util/Collections;->unmodifiableCollection(Ljava/util/Collection;)Ljava/util/Collection;

    move-result-object v0

    .line 4
    invoke-interface {v0}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_c
    :goto_c
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_3f

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lads_mobile_sdk/p9;

    .line 5
    iget-object v1, v1, Lads_mobile_sdk/p9;->d:Lads_mobile_sdk/r9;

    .line 6
    iget-object v2, v1, Lads_mobile_sdk/r9;->b:Lads_mobile_sdk/uy3;

    invoke-virtual {v2}, Ljava/lang/ref/Reference;->get()Ljava/lang/Object;

    move-result-object v2

    if-eqz v2, :cond_c

    if-eqz p1, :cond_27

    .line 7
    const-string v2, "foregrounded"

    goto :goto_29

    :cond_27
    const-string v2, "backgrounded"

    .line 8
    :goto_29
    sget-object v3, Lads_mobile_sdk/qd2;->a:Lads_mobile_sdk/qd2;

    .line 9
    iget-object v4, v1, Lads_mobile_sdk/r9;->b:Lads_mobile_sdk/uy3;

    invoke-virtual {v4}, Ljava/lang/ref/Reference;->get()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Landroid/webkit/WebView;

    .line 10
    iget-object v1, v1, Lads_mobile_sdk/r9;->a:Ljava/lang/String;

    .line 11
    filled-new-array {v2, v1}, [Ljava/lang/Object;

    move-result-object v1

    const-string v2, "setState"

    invoke-virtual {v3, v4, v2, v1}, Lads_mobile_sdk/qd2;->a(Landroid/webkit/WebView;Ljava/lang/String;[Ljava/lang/Object;)V

    goto :goto_c

    :cond_3f
    return-void
.end method

.method public final b()Z
    .registers 3

    .line 1
    sget-object v0, Lads_mobile_sdk/q9;->c:Lads_mobile_sdk/q9;

    .line 2
    iget-object v0, v0, Lads_mobile_sdk/q9;->b:Ljava/util/ArrayList;

    .line 3
    invoke-static {v0}, Ljava/util/Collections;->unmodifiableCollection(Ljava/util/Collection;)Ljava/util/Collection;

    move-result-object v0

    .line 4
    invoke-interface {v0}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_c
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_2a

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lads_mobile_sdk/p9;

    .line 5
    iget-object v1, v1, Lads_mobile_sdk/p9;->c:Lads_mobile_sdk/ty3;

    .line 6
    invoke-virtual {v1}, Ljava/lang/ref/Reference;->get()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/view/View;

    if-eqz v1, :cond_c

    .line 7
    invoke-virtual {v1}, Landroid/view/View;->hasWindowFocus()Z

    move-result v1

    if-eqz v1, :cond_c

    const/4 v0, 0x1

    return v0

    :cond_2a
    const/4 v0, 0x0

    return v0
.end method
