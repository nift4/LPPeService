.class public Lcom/mediatek/location/lppe/sensor/SensorMeasurementRequest;
.super Ljava/lang/Object;
.source "SensorMeasurementRequest.java"

# interfaces
.implements Lcom/mediatek/socket/base/SocketUtils$Codable;


# static fields
.field public static final _instance:Lcom/mediatek/location/lppe/sensor/SensorMeasurementRequest;


# instance fields
.field public atmosphericPressureReq:Z

.field public motionStateReq:Z

.field public secondaryMotionStateRequest:Z


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 9
    new-instance v0, Lcom/mediatek/location/lppe/sensor/SensorMeasurementRequest;

    invoke-direct {v0}, Lcom/mediatek/location/lppe/sensor/SensorMeasurementRequest;-><init>()V

    sput-object v0, Lcom/mediatek/location/lppe/sensor/SensorMeasurementRequest;->_instance:Lcom/mediatek/location/lppe/sensor/SensorMeasurementRequest;

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    .line 7
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    .line 14
    iput-boolean v0, p0, Lcom/mediatek/location/lppe/sensor/SensorMeasurementRequest;->motionStateReq:Z

    .line 18
    iput-boolean v0, p0, Lcom/mediatek/location/lppe/sensor/SensorMeasurementRequest;->secondaryMotionStateRequest:Z

    .line 22
    iput-boolean v0, p0, Lcom/mediatek/location/lppe/sensor/SensorMeasurementRequest;->atmosphericPressureReq:Z

    return-void
.end method


# virtual methods
.method public decode(Lcom/mediatek/socket/base/SocketUtils$BaseBuffer;)Lcom/mediatek/location/lppe/sensor/SensorMeasurementRequest;
    .locals 1

    .line 63
    new-instance p0, Lcom/mediatek/location/lppe/sensor/SensorMeasurementRequest;

    invoke-direct {p0}, Lcom/mediatek/location/lppe/sensor/SensorMeasurementRequest;-><init>()V

    .line 64
    invoke-virtual {p1}, Lcom/mediatek/socket/base/SocketUtils$BaseBuffer;->getBool()Z

    move-result v0

    iput-boolean v0, p0, Lcom/mediatek/location/lppe/sensor/SensorMeasurementRequest;->motionStateReq:Z

    .line 65
    invoke-virtual {p1}, Lcom/mediatek/socket/base/SocketUtils$BaseBuffer;->getBool()Z

    move-result v0

    iput-boolean v0, p0, Lcom/mediatek/location/lppe/sensor/SensorMeasurementRequest;->secondaryMotionStateRequest:Z

    .line 66
    invoke-virtual {p1}, Lcom/mediatek/socket/base/SocketUtils$BaseBuffer;->getBool()Z

    move-result p1

    iput-boolean p1, p0, Lcom/mediatek/location/lppe/sensor/SensorMeasurementRequest;->atmosphericPressureReq:Z

    return-object p0
.end method

.method public bridge synthetic decode(Lcom/mediatek/socket/base/SocketUtils$BaseBuffer;)Lcom/mediatek/socket/base/SocketUtils$Codable;
    .locals 0

    .line 7
    invoke-virtual {p0, p1}, Lcom/mediatek/location/lppe/sensor/SensorMeasurementRequest;->decode(Lcom/mediatek/socket/base/SocketUtils$BaseBuffer;)Lcom/mediatek/location/lppe/sensor/SensorMeasurementRequest;

    move-result-object p0

    return-object p0
.end method

.method public encode(Lcom/mediatek/socket/base/SocketUtils$BaseBuffer;)V
    .locals 1

    .line 56
    iget-boolean v0, p0, Lcom/mediatek/location/lppe/sensor/SensorMeasurementRequest;->motionStateReq:Z

    invoke-virtual {p1, v0}, Lcom/mediatek/socket/base/SocketUtils$BaseBuffer;->putBool(Z)V

    .line 57
    iget-boolean v0, p0, Lcom/mediatek/location/lppe/sensor/SensorMeasurementRequest;->secondaryMotionStateRequest:Z

    invoke-virtual {p1, v0}, Lcom/mediatek/socket/base/SocketUtils$BaseBuffer;->putBool(Z)V

    .line 58
    iget-boolean p0, p0, Lcom/mediatek/location/lppe/sensor/SensorMeasurementRequest;->atmosphericPressureReq:Z

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

    .line 31
    :cond_1
    instance-of v2, p1, Lcom/mediatek/location/lppe/sensor/SensorMeasurementRequest;

    if-nez v2, :cond_2

    return v0

    .line 35
    :cond_2
    check-cast p1, Lcom/mediatek/location/lppe/sensor/SensorMeasurementRequest;

    .line 36
    iget-boolean v2, p1, Lcom/mediatek/location/lppe/sensor/SensorMeasurementRequest;->motionStateReq:Z

    iget-boolean v3, p0, Lcom/mediatek/location/lppe/sensor/SensorMeasurementRequest;->motionStateReq:Z

    if-eq v2, v3, :cond_3

    return v0

    .line 38
    :cond_3
    iget-boolean v2, p1, Lcom/mediatek/location/lppe/sensor/SensorMeasurementRequest;->secondaryMotionStateRequest:Z

    iget-boolean v3, p0, Lcom/mediatek/location/lppe/sensor/SensorMeasurementRequest;->secondaryMotionStateRequest:Z

    if-eq v2, v3, :cond_4

    return v0

    .line 40
    :cond_4
    iget-boolean p1, p1, Lcom/mediatek/location/lppe/sensor/SensorMeasurementRequest;->atmosphericPressureReq:Z

    iget-boolean p0, p0, Lcom/mediatek/location/lppe/sensor/SensorMeasurementRequest;->atmosphericPressureReq:Z

    if-eq p1, p0, :cond_5

    return v0

    :cond_5
    return v1
.end method

.method public toString()Ljava/lang/String;
    .locals 4

    .line 46
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "SensorMeasurementRequest "

    .line 47
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 48
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "motionStateReq=["

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v2, p0, Lcom/mediatek/location/lppe/sensor/SensorMeasurementRequest;->motionStateReq:Z

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v2, "] "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 49
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "secondaryMotionStateRequest=["

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v3, p0, Lcom/mediatek/location/lppe/sensor/SensorMeasurementRequest;->secondaryMotionStateRequest:Z

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 50
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "atmosphericPressureReq=["

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean p0, p0, Lcom/mediatek/location/lppe/sensor/SensorMeasurementRequest;->atmosphericPressureReq:Z

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 51
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method
