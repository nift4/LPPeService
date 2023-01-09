.class public final enum Lcom/mediatek/location/lppe/bluetooth/BluetotthCategory;
.super Ljava/lang/Enum;
.source "BluetotthCategory.java"

# interfaces
.implements Lcom/mediatek/socket/base/SocketUtils$Codable;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lcom/mediatek/location/lppe/bluetooth/BluetotthCategory;",
        ">;",
        "Lcom/mediatek/socket/base/SocketUtils$Codable;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/mediatek/location/lppe/bluetooth/BluetotthCategory;

.field public static final _instance:Lcom/mediatek/location/lppe/bluetooth/BluetotthCategory;

.field public static final enum bt:Lcom/mediatek/location/lppe/bluetooth/BluetotthCategory;

.field public static final enum btle:Lcom/mediatek/location/lppe/bluetooth/BluetotthCategory;

.field public static final enum end:Lcom/mediatek/location/lppe/bluetooth/BluetotthCategory;

.field public static final enum unknown:Lcom/mediatek/location/lppe/bluetooth/BluetotthCategory;


# direct methods
.method static constructor <clinit>()V
    .locals 9

    .line 8
    new-instance v0, Lcom/mediatek/location/lppe/bluetooth/BluetotthCategory;

    const-string v1, "unknown"

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2}, Lcom/mediatek/location/lppe/bluetooth/BluetotthCategory;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/mediatek/location/lppe/bluetooth/BluetotthCategory;->unknown:Lcom/mediatek/location/lppe/bluetooth/BluetotthCategory;

    .line 9
    new-instance v1, Lcom/mediatek/location/lppe/bluetooth/BluetotthCategory;

    const-string v3, "bt"

    const/4 v4, 0x1

    invoke-direct {v1, v3, v4}, Lcom/mediatek/location/lppe/bluetooth/BluetotthCategory;-><init>(Ljava/lang/String;I)V

    sput-object v1, Lcom/mediatek/location/lppe/bluetooth/BluetotthCategory;->bt:Lcom/mediatek/location/lppe/bluetooth/BluetotthCategory;

    .line 10
    new-instance v3, Lcom/mediatek/location/lppe/bluetooth/BluetotthCategory;

    const-string v5, "btle"

    const/4 v6, 0x2

    invoke-direct {v3, v5, v6}, Lcom/mediatek/location/lppe/bluetooth/BluetotthCategory;-><init>(Ljava/lang/String;I)V

    sput-object v3, Lcom/mediatek/location/lppe/bluetooth/BluetotthCategory;->btle:Lcom/mediatek/location/lppe/bluetooth/BluetotthCategory;

    .line 11
    new-instance v5, Lcom/mediatek/location/lppe/bluetooth/BluetotthCategory;

    const-string v7, "end"

    const/4 v8, 0x3

    invoke-direct {v5, v7, v8}, Lcom/mediatek/location/lppe/bluetooth/BluetotthCategory;-><init>(Ljava/lang/String;I)V

    sput-object v5, Lcom/mediatek/location/lppe/bluetooth/BluetotthCategory;->end:Lcom/mediatek/location/lppe/bluetooth/BluetotthCategory;

    const/4 v7, 0x4

    new-array v7, v7, [Lcom/mediatek/location/lppe/bluetooth/BluetotthCategory;

    aput-object v0, v7, v2

    aput-object v1, v7, v4

    aput-object v3, v7, v6

    aput-object v5, v7, v8

    .line 7
    sput-object v7, Lcom/mediatek/location/lppe/bluetooth/BluetotthCategory;->$VALUES:[Lcom/mediatek/location/lppe/bluetooth/BluetotthCategory;

    .line 14
    sput-object v0, Lcom/mediatek/location/lppe/bluetooth/BluetotthCategory;->_instance:Lcom/mediatek/location/lppe/bluetooth/BluetotthCategory;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;I)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    .line 7
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/mediatek/location/lppe/bluetooth/BluetotthCategory;
    .locals 1

    .line 7
    const-class v0, Lcom/mediatek/location/lppe/bluetooth/BluetotthCategory;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lcom/mediatek/location/lppe/bluetooth/BluetotthCategory;

    return-object p0
.end method

.method public static values()[Lcom/mediatek/location/lppe/bluetooth/BluetotthCategory;
    .locals 1

    .line 7
    sget-object v0, Lcom/mediatek/location/lppe/bluetooth/BluetotthCategory;->$VALUES:[Lcom/mediatek/location/lppe/bluetooth/BluetotthCategory;

    invoke-virtual {v0}, [Lcom/mediatek/location/lppe/bluetooth/BluetotthCategory;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/mediatek/location/lppe/bluetooth/BluetotthCategory;

    return-object v0
.end method


# virtual methods
.method public decode(Lcom/mediatek/socket/base/SocketUtils$BaseBuffer;)Lcom/mediatek/location/lppe/bluetooth/BluetotthCategory;
    .locals 0

    .line 38
    invoke-virtual {p1}, Lcom/mediatek/socket/base/SocketUtils$BaseBuffer;->getInt()I

    move-result p0

    if-eqz p0, :cond_3

    const/4 p1, 0x1

    if-eq p0, p1, :cond_2

    const/4 p1, 0x2

    if-eq p0, p1, :cond_1

    const p1, 0x7fffffff

    if-eq p0, p1, :cond_0

    const/4 p0, 0x0

    return-object p0

    .line 47
    :cond_0
    sget-object p0, Lcom/mediatek/location/lppe/bluetooth/BluetotthCategory;->end:Lcom/mediatek/location/lppe/bluetooth/BluetotthCategory;

    return-object p0

    .line 45
    :cond_1
    sget-object p0, Lcom/mediatek/location/lppe/bluetooth/BluetotthCategory;->btle:Lcom/mediatek/location/lppe/bluetooth/BluetotthCategory;

    return-object p0

    .line 43
    :cond_2
    sget-object p0, Lcom/mediatek/location/lppe/bluetooth/BluetotthCategory;->bt:Lcom/mediatek/location/lppe/bluetooth/BluetotthCategory;

    return-object p0

    .line 41
    :cond_3
    sget-object p0, Lcom/mediatek/location/lppe/bluetooth/BluetotthCategory;->unknown:Lcom/mediatek/location/lppe/bluetooth/BluetotthCategory;

    return-object p0
.end method

.method public bridge synthetic decode(Lcom/mediatek/socket/base/SocketUtils$BaseBuffer;)Lcom/mediatek/socket/base/SocketUtils$Codable;
    .locals 0

    .line 7
    invoke-virtual {p0, p1}, Lcom/mediatek/location/lppe/bluetooth/BluetotthCategory;->decode(Lcom/mediatek/socket/base/SocketUtils$BaseBuffer;)Lcom/mediatek/location/lppe/bluetooth/BluetotthCategory;

    move-result-object p0

    return-object p0
.end method

.method public encode(Lcom/mediatek/socket/base/SocketUtils$BaseBuffer;)V
    .locals 2

    .line 18
    sget-object v0, Lcom/mediatek/location/lppe/bluetooth/BluetotthCategory$1;->$SwitchMap$com$mediatek$location$lppe$bluetooth$BluetotthCategory:[I

    invoke-virtual {p0}, Ljava/lang/Enum;->ordinal()I

    move-result p0

    aget p0, v0, p0

    const/4 v0, 0x1

    if-eq p0, v0, :cond_3

    const/4 v1, 0x2

    if-eq p0, v1, :cond_2

    const/4 v0, 0x3

    if-eq p0, v0, :cond_1

    const/4 v0, 0x4

    if-eq p0, v0, :cond_0

    goto :goto_0

    :cond_0
    const p0, 0x7fffffff

    .line 29
    invoke-virtual {p1, p0}, Lcom/mediatek/socket/base/SocketUtils$BaseBuffer;->putInt(I)V

    goto :goto_0

    .line 26
    :cond_1
    invoke-virtual {p1, v1}, Lcom/mediatek/socket/base/SocketUtils$BaseBuffer;->putInt(I)V

    goto :goto_0

    .line 23
    :cond_2
    invoke-virtual {p1, v0}, Lcom/mediatek/socket/base/SocketUtils$BaseBuffer;->putInt(I)V

    goto :goto_0

    :cond_3
    const/4 p0, 0x0

    .line 20
    invoke-virtual {p1, p0}, Lcom/mediatek/socket/base/SocketUtils$BaseBuffer;->putInt(I)V

    :goto_0
    return-void
.end method
