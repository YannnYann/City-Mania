###### Class vm2.lib.TableLibFunction (vm2.lib.TableLibFunction)
.class Lvm2/lib/TableLibFunction;
.super Lvm2/lib/LibFunction;
.source "TableLibFunction.java"


# direct methods
.method public constructor <init>()V
    .registers 1

    .line 5
    invoke-direct {p0}, Lvm2/lib/LibFunction;-><init>()V

    return-void
.end method


# virtual methods
.method public call()Lvm2/LuaValue;
    .registers 3

    const/4 v0, 0x1

    .line 7
    const-string v1, "table expected, got no value"

    invoke-static {v0, v1}, Lvm2/LuaValue;->argerror(ILjava/lang/String;)Lvm2/LuaValue;

    move-result-object v0

    return-object v0
.end method
