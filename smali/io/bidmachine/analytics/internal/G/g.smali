###### Class io.bidmachine.analytics.internal.G.g (io.bidmachine.analytics.internal.G.g)
.class public abstract Lio/bidmachine/analytics/internal/G/g;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lio/bidmachine/analytics/internal/G/g$a;
    }
.end annotation


# direct methods
.method private static final a(Lio/bidmachine/analytics/internal/g/h$a;)I
    .registers 2

    .line 10
    sget-object v0, Lio/bidmachine/analytics/internal/G/g$a;->$EnumSwitchMapping$0:[I

    invoke-virtual {p0}, Ljava/lang/Enum;->ordinal()I

    move-result p0

    aget p0, v0, p0

    packed-switch p0, :pswitch_data_2a

    .line 18
    new-instance p0, Lkotlin/NoWhenBranchMatchedException;

    invoke-direct {p0}, Lkotlin/NoWhenBranchMatchedException;-><init>()V

    throw p0

    :pswitch_11
    const/16 p0, 0x89b

    return p0

    :pswitch_14
    const/16 p0, 0x89a

    return p0

    :pswitch_17
    const/16 p0, 0x899

    return p0

    :pswitch_1a
    const/16 p0, 0x898

    return p0

    :pswitch_1d
    const/16 p0, 0x836

    return p0

    :pswitch_20
    const/16 p0, 0x835

    return p0

    :pswitch_23
    const/16 p0, 0x834

    return p0

    :pswitch_26
    const/16 p0, 0x7d0

    return p0

    nop

    :pswitch_data_2a
    .packed-switch 0x1
        :pswitch_26
        :pswitch_23
        :pswitch_20
        :pswitch_1d
        :pswitch_1a
        :pswitch_17
        :pswitch_14
        :pswitch_11
    .end packed-switch
.end method

.method private static final a(I)Lio/bidmachine/analytics/internal/g/h$a;
    .registers 1

    packed-switch p0, :pswitch_data_1e

    packed-switch p0, :pswitch_data_28

    .line 19
    sget-object p0, Lio/bidmachine/analytics/internal/g/h$a;->a:Lio/bidmachine/analytics/internal/g/h$a;

    return-object p0

    .line 20
    :pswitch_9
    sget-object p0, Lio/bidmachine/analytics/internal/g/h$a;->h:Lio/bidmachine/analytics/internal/g/h$a;

    return-object p0

    .line 21
    :pswitch_c
    sget-object p0, Lio/bidmachine/analytics/internal/g/h$a;->g:Lio/bidmachine/analytics/internal/g/h$a;

    return-object p0

    .line 22
    :pswitch_f
    sget-object p0, Lio/bidmachine/analytics/internal/g/h$a;->f:Lio/bidmachine/analytics/internal/g/h$a;

    return-object p0

    .line 23
    :pswitch_12
    sget-object p0, Lio/bidmachine/analytics/internal/g/h$a;->e:Lio/bidmachine/analytics/internal/g/h$a;

    return-object p0

    .line 24
    :pswitch_15
    sget-object p0, Lio/bidmachine/analytics/internal/g/h$a;->d:Lio/bidmachine/analytics/internal/g/h$a;

    return-object p0

    .line 25
    :pswitch_18
    sget-object p0, Lio/bidmachine/analytics/internal/g/h$a;->c:Lio/bidmachine/analytics/internal/g/h$a;

    return-object p0

    .line 26
    :pswitch_1b
    sget-object p0, Lio/bidmachine/analytics/internal/g/h$a;->b:Lio/bidmachine/analytics/internal/g/h$a;

    return-object p0

    :pswitch_data_1e
    .packed-switch 0x834
        :pswitch_1b
        :pswitch_18
        :pswitch_15
    .end packed-switch

    :pswitch_data_28
    .packed-switch 0x898
        :pswitch_12
        :pswitch_f
        :pswitch_c
        :pswitch_9
    .end packed-switch
.end method

.method public static final a(Lorg/json/JSONObject;)Lio/bidmachine/analytics/internal/g/h;
    .registers 5

    .line 5
    :try_start_0
    new-instance v0, Lio/bidmachine/analytics/internal/g/h;

    .line 6
    const-string v1, "name"

    invoke-virtual {p0, v1}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 7
    const-string v2, "type"

    invoke-virtual {p0, v2}, Lorg/json/JSONObject;->getInt(Ljava/lang/String;)I

    move-result v2

    invoke-static {v2}, Lio/bidmachine/analytics/internal/G/g;->a(I)Lio/bidmachine/analytics/internal/g/h$a;

    move-result-object v2

    .line 8
    const-string v3, "reason"

    invoke-virtual {p0, v3}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    .line 9
    invoke-direct {v0, v1, v2, p0}, Lio/bidmachine/analytics/internal/g/h;-><init>(Ljava/lang/String;Lio/bidmachine/analytics/internal/g/h$a;Ljava/lang/String;)V
    :try_end_1b
    .catchall {:try_start_0 .. :try_end_1b} :catchall_1c

    return-object v0

    :catchall_1c
    const/4 p0, 0x0

    return-object p0
.end method

.method public static final a(Lio/bidmachine/analytics/internal/g/h;)Lorg/json/JSONObject;
    .registers 4

    .line 1
    new-instance v0, Lorg/json/JSONObject;

    invoke-direct {v0}, Lorg/json/JSONObject;-><init>()V

    .line 2
    invoke-virtual {p0}, Lio/bidmachine/analytics/internal/g/h;->a()Ljava/lang/String;

    move-result-object v1

    const-string v2, "name"

    invoke-virtual {v0, v2, v1}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 3
    invoke-virtual {p0}, Lio/bidmachine/analytics/internal/g/h;->c()Lio/bidmachine/analytics/internal/g/h$a;

    move-result-object v1

    invoke-static {v1}, Lio/bidmachine/analytics/internal/G/g;->a(Lio/bidmachine/analytics/internal/g/h$a;)I

    move-result v1

    const-string v2, "type"

    invoke-virtual {v0, v2, v1}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    .line 4
    invoke-virtual {p0}, Lio/bidmachine/analytics/internal/g/h;->b()Ljava/lang/String;

    move-result-object p0

    const-string v1, "reason"

    invoke-virtual {v0, v1, p0}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    return-object v0
.end method

###### Class io.bidmachine.analytics.internal.G.g.a (io.bidmachine.analytics.internal.G.g$a)
.class public abstract synthetic Lio/bidmachine/analytics/internal/G/g$a;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lio/bidmachine/analytics/internal/G/g;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1001
    name = "a"
.end annotation


# static fields
.field public static final synthetic $EnumSwitchMapping$0:[I


# direct methods
.method static constructor <clinit>()V
    .registers 3

    .line 1
    invoke-static {}, Lio/bidmachine/analytics/internal/g/h$a;->values()[Lio/bidmachine/analytics/internal/g/h$a;

    move-result-object v0

    array-length v0, v0

    new-array v0, v0, [I

    :try_start_7
    sget-object v1, Lio/bidmachine/analytics/internal/g/h$a;->a:Lio/bidmachine/analytics/internal/g/h$a;

    invoke-virtual {v1}, Ljava/lang/Enum;->ordinal()I

    move-result v1

    const/4 v2, 0x1

    aput v2, v0, v1
    :try_end_10
    .catch Ljava/lang/NoSuchFieldError; {:try_start_7 .. :try_end_10} :catch_10

    :catch_10
    :try_start_10
    sget-object v1, Lio/bidmachine/analytics/internal/g/h$a;->b:Lio/bidmachine/analytics/internal/g/h$a;

    invoke-virtual {v1}, Ljava/lang/Enum;->ordinal()I

    move-result v1

    const/4 v2, 0x2

    aput v2, v0, v1
    :try_end_19
    .catch Ljava/lang/NoSuchFieldError; {:try_start_10 .. :try_end_19} :catch_19

    :catch_19
    :try_start_19
    sget-object v1, Lio/bidmachine/analytics/internal/g/h$a;->c:Lio/bidmachine/analytics/internal/g/h$a;

    invoke-virtual {v1}, Ljava/lang/Enum;->ordinal()I

    move-result v1

    const/4 v2, 0x3

    aput v2, v0, v1
    :try_end_22
    .catch Ljava/lang/NoSuchFieldError; {:try_start_19 .. :try_end_22} :catch_22

    :catch_22
    :try_start_22
    sget-object v1, Lio/bidmachine/analytics/internal/g/h$a;->d:Lio/bidmachine/analytics/internal/g/h$a;

    invoke-virtual {v1}, Ljava/lang/Enum;->ordinal()I

    move-result v1

    const/4 v2, 0x4

    aput v2, v0, v1
    :try_end_2b
    .catch Ljava/lang/NoSuchFieldError; {:try_start_22 .. :try_end_2b} :catch_2b

    :catch_2b
    :try_start_2b
    sget-object v1, Lio/bidmachine/analytics/internal/g/h$a;->e:Lio/bidmachine/analytics/internal/g/h$a;

    invoke-virtual {v1}, Ljava/lang/Enum;->ordinal()I

    move-result v1

    const/4 v2, 0x5

    aput v2, v0, v1
    :try_end_34
    .catch Ljava/lang/NoSuchFieldError; {:try_start_2b .. :try_end_34} :catch_34

    :catch_34
    :try_start_34
    sget-object v1, Lio/bidmachine/analytics/internal/g/h$a;->f:Lio/bidmachine/analytics/internal/g/h$a;

    invoke-virtual {v1}, Ljava/lang/Enum;->ordinal()I

    move-result v1

    const/4 v2, 0x6

    aput v2, v0, v1
    :try_end_3d
    .catch Ljava/lang/NoSuchFieldError; {:try_start_34 .. :try_end_3d} :catch_3d

    :catch_3d
    :try_start_3d
    sget-object v1, Lio/bidmachine/analytics/internal/g/h$a;->g:Lio/bidmachine/analytics/internal/g/h$a;

    invoke-virtual {v1}, Ljava/lang/Enum;->ordinal()I

    move-result v1

    const/4 v2, 0x7

    aput v2, v0, v1
    :try_end_46
    .catch Ljava/lang/NoSuchFieldError; {:try_start_3d .. :try_end_46} :catch_46

    :catch_46
    :try_start_46
    sget-object v1, Lio/bidmachine/analytics/internal/g/h$a;->h:Lio/bidmachine/analytics/internal/g/h$a;

    invoke-virtual {v1}, Ljava/lang/Enum;->ordinal()I

    move-result v1

    const/16 v2, 0x8

    aput v2, v0, v1
    :try_end_50
    .catch Ljava/lang/NoSuchFieldError; {:try_start_46 .. :try_end_50} :catch_50

    :catch_50
    sput-object v0, Lio/bidmachine/analytics/internal/G/g$a;->$EnumSwitchMapping$0:[I

    return-void
.end method
