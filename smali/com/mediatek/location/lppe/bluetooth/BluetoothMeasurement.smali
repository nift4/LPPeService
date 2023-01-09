.class public Lcom/mediatek/location/lppe/bluetooth/BluetoothMeasurement;
.super Ljava/lang/Object;
.source "BluetoothMeasurement.java"

# interfaces
.implements Lcom/mediatek/socket/base/SocketUtils$Codable;


# static fields
.field public static final _instance:Lcom/mediatek/location/lppe/bluetooth/BluetoothMeasurement;


# instance fields
.field public category:Lcom/mediatek/location/lppe/bluetooth/BluetotthCategory;

.field public mac:[B

.field public rssi:S

.field public rssiValid:Z

.field public rtd:Lcom/mediatek/location/lppe/bluetooth/BluetoothRTD;

.field public rtdValid:Z


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 12
    new-instance v0, Lcom/mediatek/location/lppe/bluetooth/BluetoothMeasurement;

    invoke-direct {v0}, Lcom/mediatek/location/lppe/bluetooth/BluetoothMeasurement;-><init>()V

    sput-object v0, Lcom/mediatek/location/lppe/bluetooth/BluetoothMeasurement;->_instance:Lcom/mediatek/location/lppe/bluetooth/BluetoothMeasurement;

    return-void
.end method

.method public constructor <init>()V
    .locals 2

    .line 10
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    new-array v1, v0, [B

    .line 18
    iput-object v1, p0, Lcom/mediatek/location/lppe/bluetooth/BluetoothMeasurement;->mac:[B

    .line 22
    sget-object v1, Lcom/mediatek/location/lppe/bluetooth/BluetotthCategory;->unknown:Lcom/mediatek/location/lppe/bluetooth/BluetotthCategory;

    iput-object v1, p0, Lcom/mediatek/location/lppe/bluetooth/BluetoothMeasurement;->category:Lcom/mediatek/location/lppe/bluetooth/BluetotthCategory;

    .line 27
    iput-boolean v0, p0, Lcom/mediatek/location/lppe/bluetooth/BluetoothMeasurement;->rssiValid:Z

    .line 28
    iput-short v0, p0, Lcom/mediatek/location/lppe/bluetooth/BluetoothMeasurement;->rssi:S

    .line 33
    iput-boolean v0, p0, Lcom/mediatek/location/lppe/bluetooth/BluetoothMeasurement;->rtdValid:Z

    .line 34
    new-instance v0, Lcom/mediatek/location/lppe/bluetooth/BluetoothRTD;

    invoke-direct {v0}, Lcom/mediatek/location/lppe/bluetooth/BluetoothRTD;-><init>()V

    iput-object v0, p0, Lcom/mediatek/location/lppe/bluetooth/BluetoothMeasurement;->rtd:Lcom/mediatek/location/lppe/bluetooth/BluetoothRTD;

    return-void
.end method


# virtual methods
.method public decode(Lcom/mediatek/socket/base/SocketUtils$BaseBuffer;)Lcom/mediatek/location/lppe/bluetooth/BluetoothMeasurement;
    .locals 1

    .line 88
    new-instance p0, Lcom/mediatek/location/lppe/bluetooth/BluetoothMeasurement;

    invoke-direct {p0}, Lcom/mediatek/location/lppe/bluetooth/BluetoothMeasurement;-><init>()V

    .line 89
    invoke-virtual {p1}, Lcom/mediatek/socket/base/SocketUtils$BaseBuffer;->getArrayByte()[B

    move-result-object v0

    iput-object v0, p0, Lcom/mediatek/location/lppe/bluetooth/BluetoothMeasurement;->mac:[B

    .line 90
    sget-object v0, Lcom/mediatek/location/lppe/bluetooth/BluetotthCategory;->_instance:Lcom/mediatek/location/lppe/bluetooth/BluetotthCategory;

    invoke-virtual {p1, v0}, Lcom/mediatek/socket/base/SocketUtils$BaseBuffer;->getCodable(Lcom/mediatek/socket/base/SocketUtils$Codable;)Lcom/mediatek/socket/base/SocketUtils$Codable;

    move-result-object v0

    check-cast v0, Lcom/mediatek/location/lppe/bluetooth/BluetotthCategory;

    iput-object v0, p0, Lcom/mediatek/location/lppe/bluetooth/BluetoothMeasurement;->category:Lcom/mediatek/location/lppe/bluetooth/BluetotthCategory;

    .line 91
    invoke-virtual {p1}, Lcom/mediatek/socket/base/SocketUtils$BaseBuffer;->getBool()Z

    move-result v0

    iput-boolean v0, p0, Lcom/mediatek/location/lppe/bluetooth/BluetoothMeasurement;->rssiValid:Z

    .line 92
    invoke-virtual {p1}, Lcom/mediatek/socket/base/SocketUtils$BaseBuffer;->getShort()S

    move-result v0

    iput-short v0, p0, Lcom/mediatek/location/lppe/bluetooth/BluetoothMeasurement;->rssi:S

    .line 93
    invoke-virtual {p1}, Lcom/mediatek/socket/base/SocketUtils$BaseBuffer;->getBool()Z

    move-result v0

    iput-boolean v0, p0, Lcom/mediatek/location/lppe/bluetooth/BluetoothMeasurement;->rtdValid:Z

    .line 94
    sget-object v0, Lcom/mediatek/location/lppe/bluetooth/BluetoothRTD;->_instance:Lcom/mediatek/location/lppe/bluetooth/BluetoothRTD;

    invoke-virtual {p1, v0}, Lcom/mediatek/socket/base/SocketUtils$BaseBuffer;->getCodable(Lcom/mediatek/socket/base/SocketUtils$Codable;)Lcom/mediatek/socket/base/SocketUtils$Codable;

    move-result-object p1

    check-cast p1, Lcom/mediatek/location/lppe/bluetooth/BluetoothRTD;

    iput-object p1, p0, Lcom/mediatek/location/lppe/bluetooth/BluetoothMeasurement;->rtd:Lcom/mediatek/location/lppe/bluetooth/BluetoothRTD;

    return-object p0
.end method

.method public bridge synthetic decode(Lcom/mediatek/socket/base/SocketUtils$BaseBuffer;)Lcom/mediatek/socket/base/SocketUtils$Codable;
    .locals 0

    .line 10
    invoke-virtual {p0, p1}, Lcom/mediatek/location/lppe/bluetooth/BluetoothMeasurement;->decode(Lcom/mediatek/socket/base/SocketUtils$BaseBuffer;)Lcom/mediatek/location/lppe/bluetooth/BluetoothMeasurement;

    move-result-object p0

    return-object p0
.end method

.method public encode(Lcom/mediatek/socket/base/SocketUtils$BaseBuffer;)V
    .locals 3

    .line 77
    iget-object v0, p0, Lcom/mediatek/location/lppe/bluetooth/BluetoothMeasurement;->mac:[B

    const/4 v1, 0x6

    const/4 v2, 0x0

    invoke-static {v0, v1, v2}, Lcom/mediatek/socket/base/SocketUtils;->assertSize(Ljava/lang/Object;II)V

    .line 78
    iget-object v0, p0, Lcom/mediatek/location/lppe/bluetooth/BluetoothMeasurement;->mac:[B

    invoke-virtual {p1, v0}, Lcom/mediatek/socket/base/SocketUtils$BaseBuffer;->putArrayByte([B)V

    .line 79
    iget-object v0, p0, Lcom/mediatek/location/lppe/bluetooth/BluetoothMeasurement;->category:Lcom/mediatek/location/lppe/bluetooth/BluetotthCategory;

    invoke-virtual {p1, v0}, Lcom/mediatek/socket/base/SocketUtils$BaseBuffer;->putCodable(Lcom/mediatek/socket/base/SocketUtils$Codable;)V

    .line 80
    iget-boolean v0, p0, Lcom/mediatek/location/lppe/bluetooth/BluetoothMeasurement;->rssiValid:Z

    invoke-virtual {p1, v0}, Lcom/mediatek/socket/base/SocketUtils$BaseBuffer;->putBool(Z)V

    .line 81
    iget-short v0, p0, Lcom/mediatek/location/lppe/bluetooth/BluetoothMeasurement;->rssi:S

    invoke-virtual {p1, v0}, Lcom/mediatek/socket/base/SocketUtils$BaseBuffer;->putShort(S)V

    .line 82
    iget-boolean v0, p0, Lcom/mediatek/location/lppe/bluetooth/BluetoothMeasurement;->rtdValid:Z

    invoke-virtual {p1, v0}, Lcom/mediatek/socket/base/SocketUtils$BaseBuffer;->putBool(Z)V

    .line 83
    iget-object p0, p0, Lcom/mediatek/location/lppe/bluetooth/BluetoothMeasurement;->rtd:Lcom/mediatek/location/lppe/bluetooth/BluetoothRTD;

    invoke-virtual {p1, p0}, Lcom/mediatek/socket/base/SocketUtils$BaseBuffer;->putCodable(Lcom/mediatek/socket/base/SocketUtils$Codable;)V

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

    .line 43
    :cond_1
    instance-of v2, p1, Lcom/mediatek/location/lppe/bluetooth/BluetoothMeasurement;

    if-nez v2, :cond_2

    return v0

    .line 47
    :cond_2
    check-cast p1, Lcom/mediatek/location/lppe/bluetooth/BluetoothMeasurement;

    .line 48
    iget-object v2, p1, Lcom/mediatek/location/lppe/bluetooth/BluetoothMeasurement;->mac:[B

    iget-object v3, p0, Lcom/mediatek/location/lppe/bluetooth/BluetoothMeasurement;->mac:[B

    invoke-static {v2, v3}, Ljava/util/Arrays;->equals([B[B)Z

    move-result v2

    if-nez v2, :cond_3

    return v0

    .line 50
    :cond_3
    iget-object v2, p1, Lcom/mediatek/location/lppe/bluetooth/BluetoothMeasurement;->category:Lcom/mediatek/location/lppe/bluetooth/BluetotthCategory;

    iget-object v3, p0, Lcom/mediatek/location/lppe/bluetooth/BluetoothMeasurement;->category:Lcom/mediatek/location/lppe/bluetooth/BluetotthCategory;

    invoke-virtual {v2, v3}, Ljava/lang/Enum;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_4

    return v0

    .line 52
    :cond_4
    iget-boolean v2, p1, Lcom/mediatek/location/lppe/bluetooth/BluetoothMeasurement;->rssiValid:Z

    iget-boolean v3, p0, Lcom/mediatek/location/lppe/bluetooth/BluetoothMeasurement;->rssiValid:Z

    if-eq v2, v3, :cond_5

    return v0

    .line 54
    :cond_5
    iget-short v2, p1, Lcom/mediatek/location/lppe/bluetooth/BluetoothMeasurement;->rssi:S

    iget-short v3, p0, Lcom/mediatek/location/lppe/bluetooth/BluetoothMeasurement;->rssi:S

    if-eq v2, v3, :cond_6

    return v0

    .line 56
    :cond_6
    iget-boolean v2, p1, Lcom/mediatek/location/lppe/bluetooth/BluetoothMeasurement;->rtdValid:Z

    iget-boolean v3, p0, Lcom/mediatek/location/lppe/bluetooth/BluetoothMeasurement;->rtdValid:Z

    if-eq v2, v3, :cond_7

    return v0

    .line 58
    :cond_7
    iget-object p1, p1, Lcom/mediatek/location/lppe/bluetooth/BluetoothMeasurement;->rtd:Lcom/mediatek/location/lppe/bluetooth/BluetoothRTD;

    iget-object p0, p0, Lcom/mediatek/location/lppe/bluetooth/BluetoothMeasurement;->rtd:Lcom/mediatek/location/lppe/bluetooth/BluetoothRTD;

    invoke-virtual {p1, p0}, Lcom/mediatek/location/lppe/bluetooth/BluetoothRTD;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-nez p0, :cond_8

    return v0

    :cond_8
    return v1
.end method

.method public toString()Ljava/lang/String;
    .locals 4

    .line 64
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "BluetoothMeasurement "

    .line 65
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 66
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "mac=["

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/mediatek/location/lppe/bluetooth/BluetoothMeasurement;->mac:[B

    invoke-static {v2}, Ljava/util/Arrays;->toString([B)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, "] "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 67
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "category=["

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v3, p0, Lcom/mediatek/location/lppe/bluetooth/BluetoothMeasurement;->category:Lcom/mediatek/location/lppe/bluetooth/BluetotthCategory;

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 68
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "rssiValid=["

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v3, p0, Lcom/mediatek/location/lppe/bluetooth/BluetoothMeasurement;->rssiValid:Z

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 69
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "rssi=["

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-short v3, p0, Lcom/mediatek/location/lppe/bluetooth/BluetoothMeasurement;->rssi:S

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 70
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "rtdValid=["

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v3, p0, Lcom/mediatek/location/lppe/bluetooth/BluetoothMeasurement;->rtdValid:Z

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 71
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "rtd=["

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object p0, p0, Lcom/mediatek/location/lppe/bluetooth/BluetoothMeasurement;->rtd:Lcom/mediatek/location/lppe/bluetooth/BluetoothRTD;

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 72
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method
