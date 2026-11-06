###### Class io.bidmachine.s (io.bidmachine.s)
.class public Lio/bidmachine/s;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lio/bidmachine/r;


# instance fields
.field public final b:Landroid/content/SharedPreferences$OnSharedPreferenceChangeListener;

.field public c:Ljava/lang/Boolean;

.field public d:Ljava/lang/Boolean;

.field public e:Ljava/lang/String;

.field public f:Ljava/lang/String;

.field public g:Ljava/lang/String;

.field public h:Ljava/lang/String;

.field public i:Ljava/util/List;


# direct methods
.method public constructor <init>()V
    .registers 2

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    new-instance v0, Lio/bidmachine/s$a;

    invoke-direct {v0, p0}, Lio/bidmachine/s$a;-><init>(Lio/bidmachine/s;)V

    iput-object v0, p0, Lio/bidmachine/s;->b:Landroid/content/SharedPreferences$OnSharedPreferenceChangeListener;

    return-void
.end method

.method public static synthetic a(Lio/bidmachine/s;Landroid/content/SharedPreferences;Ljava/lang/String;)V
    .registers 3

    .line 1
    invoke-virtual {p0, p1, p2}, Lio/bidmachine/s;->a(Landroid/content/SharedPreferences;Ljava/lang/String;)V

    return-void
.end method


# virtual methods
.method public a(Landroid/content/Context;)V
    .registers 6

    .line 2
    invoke-static {p1}, Landroid/preference/PreferenceManager;->getDefaultSharedPreferences(Landroid/content/Context;)Landroid/content/SharedPreferences;

    move-result-object p1

    .line 3
    iget-object v0, p0, Lio/bidmachine/s;->b:Landroid/content/SharedPreferences$OnSharedPreferenceChangeListener;

    invoke-interface {p1, v0}, Landroid/content/SharedPreferences;->registerOnSharedPreferenceChangeListener(Landroid/content/SharedPreferences$OnSharedPreferenceChangeListener;)V

    .line 4
    sget-object v0, Lio/bidmachine/r;->a:[Ljava/lang/String;

    array-length v1, v0

    const/4 v2, 0x0

    :goto_d
    if-ge v2, v1, :cond_17

    aget-object v3, v0, v2

    .line 5
    invoke-virtual {p0, p1, v3}, Lio/bidmachine/s;->a(Landroid/content/SharedPreferences;Ljava/lang/String;)V

    add-int/lit8 v2, v2, 0x1

    goto :goto_d

    :cond_17
    return-void
.end method

.method public final a(Landroid/content/SharedPreferences;)V
    .registers 4

    .line 51
    const-string v0, "IABConsent_ConsentString"

    const/4 v1, 0x0

    invoke-static {p1, v0, v1}, Lio/bidmachine/util/SharedPreferenceUtilsKt;->optStringOrNull(Landroid/content/SharedPreferences;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Lio/bidmachine/s;->e:Ljava/lang/String;

    return-void
.end method

.method public final a(Landroid/content/SharedPreferences;Ljava/lang/String;)V
    .registers 5

    .line 6
    invoke-static {p2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_8

    goto/16 :goto_63

    .line 9
    :cond_8
    invoke-virtual {p2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    const/4 v0, -0x1

    invoke-virtual {p2}, Ljava/lang/String;->hashCode()I

    move-result v1

    sparse-switch v1, :sswitch_data_80

    goto :goto_60

    :sswitch_14
    const-string v1, "IABGPP_HDR_GppString"

    invoke-virtual {p2, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p2

    if-nez p2, :cond_1d

    goto :goto_60

    :cond_1d
    const/4 v0, 0x6

    goto :goto_60

    :sswitch_1f
    const-string v1, "IABConsent_SubjectToGDPR"

    invoke-virtual {p2, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p2

    if-nez p2, :cond_28

    goto :goto_60

    :cond_28
    const/4 v0, 0x5

    goto :goto_60

    :sswitch_2a
    const-string v1, "IABTCF_TCString"

    invoke-virtual {p2, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p2

    if-nez p2, :cond_33

    goto :goto_60

    :cond_33
    const/4 v0, 0x4

    goto :goto_60

    :sswitch_35
    const-string v1, "IABConsent_ConsentString"

    invoke-virtual {p2, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p2

    if-nez p2, :cond_3e

    goto :goto_60

    :cond_3e
    const/4 v0, 0x3

    goto :goto_60

    :sswitch_40
    const-string v1, "IABUSPrivacy_String"

    invoke-virtual {p2, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p2

    if-nez p2, :cond_49

    goto :goto_60

    :cond_49
    const/4 v0, 0x2

    goto :goto_60

    :sswitch_4b
    const-string v1, "IABGPP_GppSID"

    invoke-virtual {p2, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p2

    if-nez p2, :cond_54

    goto :goto_60

    :cond_54
    const/4 v0, 0x1

    goto :goto_60

    :sswitch_56
    const-string v1, "IABTCF_gdprApplies"

    invoke-virtual {p2, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p2

    if-nez p2, :cond_5f

    goto :goto_60

    :cond_5f
    const/4 v0, 0x0

    :goto_60
    packed-switch v0, :pswitch_data_9e

    :goto_63
    return-void

    .line 26
    :pswitch_64
    invoke-virtual {p0, p1}, Lio/bidmachine/s;->d(Landroid/content/SharedPreferences;)V

    return-void

    .line 27
    :pswitch_68
    invoke-virtual {p0, p1}, Lio/bidmachine/s;->b(Landroid/content/SharedPreferences;)V

    return-void

    .line 36
    :pswitch_6c
    invoke-virtual {p0, p1}, Lio/bidmachine/s;->f(Landroid/content/SharedPreferences;)V

    return-void

    .line 37
    :pswitch_70
    invoke-virtual {p0, p1}, Lio/bidmachine/s;->a(Landroid/content/SharedPreferences;)V

    return-void

    .line 43
    :pswitch_74
    invoke-virtual {p0, p1}, Lio/bidmachine/s;->g(Landroid/content/SharedPreferences;)V

    return-void

    .line 49
    :pswitch_78
    invoke-virtual {p0, p1}, Lio/bidmachine/s;->c(Landroid/content/SharedPreferences;)V

    return-void

    .line 50
    :pswitch_7c
    invoke-virtual {p0, p1}, Lio/bidmachine/s;->e(Landroid/content/SharedPreferences;)V

    return-void

    :sswitch_data_80
    .sparse-switch
        0x4fc43fb -> :sswitch_56
        0x7838729 -> :sswitch_4b
        0x2c500d30 -> :sswitch_40
        0x39c4b13c -> :sswitch_35
        0x48a6de12 -> :sswitch_2a
        0x497ef957 -> :sswitch_1f
        0x7894cead -> :sswitch_14
    .end sparse-switch

    :pswitch_data_9e
    .packed-switch 0x0
        :pswitch_7c
        :pswitch_78
        :pswitch_74
        :pswitch_70
        :pswitch_6c
        :pswitch_68
        :pswitch_64
    .end packed-switch
.end method

.method public final b(Landroid/content/SharedPreferences;)V
    .registers 4

    .line 1
    const-string v0, "IABConsent_SubjectToGDPR"

    const/4 v1, 0x0

    invoke-static {p1, v0, v1}, Lio/bidmachine/util/SharedPreferenceUtilsKt;->optStringOrNull(Landroid/content/SharedPreferences;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    if-eqz p1, :cond_13

    .line 5
    const-string v0, "1"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    invoke-static {p1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v1

    .line 6
    :cond_13
    iput-object v1, p0, Lio/bidmachine/s;->c:Ljava/lang/Boolean;

    return-void
.end method

.method public final c(Landroid/content/SharedPreferences;)V
    .registers 7

    .line 1
    const-string v0, "IABGPP_GppSID"

    const/4 v1, 0x0

    invoke-static {p1, v0, v1}, Lio/bidmachine/util/SharedPreferenceUtilsKt;->optStringOrNull(Landroid/content/SharedPreferences;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    .line 2
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_10

    .line 3
    iput-object v1, p0, Lio/bidmachine/s;->i:Ljava/util/List;

    return-void

    .line 7
    :cond_10
    :try_start_10
    const-string v0, "_"

    invoke-virtual {p1, v0}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object p1

    .line 8
    array-length v0, p1

    if-nez v0, :cond_1e

    .line 9
    iput-object v1, p0, Lio/bidmachine/s;->i:Ljava/util/List;

    return-void

    :catchall_1c
    move-exception p1

    goto :goto_3a

    .line 12
    :cond_1e
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lio/bidmachine/s;->i:Ljava/util/List;

    .line 13
    array-length v0, p1

    const/4 v2, 0x0

    :goto_27
    if-ge v2, v0, :cond_3f

    aget-object v3, p1, v2

    .line 14
    invoke-static {v3, v1}, Lio/bidmachine/core/Utils;->parseIntOrDefault(Ljava/lang/String;Ljava/lang/Integer;)Ljava/lang/Integer;

    move-result-object v3

    if-nez v3, :cond_32

    goto :goto_37

    .line 18
    :cond_32
    iget-object v4, p0, Lio/bidmachine/s;->i:Ljava/util/List;

    invoke-interface {v4, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z
    :try_end_37
    .catchall {:try_start_10 .. :try_end_37} :catchall_1c

    :goto_37
    add-int/lit8 v2, v2, 0x1

    goto :goto_27

    .line 21
    :goto_3a
    invoke-static {p1}, Lio/bidmachine/core/Logger;->w(Ljava/lang/Throwable;)V

    .line 22
    iput-object v1, p0, Lio/bidmachine/s;->i:Ljava/util/List;

    :cond_3f
    return-void
.end method

.method public final d(Landroid/content/SharedPreferences;)V
    .registers 4

    .line 1
    const-string v0, "IABGPP_HDR_GppString"

    const/4 v1, 0x0

    invoke-static {p1, v0, v1}, Lio/bidmachine/util/SharedPreferenceUtilsKt;->optStringOrNull(Landroid/content/SharedPreferences;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Lio/bidmachine/s;->h:Ljava/lang/String;

    return-void
.end method

.method public final e(Landroid/content/SharedPreferences;)V
    .registers 4

    .line 1
    const-string v0, "IABTCF_gdprApplies"

    const/4 v1, -0x1

    invoke-static {p1, v0, v1}, Lio/bidmachine/util/SharedPreferenceUtilsKt;->optInt(Landroid/content/SharedPreferences;Ljava/lang/String;I)I

    move-result p1

    const/4 v0, 0x1

    if-ne p1, v0, :cond_f

    .line 3
    sget-object p1, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    iput-object p1, p0, Lio/bidmachine/s;->d:Ljava/lang/Boolean;

    return-void

    :cond_f
    if-nez p1, :cond_16

    .line 5
    sget-object p1, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    iput-object p1, p0, Lio/bidmachine/s;->d:Ljava/lang/Boolean;

    return-void

    :cond_16
    const/4 p1, 0x0

    .line 7
    iput-object p1, p0, Lio/bidmachine/s;->d:Ljava/lang/Boolean;

    return-void
.end method

.method public final f(Landroid/content/SharedPreferences;)V
    .registers 4

    .line 1
    const-string v0, "IABTCF_TCString"

    const/4 v1, 0x0

    invoke-static {p1, v0, v1}, Lio/bidmachine/util/SharedPreferenceUtilsKt;->optStringOrNull(Landroid/content/SharedPreferences;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Lio/bidmachine/s;->f:Ljava/lang/String;

    return-void
.end method

.method public final g(Landroid/content/SharedPreferences;)V
    .registers 4

    .line 1
    const-string v0, "IABUSPrivacy_String"

    const/4 v1, 0x0

    invoke-static {p1, v0, v1}, Lio/bidmachine/util/SharedPreferenceUtilsKt;->optStringOrNull(Landroid/content/SharedPreferences;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Lio/bidmachine/s;->g:Ljava/lang/String;

    return-void
.end method

###### Class io.bidmachine.s.a (io.bidmachine.s$a)
.class public Lio/bidmachine/s$a;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/content/SharedPreferences$OnSharedPreferenceChangeListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lio/bidmachine/s;-><init>()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field public final synthetic a:Lio/bidmachine/s;


# direct methods
.method public constructor <init>(Lio/bidmachine/s;)V
    .registers 2

    .line 1
    iput-object p1, p0, Lio/bidmachine/s$a;->a:Lio/bidmachine/s;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onSharedPreferenceChanged(Landroid/content/SharedPreferences;Ljava/lang/String;)V
    .registers 4

    .line 1
    iget-object v0, p0, Lio/bidmachine/s$a;->a:Lio/bidmachine/s;

    invoke-static {v0, p1, p2}, Lio/bidmachine/s;->a(Lio/bidmachine/s;Landroid/content/SharedPreferences;Ljava/lang/String;)V

    return-void
.end method
