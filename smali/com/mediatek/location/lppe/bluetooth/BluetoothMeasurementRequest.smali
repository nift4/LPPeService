.class public Lcom/mediatek/location/lppe/bluetooth/BluetoothMeasurementRequest;
.super Ljava/lang/Object;
.source "BluetoothMeasurementRequest.java"

# interfaces
.implements Lcom/mediatek/socket/base/SocketUtils$Codable;


# static fields
.field public static final _instance:Lcom/mediatek/location/lppe/bluetooth/BluetoothMeasurementRequest;


# instance fields
.field public btMultipleMeasurement:Lcom/mediatek/location/lppe/bluetooth/BluetoothMultipleMeasurement;

.field public btRtd:Z

.field public btleMultipleMeasurement:Lcom/mediatek/location/lppe/bluetooth/BluetoothMultipleMeasurement;

.field public btleRtd:Z


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 12
    new-instance v0, Lcom/mediatek/location/lppe/bluetooth/BluetoothMeasurementRequest;

    invoke-direct {v0}, Lcom/mediatek/location/lppe/bluetooth/BluetoothMeasurementRequest;-><init>()V

    sput-object v0, Lcom/mediatek/location/lppe/bluetooth/BluetoothMeasurementRequest;->_instance:Lcom/mediatek/location/lppe/bluetooth/BluetoothMeasurementRequest;

    return-void
.end method

.method public constructor <init>()V
    .locals 2

    .line 10
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 18
    sget-object v0, Lcom/mediatek/location/lppe/bluetooth/BluetoothMultipleMeasurement;->forbidden:Lcom/mediatek/location/lppe/bluetooth/BluetoothMultipleMeasurement;

    iput-object v0, p0, Lcom/mediatek/location/lppe/bluetooth/BluetoothMeasurementRequest;->btMultipleMeasurement:Lcom/mediatek/location/lppe/bluetooth/BluetoothMultipleMeasurement;

    const/4 v1, 0x0

    .line 22
    iput-boolean v1, p0, Lcom/mediatek/location/lppe/bluetooth/BluetoothMeasurementRequest;->btRtd:Z

    .line 27
    iput-object v0, p0, Lcom/mediatek/location/lppe/bluetooth/BluetoothMeasurementRequest;->btleMultipleMeasurement:Lcom/mediatek/location/lppe/bluetooth/BluetoothMultipleMeasurement;

    .line 31
    iput-boolean v1, p0, Lcom/mediatek/location/lppe/bluetooth/BluetoothMeasurementRequest;->btleRtd:Z

    return-void
.end method


# virtual methods
.method public decode(Lcom/mediatek/socket/base/SocketUtils$BaseBuffer;)Lcom/mediatek/location/lppe/bluetooth/BluetoothMeasurementRequest;
    .locals 2

    .line 76
    new-instance p0, Lcom/mediatek/location/lppe/bluetooth/BluetoothMeasurementRequest;

    invoke-direct {p0}, Lcom/mediatek/location/lppe/bluetooth/BluetoothMeasurementRequest;-><init>()V

    .line 77
    sget-object v0, Lcom/mediatek/location/lppe/bluetooth/BluetoothMultipleMeasurement;->_instance:Lcom/mediatek/location/lppe/bluetooth/BluetoothMultipleMeasurement;

    invoke-virtual {p1, v0}, Lcom/mediatek/socket/base/SocketUtils$BaseBuffer;->getCodable(Lcom/mediatek/socket/base/SocketUtils$Codable;)Lcom/mediatek/socket/base/SocketUtils$Codable;

    move-result-object v1

    check-cast v1, Lcom/mediatek/location/lppe/bluetooth/BluetoothMultipleMeasurement;

    iput-object v1, p0, Lcom/mediatek/location/lppe/bluetooth/BluetoothMeasurementRequest;->btMultipleMeasurement:Lcom/mediatek/location/lppe/bluetooth/BluetoothMultipleMeasurement;

    .line 78
    invoke-virtual {p1}, Lcom/mediatek/socket/base/SocketUtils$BaseBuffer;->getBool()Z

    move-result v1

    iput-boolean v1, p0, Lcom/mediatek/location/lppe/bluetooth/BluetoothMeasurementRequest;->btRtd:Z

    .line 79
    invoke-virtual {p1, v0}, Lcom/mediatek/socket/base/SocketUtils$BaseBuffer;->getCodable(Lcom/mediatek/socket/base/SocketUtils$Codable;)Lcom/mediatek/socket/base/SocketUtils$Codable;

    move-result-object v0

    check-cast v0, Lcom/mediatek/location/lppe/bluetooth/BluetoothMultipleMeasurement;

    iput-object v0, p0, Lcom/mediatek/location/lppe/bluetooth/BluetoothMeasurementRequest;->btleMultipleMeasurement:Lcom/mediatek/location/lppe/bluetooth/BluetoothMultipleMeasurement;

    .line 80
    invoke-virtual {p1}, Lcom/mediatek/socket/base/SocketUtils$BaseBuffer;->getBool()Z

    move-result p1

    iput-boolean p1, p0, Lcom/mediatek/location/lppe/bluetooth/BluetoothMeasurementRequest;->btleRtd:Z

    return-object p0
.end method

.method public bridge synthetic decode(Lcom/mediatek/socket/base/SocketUtils$BaseBuffer;)Lcom/mediatek/socket/base/SocketUtils$Codable;
    .locals 0

    .line 10
    invoke-virtual {p0, p1}, Lcom/mediatek/location/lppe/bluetooth/BluetoothMeasurementRequest;->decode(Lcom/mediatek/socket/base/SocketUtils$BaseBuffer;)Lcom/mediatek/location/lppe/bluetooth/BluetoothMeasurementRequest;

    move-result-object p0

    return-object p0
.end method

.method public encode(Lcom/mediatek/socket/base/SocketUtils$BaseBuffer;)V
    .locals 1

    .line 68
    iget-object v0, p0, Lcom/mediatek/location/lppe/bluetooth/BluetoothMeasurementRequest;->btMultipleMeasurement:Lcom/mediatek/location/lppe/bluetooth/BluetoothMultipleMeasurement;

    invoke-virtual {p1, v0}, Lcom/mediatek/socket/base/SocketUtils$BaseBuffer;->putCodable(Lcom/mediatek/socket/base/SocketUtils$Codable;)V

    .line 69
    iget-boolean v0, p0, Lcom/mediatek/location/lppe/bluetooth/BluetoothMeasurementRequest;->btRtd:Z

    invoke-virtual {p1, v0}, Lcom/mediatek/socket/base/SocketUtils$BaseBuffer;->putBool(Z)V

    .line 70
    iget-object v0, p0, Lcom/mediatek/location/lppe/bluetooth/BluetoothMeasurementRequest;->btleMultipleMeasurement:Lcom/mediatek/location/lppe/bluetooth/BluetoothMultipleMeasurement;

    invoke-virtual {p1, v0}, Lcom/mediatek/socket/base/SocketUtils$BaseBuffer;->putCodable(Lcom/mediatek/socket/base/SocketUtils$Codable;)V

    .line 71
    iget-boolean p0, p0, Lcom/mediatek/location/lppe/bluetooth/BluetoothMeasurementRequest;->btleRtd:Z

    invoke-virtual {p1, p0}, Lcom/mediatek/socket/base/SocketUtils$BaseBuffer;->putBool(Z)V

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

    .line 40
    :cond_1
    instance-of v2, p1, Lcom/mediatek/location/lppe/bluetooth/BluetoothMeasurementRequest;

    if-nez v2, :cond_2

    return v0

    .line 44
    :cond_2
    check-cast p1, Lcom/mediatek/location/lppe/bluetooth/BluetoothMeasurementRequest;

    .line 45
    iget-object v2, p1, Lcom/mediatek/location/lppe/bluetooth/BluetoothMeasurementRequest;->btMultipleMeasurement:Lcom/mediatek/location/lppe/bluetooth/BluetoothMultipleMeasurement;

    iget-object v3, p0, Lcom/mediatek/location/lppe/bluetooth/BluetoothMeasurementRequest;->btMultipleMeasurement:Lcom/mediatek/location/lppe/bluetooth/BluetoothMultipleMeasurement;

    invoke-virtual {v2, v3}, Ljava/lang/Enum;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_3

    return v0

    .line 47
    :cond_3
    iget-boolean v2, p1, Lcom/mediatek/location/lppe/bluetooth/BluetoothMeasurementRequest;->btRtd:Z

    iget-boolean v3, p0, Lcom/mediatek/location/lppe/bluetooth/BluetoothMeasurementRequest;->btRtd:Z

    if-eq v2, v3, :cond_4

    return v0

    .line 49
    :cond_4
    iget-object v2, p1, Lcom/mediatek/location/lppe/bluetooth/BluetoothMeasurementRequest;->btleMultipleMeasurement:Lcom/mediatek/location/lppe/bluetooth/BluetoothMultipleMeasurement;

    iget-object v3, p0, Lcom/mediatek/location/lppe/bluetooth/BluetoothMeasurementRequest;->btleMultipleMeasurement:Lcom/mediatek/location/lppe/bluetooth/BluetoothMultipleMeasurement;

    invoke-virtual {v2, v3}, Ljava/lang/Enum;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_5

    return v0

    .line 51
    :cond_5
    iget-boolean p1, p1, Lcom/mediatek/location/lppe/bluetooth/BluetoothMeasurementRequest;->btleRtd:Z

    iget-boolean p0, p0, Lcom/mediatek/location/lppe/bluetooth/BluetoothMeasurementRequest;->btleRtd:Z

    if-eq p1, p0, :cond_6

    return v0

    :cond_6
    return v1
.end method

.method public toString()Ljava/lang/String;
    .locals 4

    .line 57
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "BluetoothMeasurementRequest "

    .line 58
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 59
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "btMultipleMeasurement=["

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/mediatek/location/lppe/bluetooth/BluetoothMeasurementRequest;->btMultipleMeasurement:Lcom/mediatek/location/lppe/bluetooth/BluetoothMultipleMeasurement;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v2, "] "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 60
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "btRtd=["

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v3, p0, Lcom/mediatek/location/lppe/bluetooth/BluetoothMeasurementRequest;->btRtd:Z

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 61
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "btleMultipleMeasurement=["

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v3, p0, Lcom/mediatek/location/lppe/bluetooth/BluetoothMeasurementRequest;->btleMultipleMeasurement:Lcom/mediatek/location/lppe/bluetooth/BluetoothMultipleMeasurement;

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 62
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "btleRtd=["

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean p0, p0, Lcom/mediatek/location/lppe/bluetooth/BluetoothMeasurementRequest;->btleRtd:Z

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 63
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method
