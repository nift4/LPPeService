.class public final enum Lcom/mediatek/location/lppe/ipaddr/Bearer;
.super Ljava/lang/Enum;
.source "Bearer.java"

# interfaces
.implements Lcom/mediatek/socket/base/SocketUtils$Codable;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lcom/mediatek/location/lppe/ipaddr/Bearer;",
        ">;",
        "Lcom/mediatek/socket/base/SocketUtils$Codable;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/mediatek/location/lppe/ipaddr/Bearer;

.field public static final _instance:Lcom/mediatek/location/lppe/ipaddr/Bearer;

.field public static final enum dsl:Lcom/mediatek/location/lppe/ipaddr/Bearer;

.field public static final enum gsm:Lcom/mediatek/location/lppe/ipaddr/Bearer;

.field public static final enum lte:Lcom/mediatek/location/lppe/ipaddr/Bearer;

.field public static final enum other:Lcom/mediatek/location/lppe/ipaddr/Bearer;

.field public static final enum pktcable:Lcom/mediatek/location/lppe/ipaddr/Bearer;

.field public static final enum unknown:Lcom/mediatek/location/lppe/ipaddr/Bearer;

.field public static final enum utran:Lcom/mediatek/location/lppe/ipaddr/Bearer;

.field public static final enum wimax:Lcom/mediatek/location/lppe/ipaddr/Bearer;

.field public static final enum wlan:Lcom/mediatek/location/lppe/ipaddr/Bearer;


# direct methods
.method static constructor <clinit>()V
    .locals 16

    .line 8
    new-instance v0, Lcom/mediatek/location/lppe/ipaddr/Bearer;

    const-string v1, "unknown"

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2}, Lcom/mediatek/location/lppe/ipaddr/Bearer;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/mediatek/location/lppe/ipaddr/Bearer;->unknown:Lcom/mediatek/location/lppe/ipaddr/Bearer;

    .line 9
    new-instance v1, Lcom/mediatek/location/lppe/ipaddr/Bearer;

    const-string v3, "gsm"

    const/4 v4, 0x1

    invoke-direct {v1, v3, v4}, Lcom/mediatek/location/lppe/ipaddr/Bearer;-><init>(Ljava/lang/String;I)V

    sput-object v1, Lcom/mediatek/location/lppe/ipaddr/Bearer;->gsm:Lcom/mediatek/location/lppe/ipaddr/Bearer;

    .line 10
    new-instance v3, Lcom/mediatek/location/lppe/ipaddr/Bearer;

    const-string v5, "utran"

    const/4 v6, 0x2

    invoke-direct {v3, v5, v6}, Lcom/mediatek/location/lppe/ipaddr/Bearer;-><init>(Ljava/lang/String;I)V

    sput-object v3, Lcom/mediatek/location/lppe/ipaddr/Bearer;->utran:Lcom/mediatek/location/lppe/ipaddr/Bearer;

    .line 11
    new-instance v5, Lcom/mediatek/location/lppe/ipaddr/Bearer;

    const-string v7, "lte"

    const/4 v8, 0x3

    invoke-direct {v5, v7, v8}, Lcom/mediatek/location/lppe/ipaddr/Bearer;-><init>(Ljava/lang/String;I)V

    sput-object v5, Lcom/mediatek/location/lppe/ipaddr/Bearer;->lte:Lcom/mediatek/location/lppe/ipaddr/Bearer;

    .line 12
    new-instance v7, Lcom/mediatek/location/lppe/ipaddr/Bearer;

    const-string v9, "wlan"

    const/4 v10, 0x4

    invoke-direct {v7, v9, v10}, Lcom/mediatek/location/lppe/ipaddr/Bearer;-><init>(Ljava/lang/String;I)V

    sput-object v7, Lcom/mediatek/location/lppe/ipaddr/Bearer;->wlan:Lcom/mediatek/location/lppe/ipaddr/Bearer;

    .line 13
    new-instance v9, Lcom/mediatek/location/lppe/ipaddr/Bearer;

    const-string v11, "wimax"

    const/4 v12, 0x5

    invoke-direct {v9, v11, v12}, Lcom/mediatek/location/lppe/ipaddr/Bearer;-><init>(Ljava/lang/String;I)V

    sput-object v9, Lcom/mediatek/location/lppe/ipaddr/Bearer;->wimax:Lcom/mediatek/location/lppe/ipaddr/Bearer;

    .line 14
    new-instance v11, Lcom/mediatek/location/lppe/ipaddr/Bearer;

    const-string v13, "dsl"

    const/4 v14, 0x6

    invoke-direct {v11, v13, v14}, Lcom/mediatek/location/lppe/ipaddr/Bearer;-><init>(Ljava/lang/String;I)V

    sput-object v11, Lcom/mediatek/location/lppe/ipaddr/Bearer;->dsl:Lcom/mediatek/location/lppe/ipaddr/Bearer;

    .line 15
    new-instance v13, Lcom/mediatek/location/lppe/ipaddr/Bearer;

    const-string v15, "pktcable"

    const/4 v14, 0x7

    invoke-direct {v13, v15, v14}, Lcom/mediatek/location/lppe/ipaddr/Bearer;-><init>(Ljava/lang/String;I)V

    sput-object v13, Lcom/mediatek/location/lppe/ipaddr/Bearer;->pktcable:Lcom/mediatek/location/lppe/ipaddr/Bearer;

    .line 16
    new-instance v15, Lcom/mediatek/location/lppe/ipaddr/Bearer;

    const-string v14, "other"

    const/16 v12, 0x8

    invoke-direct {v15, v14, v12}, Lcom/mediatek/location/lppe/ipaddr/Bearer;-><init>(Ljava/lang/String;I)V

    sput-object v15, Lcom/mediatek/location/lppe/ipaddr/Bearer;->other:Lcom/mediatek/location/lppe/ipaddr/Bearer;

    const/16 v14, 0x9

    new-array v14, v14, [Lcom/mediatek/location/lppe/ipaddr/Bearer;

    aput-object v0, v14, v2

    aput-object v1, v14, v4

    aput-object v3, v14, v6

    aput-object v5, v14, v8

    aput-object v7, v14, v10

    const/4 v1, 0x5

    aput-object v9, v14, v1

    const/4 v1, 0x6

    aput-object v11, v14, v1

    const/4 v1, 0x7

    aput-object v13, v14, v1

    aput-object v15, v14, v12

    .line 7
    sput-object v14, Lcom/mediatek/location/lppe/ipaddr/Bearer;->$VALUES:[Lcom/mediatek/location/lppe/ipaddr/Bearer;

    .line 19
    sput-object v0, Lcom/mediatek/location/lppe/ipaddr/Bearer;->_instance:Lcom/mediatek/location/lppe/ipaddr/Bearer;

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

.method public static valueOf(Ljava/lang/String;)Lcom/mediatek/location/lppe/ipaddr/Bearer;
    .locals 1

    .line 7
    const-class v0, Lcom/mediatek/location/lppe/ipaddr/Bearer;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lcom/mediatek/location/lppe/ipaddr/Bearer;

    return-object p0
.end method

.method public static values()[Lcom/mediatek/location/lppe/ipaddr/Bearer;
    .locals 1

    .line 7
    sget-object v0, Lcom/mediatek/location/lppe/ipaddr/Bearer;->$VALUES:[Lcom/mediatek/location/lppe/ipaddr/Bearer;

    invoke-virtual {v0}, [Lcom/mediatek/location/lppe/ipaddr/Bearer;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/mediatek/location/lppe/ipaddr/Bearer;

    return-object v0
.end method


# virtual methods
.method public decode(Lcom/mediatek/socket/base/SocketUtils$BaseBuffer;)Lcom/mediatek/location/lppe/ipaddr/Bearer;
    .locals 0

    .line 58
    invoke-virtual {p1}, Lcom/mediatek/socket/base/SocketUtils$BaseBuffer;->getInt()I

    move-result p0

    packed-switch p0, :pswitch_data_0

    const/4 p0, 0x0

    return-object p0

    .line 77
    :pswitch_0
    sget-object p0, Lcom/mediatek/location/lppe/ipaddr/Bearer;->other:Lcom/mediatek/location/lppe/ipaddr/Bearer;

    return-object p0

    .line 75
    :pswitch_1
    sget-object p0, Lcom/mediatek/location/lppe/ipaddr/Bearer;->pktcable:Lcom/mediatek/location/lppe/ipaddr/Bearer;

    return-object p0

    .line 73
    :pswitch_2
    sget-object p0, Lcom/mediatek/location/lppe/ipaddr/Bearer;->dsl:Lcom/mediatek/location/lppe/ipaddr/Bearer;

    return-object p0

    .line 71
    :pswitch_3
    sget-object p0, Lcom/mediatek/location/lppe/ipaddr/Bearer;->wimax:Lcom/mediatek/location/lppe/ipaddr/Bearer;

    return-object p0

    .line 69
    :pswitch_4
    sget-object p0, Lcom/mediatek/location/lppe/ipaddr/Bearer;->wlan:Lcom/mediatek/location/lppe/ipaddr/Bearer;

    return-object p0

    .line 67
    :pswitch_5
    sget-object p0, Lcom/mediatek/location/lppe/ipaddr/Bearer;->lte:Lcom/mediatek/location/lppe/ipaddr/Bearer;

    return-object p0

    .line 65
    :pswitch_6
    sget-object p0, Lcom/mediatek/location/lppe/ipaddr/Bearer;->utran:Lcom/mediatek/location/lppe/ipaddr/Bearer;

    return-object p0

    .line 63
    :pswitch_7
    sget-object p0, Lcom/mediatek/location/lppe/ipaddr/Bearer;->gsm:Lcom/mediatek/location/lppe/ipaddr/Bearer;

    return-object p0

    .line 61
    :pswitch_8
    sget-object p0, Lcom/mediatek/location/lppe/ipaddr/Bearer;->unknown:Lcom/mediatek/location/lppe/ipaddr/Bearer;

    return-object p0

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_8
        :pswitch_7
        :pswitch_6
        :pswitch_5
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method public bridge synthetic decode(Lcom/mediatek/socket/base/SocketUtils$BaseBuffer;)Lcom/mediatek/socket/base/SocketUtils$Codable;
    .locals 0

    .line 7
    invoke-virtual {p0, p1}, Lcom/mediatek/location/lppe/ipaddr/Bearer;->decode(Lcom/mediatek/socket/base/SocketUtils$BaseBuffer;)Lcom/mediatek/location/lppe/ipaddr/Bearer;

    move-result-object p0

    return-object p0
.end method

.method public encode(Lcom/mediatek/socket/base/SocketUtils$BaseBuffer;)V
    .locals 1

    .line 23
    sget-object v0, Lcom/mediatek/location/lppe/ipaddr/Bearer$1;->$SwitchMap$com$mediatek$location$lppe$ipaddr$Bearer:[I

    invoke-virtual {p0}, Ljava/lang/Enum;->ordinal()I

    move-result p0

    aget p0, v0, p0

    packed-switch p0, :pswitch_data_0

    goto :goto_0

    :pswitch_0
    const/16 p0, 0x8

    .line 49
    invoke-virtual {p1, p0}, Lcom/mediatek/socket/base/SocketUtils$BaseBuffer;->putInt(I)V

    goto :goto_0

    :pswitch_1
    const/4 p0, 0x7

    .line 46
    invoke-virtual {p1, p0}, Lcom/mediatek/socket/base/SocketUtils$BaseBuffer;->putInt(I)V

    goto :goto_0

    :pswitch_2
    const/4 p0, 0x6

    .line 43
    invoke-virtual {p1, p0}, Lcom/mediatek/socket/base/SocketUtils$BaseBuffer;->putInt(I)V

    goto :goto_0

    :pswitch_3
    const/4 p0, 0x5

    .line 40
    invoke-virtual {p1, p0}, Lcom/mediatek/socket/base/SocketUtils$BaseBuffer;->putInt(I)V

    goto :goto_0

    :pswitch_4
    const/4 p0, 0x4

    .line 37
    invoke-virtual {p1, p0}, Lcom/mediatek/socket/base/SocketUtils$BaseBuffer;->putInt(I)V

    goto :goto_0

    :pswitch_5
    const/4 p0, 0x3

    .line 34
    invoke-virtual {p1, p0}, Lcom/mediatek/socket/base/SocketUtils$BaseBuffer;->putInt(I)V

    goto :goto_0

    :pswitch_6
    const/4 p0, 0x2

    .line 31
    invoke-virtual {p1, p0}, Lcom/mediatek/socket/base/SocketUtils$BaseBuffer;->putInt(I)V

    goto :goto_0

    :pswitch_7
    const/4 p0, 0x1

    .line 28
    invoke-virtual {p1, p0}, Lcom/mediatek/socket/base/SocketUtils$BaseBuffer;->putInt(I)V

    goto :goto_0

    :pswitch_8
    const/4 p0, 0x0

    .line 25
    invoke-virtual {p1, p0}, Lcom/mediatek/socket/base/SocketUtils$BaseBuffer;->putInt(I)V

    :goto_0
    return-void

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_8
        :pswitch_7
        :pswitch_6
        :pswitch_5
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method
