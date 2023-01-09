.class public Lcom/mediatek/location/lppe/sensor/SensorProvideCapabilities;
.super Ljava/lang/Object;
.source "SensorProvideCapabilities.java"

# interfaces
.implements Lcom/mediatek/socket/base/SocketUtils$Codable;


# static fields
.field public static final _instance:Lcom/mediatek/location/lppe/sensor/SensorProvideCapabilities;


# instance fields
.field public atmosphericPressureADSupport:Z

.field public atmosphericPressureSupport:Z

.field public motionStateSupport:Z

.field public secondarySupport:Z


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 9
    new-instance v0, Lcom/mediatek/location/lppe/sensor/SensorProvideCapabilities;

    invoke-direct {v0}, Lcom/mediatek/location/lppe/sensor/SensorProvideCapabilities;-><init>()V

    sput-object v0, Lcom/mediatek/location/lppe/sensor/SensorProvideCapabilities;->_instance:Lcom/mediatek/location/lppe/sensor/SensorProvideCapabilities;

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    .line 7
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    .line 14
    iput-boolean v0, p0, Lcom/mediatek/location/lppe/sensor/SensorProvideCapabilities;->motionStateSupport:Z

    .line 18
    iput-boolean v0, p0, Lcom/mediatek/location/lppe/sensor/SensorProvideCapabilities;->secondarySupport:Z

    .line 22
    iput-boolean v0, p0, Lcom/mediatek/location/lppe/sensor/SensorProvideCapabilities;->atmosphericPressureADSupport:Z

    .line 26
    iput-boolean v0, p0, Lcom/mediatek/location/lppe/sensor/SensorProvideCapabilities;->atmosphericPressureSupport:Z

    return-void
.end method


# virtual methods
.method public decode(Lcom/mediatek/socket/base/SocketUtils$BaseBuffer;)Lcom/mediatek/location/lppe/sensor/SensorProvideCapabilities;
    .locals 1

    .line 71
    new-instance p0, Lcom/mediatek/location/lppe/sensor/SensorProvideCapabilities;

    invoke-direct {p0}, Lcom/mediatek/location/lppe/sensor/SensorProvideCapabilities;-><init>()V

    .line 72
    invoke-virtual {p1}, Lcom/mediatek/socket/base/SocketUtils$BaseBuffer;->getBool()Z

    move-result v0

    iput-boolean v0, p0, Lcom/mediatek/location/lppe/sensor/SensorProvideCapabilities;->motionStateSupport:Z

    .line 73
    invoke-virtual {p1}, Lcom/mediatek/socket/base/SocketUtils$BaseBuffer;->getBool()Z

    move-result v0

    iput-boolean v0, p0, Lcom/mediatek/location/lppe/sensor/SensorProvideCapabilities;->secondarySupport:Z

    .line 74
    invoke-virtual {p1}, Lcom/mediatek/socket/base/SocketUtils$BaseBuffer;->getBool()Z

    move-result v0

    iput-boolean v0, p0, Lcom/mediatek/location/lppe/sensor/SensorProvideCapabilities;->atmosphericPressureADSupport:Z

    .line 75
    invoke-virtual {p1}, Lcom/mediatek/socket/base/SocketUtils$BaseBuffer;->getBool()Z

    move-result p1

    iput-boolean p1, p0, Lcom/mediatek/location/lppe/sensor/SensorProvideCapabilities;->atmosphericPressureSupport:Z

    return-object p0
.end method

.method public bridge synthetic decode(Lcom/mediatek/socket/base/SocketUtils$BaseBuffer;)Lcom/mediatek/socket/base/SocketUtils$Codable;
    .locals 0

    .line 7
    invoke-virtual {p0, p1}, Lcom/mediatek/location/lppe/sensor/SensorProvideCapabilities;->decode(Lcom/mediatek/socket/base/SocketUtils$BaseBuffer;)Lcom/mediatek/location/lppe/sensor/SensorProvideCapabilities;

    move-result-object p0

    return-object p0
.end method

.method public encode(Lcom/mediatek/socket/base/SocketUtils$BaseBuffer;)V
    .locals 1

    .line 63
    iget-boolean v0, p0, Lcom/mediatek/location/lppe/sensor/SensorProvideCapabilities;->motionStateSupport:Z

    invoke-virtual {p1, v0}, Lcom/mediatek/socket/base/SocketUtils$BaseBuffer;->putBool(Z)V

    .line 64
    iget-boolean v0, p0, Lcom/mediatek/location/lppe/sensor/SensorProvideCapabilities;->secondarySupport:Z

    invoke-virtual {p1, v0}, Lcom/mediatek/socket/base/SocketUtils$BaseBuffer;->putBool(Z)V

    .line 65
    iget-boolean v0, p0, Lcom/mediatek/location/lppe/sensor/SensorProvideCapabilities;->atmosphericPressureADSupport:Z

    invoke-virtual {p1, v0}, Lcom/mediatek/socket/base/SocketUtils$BaseBuffer;->putBool(Z)V

    .line 66
    iget-boolean p0, p0, Lcom/mediatek/location/lppe/sensor/SensorProvideCapabilities;->atmosphericPressureSupport:Z

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

    .line 35
    :cond_1
    instance-of v2, p1, Lcom/mediatek/location/lppe/sensor/SensorProvideCapabilities;

    if-nez v2, :cond_2

    return v0

    .line 39
    :cond_2
    check-cast p1, Lcom/mediatek/location/lppe/sensor/SensorProvideCapabilities;

    .line 40
    iget-boolean v2, p1, Lcom/mediatek/location/lppe/sensor/SensorProvideCapabilities;->motionStateSupport:Z

    iget-boolean v3, p0, Lcom/mediatek/location/lppe/sensor/SensorProvideCapabilities;->motionStateSupport:Z

    if-eq v2, v3, :cond_3

    return v0

    .line 42
    :cond_3
    iget-boolean v2, p1, Lcom/mediatek/location/lppe/sensor/SensorProvideCapabilities;->secondarySupport:Z

    iget-boolean v3, p0, Lcom/mediatek/location/lppe/sensor/SensorProvideCapabilities;->secondarySupport:Z

    if-eq v2, v3, :cond_4

    return v0

    .line 44
    :cond_4
    iget-boolean v2, p1, Lcom/mediatek/location/lppe/sensor/SensorProvideCapabilities;->atmosphericPressureADSupport:Z

    iget-boolean v3, p0, Lcom/mediatek/location/lppe/sensor/SensorProvideCapabilities;->atmosphericPressureADSupport:Z

    if-eq v2, v3, :cond_5

    return v0

    .line 46
    :cond_5
    iget-boolean p1, p1, Lcom/mediatek/location/lppe/sensor/SensorProvideCapabilities;->atmosphericPressureSupport:Z

    iget-boolean p0, p0, Lcom/mediatek/location/lppe/sensor/SensorProvideCapabilities;->atmosphericPressureSupport:Z

    if-eq p1, p0, :cond_6

    return v0

    :cond_6
    return v1
.end method

.method public toString()Ljava/lang/String;
    .locals 4

    .line 52
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "SensorProvideCapabilities "

    .line 53
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 54
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "motionStateSupport=["

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v2, p0, Lcom/mediatek/location/lppe/sensor/SensorProvideCapabilities;->motionStateSupport:Z

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v2, "] "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 55
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "secondarySupport=["

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v3, p0, Lcom/mediatek/location/lppe/sensor/SensorProvideCapabilities;->secondarySupport:Z

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 56
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "atmosphericPressureADSupport=["

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v3, p0, Lcom/mediatek/location/lppe/sensor/SensorProvideCapabilities;->atmosphericPressureADSupport:Z

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 57
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "atmosphericPressureSupport=["

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean p0, p0, Lcom/mediatek/location/lppe/sensor/SensorProvideCapabilities;->atmosphericPressureSupport:Z

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 58
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method
