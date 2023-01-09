.class public Lcom/mediatek/location/lppe/sensor/SensorPressureMeasurement;
.super Ljava/lang/Object;
.source "SensorPressureMeasurement.java"

# interfaces
.implements Lcom/mediatek/socket/base/SocketUtils$Codable;


# static fields
.field public static final _instance:Lcom/mediatek/location/lppe/sensor/SensorPressureMeasurement;


# instance fields
.field public adjustment:S

.field public adjustmentValid:Z

.field public sensorMeasurement:I

.field public temperature:S

.field public temperatureValid:Z

.field public uncertaintyConfidence:B

.field public uncertaintyConfidenceValid:Z

.field public uncertaintyRange:S

.field public uncertaintyRangeValid:Z


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 9
    new-instance v0, Lcom/mediatek/location/lppe/sensor/SensorPressureMeasurement;

    invoke-direct {v0}, Lcom/mediatek/location/lppe/sensor/SensorPressureMeasurement;-><init>()V

    sput-object v0, Lcom/mediatek/location/lppe/sensor/SensorPressureMeasurement;->_instance:Lcom/mediatek/location/lppe/sensor/SensorPressureMeasurement;

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    .line 7
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    .line 16
    iput v0, p0, Lcom/mediatek/location/lppe/sensor/SensorPressureMeasurement;->sensorMeasurement:I

    .line 23
    iput-boolean v0, p0, Lcom/mediatek/location/lppe/sensor/SensorPressureMeasurement;->adjustmentValid:Z

    .line 24
    iput-short v0, p0, Lcom/mediatek/location/lppe/sensor/SensorPressureMeasurement;->adjustment:S

    .line 32
    iput-boolean v0, p0, Lcom/mediatek/location/lppe/sensor/SensorPressureMeasurement;->uncertaintyRangeValid:Z

    .line 33
    iput-short v0, p0, Lcom/mediatek/location/lppe/sensor/SensorPressureMeasurement;->uncertaintyRange:S

    .line 37
    iput-boolean v0, p0, Lcom/mediatek/location/lppe/sensor/SensorPressureMeasurement;->uncertaintyConfidenceValid:Z

    .line 38
    iput-byte v0, p0, Lcom/mediatek/location/lppe/sensor/SensorPressureMeasurement;->uncertaintyConfidence:B

    .line 46
    iput-boolean v0, p0, Lcom/mediatek/location/lppe/sensor/SensorPressureMeasurement;->temperatureValid:Z

    .line 47
    iput-short v0, p0, Lcom/mediatek/location/lppe/sensor/SensorPressureMeasurement;->temperature:S

    return-void
.end method


# virtual methods
.method public decode(Lcom/mediatek/socket/base/SocketUtils$BaseBuffer;)Lcom/mediatek/location/lppe/sensor/SensorPressureMeasurement;
    .locals 1

    .line 112
    new-instance p0, Lcom/mediatek/location/lppe/sensor/SensorPressureMeasurement;

    invoke-direct {p0}, Lcom/mediatek/location/lppe/sensor/SensorPressureMeasurement;-><init>()V

    .line 113
    invoke-virtual {p1}, Lcom/mediatek/socket/base/SocketUtils$BaseBuffer;->getInt()I

    move-result v0

    iput v0, p0, Lcom/mediatek/location/lppe/sensor/SensorPressureMeasurement;->sensorMeasurement:I

    .line 114
    invoke-virtual {p1}, Lcom/mediatek/socket/base/SocketUtils$BaseBuffer;->getBool()Z

    move-result v0

    iput-boolean v0, p0, Lcom/mediatek/location/lppe/sensor/SensorPressureMeasurement;->adjustmentValid:Z

    .line 115
    invoke-virtual {p1}, Lcom/mediatek/socket/base/SocketUtils$BaseBuffer;->getShort()S

    move-result v0

    iput-short v0, p0, Lcom/mediatek/location/lppe/sensor/SensorPressureMeasurement;->adjustment:S

    .line 116
    invoke-virtual {p1}, Lcom/mediatek/socket/base/SocketUtils$BaseBuffer;->getBool()Z

    move-result v0

    iput-boolean v0, p0, Lcom/mediatek/location/lppe/sensor/SensorPressureMeasurement;->uncertaintyRangeValid:Z

    .line 117
    invoke-virtual {p1}, Lcom/mediatek/socket/base/SocketUtils$BaseBuffer;->getShort()S

    move-result v0

    iput-short v0, p0, Lcom/mediatek/location/lppe/sensor/SensorPressureMeasurement;->uncertaintyRange:S

    .line 118
    invoke-virtual {p1}, Lcom/mediatek/socket/base/SocketUtils$BaseBuffer;->getBool()Z

    move-result v0

    iput-boolean v0, p0, Lcom/mediatek/location/lppe/sensor/SensorPressureMeasurement;->uncertaintyConfidenceValid:Z

    .line 119
    invoke-virtual {p1}, Lcom/mediatek/socket/base/SocketUtils$BaseBuffer;->getByte()B

    move-result v0

    iput-byte v0, p0, Lcom/mediatek/location/lppe/sensor/SensorPressureMeasurement;->uncertaintyConfidence:B

    .line 120
    invoke-virtual {p1}, Lcom/mediatek/socket/base/SocketUtils$BaseBuffer;->getBool()Z

    move-result v0

    iput-boolean v0, p0, Lcom/mediatek/location/lppe/sensor/SensorPressureMeasurement;->temperatureValid:Z

    .line 121
    invoke-virtual {p1}, Lcom/mediatek/socket/base/SocketUtils$BaseBuffer;->getShort()S

    move-result p1

    iput-short p1, p0, Lcom/mediatek/location/lppe/sensor/SensorPressureMeasurement;->temperature:S

    return-object p0
.end method

.method public bridge synthetic decode(Lcom/mediatek/socket/base/SocketUtils$BaseBuffer;)Lcom/mediatek/socket/base/SocketUtils$Codable;
    .locals 0

    .line 7
    invoke-virtual {p0, p1}, Lcom/mediatek/location/lppe/sensor/SensorPressureMeasurement;->decode(Lcom/mediatek/socket/base/SocketUtils$BaseBuffer;)Lcom/mediatek/location/lppe/sensor/SensorPressureMeasurement;

    move-result-object p0

    return-object p0
.end method

.method public encode(Lcom/mediatek/socket/base/SocketUtils$BaseBuffer;)V
    .locals 1

    .line 99
    iget v0, p0, Lcom/mediatek/location/lppe/sensor/SensorPressureMeasurement;->sensorMeasurement:I

    invoke-virtual {p1, v0}, Lcom/mediatek/socket/base/SocketUtils$BaseBuffer;->putInt(I)V

    .line 100
    iget-boolean v0, p0, Lcom/mediatek/location/lppe/sensor/SensorPressureMeasurement;->adjustmentValid:Z

    invoke-virtual {p1, v0}, Lcom/mediatek/socket/base/SocketUtils$BaseBuffer;->putBool(Z)V

    .line 101
    iget-short v0, p0, Lcom/mediatek/location/lppe/sensor/SensorPressureMeasurement;->adjustment:S

    invoke-virtual {p1, v0}, Lcom/mediatek/socket/base/SocketUtils$BaseBuffer;->putShort(S)V

    .line 102
    iget-boolean v0, p0, Lcom/mediatek/location/lppe/sensor/SensorPressureMeasurement;->uncertaintyRangeValid:Z

    invoke-virtual {p1, v0}, Lcom/mediatek/socket/base/SocketUtils$BaseBuffer;->putBool(Z)V

    .line 103
    iget-short v0, p0, Lcom/mediatek/location/lppe/sensor/SensorPressureMeasurement;->uncertaintyRange:S

    invoke-virtual {p1, v0}, Lcom/mediatek/socket/base/SocketUtils$BaseBuffer;->putShort(S)V

    .line 104
    iget-boolean v0, p0, Lcom/mediatek/location/lppe/sensor/SensorPressureMeasurement;->uncertaintyConfidenceValid:Z

    invoke-virtual {p1, v0}, Lcom/mediatek/socket/base/SocketUtils$BaseBuffer;->putBool(Z)V

    .line 105
    iget-byte v0, p0, Lcom/mediatek/location/lppe/sensor/SensorPressureMeasurement;->uncertaintyConfidence:B

    invoke-virtual {p1, v0}, Lcom/mediatek/socket/base/SocketUtils$BaseBuffer;->putByte(B)V

    .line 106
    iget-boolean v0, p0, Lcom/mediatek/location/lppe/sensor/SensorPressureMeasurement;->temperatureValid:Z

    invoke-virtual {p1, v0}, Lcom/mediatek/socket/base/SocketUtils$BaseBuffer;->putBool(Z)V

    .line 107
    iget-short p0, p0, Lcom/mediatek/location/lppe/sensor/SensorPressureMeasurement;->temperature:S

    invoke-virtual {p1, p0}, Lcom/mediatek/socket/base/SocketUtils$BaseBuffer;->putShort(S)V

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

    .line 56
    :cond_1
    instance-of v2, p1, Lcom/mediatek/location/lppe/sensor/SensorPressureMeasurement;

    if-nez v2, :cond_2

    return v0

    .line 60
    :cond_2
    check-cast p1, Lcom/mediatek/location/lppe/sensor/SensorPressureMeasurement;

    .line 61
    iget v2, p1, Lcom/mediatek/location/lppe/sensor/SensorPressureMeasurement;->sensorMeasurement:I

    iget v3, p0, Lcom/mediatek/location/lppe/sensor/SensorPressureMeasurement;->sensorMeasurement:I

    if-eq v2, v3, :cond_3

    return v0

    .line 63
    :cond_3
    iget-boolean v2, p1, Lcom/mediatek/location/lppe/sensor/SensorPressureMeasurement;->adjustmentValid:Z

    iget-boolean v3, p0, Lcom/mediatek/location/lppe/sensor/SensorPressureMeasurement;->adjustmentValid:Z

    if-eq v2, v3, :cond_4

    return v0

    .line 65
    :cond_4
    iget-short v2, p1, Lcom/mediatek/location/lppe/sensor/SensorPressureMeasurement;->adjustment:S

    iget-short v3, p0, Lcom/mediatek/location/lppe/sensor/SensorPressureMeasurement;->adjustment:S

    if-eq v2, v3, :cond_5

    return v0

    .line 67
    :cond_5
    iget-boolean v2, p1, Lcom/mediatek/location/lppe/sensor/SensorPressureMeasurement;->uncertaintyRangeValid:Z

    iget-boolean v3, p0, Lcom/mediatek/location/lppe/sensor/SensorPressureMeasurement;->uncertaintyRangeValid:Z

    if-eq v2, v3, :cond_6

    return v0

    .line 69
    :cond_6
    iget-short v2, p1, Lcom/mediatek/location/lppe/sensor/SensorPressureMeasurement;->uncertaintyRange:S

    iget-short v3, p0, Lcom/mediatek/location/lppe/sensor/SensorPressureMeasurement;->uncertaintyRange:S

    if-eq v2, v3, :cond_7

    return v0

    .line 71
    :cond_7
    iget-boolean v2, p1, Lcom/mediatek/location/lppe/sensor/SensorPressureMeasurement;->uncertaintyConfidenceValid:Z

    iget-boolean v3, p0, Lcom/mediatek/location/lppe/sensor/SensorPressureMeasurement;->uncertaintyConfidenceValid:Z

    if-eq v2, v3, :cond_8

    return v0

    .line 73
    :cond_8
    iget-byte v2, p1, Lcom/mediatek/location/lppe/sensor/SensorPressureMeasurement;->uncertaintyConfidence:B

    iget-byte v3, p0, Lcom/mediatek/location/lppe/sensor/SensorPressureMeasurement;->uncertaintyConfidence:B

    if-eq v2, v3, :cond_9

    return v0

    .line 75
    :cond_9
    iget-boolean v2, p1, Lcom/mediatek/location/lppe/sensor/SensorPressureMeasurement;->temperatureValid:Z

    iget-boolean v3, p0, Lcom/mediatek/location/lppe/sensor/SensorPressureMeasurement;->temperatureValid:Z

    if-eq v2, v3, :cond_a

    return v0

    .line 77
    :cond_a
    iget-short p1, p1, Lcom/mediatek/location/lppe/sensor/SensorPressureMeasurement;->temperature:S

    iget-short p0, p0, Lcom/mediatek/location/lppe/sensor/SensorPressureMeasurement;->temperature:S

    if-eq p1, p0, :cond_b

    return v0

    :cond_b
    return v1
.end method

.method public toString()Ljava/lang/String;
    .locals 4

    .line 83
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "SensorPressureMeasurement "

    .line 84
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 85
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "sensorMeasurement=["

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v2, p0, Lcom/mediatek/location/lppe/sensor/SensorPressureMeasurement;->sensorMeasurement:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, "] "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 86
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "adjustmentValid=["

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v3, p0, Lcom/mediatek/location/lppe/sensor/SensorPressureMeasurement;->adjustmentValid:Z

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 87
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "adjustment=["

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-short v3, p0, Lcom/mediatek/location/lppe/sensor/SensorPressureMeasurement;->adjustment:S

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 88
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "uncertaintyRangeValid=["

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v3, p0, Lcom/mediatek/location/lppe/sensor/SensorPressureMeasurement;->uncertaintyRangeValid:Z

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 89
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "uncertaintyRange=["

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-short v3, p0, Lcom/mediatek/location/lppe/sensor/SensorPressureMeasurement;->uncertaintyRange:S

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 90
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "uncertaintyConfidenceValid=["

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v3, p0, Lcom/mediatek/location/lppe/sensor/SensorPressureMeasurement;->uncertaintyConfidenceValid:Z

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 91
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "uncertaintyConfidence=["

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-byte v3, p0, Lcom/mediatek/location/lppe/sensor/SensorPressureMeasurement;->uncertaintyConfidence:B

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 92
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "temperatureValid=["

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v3, p0, Lcom/mediatek/location/lppe/sensor/SensorPressureMeasurement;->temperatureValid:Z

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 93
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "temperature=["

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-short p0, p0, Lcom/mediatek/location/lppe/sensor/SensorPressureMeasurement;->temperature:S

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 94
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method
