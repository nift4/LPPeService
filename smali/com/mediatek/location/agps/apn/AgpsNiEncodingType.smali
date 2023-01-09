.class public final enum Lcom/mediatek/location/agps/apn/AgpsNiEncodingType;
.super Ljava/lang/Enum;
.source "AgpsNiEncodingType.java"

# interfaces
.implements Lcom/mediatek/socket/base/SocketUtils$Codable;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lcom/mediatek/location/agps/apn/AgpsNiEncodingType;",
        ">;",
        "Lcom/mediatek/socket/base/SocketUtils$Codable;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/mediatek/location/agps/apn/AgpsNiEncodingType;

.field public static final enum AGPS_NI_ENCODING_TYPE_ASCII:Lcom/mediatek/location/agps/apn/AgpsNiEncodingType;

.field public static final enum AGPS_NI_ENCODING_TYPE_GSM7:Lcom/mediatek/location/agps/apn/AgpsNiEncodingType;

.field public static final enum AGPS_NI_ENCODING_TYPE_NONE:Lcom/mediatek/location/agps/apn/AgpsNiEncodingType;

.field public static final enum AGPS_NI_ENCODING_TYPE_UCS2:Lcom/mediatek/location/agps/apn/AgpsNiEncodingType;

.field public static final enum AGPS_NI_ENCODING_TYPE_UTF8:Lcom/mediatek/location/agps/apn/AgpsNiEncodingType;

.field public static final _instance:Lcom/mediatek/location/agps/apn/AgpsNiEncodingType;


# direct methods
.method static constructor <clinit>()V
    .locals 11

    .line 8
    new-instance v0, Lcom/mediatek/location/agps/apn/AgpsNiEncodingType;

    const-string v1, "AGPS_NI_ENCODING_TYPE_NONE"

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2}, Lcom/mediatek/location/agps/apn/AgpsNiEncodingType;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/mediatek/location/agps/apn/AgpsNiEncodingType;->AGPS_NI_ENCODING_TYPE_NONE:Lcom/mediatek/location/agps/apn/AgpsNiEncodingType;

    .line 9
    new-instance v1, Lcom/mediatek/location/agps/apn/AgpsNiEncodingType;

    const-string v3, "AGPS_NI_ENCODING_TYPE_GSM7"

    const/4 v4, 0x1

    invoke-direct {v1, v3, v4}, Lcom/mediatek/location/agps/apn/AgpsNiEncodingType;-><init>(Ljava/lang/String;I)V

    sput-object v1, Lcom/mediatek/location/agps/apn/AgpsNiEncodingType;->AGPS_NI_ENCODING_TYPE_GSM7:Lcom/mediatek/location/agps/apn/AgpsNiEncodingType;

    .line 10
    new-instance v3, Lcom/mediatek/location/agps/apn/AgpsNiEncodingType;

    const-string v5, "AGPS_NI_ENCODING_TYPE_UTF8"

    const/4 v6, 0x2

    invoke-direct {v3, v5, v6}, Lcom/mediatek/location/agps/apn/AgpsNiEncodingType;-><init>(Ljava/lang/String;I)V

    sput-object v3, Lcom/mediatek/location/agps/apn/AgpsNiEncodingType;->AGPS_NI_ENCODING_TYPE_UTF8:Lcom/mediatek/location/agps/apn/AgpsNiEncodingType;

    .line 11
    new-instance v5, Lcom/mediatek/location/agps/apn/AgpsNiEncodingType;

    const-string v7, "AGPS_NI_ENCODING_TYPE_UCS2"

    const/4 v8, 0x3

    invoke-direct {v5, v7, v8}, Lcom/mediatek/location/agps/apn/AgpsNiEncodingType;-><init>(Ljava/lang/String;I)V

    sput-object v5, Lcom/mediatek/location/agps/apn/AgpsNiEncodingType;->AGPS_NI_ENCODING_TYPE_UCS2:Lcom/mediatek/location/agps/apn/AgpsNiEncodingType;

    .line 12
    new-instance v7, Lcom/mediatek/location/agps/apn/AgpsNiEncodingType;

    const-string v9, "AGPS_NI_ENCODING_TYPE_ASCII"

    const/4 v10, 0x4

    invoke-direct {v7, v9, v10}, Lcom/mediatek/location/agps/apn/AgpsNiEncodingType;-><init>(Ljava/lang/String;I)V

    sput-object v7, Lcom/mediatek/location/agps/apn/AgpsNiEncodingType;->AGPS_NI_ENCODING_TYPE_ASCII:Lcom/mediatek/location/agps/apn/AgpsNiEncodingType;

    const/4 v9, 0x5

    new-array v9, v9, [Lcom/mediatek/location/agps/apn/AgpsNiEncodingType;

    aput-object v0, v9, v2

    aput-object v1, v9, v4

    aput-object v3, v9, v6

    aput-object v5, v9, v8

    aput-object v7, v9, v10

    .line 7
    sput-object v9, Lcom/mediatek/location/agps/apn/AgpsNiEncodingType;->$VALUES:[Lcom/mediatek/location/agps/apn/AgpsNiEncodingType;

    .line 15
    sput-object v0, Lcom/mediatek/location/agps/apn/AgpsNiEncodingType;->_instance:Lcom/mediatek/location/agps/apn/AgpsNiEncodingType;

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

.method public static valueOf(Ljava/lang/String;)Lcom/mediatek/location/agps/apn/AgpsNiEncodingType;
    .locals 1

    .line 7
    const-class v0, Lcom/mediatek/location/agps/apn/AgpsNiEncodingType;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lcom/mediatek/location/agps/apn/AgpsNiEncodingType;

    return-object p0
.end method

.method public static values()[Lcom/mediatek/location/agps/apn/AgpsNiEncodingType;
    .locals 1

    .line 7
    sget-object v0, Lcom/mediatek/location/agps/apn/AgpsNiEncodingType;->$VALUES:[Lcom/mediatek/location/agps/apn/AgpsNiEncodingType;

    invoke-virtual {v0}, [Lcom/mediatek/location/agps/apn/AgpsNiEncodingType;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/mediatek/location/agps/apn/AgpsNiEncodingType;

    return-object v0
.end method


# virtual methods
.method public decode(Lcom/mediatek/socket/base/SocketUtils$BaseBuffer;)Lcom/mediatek/location/agps/apn/AgpsNiEncodingType;
    .locals 0

    .line 42
    invoke-virtual {p1}, Lcom/mediatek/socket/base/SocketUtils$BaseBuffer;->getInt()I

    move-result p0

    if-eqz p0, :cond_4

    const/4 p1, 0x1

    if-eq p0, p1, :cond_3

    const/4 p1, 0x2

    if-eq p0, p1, :cond_2

    const/4 p1, 0x3

    if-eq p0, p1, :cond_1

    const/4 p1, 0x4

    if-eq p0, p1, :cond_0

    const/4 p0, 0x0

    return-object p0

    .line 53
    :cond_0
    sget-object p0, Lcom/mediatek/location/agps/apn/AgpsNiEncodingType;->AGPS_NI_ENCODING_TYPE_ASCII:Lcom/mediatek/location/agps/apn/AgpsNiEncodingType;

    return-object p0

    .line 51
    :cond_1
    sget-object p0, Lcom/mediatek/location/agps/apn/AgpsNiEncodingType;->AGPS_NI_ENCODING_TYPE_UCS2:Lcom/mediatek/location/agps/apn/AgpsNiEncodingType;

    return-object p0

    .line 49
    :cond_2
    sget-object p0, Lcom/mediatek/location/agps/apn/AgpsNiEncodingType;->AGPS_NI_ENCODING_TYPE_UTF8:Lcom/mediatek/location/agps/apn/AgpsNiEncodingType;

    return-object p0

    .line 47
    :cond_3
    sget-object p0, Lcom/mediatek/location/agps/apn/AgpsNiEncodingType;->AGPS_NI_ENCODING_TYPE_GSM7:Lcom/mediatek/location/agps/apn/AgpsNiEncodingType;

    return-object p0

    .line 45
    :cond_4
    sget-object p0, Lcom/mediatek/location/agps/apn/AgpsNiEncodingType;->AGPS_NI_ENCODING_TYPE_NONE:Lcom/mediatek/location/agps/apn/AgpsNiEncodingType;

    return-object p0
.end method

.method public bridge synthetic decode(Lcom/mediatek/socket/base/SocketUtils$BaseBuffer;)Lcom/mediatek/socket/base/SocketUtils$Codable;
    .locals 0

    .line 7
    invoke-virtual {p0, p1}, Lcom/mediatek/location/agps/apn/AgpsNiEncodingType;->decode(Lcom/mediatek/socket/base/SocketUtils$BaseBuffer;)Lcom/mediatek/location/agps/apn/AgpsNiEncodingType;

    move-result-object p0

    return-object p0
.end method

.method public encode(Lcom/mediatek/socket/base/SocketUtils$BaseBuffer;)V
    .locals 2

    .line 19
    sget-object v0, Lcom/mediatek/location/agps/apn/AgpsNiEncodingType$1;->$SwitchMap$com$mediatek$location$agps$apn$AgpsNiEncodingType:[I

    invoke-virtual {p0}, Ljava/lang/Enum;->ordinal()I

    move-result p0

    aget p0, v0, p0

    const/4 v0, 0x1

    if-eq p0, v0, :cond_4

    const/4 v1, 0x2

    if-eq p0, v1, :cond_3

    const/4 v0, 0x3

    if-eq p0, v0, :cond_2

    const/4 v1, 0x4

    if-eq p0, v1, :cond_1

    const/4 v0, 0x5

    if-eq p0, v0, :cond_0

    goto :goto_0

    .line 33
    :cond_0
    invoke-virtual {p1, v1}, Lcom/mediatek/socket/base/SocketUtils$BaseBuffer;->putInt(I)V

    goto :goto_0

    .line 30
    :cond_1
    invoke-virtual {p1, v0}, Lcom/mediatek/socket/base/SocketUtils$BaseBuffer;->putInt(I)V

    goto :goto_0

    .line 27
    :cond_2
    invoke-virtual {p1, v1}, Lcom/mediatek/socket/base/SocketUtils$BaseBuffer;->putInt(I)V

    goto :goto_0

    .line 24
    :cond_3
    invoke-virtual {p1, v0}, Lcom/mediatek/socket/base/SocketUtils$BaseBuffer;->putInt(I)V

    goto :goto_0

    :cond_4
    const/4 p0, 0x0

    .line 21
    invoke-virtual {p1, p0}, Lcom/mediatek/socket/base/SocketUtils$BaseBuffer;->putInt(I)V

    :goto_0
    return-void
.end method
