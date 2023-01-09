.class public Lcom/mediatek/location/lppe/bluetooth/BluetoothProvideCapabilities;
.super Ljava/lang/Object;
.source "BluetoothProvideCapabilities.java"

# interfaces
.implements Lcom/mediatek/socket/base/SocketUtils$Codable;


# static fields
.field public static final _instance:Lcom/mediatek/location/lppe/bluetooth/BluetoothProvideCapabilities;


# instance fields
.field public btAntennaPattern:Z

.field public btGroup:Z

.field public btRssi:Z

.field public btRtd:Z

.field public btSupported:Z

.field public btleAntennaPattern:Z

.field public btleGroup:Z

.field public btleRssi:Z

.field public btleRtd:Z

.field public btleSupported:Z


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 13
    new-instance v0, Lcom/mediatek/location/lppe/bluetooth/BluetoothProvideCapabilities;

    invoke-direct {v0}, Lcom/mediatek/location/lppe/bluetooth/BluetoothProvideCapabilities;-><init>()V

    sput-object v0, Lcom/mediatek/location/lppe/bluetooth/BluetoothProvideCapabilities;->_instance:Lcom/mediatek/location/lppe/bluetooth/BluetoothProvideCapabilities;

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    .line 11
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    .line 18
    iput-boolean v0, p0, Lcom/mediatek/location/lppe/bluetooth/BluetoothProvideCapabilities;->btSupported:Z

    .line 19
    iput-boolean v0, p0, Lcom/mediatek/location/lppe/bluetooth/BluetoothProvideCapabilities;->btRssi:Z

    .line 20
    iput-boolean v0, p0, Lcom/mediatek/location/lppe/bluetooth/BluetoothProvideCapabilities;->btRtd:Z

    .line 25
    iput-boolean v0, p0, Lcom/mediatek/location/lppe/bluetooth/BluetoothProvideCapabilities;->btGroup:Z

    .line 30
    iput-boolean v0, p0, Lcom/mediatek/location/lppe/bluetooth/BluetoothProvideCapabilities;->btAntennaPattern:Z

    .line 34
    iput-boolean v0, p0, Lcom/mediatek/location/lppe/bluetooth/BluetoothProvideCapabilities;->btleSupported:Z

    .line 35
    iput-boolean v0, p0, Lcom/mediatek/location/lppe/bluetooth/BluetoothProvideCapabilities;->btleRssi:Z

    .line 36
    iput-boolean v0, p0, Lcom/mediatek/location/lppe/bluetooth/BluetoothProvideCapabilities;->btleRtd:Z

    .line 41
    iput-boolean v0, p0, Lcom/mediatek/location/lppe/bluetooth/BluetoothProvideCapabilities;->btleGroup:Z

    .line 46
    iput-boolean v0, p0, Lcom/mediatek/location/lppe/bluetooth/BluetoothProvideCapabilities;->btleAntennaPattern:Z

    return-void
.end method


# virtual methods
.method public decode(Lcom/mediatek/socket/base/SocketUtils$BaseBuffer;)Lcom/mediatek/location/lppe/bluetooth/BluetoothProvideCapabilities;
    .locals 1

    .line 115
    new-instance p0, Lcom/mediatek/location/lppe/bluetooth/BluetoothProvideCapabilities;

    invoke-direct {p0}, Lcom/mediatek/location/lppe/bluetooth/BluetoothProvideCapabilities;-><init>()V

    .line 116
    invoke-virtual {p1}, Lcom/mediatek/socket/base/SocketUtils$BaseBuffer;->getBool()Z

    move-result v0

    iput-boolean v0, p0, Lcom/mediatek/location/lppe/bluetooth/BluetoothProvideCapabilities;->btSupported:Z

    .line 117
    invoke-virtual {p1}, Lcom/mediatek/socket/base/SocketUtils$BaseBuffer;->getBool()Z

    move-result v0

    iput-boolean v0, p0, Lcom/mediatek/location/lppe/bluetooth/BluetoothProvideCapabilities;->btRssi:Z

    .line 118
    invoke-virtual {p1}, Lcom/mediatek/socket/base/SocketUtils$BaseBuffer;->getBool()Z

    move-result v0

    iput-boolean v0, p0, Lcom/mediatek/location/lppe/bluetooth/BluetoothProvideCapabilities;->btRtd:Z

    .line 119
    invoke-virtual {p1}, Lcom/mediatek/socket/base/SocketUtils$BaseBuffer;->getBool()Z

    move-result v0

    iput-boolean v0, p0, Lcom/mediatek/location/lppe/bluetooth/BluetoothProvideCapabilities;->btGroup:Z

    .line 120
    invoke-virtual {p1}, Lcom/mediatek/socket/base/SocketUtils$BaseBuffer;->getBool()Z

    move-result v0

    iput-boolean v0, p0, Lcom/mediatek/location/lppe/bluetooth/BluetoothProvideCapabilities;->btAntennaPattern:Z

    .line 121
    invoke-virtual {p1}, Lcom/mediatek/socket/base/SocketUtils$BaseBuffer;->getBool()Z

    move-result v0

    iput-boolean v0, p0, Lcom/mediatek/location/lppe/bluetooth/BluetoothProvideCapabilities;->btleSupported:Z

    .line 122
    invoke-virtual {p1}, Lcom/mediatek/socket/base/SocketUtils$BaseBuffer;->getBool()Z

    move-result v0

    iput-boolean v0, p0, Lcom/mediatek/location/lppe/bluetooth/BluetoothProvideCapabilities;->btleRssi:Z

    .line 123
    invoke-virtual {p1}, Lcom/mediatek/socket/base/SocketUtils$BaseBuffer;->getBool()Z

    move-result v0

    iput-boolean v0, p0, Lcom/mediatek/location/lppe/bluetooth/BluetoothProvideCapabilities;->btleRtd:Z

    .line 124
    invoke-virtual {p1}, Lcom/mediatek/socket/base/SocketUtils$BaseBuffer;->getBool()Z

    move-result v0

    iput-boolean v0, p0, Lcom/mediatek/location/lppe/bluetooth/BluetoothProvideCapabilities;->btleGroup:Z

    .line 125
    invoke-virtual {p1}, Lcom/mediatek/socket/base/SocketUtils$BaseBuffer;->getBool()Z

    move-result p1

    iput-boolean p1, p0, Lcom/mediatek/location/lppe/bluetooth/BluetoothProvideCapabilities;->btleAntennaPattern:Z

    return-object p0
.end method

.method public bridge synthetic decode(Lcom/mediatek/socket/base/SocketUtils$BaseBuffer;)Lcom/mediatek/socket/base/SocketUtils$Codable;
    .locals 0

    .line 11
    invoke-virtual {p0, p1}, Lcom/mediatek/location/lppe/bluetooth/BluetoothProvideCapabilities;->decode(Lcom/mediatek/socket/base/SocketUtils$BaseBuffer;)Lcom/mediatek/location/lppe/bluetooth/BluetoothProvideCapabilities;

    move-result-object p0

    return-object p0
.end method

.method public encode(Lcom/mediatek/socket/base/SocketUtils$BaseBuffer;)V
    .locals 1

    .line 101
    iget-boolean v0, p0, Lcom/mediatek/location/lppe/bluetooth/BluetoothProvideCapabilities;->btSupported:Z

    invoke-virtual {p1, v0}, Lcom/mediatek/socket/base/SocketUtils$BaseBuffer;->putBool(Z)V

    .line 102
    iget-boolean v0, p0, Lcom/mediatek/location/lppe/bluetooth/BluetoothProvideCapabilities;->btRssi:Z

    invoke-virtual {p1, v0}, Lcom/mediatek/socket/base/SocketUtils$BaseBuffer;->putBool(Z)V

    .line 103
    iget-boolean v0, p0, Lcom/mediatek/location/lppe/bluetooth/BluetoothProvideCapabilities;->btRtd:Z

    invoke-virtual {p1, v0}, Lcom/mediatek/socket/base/SocketUtils$BaseBuffer;->putBool(Z)V

    .line 104
    iget-boolean v0, p0, Lcom/mediatek/location/lppe/bluetooth/BluetoothProvideCapabilities;->btGroup:Z

    invoke-virtual {p1, v0}, Lcom/mediatek/socket/base/SocketUtils$BaseBuffer;->putBool(Z)V

    .line 105
    iget-boolean v0, p0, Lcom/mediatek/location/lppe/bluetooth/BluetoothProvideCapabilities;->btAntennaPattern:Z

    invoke-virtual {p1, v0}, Lcom/mediatek/socket/base/SocketUtils$BaseBuffer;->putBool(Z)V

    .line 106
    iget-boolean v0, p0, Lcom/mediatek/location/lppe/bluetooth/BluetoothProvideCapabilities;->btleSupported:Z

    invoke-virtual {p1, v0}, Lcom/mediatek/socket/base/SocketUtils$BaseBuffer;->putBool(Z)V

    .line 107
    iget-boolean v0, p0, Lcom/mediatek/location/lppe/bluetooth/BluetoothProvideCapabilities;->btleRssi:Z

    invoke-virtual {p1, v0}, Lcom/mediatek/socket/base/SocketUtils$BaseBuffer;->putBool(Z)V

    .line 108
    iget-boolean v0, p0, Lcom/mediatek/location/lppe/bluetooth/BluetoothProvideCapabilities;->btleRtd:Z

    invoke-virtual {p1, v0}, Lcom/mediatek/socket/base/SocketUtils$BaseBuffer;->putBool(Z)V

    .line 109
    iget-boolean v0, p0, Lcom/mediatek/location/lppe/bluetooth/BluetoothProvideCapabilities;->btleGroup:Z

    invoke-virtual {p1, v0}, Lcom/mediatek/socket/base/SocketUtils$BaseBuffer;->putBool(Z)V

    .line 110
    iget-boolean p0, p0, Lcom/mediatek/location/lppe/bluetooth/BluetoothProvideCapabilities;->btleAntennaPattern:Z

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

    .line 55
    :cond_1
    instance-of v2, p1, Lcom/mediatek/location/lppe/bluetooth/BluetoothProvideCapabilities;

    if-nez v2, :cond_2

    return v0

    .line 59
    :cond_2
    check-cast p1, Lcom/mediatek/location/lppe/bluetooth/BluetoothProvideCapabilities;

    .line 60
    iget-boolean v2, p1, Lcom/mediatek/location/lppe/bluetooth/BluetoothProvideCapabilities;->btSupported:Z

    iget-boolean v3, p0, Lcom/mediatek/location/lppe/bluetooth/BluetoothProvideCapabilities;->btSupported:Z

    if-eq v2, v3, :cond_3

    return v0

    .line 62
    :cond_3
    iget-boolean v2, p1, Lcom/mediatek/location/lppe/bluetooth/BluetoothProvideCapabilities;->btRssi:Z

    iget-boolean v3, p0, Lcom/mediatek/location/lppe/bluetooth/BluetoothProvideCapabilities;->btRssi:Z

    if-eq v2, v3, :cond_4

    return v0

    .line 64
    :cond_4
    iget-boolean v2, p1, Lcom/mediatek/location/lppe/bluetooth/BluetoothProvideCapabilities;->btRtd:Z

    iget-boolean v3, p0, Lcom/mediatek/location/lppe/bluetooth/BluetoothProvideCapabilities;->btRtd:Z

    if-eq v2, v3, :cond_5

    return v0

    .line 66
    :cond_5
    iget-boolean v2, p1, Lcom/mediatek/location/lppe/bluetooth/BluetoothProvideCapabilities;->btGroup:Z

    iget-boolean v3, p0, Lcom/mediatek/location/lppe/bluetooth/BluetoothProvideCapabilities;->btGroup:Z

    if-eq v2, v3, :cond_6

    return v0

    .line 68
    :cond_6
    iget-boolean v2, p1, Lcom/mediatek/location/lppe/bluetooth/BluetoothProvideCapabilities;->btAntennaPattern:Z

    iget-boolean v3, p0, Lcom/mediatek/location/lppe/bluetooth/BluetoothProvideCapabilities;->btAntennaPattern:Z

    if-eq v2, v3, :cond_7

    return v0

    .line 70
    :cond_7
    iget-boolean v2, p1, Lcom/mediatek/location/lppe/bluetooth/BluetoothProvideCapabilities;->btleSupported:Z

    iget-boolean v3, p0, Lcom/mediatek/location/lppe/bluetooth/BluetoothProvideCapabilities;->btleSupported:Z

    if-eq v2, v3, :cond_8

    return v0

    .line 72
    :cond_8
    iget-boolean v2, p1, Lcom/mediatek/location/lppe/bluetooth/BluetoothProvideCapabilities;->btleRssi:Z

    iget-boolean v3, p0, Lcom/mediatek/location/lppe/bluetooth/BluetoothProvideCapabilities;->btleRssi:Z

    if-eq v2, v3, :cond_9

    return v0

    .line 74
    :cond_9
    iget-boolean v2, p1, Lcom/mediatek/location/lppe/bluetooth/BluetoothProvideCapabilities;->btleRtd:Z

    iget-boolean v3, p0, Lcom/mediatek/location/lppe/bluetooth/BluetoothProvideCapabilities;->btleRtd:Z

    if-eq v2, v3, :cond_a

    return v0

    .line 76
    :cond_a
    iget-boolean v2, p1, Lcom/mediatek/location/lppe/bluetooth/BluetoothProvideCapabilities;->btleGroup:Z

    iget-boolean v3, p0, Lcom/mediatek/location/lppe/bluetooth/BluetoothProvideCapabilities;->btleGroup:Z

    if-eq v2, v3, :cond_b

    return v0

    .line 78
    :cond_b
    iget-boolean p1, p1, Lcom/mediatek/location/lppe/bluetooth/BluetoothProvideCapabilities;->btleAntennaPattern:Z

    iget-boolean p0, p0, Lcom/mediatek/location/lppe/bluetooth/BluetoothProvideCapabilities;->btleAntennaPattern:Z

    if-eq p1, p0, :cond_c

    return v0

    :cond_c
    return v1
.end method

.method public toString()Ljava/lang/String;
    .locals 4

    .line 84
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "BluetoothProvideCapabilities "

    .line 85
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 86
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "btSupported=["

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v2, p0, Lcom/mediatek/location/lppe/bluetooth/BluetoothProvideCapabilities;->btSupported:Z

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v2, "] "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 87
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "btRssi=["

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v3, p0, Lcom/mediatek/location/lppe/bluetooth/BluetoothProvideCapabilities;->btRssi:Z

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 88
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "btRtd=["

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v3, p0, Lcom/mediatek/location/lppe/bluetooth/BluetoothProvideCapabilities;->btRtd:Z

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 89
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "btGroup=["

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v3, p0, Lcom/mediatek/location/lppe/bluetooth/BluetoothProvideCapabilities;->btGroup:Z

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 90
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "btAntennaPattern=["

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v3, p0, Lcom/mediatek/location/lppe/bluetooth/BluetoothProvideCapabilities;->btAntennaPattern:Z

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 91
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "btleSupported=["

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v3, p0, Lcom/mediatek/location/lppe/bluetooth/BluetoothProvideCapabilities;->btleSupported:Z

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 92
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "btleRssi=["

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v3, p0, Lcom/mediatek/location/lppe/bluetooth/BluetoothProvideCapabilities;->btleRssi:Z

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 93
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "btleRtd=["

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v3, p0, Lcom/mediatek/location/lppe/bluetooth/BluetoothProvideCapabilities;->btleRtd:Z

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 94
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "btleGroup=["

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v3, p0, Lcom/mediatek/location/lppe/bluetooth/BluetoothProvideCapabilities;->btleGroup:Z

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 95
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "btleAntennaPattern=["

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean p0, p0, Lcom/mediatek/location/lppe/bluetooth/BluetoothProvideCapabilities;->btleAntennaPattern:Z

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 96
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method
