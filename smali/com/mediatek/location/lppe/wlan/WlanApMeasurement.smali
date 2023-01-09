.class public Lcom/mediatek/location/lppe/wlan/WlanApMeasurement;
.super Ljava/lang/Object;
.source "WlanApMeasurement.java"

# interfaces
.implements Lcom/mediatek/socket/base/SocketUtils$Codable;


# static fields
.field public static final _instance:Lcom/mediatek/location/lppe/wlan/WlanApMeasurement;


# instance fields
.field public apChanFreq:S

.field public apMACAddress:[B

.field public apRSSI:F

.field public apRtd:Lcom/mediatek/location/lppe/wlan/WlanRTD;

.field public apSSID:[B

.field public servingFlag:Z

.field public valid:I


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 12
    new-instance v0, Lcom/mediatek/location/lppe/wlan/WlanApMeasurement;

    invoke-direct {v0}, Lcom/mediatek/location/lppe/wlan/WlanApMeasurement;-><init>()V

    sput-object v0, Lcom/mediatek/location/lppe/wlan/WlanApMeasurement;->_instance:Lcom/mediatek/location/lppe/wlan/WlanApMeasurement;

    return-void
.end method

.method public constructor <init>()V
    .locals 2

    .line 10
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    .line 20
    iput v0, p0, Lcom/mediatek/location/lppe/wlan/WlanApMeasurement;->valid:I

    .line 25
    iput-boolean v0, p0, Lcom/mediatek/location/lppe/wlan/WlanApMeasurement;->servingFlag:Z

    new-array v1, v0, [B

    .line 29
    iput-object v1, p0, Lcom/mediatek/location/lppe/wlan/WlanApMeasurement;->apMACAddress:[B

    const/4 v1, 0x0

    .line 36
    iput v1, p0, Lcom/mediatek/location/lppe/wlan/WlanApMeasurement;->apRSSI:F

    .line 41
    iput-short v0, p0, Lcom/mediatek/location/lppe/wlan/WlanApMeasurement;->apChanFreq:S

    .line 46
    new-instance v1, Lcom/mediatek/location/lppe/wlan/WlanRTD;

    invoke-direct {v1}, Lcom/mediatek/location/lppe/wlan/WlanRTD;-><init>()V

    iput-object v1, p0, Lcom/mediatek/location/lppe/wlan/WlanApMeasurement;->apRtd:Lcom/mediatek/location/lppe/wlan/WlanRTD;

    new-array v0, v0, [B

    .line 50
    iput-object v0, p0, Lcom/mediatek/location/lppe/wlan/WlanApMeasurement;->apSSID:[B

    return-void
.end method


# virtual methods
.method public decode(Lcom/mediatek/socket/base/SocketUtils$BaseBuffer;)Lcom/mediatek/location/lppe/wlan/WlanApMeasurement;
    .locals 1

    .line 109
    new-instance p0, Lcom/mediatek/location/lppe/wlan/WlanApMeasurement;

    invoke-direct {p0}, Lcom/mediatek/location/lppe/wlan/WlanApMeasurement;-><init>()V

    .line 110
    invoke-virtual {p1}, Lcom/mediatek/socket/base/SocketUtils$BaseBuffer;->getInt()I

    move-result v0

    iput v0, p0, Lcom/mediatek/location/lppe/wlan/WlanApMeasurement;->valid:I

    .line 111
    invoke-virtual {p1}, Lcom/mediatek/socket/base/SocketUtils$BaseBuffer;->getBool()Z

    move-result v0

    iput-boolean v0, p0, Lcom/mediatek/location/lppe/wlan/WlanApMeasurement;->servingFlag:Z

    .line 112
    invoke-virtual {p1}, Lcom/mediatek/socket/base/SocketUtils$BaseBuffer;->getArrayByte()[B

    move-result-object v0

    iput-object v0, p0, Lcom/mediatek/location/lppe/wlan/WlanApMeasurement;->apMACAddress:[B

    .line 113
    invoke-virtual {p1}, Lcom/mediatek/socket/base/SocketUtils$BaseBuffer;->getFloat()F

    move-result v0

    iput v0, p0, Lcom/mediatek/location/lppe/wlan/WlanApMeasurement;->apRSSI:F

    .line 114
    invoke-virtual {p1}, Lcom/mediatek/socket/base/SocketUtils$BaseBuffer;->getShort()S

    move-result v0

    iput-short v0, p0, Lcom/mediatek/location/lppe/wlan/WlanApMeasurement;->apChanFreq:S

    .line 115
    sget-object v0, Lcom/mediatek/location/lppe/wlan/WlanRTD;->_instance:Lcom/mediatek/location/lppe/wlan/WlanRTD;

    invoke-virtual {p1, v0}, Lcom/mediatek/socket/base/SocketUtils$BaseBuffer;->getCodable(Lcom/mediatek/socket/base/SocketUtils$Codable;)Lcom/mediatek/socket/base/SocketUtils$Codable;

    move-result-object v0

    check-cast v0, Lcom/mediatek/location/lppe/wlan/WlanRTD;

    iput-object v0, p0, Lcom/mediatek/location/lppe/wlan/WlanApMeasurement;->apRtd:Lcom/mediatek/location/lppe/wlan/WlanRTD;

    .line 116
    invoke-virtual {p1}, Lcom/mediatek/socket/base/SocketUtils$BaseBuffer;->getArrayByte()[B

    move-result-object p1

    iput-object p1, p0, Lcom/mediatek/location/lppe/wlan/WlanApMeasurement;->apSSID:[B

    return-object p0
.end method

.method public bridge synthetic decode(Lcom/mediatek/socket/base/SocketUtils$BaseBuffer;)Lcom/mediatek/socket/base/SocketUtils$Codable;
    .locals 0

    .line 10
    invoke-virtual {p0, p1}, Lcom/mediatek/location/lppe/wlan/WlanApMeasurement;->decode(Lcom/mediatek/socket/base/SocketUtils$BaseBuffer;)Lcom/mediatek/location/lppe/wlan/WlanApMeasurement;

    move-result-object p0

    return-object p0
.end method

.method public encode(Lcom/mediatek/socket/base/SocketUtils$BaseBuffer;)V
    .locals 3

    .line 96
    iget v0, p0, Lcom/mediatek/location/lppe/wlan/WlanApMeasurement;->valid:I

    invoke-virtual {p1, v0}, Lcom/mediatek/socket/base/SocketUtils$BaseBuffer;->putInt(I)V

    .line 97
    iget-boolean v0, p0, Lcom/mediatek/location/lppe/wlan/WlanApMeasurement;->servingFlag:Z

    invoke-virtual {p1, v0}, Lcom/mediatek/socket/base/SocketUtils$BaseBuffer;->putBool(Z)V

    .line 98
    iget-object v0, p0, Lcom/mediatek/location/lppe/wlan/WlanApMeasurement;->apMACAddress:[B

    const/4 v1, 0x6

    const/4 v2, 0x0

    invoke-static {v0, v1, v2}, Lcom/mediatek/socket/base/SocketUtils;->assertSize(Ljava/lang/Object;II)V

    .line 99
    iget-object v0, p0, Lcom/mediatek/location/lppe/wlan/WlanApMeasurement;->apMACAddress:[B

    invoke-virtual {p1, v0}, Lcom/mediatek/socket/base/SocketUtils$BaseBuffer;->putArrayByte([B)V

    .line 100
    iget v0, p0, Lcom/mediatek/location/lppe/wlan/WlanApMeasurement;->apRSSI:F

    invoke-virtual {p1, v0}, Lcom/mediatek/socket/base/SocketUtils$BaseBuffer;->putFloat(F)V

    .line 101
    iget-short v0, p0, Lcom/mediatek/location/lppe/wlan/WlanApMeasurement;->apChanFreq:S

    invoke-virtual {p1, v0}, Lcom/mediatek/socket/base/SocketUtils$BaseBuffer;->putShort(S)V

    .line 102
    iget-object v0, p0, Lcom/mediatek/location/lppe/wlan/WlanApMeasurement;->apRtd:Lcom/mediatek/location/lppe/wlan/WlanRTD;

    invoke-virtual {p1, v0}, Lcom/mediatek/socket/base/SocketUtils$BaseBuffer;->putCodable(Lcom/mediatek/socket/base/SocketUtils$Codable;)V

    .line 103
    iget-object v0, p0, Lcom/mediatek/location/lppe/wlan/WlanApMeasurement;->apSSID:[B

    const/16 v1, 0x20

    invoke-static {v0, v1, v2}, Lcom/mediatek/socket/base/SocketUtils;->assertSize(Ljava/lang/Object;II)V

    .line 104
    iget-object p0, p0, Lcom/mediatek/location/lppe/wlan/WlanApMeasurement;->apSSID:[B

    invoke-virtual {p1, p0}, Lcom/mediatek/socket/base/SocketUtils$BaseBuffer;->putArrayByte([B)V

    return-void
.end method

.method public equals(Ljava/lang/Object;)Z
    .locals 4

    const/4 v0, 0x0

    if-nez p1, :cond_0

    return v0

    :cond_0
    const/4 v1, 0x1

    if-ne p1, p0, :cond_1

    return v1

    .line 59
    :cond_1
    instance-of v2, p1, Lcom/mediatek/location/lppe/wlan/WlanApMeasurement;

    if-nez v2, :cond_2

    return v0

    .line 63
    :cond_2
    check-cast p1, Lcom/mediatek/location/lppe/wlan/WlanApMeasurement;

    .line 64
    iget v2, p1, Lcom/mediatek/location/lppe/wlan/WlanApMeasurement;->valid:I

    iget v3, p0, Lcom/mediatek/location/lppe/wlan/WlanApMeasurement;->valid:I

    if-eq v2, v3, :cond_3

    return v0

    .line 66
    :cond_3
    iget-boolean v2, p1, Lcom/mediatek/location/lppe/wlan/WlanApMeasurement;->servingFlag:Z

    iget-boolean v3, p0, Lcom/mediatek/location/lppe/wlan/WlanApMeasurement;->servingFlag:Z

    if-eq v2, v3, :cond_4

    return v0

    .line 68
    :cond_4
    iget-object v2, p1, Lcom/mediatek/location/lppe/wlan/WlanApMeasurement;->apMACAddress:[B

    iget-object v3, p0, Lcom/mediatek/location/lppe/wlan/WlanApMeasurement;->apMACAddress:[B

    invoke-static {v2, v3}, Ljava/util/Arrays;->equals([B[B)Z

    move-result v2

    if-nez v2, :cond_5

    return v0

    .line 70
    :cond_5
    iget v2, p1, Lcom/mediatek/location/lppe/wlan/WlanApMeasurement;->apRSSI:F

    iget v3, p0, Lcom/mediatek/location/lppe/wlan/WlanApMeasurement;->apRSSI:F

    cmpl-float v2, v2, v3

    if-eqz v2, :cond_6

    return v0

    .line 72
    :cond_6
    iget-short v2, p1, Lcom/mediatek/location/lppe/wlan/WlanApMeasurement;->apChanFreq:S

    iget-short v3, p0, Lcom/mediatek/location/lppe/wlan/WlanApMeasurement;->apChanFreq:S

    if-eq v2, v3, :cond_7

    return v0

    .line 74
    :cond_7
    iget-object v2, p1, Lcom/mediatek/location/lppe/wlan/WlanApMeasurement;->apRtd:Lcom/mediatek/location/lppe/wlan/WlanRTD;

    iget-object v3, p0, Lcom/mediatek/location/lppe/wlan/WlanApMeasurement;->apRtd:Lcom/mediatek/location/lppe/wlan/WlanRTD;

    invoke-virtual {v2, v3}, Lcom/mediatek/location/lppe/wlan/WlanRTD;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_8

    return v0

    .line 76
    :cond_8
    iget-object p1, p1, Lcom/mediatek/location/lppe/wlan/WlanApMeasurement;->apSSID:[B

    iget-object p0, p0, Lcom/mediatek/location/lppe/wlan/WlanApMeasurement;->apSSID:[B

    invoke-static {p1, p0}, Ljava/util/Arrays;->equals([B[B)Z

    move-result p0

    if-nez p0, :cond_9

    return v0

    :cond_9
    return v1
.end method

.method public getArray([Lcom/mediatek/socket/base/SocketUtils$Codable;)[Lcom/mediatek/location/lppe/wlan/WlanApMeasurement;
    .locals 2

    .line 122
    array-length p0, p1

    new-array p0, p0, [Lcom/mediatek/location/lppe/wlan/WlanApMeasurement;

    const/4 v0, 0x0

    .line 123
    :goto_0
    array-length v1, p1

    if-ge v0, v1, :cond_0

    .line 124
    aget-object v1, p1, v0

    check-cast v1, Lcom/mediatek/location/lppe/wlan/WlanApMeasurement;

    aput-object v1, p0, v0

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_0
    return-object p0
.end method

.method public toString()Ljava/lang/String;
    .locals 4

    .line 82
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "WlanApMeasurement "

    .line 83
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 84
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "valid=["

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v2, p0, Lcom/mediatek/location/lppe/wlan/WlanApMeasurement;->valid:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, "] "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 85
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "servingFlag=["

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v3, p0, Lcom/mediatek/location/lppe/wlan/WlanApMeasurement;->servingFlag:Z

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 86
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "apMACAddress=["

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v3, p0, Lcom/mediatek/location/lppe/wlan/WlanApMeasurement;->apMACAddress:[B

    invoke-static {v3}, Ljava/util/Arrays;->toString([B)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 87
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "apRSSI=["

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v3, p0, Lcom/mediatek/location/lppe/wlan/WlanApMeasurement;->apRSSI:F

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 88
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "apChanFreq=["

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-short v3, p0, Lcom/mediatek/location/lppe/wlan/WlanApMeasurement;->apChanFreq:S

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 89
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "apRtd=["

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v3, p0, Lcom/mediatek/location/lppe/wlan/WlanApMeasurement;->apRtd:Lcom/mediatek/location/lppe/wlan/WlanRTD;

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 90
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "apSSID=["

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object p0, p0, Lcom/mediatek/location/lppe/wlan/WlanApMeasurement;->apSSID:[B

    invoke-static {p0}, Ljava/util/Arrays;->toString([B)Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 91
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method
