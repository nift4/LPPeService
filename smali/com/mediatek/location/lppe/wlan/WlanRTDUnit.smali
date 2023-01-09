.class public final enum Lcom/mediatek/location/lppe/wlan/WlanRTDUnit;
.super Ljava/lang/Enum;
.source "WlanRTDUnit.java"

# interfaces
.implements Lcom/mediatek/socket/base/SocketUtils$Codable;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lcom/mediatek/location/lppe/wlan/WlanRTDUnit;",
        ">;",
        "Lcom/mediatek/socket/base/SocketUtils$Codable;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/mediatek/location/lppe/wlan/WlanRTDUnit;

.field public static final _instance:Lcom/mediatek/location/lppe/wlan/WlanRTDUnit;

.field public static final enum end:Lcom/mediatek/location/lppe/wlan/WlanRTDUnit;

.field public static final enum hundredsOfNanoseconds:Lcom/mediatek/location/lppe/wlan/WlanRTDUnit;

.field public static final enum microseconds:Lcom/mediatek/location/lppe/wlan/WlanRTDUnit;

.field public static final enum nanoseconds:Lcom/mediatek/location/lppe/wlan/WlanRTDUnit;

.field public static final enum tensOfNanoseconds:Lcom/mediatek/location/lppe/wlan/WlanRTDUnit;

.field public static final enum tenthsOfNanoseconds:Lcom/mediatek/location/lppe/wlan/WlanRTDUnit;


# direct methods
.method static constructor <clinit>()V
    .locals 13

    .line 8
    new-instance v0, Lcom/mediatek/location/lppe/wlan/WlanRTDUnit;

    const-string v1, "microseconds"

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2}, Lcom/mediatek/location/lppe/wlan/WlanRTDUnit;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/mediatek/location/lppe/wlan/WlanRTDUnit;->microseconds:Lcom/mediatek/location/lppe/wlan/WlanRTDUnit;

    .line 9
    new-instance v1, Lcom/mediatek/location/lppe/wlan/WlanRTDUnit;

    const-string v3, "hundredsOfNanoseconds"

    const/4 v4, 0x1

    invoke-direct {v1, v3, v4}, Lcom/mediatek/location/lppe/wlan/WlanRTDUnit;-><init>(Ljava/lang/String;I)V

    sput-object v1, Lcom/mediatek/location/lppe/wlan/WlanRTDUnit;->hundredsOfNanoseconds:Lcom/mediatek/location/lppe/wlan/WlanRTDUnit;

    .line 10
    new-instance v3, Lcom/mediatek/location/lppe/wlan/WlanRTDUnit;

    const-string v5, "tensOfNanoseconds"

    const/4 v6, 0x2

    invoke-direct {v3, v5, v6}, Lcom/mediatek/location/lppe/wlan/WlanRTDUnit;-><init>(Ljava/lang/String;I)V

    sput-object v3, Lcom/mediatek/location/lppe/wlan/WlanRTDUnit;->tensOfNanoseconds:Lcom/mediatek/location/lppe/wlan/WlanRTDUnit;

    .line 11
    new-instance v5, Lcom/mediatek/location/lppe/wlan/WlanRTDUnit;

    const-string v7, "nanoseconds"

    const/4 v8, 0x3

    invoke-direct {v5, v7, v8}, Lcom/mediatek/location/lppe/wlan/WlanRTDUnit;-><init>(Ljava/lang/String;I)V

    sput-object v5, Lcom/mediatek/location/lppe/wlan/WlanRTDUnit;->nanoseconds:Lcom/mediatek/location/lppe/wlan/WlanRTDUnit;

    .line 12
    new-instance v7, Lcom/mediatek/location/lppe/wlan/WlanRTDUnit;

    const-string v9, "tenthsOfNanoseconds"

    const/4 v10, 0x4

    invoke-direct {v7, v9, v10}, Lcom/mediatek/location/lppe/wlan/WlanRTDUnit;-><init>(Ljava/lang/String;I)V

    sput-object v7, Lcom/mediatek/location/lppe/wlan/WlanRTDUnit;->tenthsOfNanoseconds:Lcom/mediatek/location/lppe/wlan/WlanRTDUnit;

    .line 13
    new-instance v9, Lcom/mediatek/location/lppe/wlan/WlanRTDUnit;

    const-string v11, "end"

    const/4 v12, 0x5

    invoke-direct {v9, v11, v12}, Lcom/mediatek/location/lppe/wlan/WlanRTDUnit;-><init>(Ljava/lang/String;I)V

    sput-object v9, Lcom/mediatek/location/lppe/wlan/WlanRTDUnit;->end:Lcom/mediatek/location/lppe/wlan/WlanRTDUnit;

    const/4 v11, 0x6

    new-array v11, v11, [Lcom/mediatek/location/lppe/wlan/WlanRTDUnit;

    aput-object v0, v11, v2

    aput-object v1, v11, v4

    aput-object v3, v11, v6

    aput-object v5, v11, v8

    aput-object v7, v11, v10

    aput-object v9, v11, v12

    .line 7
    sput-object v11, Lcom/mediatek/location/lppe/wlan/WlanRTDUnit;->$VALUES:[Lcom/mediatek/location/lppe/wlan/WlanRTDUnit;

    .line 16
    sput-object v0, Lcom/mediatek/location/lppe/wlan/WlanRTDUnit;->_instance:Lcom/mediatek/location/lppe/wlan/WlanRTDUnit;

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

.method public static valueOf(Ljava/lang/String;)Lcom/mediatek/location/lppe/wlan/WlanRTDUnit;
    .locals 1

    .line 7
    const-class v0, Lcom/mediatek/location/lppe/wlan/WlanRTDUnit;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lcom/mediatek/location/lppe/wlan/WlanRTDUnit;

    return-object p0
.end method

.method public static values()[Lcom/mediatek/location/lppe/wlan/WlanRTDUnit;
    .locals 1

    .line 7
    sget-object v0, Lcom/mediatek/location/lppe/wlan/WlanRTDUnit;->$VALUES:[Lcom/mediatek/location/lppe/wlan/WlanRTDUnit;

    invoke-virtual {v0}, [Lcom/mediatek/location/lppe/wlan/WlanRTDUnit;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/mediatek/location/lppe/wlan/WlanRTDUnit;

    return-object v0
.end method


# virtual methods
.method public decode(Lcom/mediatek/socket/base/SocketUtils$BaseBuffer;)Lcom/mediatek/location/lppe/wlan/WlanRTDUnit;
    .locals 0

    .line 46
    invoke-virtual {p1}, Lcom/mediatek/socket/base/SocketUtils$BaseBuffer;->getInt()I

    move-result p0

    if-eqz p0, :cond_5

    const/4 p1, 0x1

    if-eq p0, p1, :cond_4

    const/4 p1, 0x2

    if-eq p0, p1, :cond_3

    const/4 p1, 0x3

    if-eq p0, p1, :cond_2

    const/4 p1, 0x4

    if-eq p0, p1, :cond_1

    const p1, 0x7fffffff

    if-eq p0, p1, :cond_0

    const/4 p0, 0x0

    return-object p0

    .line 59
    :cond_0
    sget-object p0, Lcom/mediatek/location/lppe/wlan/WlanRTDUnit;->end:Lcom/mediatek/location/lppe/wlan/WlanRTDUnit;

    return-object p0

    .line 57
    :cond_1
    sget-object p0, Lcom/mediatek/location/lppe/wlan/WlanRTDUnit;->tenthsOfNanoseconds:Lcom/mediatek/location/lppe/wlan/WlanRTDUnit;

    return-object p0

    .line 55
    :cond_2
    sget-object p0, Lcom/mediatek/location/lppe/wlan/WlanRTDUnit;->nanoseconds:Lcom/mediatek/location/lppe/wlan/WlanRTDUnit;

    return-object p0

    .line 53
    :cond_3
    sget-object p0, Lcom/mediatek/location/lppe/wlan/WlanRTDUnit;->tensOfNanoseconds:Lcom/mediatek/location/lppe/wlan/WlanRTDUnit;

    return-object p0

    .line 51
    :cond_4
    sget-object p0, Lcom/mediatek/location/lppe/wlan/WlanRTDUnit;->hundredsOfNanoseconds:Lcom/mediatek/location/lppe/wlan/WlanRTDUnit;

    return-object p0

    .line 49
    :cond_5
    sget-object p0, Lcom/mediatek/location/lppe/wlan/WlanRTDUnit;->microseconds:Lcom/mediatek/location/lppe/wlan/WlanRTDUnit;

    return-object p0
.end method

.method public bridge synthetic decode(Lcom/mediatek/socket/base/SocketUtils$BaseBuffer;)Lcom/mediatek/socket/base/SocketUtils$Codable;
    .locals 0

    .line 7
    invoke-virtual {p0, p1}, Lcom/mediatek/location/lppe/wlan/WlanRTDUnit;->decode(Lcom/mediatek/socket/base/SocketUtils$BaseBuffer;)Lcom/mediatek/location/lppe/wlan/WlanRTDUnit;

    move-result-object p0

    return-object p0
.end method

.method public encode(Lcom/mediatek/socket/base/SocketUtils$BaseBuffer;)V
    .locals 1

    .line 20
    sget-object v0, Lcom/mediatek/location/lppe/wlan/WlanRTDUnit$1;->$SwitchMap$com$mediatek$location$lppe$wlan$WlanRTDUnit:[I

    invoke-virtual {p0}, Ljava/lang/Enum;->ordinal()I

    move-result p0

    aget p0, v0, p0

    packed-switch p0, :pswitch_data_0

    goto :goto_0

    :pswitch_0
    const p0, 0x7fffffff

    .line 37
    invoke-virtual {p1, p0}, Lcom/mediatek/socket/base/SocketUtils$BaseBuffer;->putInt(I)V

    goto :goto_0

    :pswitch_1
    const/4 p0, 0x4

    .line 34
    invoke-virtual {p1, p0}, Lcom/mediatek/socket/base/SocketUtils$BaseBuffer;->putInt(I)V

    goto :goto_0

    :pswitch_2
    const/4 p0, 0x3

    .line 31
    invoke-virtual {p1, p0}, Lcom/mediatek/socket/base/SocketUtils$BaseBuffer;->putInt(I)V

    goto :goto_0

    :pswitch_3
    const/4 p0, 0x2

    .line 28
    invoke-virtual {p1, p0}, Lcom/mediatek/socket/base/SocketUtils$BaseBuffer;->putInt(I)V

    goto :goto_0

    :pswitch_4
    const/4 p0, 0x1

    .line 25
    invoke-virtual {p1, p0}, Lcom/mediatek/socket/base/SocketUtils$BaseBuffer;->putInt(I)V

    goto :goto_0

    :pswitch_5
    const/4 p0, 0x0

    .line 22
    invoke-virtual {p1, p0}, Lcom/mediatek/socket/base/SocketUtils$BaseBuffer;->putInt(I)V

    :goto_0
    return-void

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_5
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method
