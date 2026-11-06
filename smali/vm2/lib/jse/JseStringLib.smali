###### Class vm2.lib.jse.JseStringLib (vm2.lib.jse.JseStringLib)
.class public Lvm2/lib/jse/JseStringLib;
.super Lvm2/lib/StringLib;
.source "JseStringLib.java"


# direct methods
.method public constructor <init>()V
    .registers 1

    .line 29
    invoke-direct {p0}, Lvm2/lib/StringLib;-><init>()V

    return-void
.end method


# virtual methods
.method public format(Ljava/lang/String;D)Ljava/lang/String;
    .registers 5

    .line 35
    :try_start_0
    invoke-static {p2, p3}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v0

    filled-new-array {v0}, [Ljava/lang/Object;

    move-result-object v0

    invoke-static {p1, v0}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1
    :try_end_c
    .catchall {:try_start_0 .. :try_end_c} :catchall_d

    return-object p1

    .line 37
    :catchall_d
    invoke-super {p0, p1, p2, p3}, Lvm2/lib/StringLib;->format(Ljava/lang/String;D)Ljava/lang/String;

    move-result-object p1

    return-object p1
.end method
